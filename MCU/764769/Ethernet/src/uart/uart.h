//----------------------------------------------------------------------------------------
//     Copyright (c) 2005     ASIX Electronic Corporation      All rights reserved.
//
//     This is unpublished proprietary source code of ASIX Electronic Corporation
//
//     The copyright notice above does not evidence any actual or intended
//     publication of such source code.
//----------------------------------------------------------------------------------------
//
//========================================================================================
// Module Name : uart.h
// Purpose     : A header file of uart.c includes UART0 and UART1 module.
// Author      : Robin Lee
// Date        : 2006-01-10
// Notes       :
// $Log: uart.h,v $
// Revision 1.1  2006/05/12 14:24:47  robin6633
// no message
//
// Revision 1.3  2006/05/03 02:46:00  robin6633
// Changed the the function name UART_GetBufCount()
// to UART_GetRxBufCount() .
//
// Revision 1.2  2006/05/02 01:43:45  robin6633
// Add an expanding function to get the counter value of UART software buffer.
//
// Revision 1.1  2006/04/07 11:39:14  robin6633
// no message
//
//========================================================================================

#ifndef __UART_H__
#define __UART_H__

// INCLUDE FILE DECLARATIONS //
#include	"uart_cfg.h"

// NAMING CONSTANT DECLARATIONS //
#define MAX_TX_UART0_BUF_SIZE	256 //512
#define MAX_TX_UART0_MASK		(MAX_TX_UART0_BUF_SIZE - 1)
#define MAX_RX_UART0_BUF_SIZE	256 //512
#define MAX_RX_UART0_MASK		(MAX_RX_UART0_BUF_SIZE - 1)

#define MAX_TX_UART1_BUF_SIZE	256
#define MAX_TX_UART1_MASK		(MAX_TX_UART1_BUF_SIZE - 1)
#define MAX_RX_UART1_BUF_SIZE	256
#define MAX_RX_UART1_MASK		(MAX_RX_UART1_BUF_SIZE - 1)

/* GLOBAL VARIABLES */
extern uint  UART0_RxCount;
extern byte  uart0_RxBuf[MAX_RX_UART0_BUF_SIZE];
extern uint  uart0_RxCount;
extern uint  uart0_RxTail;
extern byte  uart0_RxBuf[];
extern uint  uart0_RxHead;

extern uint  uart1_RxCount;
extern uint  uart1_RxTail;
extern byte  uart1_RxBuf[MAX_RX_UART1_BUF_SIZE];
extern uint  uart1_RxHead;

#define SCS100M                                    0xC0
#define SCSx75M                                    0x80
#define SCSx50M                                    0x40
#define SCSx25M                                    0x00

#define Baud___1200                                0x00
#define Baud___2400                                0x01
#define Baud___4800                                0x02
#define Baud___9600                                0x03
#define Baud__19200                                0x04
#define Baud__28800                                0x05
#define Baud__38400                                0x06
#define Baud__57600                                0x07
#define Baud__76800                                0x08
#define Baud__94750                                0x09
#define Baud_115200                                0x0A

#define F_25_B___1200                              Baud___1200 | SCSx25M
#define F_25_B___2400                              Baud___2400 | SCSx25M
#define F_25_B___4800                              Baud___4800 | SCSx25M
#define F_25_B___9600                              Baud___9600 | SCSx25M
#define F_25_B__19200                              Baud__19200 | SCSx25M
#define F_25_B__28800                              Baud__28800 | SCSx25M
#define F_25_B__38400                              Baud__38400 | SCSx25M
#define F_25_B__57600                              Baud__57600 | SCSx25M
#define F_25_B__76800                              Baud__76800 | SCSx25M
#define F_25_B__94750                              Baud__94750 | SCSx25M
#define F_25_B_115200                              Baud_115200 | SCSx25M
#define F_50_B___1200                              Baud___1200 | SCSx50M
#define F_50_B___2400                              Baud___2400 | SCSx50M
#define F_50_B___4800                              Baud___4800 | SCSx50M
#define F_50_B___9600                              Baud___9600 | SCSx50M
#define F_50_B__19200                              Baud__19200 | SCSx50M
#define F_50_B__28800                              Baud__28800 | SCSx50M
#define F_50_B__38400                              Baud__38400 | SCSx50M
#define F_50_B__57600                              Baud__57600 | SCSx50M
#define F_50_B__76800                              Baud__76800 | SCSx50M
#define F_50_B__94750                              Baud__94750 | SCSx50M
#define F_50_B_115200                              Baud_115200 | SCSx50M
#define F100_B___1200                              Baud___1200 | SCS100M
#define F100_B___2400                              Baud___2400 | SCS100M
#define F100_B___4800                              Baud___4800 | SCS100M
#define F100_B___9600                              Baud___9600 | SCS100M
#define F100_B__19200                              Baud__19200 | SCS100M
#define F100_B__28800                              Baud__28800 | SCS100M
#define F100_B__38400                              Baud__38400 | SCS100M
#define F100_B__57600                              Baud__57600 | SCS100M
#define F100_B__76800                              Baud__76800 | SCS100M
#define F100_B__94750                              Baud__94750 | SCS100M
#define F100_B_115200                              Baud_115200 | SCS100M

// EXPORTED SUBPROGRAM SPECIFICATIONS //
       void  uart_Init(byte port, baudrate, parity);
extern void  uart_ShowBuffer(byte* pd, byte eol);
       bool  uart_ParityChk(char checkbyte);
       bool  uart_SetPort(byte portNum);
// UART 0 routines
extern uint  uart0_PutChar(char c);
extern uint  uart0_GetKey(void);

extern byte  uart0_setBaudRate(byte baudrate);
extern void  uart0_PutStr(byte* pData, byte cnt);
extern void  uart0_GetBuf(byte* pData, byte cnt);
extern void  uart0_RxBufUpdate(byte cnt);
extern byte  uart0_RxPtrSet(byte c);
extern void  uart0_RxBufSet(byte c, uint  len);
extern byte  uart0_RxBufCmp(byte *pData,byte len);
extern uint  uart0_GetByteCount(void);
extern void  uart0_DisplayRxPointers(void);
extern void  uart0_ShowRxBuffer(void);
       byte  uart0_TxChk(void);
       void  uart0_SetMode(byte mode);
uint  UA0_GetCount(void);
extern char  uart0_NoBlockGetkey(void);
// UART 1 routines
extern uint  uart1_PutChar(char c);
extern uint  uart1_GetKey(void);
extern void  uart1_PutStr(byte* pData, byte cnt);
extern void  uart1_GetBuf(byte* pData, byte cnt);
extern void  uart1_RxBufUpdate(byte cnt);
extern byte  uart1_RxPtrSet(byte c);
extern void  uart1_RxBufSet(byte c, uint  len);
extern byte  uart1_RxBufCmp(byte *pData,byte len);
extern uint  uart1_GetByteCount(void);
extern void  uart1_DisplayRxPointers(byte crlf);
       bool  UART_ParityChk(char checkbyte);
       byte  uart1_TxChk(void);
       void  uart1_SetMode(byte mode);
uint  UA1_GetCount(void);
extern char  uart1_NoBlockGetkey(void);
//
void  PMM_Uart0Init(void);

#endif // End of __UART_H__ //
// End of uart.h //