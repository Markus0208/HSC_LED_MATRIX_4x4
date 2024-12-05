#include "access_semphr.h"
#include "FreeRTOS.h"
#include "semphr.h"

SemaphoreHandle_t ptr_binary_semphr = NULL;
uint32_t NEW_DATA_FLAG = 0;
uint32_t *global_received_array = NULL;

void initSemphr(void){

	if (global_received_array != NULL) {
		free(global_received_array);
	}

	global_received_array = (uint32_t *)malloc(4096);

	if (global_received_array == NULL) {
		xil_printf("Memory allocation failed for global buffer\n");
	}

	ptr_binary_semphr = xSemaphoreCreateBinary();

	if (ptr_binary_semphr == NULL){
		xil_printf("ALLLAAARMMM");
	}
	xil_printf("ALLLAAARM");
}
