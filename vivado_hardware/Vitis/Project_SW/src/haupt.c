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


/************************** Constant Definitions *****************************/
#define NUM_CHANNELS 4 //when adapting, also adapt DMA_Instances and TxDoneA and LED_BUFFER_Instances
//Buffer Declaration
#define BUFFER_SIZE 256 //number of leds

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
XAxiDma* DMA_Instances[NUM_CHANNELS] = {&DMA_CH1_inst, &DMA_CH2_inst, &DMA_CH3_inst, &DMA_CH4_inst};

uint32_t ST_Result;
uint32_t ST_Result_Cfg;

/************************** DMA Interrupt Handler *****************************/
// Interrupt handlers for each channel
void DMA_Interrupt_Handler_Ch1(void *CallbackRef);
void DMA_Interrupt_Handler_Ch2(void *CallbackRef);
void DMA_Interrupt_Handler_Ch3(void *CallbackRef);
void DMA_Interrupt_Handler_Ch4(void *CallbackRef);

//Flags interrupt handlers use to notify the application context the events.

volatile int TxDoneA[NUM_CHANNELS] = {0};


/************************** LED Buffer Definitions  ******************************/
uint32_t LED_BUFFER_CH1[BUFFER_SIZE]__attribute__ ((aligned (32)));
uint32_t LED_BUFFER_CH2[BUFFER_SIZE]__attribute__ ((aligned (32)));
uint32_t LED_BUFFER_CH3[BUFFER_SIZE]__attribute__ ((aligned (32)));
uint32_t LED_BUFFER_CH4[BUFFER_SIZE]__attribute__ ((aligned (32)));
uint32_t* LED_BUFFER_Instances[NUM_CHANNELS] = {LED_BUFFER_CH1, LED_BUFFER_CH2, LED_BUFFER_CH3, LED_BUFFER_CH4};

/************************** DMA Initialization Function **************************/
// Function to initialize and configure four DMA channels and enable IRQ interrupts
void DMA_INIT(){
	//Channel 1
	XAxiDma_Config* DMA_CH1_cfg = XAxiDma_LookupConfig(XPAR_AXI_DMA_CH1_DEVICE_ID);
	ST_Result_Cfg = XAxiDma_CfgInitialize(&DMA_CH1_inst, DMA_CH1_cfg);
    XAxiDma_IntrEnable(&DMA_CH1_inst, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DMA_TO_DEVICE);

	//Channel 2
	XAxiDma_Config* DMA_CH2_cfg = XAxiDma_LookupConfig(XPAR_AXI_DMA_CH2_DEVICE_ID);
    XAxiDma_CfgInitialize(&DMA_CH2_inst, DMA_CH2_cfg);
	XAxiDma_IntrEnable(&DMA_CH2_inst, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DMA_TO_DEVICE);

	//Channel 3
	XAxiDma_Config* DMA_CH3_cfg = XAxiDma_LookupConfig(XPAR_AXI_DMA_CH3_DEVICE_ID);
	XAxiDma_CfgInitialize(&DMA_CH3_inst, DMA_CH3_cfg);
    XAxiDma_IntrEnable(&DMA_CH3_inst, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DMA_TO_DEVICE);

	//Channel 4
	XAxiDma_Config* DMA_CH4_cfg = XAxiDma_LookupConfig(XPAR_AXI_DMA_CH4_DEVICE_ID);
    XAxiDma_CfgInitialize(&DMA_CH4_inst, DMA_CH4_cfg);
	XAxiDma_IntrEnable(&DMA_CH4_inst, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DMA_TO_DEVICE);


}

// Function to clear the buffer
void Clear_Buffer(uint32_t* buffer){
    for (int i = 0; i < BUFFER_SIZE; ++i) {
        buffer[i] = 0;
    }
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


void Update_Channel(uint32_t* buffer, int channel, int time, uint32_t color) {

	/*
    buffer[0] = color;
    buffer[15] = color;

    buffer[240] = color;
    buffer[255] = color;

*/
	buffer[XYtoSerpentine( 0,  0)] = color;
	buffer[XYtoSerpentine(15,  0)] = color;
	buffer[XYtoSerpentine(15, 15)] = color;
	buffer[XYtoSerpentine( 0, 15)] = color;
	buffer[XYtoSerpentine( 7,  7)] = color;
	buffer[XYtoSerpentine( 8,  8)] = color;
	buffer[XYtoSerpentine( 7,  8)] = color;
	buffer[XYtoSerpentine( 8,  7)] = color;
	//needed to force DMA to work
	Xil_DCacheFlush();
}

void Update_Channel2(uint32_t* buffer, int channel, int time, uint32_t color) {

	for (int i = 0; i < 256; i++) {
		buffer[i] = 0xFFFFFF;
	}
	Update_Channel(buffer, channel, time, color);
	//needed to force DMA to work
	//Xil_DCacheFlush();
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

// Function to update a single channel in the buffer
void Update_Channel4(uint32_t* buffer, int channel, int time, uint32_t color) {
    double frequency = 0.2;  // Adjust the frequency of the animation
    double phase = channel * 2.0 * M_PI / NUM_CHANNELS;

	//calculate some blinky blinky
    for (int col = 0; col < 16; col++) {
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
    Xil_DCacheFlush();
}


/************************** Interrupt Controller Initialization ******************************/
// Function to initialize the Interrupt Controller
int Init_Interrupt_Controller() {
    int Status;
    intc_cfg_ptr = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
    if (NULL == intc_cfg_ptr) {
        return XST_FAILURE;
    }
    Status = XScuGic_CfgInitialize(&intc, intc_cfg_ptr, intc_cfg_ptr->CpuBaseAddress);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}

/************************** Connect DMA Interrupts ******************************/
// Function to connect the interrupts
//map interrupt to cpu is done in XScuGic_Enable()
void Connect_DMA_Interrupts(){
    // Connect interrupt handlers for each DMA channel
    XScuGic_Connect(&intc, XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR, (Xil_ExceptionHandler)DMA_Interrupt_Handler_Ch1, &DMA_CH1_inst);
    XScuGic_Connect(&intc, XPAR_FABRIC_AXI_DMA_1_MM2S_INTROUT_INTR, (Xil_ExceptionHandler)DMA_Interrupt_Handler_Ch2, &DMA_CH2_inst);
    XScuGic_Connect(&intc, XPAR_FABRIC_AXI_DMA_2_MM2S_INTROUT_INTR, (Xil_ExceptionHandler)DMA_Interrupt_Handler_Ch3, &DMA_CH3_inst);
    XScuGic_Connect(&intc, XPAR_FABRIC_AXI_DMA_3_MM2S_INTROUT_INTR, (Xil_ExceptionHandler)DMA_Interrupt_Handler_Ch4, &DMA_CH4_inst);

	//set priority and trigger typedef 0x3 rising edge 0x1 high
	XScuGic_SetPriorityTriggerType(&intc, XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR, 0xA0, 0x3);
	//XScuGic_InterruptMaptoCpu(&intc, (u8)XScuGic_GetCPUID(), XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR);

	// Enable interrupts for each DMA channel
	XScuGic_Enable(&intc, XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR);
	XScuGic_Enable(&intc, XPAR_FABRIC_AXI_DMA_1_MM2S_INTROUT_INTR);
	XScuGic_Enable(&intc, XPAR_FABRIC_AXI_DMA_2_MM2S_INTROUT_INTR);
	XScuGic_Enable(&intc, XPAR_FABRIC_AXI_DMA_3_MM2S_INTROUT_INTR);

}

/************************** Enable Interrupts ******************************/
// Function to enable the interrupts
void Enable_Interrupts(){
	Xil_ExceptionInit(); //does nothing
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &intc);
    Xil_ExceptionEnable();// calls Xil_ExceptionEnableMask(XIL_EXCEPTION_ID_IRQ_INT);
}

/************************** Main Function ******************************/
int main(){
    DMA_INIT();
    Xil_DCacheDisable();
	// Initialize the interrupt controller
    if (Init_Interrupt_Controller() != XST_SUCCESS) {
        xil_printf("Error initializing interrupt controller\n");
        return XST_FAILURE;
    }

	//Call Interrupt initialization functions, order important
    Enable_Interrupts();
	Connect_DMA_Interrupts();


	// General Init
	int counter = 0;
	for(int i = 0; i < NUM_CHANNELS; i++){

		//start with empty buffer
		Clear_Buffer(LED_BUFFER_Instances[i]);

		//Reset TxDone Flags
		TxDoneA[i] = 1;
	}

    while(1){

        //for (int channel = 0; channel < NUM_CHANNELS; ++channel) {
    	for (int channel = 0; channel < 1; ++channel) {
            // Check if DMA is ready
            if (TxDoneA[channel] == 1) {
                // DMA is ready
                Update_Channel4(LED_BUFFER_Instances[channel], channel, counter, 0x00FF00);

                TxDoneA[channel] = 0;

                // Start DMA transfer
                //BUFFER SIZE * 4BYTE per LED
                //XAxiDma_SimpleTransfer(DMA_Instances[channel], (UINTPTR)LED_BUFFER_Instances[channel], BUFFER_SIZE * 4, XAXIDMA_DMA_TO_DEVICE);
                u32 Transmit_Status = XAxiDma_SimpleTransfer(DMA_Instances[channel], (UINTPTR)LED_BUFFER_Instances[channel], 1024, XAXIDMA_DMA_TO_DEVICE);


                for(volatile int i = 0 ; i< 0xFFFF ; i++)
                	;

                counter++;

            }
        }
    }
    return 0;
}

/************************** Generic DMA Interrupt Handler ******************************/
//Use Generic Interrupt Function:
void DMA_Interrupt_Function(XAxiDma *AxiDMAInst, int channel) {
	//Handle interrupt for channel

	//Get IRQ
	u32 irqStatus = XAxiDma_IntrGetIrq(AxiDMAInst, XAXIDMA_DMA_TO_DEVICE);
	//acknowledge pending IRQ
	XAxiDma_IntrAckIrq(AxiDMAInst, irqStatus, XAXIDMA_DMA_TO_DEVICE);

	//combine with mask
	    if (irqStatus & XAXIDMA_IRQ_IOC_MASK) {
        // Set the completion flag for the corresponding channel
        TxDoneA[channel] = 1;
    }
}

/************************** Specific Interrupt Handlers ******************************/
//Specific Interrupt Handler
void DMA_Interrupt_Handler_Ch1(void *CallbackRef) {
	DMA_Interrupt_Function((XAxiDma *)CallbackRef, 0);
}

void DMA_Interrupt_Handler_Ch2(void *CallbackRef) {
    DMA_Interrupt_Function((XAxiDma *)CallbackRef, 1);
}

void DMA_Interrupt_Handler_Ch3(void *CallbackRef) {
	DMA_Interrupt_Function((XAxiDma *)CallbackRef, 2);
}

void DMA_Interrupt_Handler_Ch4(void *CallbackRef) {
	DMA_Interrupt_Function((XAxiDma *)CallbackRef, 3);
}
