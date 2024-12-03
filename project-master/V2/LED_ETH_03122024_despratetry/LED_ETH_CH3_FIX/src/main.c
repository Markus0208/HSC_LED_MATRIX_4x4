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
#include "platform_config.h"
#include "xil_printf.h"
#include "echo.h"
#include "FreeRTOS.h"
#include "semphr.h"

SemaphoreHandle_t global_data_mutex;

#if LWIP_IPV6==1
#include "lwip/ip.h"
#else
#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif
#endif

#ifdef XPS_BOARD_ZCU102
#ifdef XPAR_XIICPS_0_DEVICE_ID
int IicPhyReset(void);
#endif
#endif

int main_thread();
void print_echo_app_header();
void echo_application_thread(void);

void lwip_init();

#if LWIP_IPV6==0
#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif
#endif

#define THREAD_STACKSIZE 1024

static struct netif server_netif;
struct netif *echo_netif;


void
print_ip(char *msg, ip_addr_t *ip)
{
	xil_printf(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

void
print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}




/************************** Constant Definitions *****************************/
#define NUM_CHANNELS 4 // when adapting, also adapt DMA_Instances and TxDoneA and LED_BUFFER_Instances
// Buffer Declaration
#define BUFFER_SIZE 1024 // number of leds
#define MATRIX_SIZE 64
#define DMA_TRANSFER_SIZE (BUFFER_SIZE * sizeof(uint32_t))

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
	if (ST_Result_Cfg != XST_SUCCESS) {
	    xil_printf("DMA CH1 initialization failed with error: %d\n", ST_Result_Cfg);}

	// Channel 2
	XAxiDma_Config *DMA_CH2_cfg = XAxiDma_LookupConfig(XPAR_AXI_DMA_CH2_DEVICE_ID);
	ST_Result_Cfg = XAxiDma_CfgInitialize(&DMA_CH2_inst, DMA_CH2_cfg);
	if (ST_Result_Cfg != XST_SUCCESS) {
		    xil_printf("DMA CH1 initialization failed with error: %d\n", ST_Result_Cfg);}

	// Channel 3
	XAxiDma_Config *DMA_CH3_cfg = XAxiDma_LookupConfig(XPAR_AXI_DMA_CH3_DEVICE_ID);
	ST_Result_Cfg = XAxiDma_CfgInitialize(&DMA_CH3_inst, DMA_CH3_cfg);
	if (ST_Result_Cfg != XST_SUCCESS) {
		    xil_printf("DMA CH1 initialization failed with error: %d\n", ST_Result_Cfg);}

	// Channel 4
	XAxiDma_Config *DMA_CH4_cfg = XAxiDma_LookupConfig(XPAR_AXI_DMA_CH4_DEVICE_ID);
	ST_Result_Cfg = XAxiDma_CfgInitialize(&DMA_CH4_inst, DMA_CH4_cfg);
	if (ST_Result_Cfg != XST_SUCCESS) {
		    xil_printf("DMA CH1 initialization failed with error: %d\n", ST_Result_Cfg);}
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



void Update_Channel4(uint32_t* buffer, int channel, int time, uint32_t color) {
    double frequency = 0.2;  // Adjust the frequency of the animation
    double phase = channel * 2.0 * M_PI / NUM_CHANNELS;

	//calculate some blinky blinky
    for (int col = 0; col < 64; col++) {
        for (int row = 0; row < 16; row++) {
            int i = XYtoSerpentine(col, row);

			//get values between 0 and 1
            //float val1 = sin(frequency * i + phase + 0.1 * time) * 0.5 + 0.5;
            float value = 1-fabs(sin(frequency * row + phase + 0.1 * time));

			uint32_t b = (uint32_t)(((color >> 0) & 0xFF) * value);
			uint32_t r = (uint32_t)(((color >> 8) & 0xFF) * value);
			uint32_t g = (uint32_t)(((color >> 16) & 0xFF) * value);

			// gamma correction
			b = gamma_lut[b];
			r = gamma_lut[r];
			g = gamma_lut[g];

			// update the colors in the buffer for the current LED
			buffer[i] = (buffer[i] & 0xFF000000) | // Preserve upper 8 bits
						(b << 16)                | // Blue: bits 16-23
						(r << 8)                 | // Red: bits 8-15
						(g << 0); 		           // Green: bits 0-7
        }
    }
	//needed to force DMA to work
    //Xil_DCacheFlush();
    Xil_DCacheFlushRange((UINTPTR)buffer, BUFFER_SIZE * sizeof(uint32_t));

}

// Function to convert from xy coordinate to serpentine
int XYtoSerpentine(int row, int col) {
    int serpentine = col;
	// when row is odd then
	if (row % 2 == 1){
		// inverse column number
		serpentine = 15 - col;
	}
	// calculate serpentine coordinate
    return serpentine + row * 16;
}

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
				buffer[i] = Gamma_LUT_Init(row, (15 - col), index); // Umgekehrte Reihenfolge f�r gerade Reihen
			}
			else
			{ // Ungerade Reihe
				// Spalte von links nach rechts
				buffer[i] = Gamma_LUT_Init(row, col, index); // Von links nach rechts f�r ungerade Reihen
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

	// DMA-�bertragung starten
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

	// DMA-�bertragung starten
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

	// DMA-�bertragung starten
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

	// DMA-�bertragung starten
	Xil_DCacheFlush();
}



int led_thread(){

	 // General Init
		 int counter = 0;

		 for (int i = 0; i < NUM_CHANNELS; i++)
		 {

		 	// start with empty buffer
		 	Clear_Buffer(LED_BUFFER_Instances[i]);

		 }
		DMA_INIT();
		Xil_DCacheDisable();

	while (1)
		{

		if (xSemaphoreTake(global_data_mutex, portMAX_DELAY) == pdTRUE) {
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


							// Start DMA transfer
							// BUFFER SIZE * 4BYTE per LED

							u32 Transmit_Status = XAxiDma_SimpleTransfer(DMA_Instances[channel], (UINTPTR)LED_BUFFER_Instances[channel], 4 * BUFFER_SIZE, XAXIDMA_DMA_TO_DEVICE);

							for (volatile int i = 0; i < 0xFFFF; i++)
								;


					}//for

				}//if Dataflag
		xSemaphoreGive(global_data_mutex);
		}

		}//while
}













int main()
{

	global_data_mutex = xSemaphoreCreateMutex();
	if (global_data_mutex == NULL) {
	    xil_printf("Failed to create mutex.\n");
	    return -1;
	}

	sys_thread_new("main_thrd", (void(*)(void*))main_thread, 0,
	                THREAD_STACKSIZE,
	                DEFAULT_THREAD_PRIO);
	sys_thread_new("led_thrd", (void(*)(void*))led_thread, 0,
		                THREAD_STACKSIZE,
		                DEFAULT_THREAD_PRIO);
	vTaskStartScheduler();
	while(1);
	return 0;
}

void network_thread(void *p)
{
    struct netif *netif;
    /* the mac address of the board. this should be unique per board */
    unsigned char mac_ethernet_address[] = { 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };
#if LWIP_IPV6==0
    ip_addr_t ipaddr, netmask, gw;
#if LWIP_DHCP==1
    int mscnt = 0;
#endif
#endif

    netif = &server_netif;

    xil_printf("\r\n\r\n");
    xil_printf("-----lwIP Socket Mode Echo server Demo Application ------\r\n");

#if LWIP_IPV6==0
#if LWIP_DHCP==0
    /* initialize IP addresses to be used */
    IP4_ADDR(&ipaddr,  192, 168, 1, 10);
    IP4_ADDR(&netmask, 255, 255, 255,  0);
    IP4_ADDR(&gw,      192, 168, 1, 1);
#endif

    /* print out IP settings of the board */

#if LWIP_DHCP==0
    print_ip_settings(&ipaddr, &netmask, &gw);
    /* print all application headers */
#endif

#if LWIP_DHCP==1
	ipaddr.addr = 0;
	gw.addr = 0;
	netmask.addr = 0;
#endif
#endif


    /* Add network interface to the netif_list, and set it as default */
    if (!xemac_add(netif, &ipaddr, &netmask, &gw, mac_ethernet_address, PLATFORM_EMAC_BASEADDR)) {
	xil_printf("Error adding N/W interface\r\n");
	return;
    }


    netif_set_default(netif);

    /* specify that the network if is up */
    netif_set_up(netif);

    /* start packet receive thread - required for lwIP operation */
    sys_thread_new("xemacif_input_thread", (void(*)(void*))xemacif_input_thread, netif,
            THREAD_STACKSIZE,
            DEFAULT_THREAD_PRIO);

#if LWIP_IPV6==0
#if LWIP_DHCP==1
    dhcp_start(netif);
    while (1) {
		vTaskDelay(DHCP_FINE_TIMER_MSECS / portTICK_RATE_MS);
		dhcp_fine_tmr();
		mscnt += DHCP_FINE_TIMER_MSECS;
		if (mscnt >= DHCP_COARSE_TIMER_SECS*1000) {
			dhcp_coarse_tmr();
			mscnt = 0;
		}
	}
#else
    xil_printf("\r\n");
    xil_printf("%20s %6s %s\r\n", "Server", "Port", "Connect With..");
    xil_printf("%20s %6s %s\r\n", "--------------------", "------", "--------------------");

    print_echo_app_header();
    xil_printf("\r\n");
    sys_thread_new("echod", echo_application_thread, 0,
		THREAD_STACKSIZE,
		DEFAULT_THREAD_PRIO);
    vTaskDelete(NULL);
#endif
#else
    print_echo_app_header();
    xil_printf("\r\n");
    sys_thread_new("echod",echo_application_thread, 0,
		THREAD_STACKSIZE,
		DEFAULT_THREAD_PRIO);
    vTaskDelete(NULL);
#endif
    return;
}

int main_thread()
{
#if LWIP_DHCP==1
	int mscnt = 0;
#endif

#ifdef XPS_BOARD_ZCU102
	IicPhyReset();
#endif

	/* initialize lwIP before calling sys_thread_new */
    lwip_init();

    /* any thread using lwIP should be created using sys_thread_new */
    sys_thread_new("NW_THRD", network_thread, NULL,
		THREAD_STACKSIZE,
            DEFAULT_THREAD_PRIO);

#if LWIP_IPV6==0
#if LWIP_DHCP==1
    while (1) {
	vTaskDelay(DHCP_FINE_TIMER_MSECS / portTICK_RATE_MS);
		if (server_netif.ip_addr.addr) {
			xil_printf("DHCP request success\r\n");
			print_ip_settings(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));
			print_echo_app_header();
			xil_printf("\r\n");
			sys_thread_new("echod", echo_application_thread, 0,
					THREAD_STACKSIZE,
					DEFAULT_THREAD_PRIO);
			break;
		}
		mscnt += DHCP_FINE_TIMER_MSECS;
		if (mscnt >= DHCP_COARSE_TIMER_SECS * 100) {
			xil_printf("ERROR: DHCP request timed out\r\n");
			xil_printf("Configuring default IP of 192.168.1.10\r\n");
			IP4_ADDR(&(server_netif.ip_addr),  192, 168, 1, 10);
			IP4_ADDR(&(server_netif.netmask), 255, 255, 255,  0);
			IP4_ADDR(&(server_netif.gw),  192, 168, 1, 1);
			print_ip_settings(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));
			/* print all application headers */
			xil_printf("\r\n");
			xil_printf("%20s %6s %s\r\n", "Server", "Port", "Connect With..");
			xil_printf("%20s %6s %s\r\n", "--------------------", "------", "--------------------");

			print_echo_app_header();
			xil_printf("\r\n");
			sys_thread_new("echod", echo_application_thread, 0,
					THREAD_STACKSIZE,
					DEFAULT_THREAD_PRIO);
			break;
		}
	}
#endif
#endif
    vTaskDelete(NULL);
    return 0;
}
