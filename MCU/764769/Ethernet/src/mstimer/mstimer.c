//=============================================================================
//     Copyright (c) 2006	ASIX Electronic Corporation      All rights reserved.
//
//     This is unpublished proprietary source code of ASIX Electronic Corporation
//
//     The copyright notice above does not evidence any actual or intended
//     publication of such source code.
//=============================================================================
// Module Name: mstimer.c
// Purpose:
// Author:
// Date:
// Notes:
// $Log: mstimer.c,v $
// Revision 1.2  2006/07/25 05:34:56  borbin
// no message
//
// Revision 1.1.1.1  2006/06/20 05:50:28  borbin
// no message
//
//=============================================================================

// INCLUDE FILE DECLARATIONS //
#include "reg80390.h"
#include "mstimer.h"
#include "interrupt.h"
#include "dma.h"
#include "ax11000_cfg.h"

// NAMING CONSTANT DECLARATIONS //

// GLOBAL VARIABLES DECLARATIONS //
byte IDATA ExecuteRuntimeFlag _at_ 0x30;
/*//commented out by cjm
#if (BOOTLDR_ISR)
  byte CODE RT_SWTIMER_INT _at_ 0x6073;
#endif
//commented out by cjm*/

// LOCAL VARIABLES DECLARATIONS //
static ulong swtimer_Counter = 0;

// ----------------------------------------------------------------------------
// name    : SWTIMER_Timer
// purpose : 
// params  :
// returns :
// note    :
// ----------------------------------------------------------------------------
static void SWTIMER_Timer(void) interrupt 10
{
		byte	temp;

		EINT5 = 0;
		EIF &= ~INT5F;
		temp = SDSTSR;
		if (temp & SWTIMER_EXPIRED)
			swtimer_Counter++;
		EINT5 = 1;

} // End of SWTIMER_Timer //

// ----------------------------------------------------------------------------
// name    : SWTIMER_Init
// purpose : Initial software timer module.
// params  :
// returns :
// note    :
// ----------------------------------------------------------------------------
void SWTIMER_Init(void)
{
#ifdef RuntimeCodeAt24KH
		ExecuteRuntimeFlag |= 0x01;
#endif

} // End of SWTIMER_Init //

// ----------------------------------------------------------------------------
// name    : SWTIMER_Start
// purpose : Enable and start software timer.
// params  :
// returns :
// note    :
// ----------------------------------------------------------------------------
void SWTIMER_Start(void)
{
	byte XDATA	temp[2];

	// set software timer //
	temp[1] = (byte)SWTIMER_INTERVAL;
	temp[0] = (byte)(SWTIMER_INTERVAL >> 8) + SWTIMER_START + SWTIMER_INT_ENABLE;
	DMA_WriteReg(SWTIMER_REG, temp, 2);
	EXTINT5(1);	// Enable INT5 interrupt for software timer. //
} // End of SWTIMER_Start //

#if (SWTIMER_STOP_FUNC == SWTIMER_SUPPORT_STOP_FUNC)
// ----------------------------------------------------------------------------
// name    : SWTIMER_Stop
// purpose : Disable and Stop software timer.
// params  :
// returns :
// note    :
// ----------------------------------------------------------------------------
void SWTIMER_Stop(void)
{
	byte XDATA	temp[2];

	// set software timer //
	temp[1] = (byte)SWTIMER_INTERVAL;
	temp[0] = (byte)(SWTIMER_INTERVAL >> 8);
	DMA_WriteReg(SWTIMER_REG, temp, 2);
} // End of SWTIMER_Stop //
#endif

// ----------------------------------------------------------------------------
// name    : SWTIMER_Tick
// purpose : Get software timer count.
// params  :
// returns :
// note    :
// ----------------------------------------------------------------------------
ulong SWTIMER_Tick(void)
{
	ulong	timer;
	byte	isr;

	isr = EA;
	EA = 0;
	timer = swtimer_Counter;
	EA = isr;
	return timer;
} // End of SWTIMER_Tick //

// End of mstmier.c //