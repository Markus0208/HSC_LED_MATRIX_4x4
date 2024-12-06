#include "xaxidma.h"
#include "xparameters.h"
#include "xplatform_info.h"
#include "xil_exception.h"
#include "xdebug.h"
#include "xil_util.h"
#include "xscugic.h"
#include "xscugic_hw.h"
#include "math.h"
#include "xil_cache.h"
#include "led.h"
#include "echo.h"
#include "access_semphr.h"

/************************** Constant Definitions *****************************/
#define NUM_CHANNELS 4 // when adapting, also adapt DMA_Instances and TxDoneA and LED_BUFFER_Instances
// Buffer Declaration
#define BUFFER_SIZE 1024 // number of leds
#define MATRIX_SIZE 64
#define DMA_TRANSFER_SIZE (BUFFER_SIZE * sizeof(uint32_t))

uint32_t local64buffer [4096] ={};
uint32_t local_flag = 0;
uint32_t led_matrix2[64][64] = {};

// Static variables for the interrupt controller
XScuGic intc;
XScuGic_Config *intc_cfg_ptr;

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


uint32_t led_matrixol[32][32] = {};
uint32_t led_matrixor[32][32] = {};
uint32_t led_matrixur[32][32] = {};
uint32_t led_matrixul[32][32] = {};



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

		xil_printf("--------------");

	while (1)
		{

		if (xSemaphoreTake(ptr_binary_semphr, portMAX_DELAY) == pdTRUE){
			local_flag=NEW_DATA_FLAG;
			if (local_flag == 1){

				if (local64buffer == NULL) {
				    xil_printf("local64buffer is NULL\n");
				    return;  // Fehlerbehandlung oder Rückgabe
				}

				if (global_received_array == NULL) {
				    xil_printf("global_received_array is NULL\n");
				    return;  // Fehlerbehandlung oder Rückgabe
				}
				xil_printf("bevor memcpy");
				memcpy(local64buffer, global_received_array, 4096 * sizeof(uint32_t));
				xil_printf("after memcpy");
				NEW_DATA_FLAG = 0;


			}


			xSemaphoreGive(ptr_binary_semphr);


		}


		//xil_printf("bevore if");

			if (local_flag == 1) {
				xil_printf("Free heap size: %u\n", xPortGetFreeHeapSize());
				UBaseType_t task_count = uxTaskGetNumberOfTasks();
				xil_printf("Aktive Tasks: %u\n", task_count);

				xil_printf("In if ");
				local_flag=0;

				for (int row = 0; row < 64; row++)
				{
					for (int col = 0; col < 64; col++)
					{
						// Indexberechnung
						int index = row * 64 + col;

						// Sicherstellen, dass der Index innerhalb der Grenzen liegt
						if (index < 4096)
						{
							led_matrix2[row][col] = local64buffer[index];
						}
						else
						{
							led_matrix2[row][col] = 0; // Standardwert, falls Daten fehlen
						}
					}
				}
				xil_printf("fill sub arrays ");
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
					if (channel == 0)
					{
						display_matrix_dma0(LED_BUFFER_Instances[channel], channel);
					}
					if (channel == 1)
					{
						display_matrix_dma1(LED_BUFFER_Instances[channel], channel);
					}
					if (channel == 2)
					{
						display_matrix_dma2(LED_BUFFER_Instances[channel], channel);
					}
					if (channel == 3)
					{
						display_matrix_dma3(LED_BUFFER_Instances[channel], channel);
					}

					// Start DMA transfer
					u32 Transmit_Status = XAxiDma_SimpleTransfer(DMA_Instances[channel], (UINTPTR)LED_BUFFER_Instances[channel], 4 * BUFFER_SIZE, XAXIDMA_DMA_TO_DEVICE);

					for (volatile int i = 0; i < 0xFFFF; i++)
						;
				}
			}
		}
	vTaskDelete(NULL);
	    return 0;
	}
