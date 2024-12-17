#include <stdio.h>
#include <string.h>
#include "echo.h"

#include "lwip/sockets.h"
#include "netif/xadapter.h"
#include "lwipopts.h"
#include "xil_printf.h"
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "access_semphr.h"
#include "led.h"

#define THREAD_STACKSIZE 1024//256
#define INITIAL_BUFFER_SIZE 4096

u16_t echo_port = 7;
UBaseType_t task_count2 = 0;

void print_echo_app_header()
{
    xil_printf("%20s %6d %s\r\n", "echo server",
               echo_port,
               "$ telnet <board_ip> 7");
}

/* thread spawned for each connection */
void process_echo_request(void *p)
{
    int sd = (int)p;
    size_t buffer_capacity = INITIAL_BUFFER_SIZE;
    size_t buffer_size = 0;
    uint32_t total_elements_received = 0;

    if (!recv_buffer)
    {
        xil_printf("Memory allocation failed for recv_buffer.\n");
        close(sd);
        vTaskDelete(NULL);
        return;
    }


    while (1)
    {
        int n = recv(sd, recv_buffer + buffer_size, buffer_capacity - buffer_size, 0);
        if (n <= 0)
        {
            xil_printf("Connection closed or error occurred.\n");
            xil_printf("\n----------------------------------------\n");
            break;
        }
        buffer_size += n;

        size_t offset = 0;
        while (buffer_size - offset >= sizeof(uint32_t))
        {
            uint32_t block_size;
            memcpy(&block_size, recv_buffer + offset, sizeof(block_size));
            block_size = ntohl(block_size);

            if (block_size == 0)
            {
                xil_printf("End of transmission.\n");
                xil_printf("Total elements received: %u\n", total_elements_received);

                xil_printf("bevor sem echo ");
                if (xSemaphoreTake(ptr_binary_semphr, portMAX_DELAY) == pdTRUE) {
                    NEW_DATA_FLAG = 1;
                    
                    xSemaphoreGive(ptr_binary_semphr);
                } else {
                    xil_printf("Semaphore could not be taken.\n");
                }

                xil_printf("Free heap size: %u\n", xPortGetFreeHeapSize());
                						task_count2 = uxTaskGetNumberOfTasks();
                						xil_printf("Aktive Tasks: %u\n", task_count2);

                						led_thread(total_elements_received);


                block_size = 0;
                offset += sizeof(block_size);


                xil_printf("bevore taskdelete");
                break;
                xil_printf("task deleted");

            }

            size_t expected_data_size = block_size * sizeof(uint32_t);
            if (buffer_size - offset < sizeof(uint32_t) + expected_data_size)
            {
                break; 
            }


            uint32_t *payload_data = (uint32_t *)(recv_buffer + offset + sizeof(uint32_t));
            if (xSemaphoreTake(ptr_binary_semphr, portMAX_DELAY) == pdTRUE)
                           {
            for (uint32_t i = 0; i < block_size; i++)
            {
            	global_received_array[total_elements_received + i] = payload_data[i];
            }
            xSemaphoreGive(ptr_binary_semphr);
                           }
            total_elements_received += block_size;

            xil_printf("Received block of %u elements.\n", block_size);
            offset += sizeof(uint32_t) + expected_data_size;
        }

        if (offset < buffer_size)
        {
            memmove(recv_buffer, recv_buffer + offset, buffer_size - offset);
            buffer_size -= offset;


        }
        else
        {
            buffer_size = 0;
        }
    }

    close(sd);
    vTaskDelete(NULL);
    return;
}

void echo_application_thread()
{
    int sock, new_sd;
    int size;
#if LWIP_IPV6 == 0
    struct sockaddr_in address, remote;

    memset(&address, 0, sizeof(address));

    if ((sock = lwip_socket(AF_INET, SOCK_STREAM, 0)) < 0)
        return;

    address.sin_family = AF_INET;
    address.sin_port = htons(echo_port);
    address.sin_addr.s_addr = INADDR_ANY;
#else
    struct sockaddr_in6 address, remote;

    memset(&address, 0, sizeof(address));

    address.sin6_len = sizeof(address);
    address.sin6_family = AF_INET6;
    address.sin6_port = htons(echo_port);

    memset(&(address.sin6_addr), 0, sizeof(address.sin6_addr));

    if ((sock = lwip_socket(AF_INET6, SOCK_STREAM, 0)) < 0)
        return;
#endif

    if (lwip_bind(sock, (struct sockaddr *)&address, sizeof(address)) < 0)
        return;

    lwip_listen(sock, 0);

    size = sizeof(remote);

    while (1)
    {
        if ((new_sd = lwip_accept(sock, (struct sockaddr *)&remote, (socklen_t *)&size)) > 0)
        {
            sys_thread_new("echos", process_echo_request,
                           (void *)new_sd,
                           THREAD_STACKSIZE,
                           DEFAULT_THREAD_PRIO);
        }
    }
}
