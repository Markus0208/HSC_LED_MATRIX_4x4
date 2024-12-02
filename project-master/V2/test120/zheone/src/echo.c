#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include "echo.h"

#include "lwip/err.h"
#include "lwip/tcp.h"
#if defined(__arm__) || defined(__aarch64__)
#include "xil_printf.h"
#endif

#define INITIAL_BUFFER_SIZE 4096

uint8_t *recv_buffer = NULL;
size_t buffer_size = 0;
size_t buffer_capacity = 0;

uint32_t *received_array = NULL;
uint32_t total_elements_received = 0; // Gesamtanzahl empfangener Elemente
uint32_t total_array_size = 0; // Erwartete Gesamtgröße

int transfer_data()
{
    return 0;
}

#include "echo.h"
#include <string.h>

char global_payload[MAX_PAYLOAD_SIZE] = {0};
int global_payload_len = 0;

void print_app_header()
{
    xil_printf("\n\r\n\r-----lwIP TCP echo server ------\n\r");
    xil_printf("TCP packets sent to port 6001 will be echoed back\n\r");
}

// triggers when data is sent to the server
err_t recv_callback(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err) {
    if (!p) {
        xil_printf("Connection closed by peer.\n\r");
        tcp_close(tpcb);
        tcp_recv(tpcb, NULL);

        if (received_array != NULL) {
            free(received_array);
            received_array = NULL;
        }

        free(recv_buffer);
        recv_buffer = NULL;
        buffer_size = 0;
        buffer_capacity = 0;
        total_elements_received = 0;
        total_array_size = 0;

        return ERR_OK;
    }

    // Erweiterung des Empfangsbuffers
    if (buffer_size + p->len > buffer_capacity) {
        buffer_capacity = buffer_capacity ? buffer_capacity * 2 : INITIAL_BUFFER_SIZE;
        recv_buffer = realloc(recv_buffer, buffer_capacity);
        if (recv_buffer == NULL) {
            xil_printf("Memory allocation for recv_buffer failed.\n\r");
            pbuf_free(p);
            return ERR_MEM;
        }
    }

    memcpy(recv_buffer + buffer_size, p->payload, p->len);
    buffer_size += p->len;
    pbuf_free(p);
    tcp_recved(tpcb, p->len);

    size_t offset = 0;
    while (buffer_size - offset >= sizeof(uint32_t)) {
        uint32_t block_size;
        memcpy(&block_size, recv_buffer + offset, sizeof(block_size));
        block_size = ntohl(block_size);

        if (block_size == 0) {
            // Ende der Übertragung
            xil_printf("End of transmission received.\n\r");
            xil_printf("Complete array received (%u elements):\n\r", total_elements_received);
            for (int i = 0; i < total_elements_received; i++) {
                xil_printf("%02x ", received_array[i]);
            }
            xil_printf("\n\r");

            free(received_array);
            received_array = NULL;
            total_elements_received = 0;
            total_array_size = 0;

            offset += sizeof(block_size);
            continue;
        }

        uint32_t expected_data_size = block_size * sizeof(uint32_t);
        if (buffer_size - offset < sizeof(uint32_t) + expected_data_size) {
            // Nicht genügend Daten für vollständigen Block
            break;
        }

        // Speicherverwaltung wie vorher
        if (received_array == NULL) {
            total_array_size = block_size;
            received_array = malloc(total_array_size * sizeof(uint32_t));
            if (received_array == NULL) {
                xil_printf("Memory allocation failed.\n\r");
                return ERR_MEM;
            }
        } else {
            uint32_t new_total_size = total_elements_received + block_size;
            uint32_t *new_array = realloc(received_array, new_total_size * sizeof(uint32_t));
            if (new_array == NULL) {
                xil_printf("Memory reallocation failed.\n\r");
                free(received_array);
                received_array = NULL;
                total_elements_received = 0;
                total_array_size = 0;
                return ERR_MEM;
            }
            received_array = new_array;
            total_array_size = new_total_size;
        }

        uint32_t *payload_data = (uint32_t *)(recv_buffer + offset + sizeof(uint32_t));
        for (int i = 0; i < block_size; i++) {
            received_array[total_elements_received + i] = (payload_data[i]);
        }
        total_elements_received += block_size;

        xil_printf("Received block (%u elements):\n\r", block_size);
        for (int i = 0; i < block_size; i++) {
            xil_printf("%02x ", received_array[total_elements_received - block_size + i]);
        }
        xil_printf("\n\r");

        offset += sizeof(uint32_t) + expected_data_size;
    }

    // Verschieben der verbleibenden Daten
    if (offset < buffer_size) {
        memmove(recv_buffer, recv_buffer + offset, buffer_size - offset);
        buffer_size -= offset;
    } else {
        buffer_size = 0;
    }

    return ERR_OK;
}




// err_t recv_callback(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err)
// {
//     if (!p) {
//         xil_printf("Connection closed by peer.\n\r");
//         tcp_close(tpcb);
//         tcp_recv(tpcb, NULL);
//         return ERR_OK;
//     }

//     tcp_recved(tpcb, p->len);

//     if (p->len < sizeof(uint32_t)) {
//         xil_printf("Received payload too small to contain array size.\n\r");
//         pbuf_free(p);
//         return ERR_VAL;
//     }


//     uint32_t array_size;
//     memcpy(&array_size, p->payload, sizeof(array_size));
//     array_size = ntohl(array_size); // Byte-Reihenfolge (Network to Host)

//     xil_printf("Received array size: %u\n\r", array_size);


//     uint32_t expected_size = array_size * sizeof(uint32_t);
//     if (p->len < sizeof(array_size) + expected_size) {
//         xil_printf("Data size mismatch: expected %u, got %u\n\r", expected_size + sizeof(array_size), p->len);
//         pbuf_free(p);
//         return ERR_VAL;
//     }

//     // Speicher anpassen
//     if (received_array != NULL) {
//         free(received_array); // Alten Speicher freigeben
//         received_array = NULL;
//     }

//     received_array = (uint32_t *)malloc(array_size * sizeof(uint32_t));
//     if (received_array == NULL) {
//         xil_printf("Memory allocation for received_array failed.\n\r");
//         pbuf_free(p);
//         return ERR_MEM;
//     }


//     uint32_t *payload_data = (uint32_t *)((char *)p->payload + sizeof(array_size));

//     // Array verarbeiten und in Empfangsarray speichern
//     for (int i = 0; i < array_size; i++) {
//         received_array[i] = (payload_data[i]);
//     }

//     // Debugging-Ausgabe des empfangenen Arrays
//     xil_printf("Received array (uint32):\n\r");
//     for (int i = 0; i < array_size; i++) {
//         xil_printf("%02x ", received_array[i]);
//     }
//     xil_printf("\n\r");

//     // Payload-Speicher freigeben
//     pbuf_free(p);

//     return ERR_OK;
// }



// triggers when client connects
err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
{
    static int connection = 1;

    /* set the receive callback for this connection */
    tcp_recv(newpcb, recv_callback);

    /* just use an integer number indicating the connection id as the
       callback argument */
    tcp_arg(newpcb, (void *)(UINTPTR)connection);

    /* increment for subsequent accepted connections */
    connection++;

    return ERR_OK;
}

int start_application()
{
    struct tcp_pcb *pcb;
    err_t err;
    unsigned port = 7;

    /* create new TCP PCB structure */
    pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
    if (!pcb)
    {
        xil_printf("Error creating PCB. Out of Memory\n\r");
        return -1;
    }

    /* bind to specified @port */
    err = tcp_bind(pcb, IP_ANY_TYPE, port);
    if (err != ERR_OK)
    {
        xil_printf("Unable to bind to port %d: err = %d\n\r", port, err);
        return -2;
    }

    /* we do not need any arguments to callback functions */
    tcp_arg(pcb, NULL);

    /* listen for connections */
    pcb = tcp_listen(pcb);
    if (!pcb)
    {
        xil_printf("Out of memory while tcp_listen\n\r");
        return -3;
    }

    /* specify callback to use for incoming connections */
    tcp_accept(pcb, accept_callback);

    xil_printf("TCP echo server started @ port %d\n\r", port);
    xil_printf("start_application() done\n\r");
    return 0;
}















// the safe
// /*
//  * Copyright (C) 2009 - 2019 Xilinx, Inc.
//  * All rights reserved.
//  *
//  * Redistribution and use in source and binary forms, with or without modification,
//  * are permitted provided that the following conditions are met:
//  *
//  * 1. Redistributions of source code must retain the above copyright notice,
//  *    this list of conditions and the following disclaimer.
//  * 2. Redistributions in binary form must reproduce the above copyright notice,
//  *    this list of conditions and the following disclaimer in the documentation
//  *    and/or other materials provided with the distribution.
//  * 3. The name of the author may not be used to endorse or promote products
//  *    derived from this software without specific prior written permission.
//  *
//  * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
//  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
//  * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
//  * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
//  * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
//  * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
//  * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
//  * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
//  * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
//  * OF SUCH DAMAGE.
//  *
//  */

// #include <stdio.h>
// #include <string.h>

// #include "echo.h"

// #include "lwip/err.h"
// #include "lwip/tcp.h"
// #if defined(__arm__) || defined(__aarch64__)
// #include "xil_printf.h"
// #endif
// #define ARRAY_SIZE 64*64
// int32_t received_array[ARRAY_SIZE];

// int transfer_data()
// {
//     return 0;
// }

// #include "echo.h"
// #include <string.h>

// char global_payload[MAX_PAYLOAD_SIZE] = {0};
// int global_payload_len = 0;

// void print_app_header()
// {
//     xil_printf("\n\r\n\r-----lwIP TCP echo server ------\n\r");
//     xil_printf("TCP packets sent to port 6001 will be echoed back\n\r");
// }

// // triggers when data is sent to the server
// err_t recv_callback(void *arg, struct tcp_pcb *tpcb,
//                     struct pbuf *p, err_t err)
// {
//     /* do not read the packet if we are not in ESTABLISHED state */
//     if (!p)
//     {
//         tcp_close(tpcb);
//         tcp_recv(tpcb, NULL);
//         return ERR_OK;
//     }

//     /* indicate that the packet has been received */
//     tcp_recved(tpcb, p->len);


//     // Assuming the first 4 bytes are the size of the array
//     uint32_t array_size = 64*64*4;
//     // memcpy(&array_size, p->payload, sizeof(array_size));
//     // array_size = ntohl(array_size);
//     // xil_printf("Converted array_size (after ntohl): %u\n\r", array_size); // Erwartet: 64


//     // xil_printf("Received array:\n\r");
//     // for (int i = 0; i < ARRAY_SIZE; i++)
//     // {
//     //     for (int j = 0; j < ARRAY_SIZE; j++)
//     //     {
//     //         xil_printf("%f ", received_array[i][j]);
//     //     }
//     //     xil_printf("\n\r");
//     // }
//     // xil_printf("Total payload length: %d\n\r", p->len); // Erwartet: 68 (4 Bytes Header + 64 Bytes Daten)

//     // Check if the received data matches the expected size
//     if (array_size !=  ARRAY_SIZE * 4)
//     {
//         xil_printf("Received data size mismatch: expected %u, got %u\n\r", ARRAY_SIZE * ARRAY_SIZE * 4, array_size);
//         pbuf_free(p);
//         return ERR_VAL;
//     }

//     // Check if the received data matches the expected size
//     if (array_size != ARRAY_SIZE * sizeof(float)) {
//         xil_printf("Received data size mismatch: expected %u, got %u\n\r", ARRAY_SIZE * sizeof(float), array_size);
//         pbuf_free(p);
//         return ERR_VAL;
//     }

//     uint32_t *payload_data = (uint32_t *)((char *)p->payload /*+ sizeof(array_size)*/); // array size
//     for (int i = 0; i < ARRAY_SIZE; i++) {
//         received_array[i] = (payload_data[i]); // Byte-Order anpassen
//     }

//     // Print the received uint32 values for verification
//     xil_printf("Received array (uint32):\n\r");
//     for (int i = 0; i < ARRAY_SIZE; i++) {
//         xil_printf("%02x ", received_array[i]);
//     }
//     xil_printf("\n\r");

//     /* free the received pbuf */
//     pbuf_free(p);

//     return ERR_OK;
// }

// //     /* indicate that the packet has been received */
// //     tcp_recved(tpcb, p->len);

// //     // /* print the received payload */
// //     // for (int i = 0; i < p->len; i++) {
// //     //     xil_printf("%c", ((char*)p->payload)[i]);
// //     // }

// //     /* store the received payload in the global buffer */
// //     if (p->len < MAX_PAYLOAD_SIZE) {
// //         memcpy(global_payload, p->payload, p->len);
// //         global_payload_len = p->len;
// //     } else {
// //         xil_printf("Payload too large to store in global buffer\n\r");
// //     }

// //     /* free the received pbuf */
// //     pbuf_free(p);

// //     return ERR_OK;
// // }

// // triggers when client connects
// err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
// {
//     static int connection = 1;

//     /* set the receive callback for this connection */
//     tcp_recv(newpcb, recv_callback);

//     /* just use an integer number indicating the connection id as the
//        callback argument */
//     tcp_arg(newpcb, (void *)(UINTPTR)connection);

//     /* increment for subsequent accepted connections */
//     connection++;

//     return ERR_OK;
// }

// int start_application()
// {
//     struct tcp_pcb *pcb;
//     err_t err;
//     unsigned port = 7;

//     /* create new TCP PCB structure */
//     pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
//     if (!pcb)
//     {
//         xil_printf("Error creating PCB. Out of Memory\n\r");
//         return -1;
//     }

//     /* bind to specified @port */
//     err = tcp_bind(pcb, IP_ANY_TYPE, port);
//     if (err != ERR_OK)
//     {
//         xil_printf("Unable to bind to port %d: err = %d\n\r", port, err);
//         return -2;
//     }

//     /* we do not need any arguments to callback functions */
//     tcp_arg(pcb, NULL);

//     /* listen for connections */
//     pcb = tcp_listen(pcb);
//     if (!pcb)
//     {
//         xil_printf("Out of memory while tcp_listen\n\r");
//         return -3;
//     }

//     /* specify callback to use for incoming connections */
//     tcp_accept(pcb, accept_callback);

//     xil_printf("TCP echo server started @ port %d\n\r", port);
//     xil_printf("start_application() done\n\r");
//     return 0;
// }
