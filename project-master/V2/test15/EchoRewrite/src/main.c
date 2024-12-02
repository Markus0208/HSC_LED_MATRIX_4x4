#include "xaxidma.h"

#include "xplatform_info.h"
#include "xil_exception.h"
#include "xdebug.h"
#include "xil_util.h"
#include "xscugic.h"
#include "xscugic_hw.h"
#include "math.h"

#include <stdio.h>

#include "xparameters.h"

#include "netif/xadapter.h"

#include "echo.h"

#include "platform.h"
#include "platform_config.h"
#if defined(__arm__) || defined(__aarch64__)
#include "xil_printf.h"
#endif

#include "lwip/tcp.h"
#include "xil_cache.h"

#if LWIP_IPV6 == 1
#include "lwip/ip.h"
#else
#if LWIP_DHCP == 1
#include "lwip/dhcp.h"
#endif
#endif

/* defined by each RAW mode application */
void print_app_header();
int start_application();
int transfer_data();
void tcp_fasttmr(void);
void tcp_slowtmr(void);

/* missing declaration in lwIP */
void lwip_init();

#if LWIP_IPV6 == 0
#if LWIP_DHCP == 1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif
#endif

extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;
static struct netif server_netif;
struct netif *echo_netif;

#if LWIP_IPV6 == 1
void print_ip6(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf(" %x:%x:%x:%x:%x:%x:%x:%x\n\r",
			   IP6_ADDR_BLOCK1(&ip->u_addr.ip6),
			   IP6_ADDR_BLOCK2(&ip->u_addr.ip6),
			   IP6_ADDR_BLOCK3(&ip->u_addr.ip6),
			   IP6_ADDR_BLOCK4(&ip->u_addr.ip6),
			   IP6_ADDR_BLOCK5(&ip->u_addr.ip6),
			   IP6_ADDR_BLOCK6(&ip->u_addr.ip6),
			   IP6_ADDR_BLOCK7(&ip->u_addr.ip6),
			   IP6_ADDR_BLOCK8(&ip->u_addr.ip6));
}
#else
void print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
			   ip4_addr3(ip), ip4_addr4(ip));
}

void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}
#endif

#if defined(__arm__) && !defined(ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
int ProgramSi5324(void);
int ProgramSfpPhy(void);
#endif
#endif

#ifdef XPS_BOARD_ZCU102
#ifdef XPAR_XIICPS_0_DEVICE_ID
int IicPhyReset(void);
#endif
#endif

/************************** Constant Definitions *****************************/
#define NUM_CHANNELS 4 // when adapting, also adapt DMA_Instances and TxDoneA and LED_BUFFER_Instances
// Buffer Declaration
#define BUFFER_SIZE 1024 // number of leds
#define MATRIX_SIZE 64
#define DMA_TRANSFER_SIZE (BUFFER_SIZE * sizeof(uint32_t))

// Interrupt IDs for each DMA channel
#define XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR 61
#define XPAR_FABRIC_AXI_DMA_1_MM2S_INTROUT_INTR 62
#define XPAR_FABRIC_AXI_DMA_2_MM2S_INTROUT_INTR 63
#define XPAR_FABRIC_AXI_DMA_3_MM2S_INTROUT_INTR 64

// Static variables for the interrupt controller
static XScuGic intc;
static XScuGic_Config *intc_cfg_ptr;

/************************** Variable Definitions *****************************/
// Device instances for each DMA channel
XAxiDma DMA_CH1_inst;
XAxiDma DMA_CH2_inst;
XAxiDma DMA_CH3_inst;
XAxiDma DMA_CH4_inst;
XAxiDma *DMA_Instances[NUM_CHANNELS] = {&DMA_CH1_inst, &DMA_CH2_inst, &DMA_CH3_inst, &DMA_CH4_inst};

uint32_t ST_Result;
uint32_t ST_Result_Cfg;

/************************** DMA Interrupt Handler *****************************/
// Interrupt handlers for each channel
void DMA_Interrupt_Handler_Ch1(void *CallbackRef);
void DMA_Interrupt_Handler_Ch2(void *CallbackRef);
void DMA_Interrupt_Handler_Ch3(void *CallbackRef);
void DMA_Interrupt_Handler_Ch4(void *CallbackRef);

// Flags interrupt handlers use to notify the application context the events.

volatile int TxDoneA[NUM_CHANNELS] = {0};

/************************** LED Buffer Definitions  ******************************/
uint32_t LED_BUFFER_CH1[BUFFER_SIZE] __attribute__((aligned(32)));
uint32_t LED_BUFFER_CH2[BUFFER_SIZE] __attribute__((aligned(32)));
uint32_t LED_BUFFER_CH3[BUFFER_SIZE] __attribute__((aligned(32)));
uint32_t LED_BUFFER_CH4[BUFFER_SIZE] __attribute__((aligned(32)));
uint32_t *LED_BUFFER_Instances[NUM_CHANNELS] = {LED_BUFFER_CH1, LED_BUFFER_CH2, LED_BUFFER_CH3, LED_BUFFER_CH4};

/************************** DMA Initialization Function **************************/
// Function to initialize and configure four DMA channels and enable IRQ interrupts
void DMA_INIT()
{
	// Channel 1
	XAxiDma_Config *DMA_CH1_cfg = XAxiDma_LookupConfig(XPAR_AXI_DMA_CH1_DEVICE_ID);
	ST_Result_Cfg = XAxiDma_CfgInitialize(&DMA_CH1_inst, DMA_CH1_cfg);
	XAxiDma_IntrEnable(&DMA_CH1_inst, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DMA_TO_DEVICE);

	// Channel 2
	XAxiDma_Config *DMA_CH2_cfg = XAxiDma_LookupConfig(XPAR_AXI_DMA_CH2_DEVICE_ID);
	XAxiDma_CfgInitialize(&DMA_CH2_inst, DMA_CH2_cfg);
	XAxiDma_IntrEnable(&DMA_CH2_inst, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DMA_TO_DEVICE);

	// Channel 3
	XAxiDma_Config *DMA_CH3_cfg = XAxiDma_LookupConfig(XPAR_AXI_DMA_CH3_DEVICE_ID);
	XAxiDma_CfgInitialize(&DMA_CH3_inst, DMA_CH3_cfg);
	XAxiDma_IntrEnable(&DMA_CH3_inst, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DMA_TO_DEVICE);

	// Channel 4
	XAxiDma_Config *DMA_CH4_cfg = XAxiDma_LookupConfig(XPAR_AXI_DMA_CH4_DEVICE_ID);
	XAxiDma_CfgInitialize(&DMA_CH4_inst, DMA_CH4_cfg);
	XAxiDma_IntrEnable(&DMA_CH4_inst, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DMA_TO_DEVICE);
}

// Function to clear the buffer
void Clear_Buffer(uint32_t *buffer)
{
	for (int i = 0; i < BUFFER_SIZE; ++i)
	{
		buffer[i] = 0;
	}
}

const uint16_t gamma_lut[256] = {
     0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   1,   1,   1,   1,
     1,   1,   1,   1,   2,   2,   2,   2,   2,   2,   3,   3,   3,   3,   4,   4,
     4,   4,   5,   5,   5,   5,   6,   6,   6,   7,   7,   7,   8,   8,   8,   9,
     9,   9,  10,  10,  11,  11,  11,  12,  12,  13,  13,  14,  14,  15,  15,  16,
    16,  17,  17,  18,  18,  19,  19,  20,  20,  21,  22,  22,  23,  23,  24,  25,
    25,  26,  26,  27,  28,  28,  29,  30,  30,  31,  32,  33,  33,  34,  35,  36,
    36,  37,  38,  39,  39,  40,  41,  42,  43,  43,  44,  45,  46,  47,  48,  49,
    49,  50,  51,  52,  53,  54,  55,  56,  57,  58,  59,  60,  61,  62,  63,  63,
    65,  66,  67,  68,  69,  70,  71,  72,  73,  74,  75,  76,  77,  78,  79,  81,
    82,  83,  84,  85,  86,  87,  89,  90,  91,  92,  93,  95,  96,  97,  98, 100,
   101, 102, 103, 105, 106, 107, 108, 110, 111, 112, 114, 115, 116, 118, 119, 121,
   122, 123, 125, 126, 128, 129, 130, 132, 133, 135, 136, 138, 139, 141, 142, 144,
   145, 147, 148, 150, 151, 153, 154, 156, 157, 159, 161, 162, 164, 165, 167, 169,
   170, 172, 174, 175, 177, 179, 180, 182, 184, 185, 187, 189, 191, 192, 194, 196,
   198, 199, 201, 203, 205, 206, 208, 210, 212, 214, 216, 217, 219, 221, 223, 225,
   227, 229, 231, 232, 234, 236, 238, 240, 242, 244, 246, 248, 250, 252, 254, 256,
  };


uint32_t led_matrixol[32][32] = {};
uint32_t led_matrixor[32][32] = {};
uint32_t led_matrixur[32][32] = {};
uint32_t led_matrixul[32][32] = {};

uint32_t Gamma_LUT_Init(int row, int col, int index)
{
	uint32_t HexCol = 0;

	if (index == 0)
	{
		HexCol = led_matrixol[row][col];
	}
	if (index == 1)
	{
		HexCol = led_matrixor[row][col];
	}
	if (index == 2)
	{
		HexCol = led_matrixor[row][col];
	}
	if (index == 3)
	{
		HexCol = led_matrixur[row][col];
	}

	uint32_t b = (uint32_t)(((HexCol >> 0) & 0xFF));
	uint32_t r = (uint32_t)(((HexCol >> 8) & 0xFF));
	uint32_t g = (uint32_t)(((HexCol >> 16) & 0xFF));

	b = gamma_lut[b];
	r = gamma_lut[r];
	g = gamma_lut[g];

	return (HexCol & 0xFF0000000 | (g << 16) | (r << 8) | (b << 0));
}

int process_matrix_section(uint32_t *buffer, int i, int row_start, int row_end, int col_start, int col_end, int index)
{
	for (int row = row_start; row < row_end; row++)
	{
		for (int col = col_start; col < col_end; col++)
		{
			// Bestimmen der richtigen Spaltenreihenfolge
			if (row % 2 == 0)
			{ // Gerade Reihe
				// Spalte von rechts nach links
				buffer[i] = Gamma_LUT_Init(row, (15 - col), index); // Umgekehrte Reihenfolge fï¿½r gerade Reihen
			}
			else
			{ // Ungerade Reihe
				// Spalte von links nach rechts
				buffer[i] = Gamma_LUT_Init(row, col, index); // Von links nach rechts fï¿½r ungerade Reihen
			}
			i++;
		}
	}
	return i;
}

void display_matrix_dma0(uint32_t *buffer, int channel)
{
	int i = 0;

	// Farben von led_matrix in den Buffer konvertieren

	i = process_matrix_section(buffer, i, 0, 16, 0, 16, 0);
	i = process_matrix_section(buffer, i, 0, 16, 16, 32, 0);
	i = process_matrix_section(buffer, i, 16, 32, 16, 32, 0);
	i = process_matrix_section(buffer, i, 16, 32, 0, 16, 0);

	// DMA-ï¿½bertragung starten
	Xil_DCacheFlush();
}

void display_matrix_dma1(uint32_t *buffer, int channel)
{
	int i = 0;

	// Farben von led_matrix in den Buffer konvertieren

	i = process_matrix_section(buffer, i, 0, 16, 32, 48, 1);
	i = process_matrix_section(buffer, i, 0, 16, 48, 64, 1);
	i = process_matrix_section(buffer, i, 16, 32, 48, 64, 1);
	i = process_matrix_section(buffer, i, 16, 32, 32, 48, 1);

	// DMA-ï¿½bertragung starten
	Xil_DCacheFlush();
}

void display_matrix_dma2(uint32_t *buffer, int channel)
{
	int i = 0;

	// Farben von led_matrix in den Buffer konvertieren

	i = process_matrix_section(buffer, i, 32, 48, 32, 48, 2);
	i = process_matrix_section(buffer, i, 32, 48, 48, 64, 2);
	i = process_matrix_section(buffer, i, 48, 64, 48, 64, 2);
	i = process_matrix_section(buffer, i, 48, 64, 32, 48, 2);

	// DMA-ï¿½bertragung starten
	Xil_DCacheFlush();
}

void display_matrix_dma3(uint32_t *buffer, int channel)
{
	int i = 0;

	// Farben von led_matrix in den Buffer konvertieren

	i = process_matrix_section(buffer, i, 32, 48, 0, 16, 3);
	i = process_matrix_section(buffer, i, 32, 48, 16, 32, 3);
	i = process_matrix_section(buffer, i, 48, 64, 16, 32, 3);
	i = process_matrix_section(buffer, i, 48, 64, 0, 16, 3);

	// DMA-ï¿½bertragung starten
	Xil_DCacheFlush();
}

/************************** Interrupt Controller Initialization ******************************/
// Function to initialize the Interrupt Controller
int Init_Interrupt_Controller()
{
	int Status;
	intc_cfg_ptr = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	if (NULL == intc_cfg_ptr)
	{
		return XST_FAILURE;
	}
	Status = XScuGic_CfgInitialize(&intc, intc_cfg_ptr, intc_cfg_ptr->CpuBaseAddress);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

/************************** Connect DMA Interrupts ******************************/
// Function to connect the interrupts
// map interrupt to cpu is done in XScuGic_Enable()
void Connect_DMA_Interrupts()
{
	// Connect interrupt handlers for each DMA channel
	XScuGic_Connect(&intc, XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR, (Xil_ExceptionHandler)DMA_Interrupt_Handler_Ch1, &DMA_CH1_inst);
	XScuGic_Connect(&intc, XPAR_FABRIC_AXI_DMA_1_MM2S_INTROUT_INTR, (Xil_ExceptionHandler)DMA_Interrupt_Handler_Ch2, &DMA_CH2_inst);
	XScuGic_Connect(&intc, XPAR_FABRIC_AXI_DMA_2_MM2S_INTROUT_INTR, (Xil_ExceptionHandler)DMA_Interrupt_Handler_Ch3, &DMA_CH3_inst);
	XScuGic_Connect(&intc, XPAR_FABRIC_AXI_DMA_3_MM2S_INTROUT_INTR, (Xil_ExceptionHandler)DMA_Interrupt_Handler_Ch4, &DMA_CH4_inst);

	// set priority and trigger typedef 0x3 rising edge 0x1 high
	XScuGic_SetPriorityTriggerType(&intc, XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR, 0xA0, 0x3);
	// XScuGic_InterruptMaptoCpu(&intc, (u8)XScuGic_GetCPUID(), XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR);

	// Enable interrupts for each DMA channel
	XScuGic_Enable(&intc, XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR);
	XScuGic_Enable(&intc, XPAR_FABRIC_AXI_DMA_1_MM2S_INTROUT_INTR);
	XScuGic_Enable(&intc, XPAR_FABRIC_AXI_DMA_2_MM2S_INTROUT_INTR);
	XScuGic_Enable(&intc, XPAR_FABRIC_AXI_DMA_3_MM2S_INTROUT_INTR);
}

/************************** Enable Interrupts ******************************/
// Function to enable the interrupts
void Enable_Interrupts()
{
	Xil_ExceptionInit(); // does nothing
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &intc);
	Xil_ExceptionEnable(); // calls Xil_ExceptionEnableMask(XIL_EXCEPTION_ID_IRQ_INT);
}






/*
---------------------- MAIN ----------------------
*/

int main()
{




#if LWIP_IPV6 == 0
	ip_addr_t ipaddr, netmask, gw;

#endif
	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] =
		{0x00, 0x0a, 0x35, 0x00, 0x01, 0x02};

	echo_netif = &server_netif;
#if defined(__arm__) && !defined(ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
	ProgramSi5324();
	ProgramSfpPhy();
#endif
#endif

/* Define this board specific macro in order perform PHY reset on ZCU102 */
#ifdef XPS_BOARD_ZCU102
	if (IicPhyReset())
	{
		xil_printf("Error performing PHY reset \n\r");
		return -1;
	}
#endif

	init_platform();

#if LWIP_IPV6 == 0
#if LWIP_DHCP == 1
	ipaddr.addr = 0;
	gw.addr = 0;
	netmask.addr = 0;
#else
	/* initialize IP addresses to be used */
	IP4_ADDR(&ipaddr, 192, 168, 1, 10);
	IP4_ADDR(&netmask, 255, 255, 255, 0);
	IP4_ADDR(&gw, 192, 168, 1, 1);
#endif
#endif
	print_app_header();

	lwip_init();

#if (LWIP_IPV6 == 0)
	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(echo_netif, &ipaddr, &netmask,
				   &gw, mac_ethernet_address,
				   PLATFORM_EMAC_BASEADDR))
	{
		xil_printf("Error adding N/W interface\n\r");
		return -1;
	}
#else
	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(echo_netif, NULL, NULL, NULL, mac_ethernet_address,
				   PLATFORM_EMAC_BASEADDR))
	{
		xil_printf("Error adding N/W interface\n\r");
		return -1;
	}
	echo_netif->ip6_autoconfig_enabled = 1;

	netif_create_ip6_linklocal_address(echo_netif, 1);
	netif_ip6_addr_set_state(echo_netif, 0, IP6_ADDR_VALID);

	print_ip6("\n\rBoard IPv6 address ", &echo_netif->ip6_addr[0].u_addr.ip6);

#endif
	netif_set_default(echo_netif);

	/* now enable interrupts */
	platform_enable_interrupts();

	/* specify that the network if is up */
	netif_set_up(echo_netif);

#if (LWIP_IPV6 == 0)
#if (LWIP_DHCP == 1)
	/* Create a new DHCP client for this interface.
	 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
	 * the predefined regular intervals after starting the client.
	 */
	dhcp_start(echo_netif);
	dhcp_timoutcntr = 24;

	while (((echo_netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
		xemacif_input(echo_netif);

	if (dhcp_timoutcntr <= 0)
	{
		if ((echo_netif->ip_addr.addr) == 0)
		{
			xil_printf("DHCP Timeout\r\n");
			xil_printf("Configuring default IP of 192.168.1.10\r\n");
			IP4_ADDR(&(echo_netif->ip_addr), 192, 168, 1, 10);
			IP4_ADDR(&(echo_netif->netmask), 255, 255, 255, 0);
			IP4_ADDR(&(echo_netif->gw), 192, 168, 1, 1);
		}
	}

	ipaddr.addr = echo_netif->ip_addr.addr;
	gw.addr = echo_netif->gw.addr;
	netmask.addr = echo_netif->netmask.addr;
#endif

	print_ip_settings(&ipaddr, &netmask, &gw);

#endif
	/* start the application (web server, rxtest, txtest, etc..) */

	 // General Init
	 int counter = 0;

	 for (int i = 0; i < NUM_CHANNELS; i++)
	 {

	 	// start with empty buffer
	 	Clear_Buffer(LED_BUFFER_Instances[i]);

	 	// Reset TxDone Flags
	 	TxDoneA[i] = 1;
	 }

	start_application();

	DMA_INIT();			 // KEIN PROBLEM
	Xil_DCacheDisable(); // KEIN PROBLEM
					// Initialize the interrupt controller
	if (Init_Interrupt_Controller() != XST_SUCCESS) // AB HIER PROBLEM
					{
						xil_printf("Error initializing interrupt controller\n");
						return XST_FAILURE;
					}

					// Call Interrupt initialization functions, order important
					Enable_Interrupts();
					Connect_DMA_Interrupts();


	global_payload_len = 0;
	/* receive and process packets */
	while (1)
	{
		if (TcpFastTmrFlag)
		{
			tcp_fasttmr();
			TcpFastTmrFlag = 0;
		}
		if (TcpSlowTmrFlag)
		{
			tcp_slowtmr();
			TcpSlowTmrFlag = 0;
		}

		if (NEW_DATA_FLAG == 1)
		{


			NEW_DATA_FLAG = 0;

			 uint32_t led_matrix2[64][64] = {};
			 for (int row = 0; row < 64; row++)
			 {

			 	for (int col = 0; col < 64; col++)
			 	{
			 		// Indexberechnung
			 		int index = row * 64 + col;

			 		// Sicherstellen, dass der Index innerhalb der Grenzen liegt
			 		if (index < 4096)
			 		{
			 			led_matrix2[row][col] = global_received_array[index];
			 		}
			 		else
			 		{
			 			led_matrix2[row][col] = 0; // Standardwert, falls Daten fehlen
			 		}
			 	}
			 }


			 	 // Fill SubArrays
			 	for (int row = 0; row < 32; row++)
			 	{
			 		for (int col = 0; col < 32; col++)
			 		{
			 			led_matrixol[row][col] = led_matrix2[row][col];
			 		}
			 	}

			 	for (int row = 0; row < 32; row++)
			 	{
			 		for (int col = 0; col < 32; col++)
			 		{
			 			led_matrixor[row][col] = led_matrix2[row][col + 32];
			 		}
			 	}

			 	for (int row = 0; row < 32; row++)
			 	{
			 		for (int col = 0; col < 32; col++)
			 		{
			 			led_matrixur[row][col] = led_matrix2[row + 32][col + 32];
			 		}
			 	}

			 	for (int row = 0; row < 32; row++)
			 	{
			 		for (int col = 0; col < 32; col++)
			 		{
			 			led_matrixul[row][col] = led_matrix2[row + 32][col];
			 		}
			 	}



			for (int channel = 0; channel < NUM_CHANNELS; channel++)
			{
				// Check if DMA is ready
				if (TxDoneA[channel] == 1)
				{
					// DMA is ready

					if (channel == 0)
					{
						display_matrix_dma0(LED_BUFFER_Instances[channel], channel);
						// Update_Channel4(LED_BUFFER_Instances[channel], channel, counter, 0xFFFFFF);
					}
					if (channel == 1)
					{
						display_matrix_dma1(LED_BUFFER_Instances[channel], channel);
						// Update_Channel4(LED_BUFFER_Instances[channel], channel, counter, 0xFF0000);
					}
					if (channel == 2)
					{
						display_matrix_dma2(LED_BUFFER_Instances[channel], channel);
						// Update_Channel4(LED_BUFFER_Instances[channel], channel, counter, 0x0000FF);
					}
					if (channel == 3)
					{
						display_matrix_dma3(LED_BUFFER_Instances[channel], channel);
						// Update_Channel4(LED_BUFFER_Instances[channel], channel, counter, 0x00FF00);
					}

					TxDoneA[channel] = 0;

					// Start DMA transfer
					// BUFFER SIZE * 4BYTE per LED
					// XAxiDma_SimpleTransfer(DMA_Instances[channel], (UINTPTR)LED_BUFFER_Instances[channel], BUFFER_SIZE * 4, XAXIDMA_DMA_TO_DEVICE);
					u32 Transmit_Status = XAxiDma_SimpleTransfer(DMA_Instances[channel], (UINTPTR)LED_BUFFER_Instances[channel], 4 * BUFFER_SIZE, XAXIDMA_DMA_TO_DEVICE);

					for (volatile int i = 0; i < 0xFFFF; i++)
						;
				}

			}//for

		}//if Dataflag

		xil_printf("While durch");

		xemacif_input(echo_netif);
		transfer_data();
	}//while

	/* never reached */
	cleanup_platform();

	return 0;
}

// Timer f�r lwip wird eventuell deaktiviert

/************************** Generic DMA Interrupt Handler ******************************/
// Use Generic Interrupt Function:
void DMA_Interrupt_Function(XAxiDma *AxiDMAInst, int channel)
{
	// Handle interrupt for channel

	// Get IRQ
	u32 irqStatus = XAxiDma_IntrGetIrq(AxiDMAInst, XAXIDMA_DMA_TO_DEVICE);
	// acknowledge pending IRQ
	XAxiDma_IntrAckIrq(AxiDMAInst, irqStatus, XAXIDMA_DMA_TO_DEVICE);

	// combine with mask
	if (irqStatus & XAXIDMA_IRQ_IOC_MASK)
	{
		// Set the completion flag for the corresponding channel
		TxDoneA[channel] = 1;
	}
}

/************************** Specific Interrupt Handlers ******************************/
// Specific Interrupt Handler
void DMA_Interrupt_Handler_Ch1(void *CallbackRef)
{
	DMA_Interrupt_Function((XAxiDma *)CallbackRef, 0);
}

void DMA_Interrupt_Handler_Ch2(void *CallbackRef)
{
	DMA_Interrupt_Function((XAxiDma *)CallbackRef, 1);
}

void DMA_Interrupt_Handler_Ch3(void *CallbackRef)
{
	DMA_Interrupt_Function((XAxiDma *)CallbackRef, 2);
}

void DMA_Interrupt_Handler_Ch4(void *CallbackRef)
{
	DMA_Interrupt_Function((XAxiDma *)CallbackRef, 3);
}
