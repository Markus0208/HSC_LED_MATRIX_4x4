#ifndef ECHO_H
#define ECHO_H

#include "lwip/err.h"
#include "lwip/tcp.h"

#define MAX_PAYLOAD_SIZE 1024

extern char global_payload[MAX_PAYLOAD_SIZE];
extern int global_payload_len;

void print_app_header();
err_t recv_callback(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err);
err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err);
int start_application();

#endif // ECHO_H
