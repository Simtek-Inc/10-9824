/*
 ******************************************************************************
 *     Copyright (c) 2006     ASIX Electronic Corporation      All rights reserved.
 *
 *     This is unpublished proprietary source code of ASIX Electronic Corporation
 *
 *     The copyright notice above does not evidence any actual or intended
 *     publication of such source code.
 ******************************************************************************
 */
/*=============================================================================
 * Module Name:main.h
 * Purpose:
 * Author:
 * Date:
 * Notes:
 * $Log: main.h,v $
 *=============================================================================
 */

#ifndef __MAIN_H__
#define __MAIN_H__

// INCLUDE FILE DECLARATIONS //
#include "types.h"
#include "instrument.h"                                                                   //

// NAMING CONSTANT DECLARATIONS //

// Protocol modules - 1:include 0:exclude //

// 1 : enable the support of dynamic change of port connection with a switch, when a link up event is detected,
//     the main module will notify the switch of possible port change by sending out a ARP packet to the gateway.
// 0 : disable the support.
#define SUPPORT_DYNAMIC_SWITCH_PORT_CHANGE      1
#define MAX_DHCP_DECLINE_COUNT                  10

// GLOBAL VARIABLES //

// EXPORTED SUBPROGRAM SPECIFICATIONS //

#endif // End of __MAIN_H__ //

#define EthMaxTxSize          512
#define EthMaxTxMask          EthMaxTxSize - 1

// GLOBAL VARIABLES //
extern byte                   EthTxBuffer[EthMaxTxSize];
extern uint                   EthTxBufHead;                       // array index to write data into the temporary buffer
extern uint                   EthTxBufTail;                       // array index to transfer data into the actual transmit buffer
extern uint                   EthTxCount;

// EXPORTED SUBPROGRAM SPECIFICATIONS //
//-------------------------------------------------------------//
uint writeEthTxBuffer(byte ch, uint Count);
void WriteEthTxCount(uint TempCount);
uint readEthTxBufCount(void);
uint main_readEthChar(byte* pDat);
void NOP(uint loop);
void fpgaWrite(byte addr, byte dat);
byte fpgaRead(byte addr);

#define TrxSocket 4


// End of main.h //