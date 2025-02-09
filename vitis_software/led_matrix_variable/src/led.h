#ifndef LED_H
#define LED_H

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


// ************************** Constant Definitions ****************************
#define NUM_CHANNELS 4
#define BUFFER_SIZE 1024
#define MATRIX_SIZE 64
#define DMA_TRANSFER_SIZE (BUFFER_SIZE * sizeof(uint32_t))

// ************************** Variable Definitions ****************************
// Interrupt Controller
extern XScuGic intc;
extern XScuGic_Config *intc_cfg_ptr;

// DMA Device Instances
extern XAxiDma DMA_CH1_inst;
extern XAxiDma DMA_CH2_inst;
extern XAxiDma DMA_CH3_inst;
extern XAxiDma DMA_CH4_inst;
extern XAxiDma *DMA_Instances[NUM_CHANNELS];

// LED Buffers
extern uint32_t LED_BUFFER_CH1[BUFFER_SIZE];
extern uint32_t LED_BUFFER_CH2[BUFFER_SIZE];
extern uint32_t LED_BUFFER_CH3[BUFFER_SIZE];
extern uint32_t LED_BUFFER_CH4[BUFFER_SIZE];
extern uint32_t *LED_BUFFER_Instances[NUM_CHANNELS];

// Gamma Look-Up Table
extern const uint16_t gamma_lut[256];

// Sub-matrix Buffers
extern uint32_t led_matrixol[32][32];
extern uint32_t led_matrixor[32][32];
extern uint32_t led_matrixur[32][32];
extern uint32_t led_matrixul[32][32];

// ************************** Function Prototypes ****************************
void DMA_INIT(void);
void Clear_Buffer(uint32_t *buffer);
void Update_Channel4(uint32_t *buffer, int channel, int time, uint32_t color);
int XYtoSerpentine(int row, int col);
uint32_t Gamma_LUT_Init(int row, int col, int index);
int process_matrix_section(uint32_t *buffer, int i, int row_start, int row_end, int col_start, int col_end, int index);
void display_matrix_dma0(uint32_t *buffer, int channel);
void display_matrix_dma1(uint32_t *buffer, int channel);
void display_matrix_dma2(uint32_t *buffer, int channel);
void display_matrix_dma3(uint32_t *buffer, int channel);
int led_thread(uint32_t total_elements_received);





#endif //LED_H
