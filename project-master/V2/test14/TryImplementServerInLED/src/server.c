#include <stdio.h>
#include <string.h>
#include "xparameters.h"
#include "netif/xadapter.h"
#include "platform.h"
#include "platform_config.h"
#include "lwip/tcp.h"
#include "lwip/ip_addr.h"    // Add this include for ip_addr_t
#include "xil_cache.h"

#if defined (__arm__) || defined(__aarch64__)
#include "xil_printf.h"
#endif

#define TCP_PORT 5001
#define BUFFER_SIZE 256  // Adjust based on your expected data size

// Declare the network interface and related flags
static struct netif server_netif;
struct netif *echo_netif = &server_netif;

volatile int TcpFastTmrFlag = 0;
volatile int TcpSlowTmrFlag = 0;

static struct tcp_pcb *connected_pcb;
static int received_data_len = 0;
static char recv_buffer[BUFFER_SIZE];

// Forward declarations
err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err);
err_t recv_callback(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err);
void error_callback(void *arg, err_t err);

// Setup application (TCP server)
int start_application()
{
    struct tcp_pcb *pcb;
    err_t err;

    // Create new TCP Protocol Control Block
    pcb = tcp_new();
    if (!pcb) {
        xil_printf("Error creating PCB. Out of Memory\n\r");
        return -1;
    }

    // Bind to specified port
    err = tcp_bind(pcb, IP_ADDR_ANY, TCP_PORT);
    if (err != ERR_OK) {
        xil_printf("Unable to bind to port %d: err = %d\n\r", TCP_PORT, err);
        return -2;
    }

    // Start TCP listening
    pcb = tcp_listen(pcb);
    tcp_accept(pcb, accept_callback);

    xil_printf("TCP server started on port %d\n\r", TCP_PORT);
    return 0;
}

// Accept callback when a client connects
err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
{
    xil_printf("Connection established\n\r");
    connected_pcb = newpcb;

    // Set callbacks for received data and errors
    tcp_recv(newpcb, recv_callback);
    tcp_err(newpcb, error_callback);

    return ERR_OK;
}

// Receive callback when data is received from client
err_t recv_callback(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err)
{
    if (!p) { // Connection closed
        xil_printf("Connection closed by client\n\r");
        tcp_close(tpcb);
        return ERR_OK;
    }

    if (p->len > 0) {
        // Copy received data to buffer
        memcpy(recv_buffer + received_data_len, p->payload, p->len);
        received_data_len += p->len;

        // Free received packet buffer
        tcp_recved(tpcb, p->len);

        // Check if entire 2D array has been received (adjust condition as needed)
        if (received_data_len >= sizeof(int) * 10 * 10) {  // Example for a 10x10 array of ints
            int array[10][10];
            memcpy(array, recv_buffer, sizeof(int) * 10 * 10);

            xil_printf("Received 10x10 array:\n");
            for (int i = 0; i < 10; ++i) {
                for (int j = 0; j < 10; ++j) {
                    xil_printf("%d ", array[i][j]);
                }
                xil_printf("\n");
            }

            received_data_len = 0;  // Reset for next message
        }
    }

    // Release memory allocated for packet buffer
    pbuf_free(p);

    return ERR_OK;
}

// Error callback in case of a connection error
void error_callback(void *arg, err_t err)
{
    xil_printf("Connection error: %d\n\r", err);
    connected_pcb = NULL;
}
