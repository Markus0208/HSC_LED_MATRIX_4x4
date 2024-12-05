#ifndef ACCESS_SEMPHR_H
#define ACCESS_SEMPHR_H


#include "FreeRTOS.h"
#include "semphr.h"

extern SemaphoreHandle_t ptr_binary_semphr;

extern uint32_t NEW_DATA_FLAG;
extern uint32_t *global_received_array;

void initSemphr(void);




#endif // ACCESS_SEMPHR_H
