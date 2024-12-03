#ifndef ECHO_H
#define ECHO_H






extern uint32_t NEW_DATA_FLAG;
extern uint32_t *global_received_array;










// Function declarations
/**
 * @brief Prints the echo server application header.
 */
void print_echo_app_header(void);

/**
 * @brief Processes an individual echo request for a connected client.
 *
 * @param p Pointer to the client socket descriptor.
 */
void process_echo_request(void *p);

/**
 * @brief Initializes and runs the echo server application thread.
 */
void echo_application_thread(void);



#endif // ECHO_H
