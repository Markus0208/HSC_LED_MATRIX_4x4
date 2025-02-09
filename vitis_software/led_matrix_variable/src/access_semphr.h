#ifndef ACCESS_SEMPHR_H
#define ACCESS_SEMPHR_H

#include <stdio.h>
#include <string.h>
#include "FreeRTOS.h"
#include "semphr.h"

extern SemaphoreHandle_t ptr_binary_semphr;

extern uint32_t NEW_DATA_FLAG;
extern uint32_t *global_received_array;
extern uint8_t *recv_buffer;
void initSemphr(void);




#endif // ACCESS_SEMPHR_H
