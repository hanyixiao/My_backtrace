#ifndef UART_STDIO_H
#define UART_STDIO_H
#include "stm32f1xx_hal.h"
extern void uart_printf_init(UART_HandleTypeDef *handle);
extern void UART_printf(const char *pcString, ...);
#endif
