/*
 *********************************************************************************
 *     Copyright (c) 2005   ASIX Electronic Corporation      All rights reserved.
 *
 *     This is unpublished proprietary source code of ASIX Electronic Corporation
 *
 *     The copyright notice above does not evidence any actual or intended
 *     publication of such source code.
 *********************************************************************************
 */
/*================================================================================
 * Module Name : ax11000api.c
 * Purpose     : Provide some API functions to access SFR, external data memory
 *               and peripheral registers of AX110xx chip.
 * Author      : Robin Lee
 * Date        : 2006-09-20
 * Notes       : None.
 * $Log$
 *================================================================================
 */

/* INCLUDE FILE DECLARATIONS */
#include	"reg80390.h"
#include	"types.h"
#include	"ax11000slv.h"
#include	<stdio.h>
#include	<absacc.h>


/* STATIC VARIABLE DECLARATIONS */


/* LOCAL SUBPROGRAM DECLARATIONS */


/* LOCAL SUBPROGRAM BODIES */


/* EXPORTED SUBPROGRAM BODIES */

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_SfrWr(unsigned char sfrAddr, unsigned char sfrData)
 * Purpose : Write one byte data to a SFR address.
 * Params  : sfrAddr - address of SFR
 *           sfrData - one byte data
 * Returns : TRUE - successful
 * Note    :
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_SfrWr(unsigned char sfrAddr, unsigned char sfrData)
{
	switch (sfrAddr)
	{
		case SFR_P0 :
			P0 = (unsigned char)sfrData;
			break;
		case SFR_SP :
			SP = (unsigned char)sfrData;
			break;
		case SFR_DPL0 :
			DPL0 = (unsigned char)sfrData;
			break;
		case SFR_DPH0 :
			DPH0 = (unsigned char)sfrData;
			break;
		case SFR_DPL1 :
			DPL1 = (unsigned char)sfrData;
			break;
		case SFR_DPH1 :
			DPH1 = (unsigned char)sfrData;
			break;
		case SFR_DPS :
			DPS = (unsigned char)sfrData;
			break;
		case SFR_PCON :
			PCON = (unsigned char)sfrData;
			break;
		case SFR_TCON :
			TCON = (unsigned char)sfrData;
			break;
		case SFR_TMOD :
			TMOD = (unsigned char)sfrData;
			break;
		case SFR_TL0 :
			TL0 = (unsigned char)sfrData;
			break;
		case SFR_TL1 :
			TL1 = (unsigned char)sfrData;
			break;
		case SFR_TH0 :
			TH0 = (unsigned char)sfrData;
			break;
		case SFR_TH1 :
			TH1 = (unsigned char)sfrData;
			break;
		case SFR_CKCON :
			CKCON = (unsigned char)sfrData;
			break;
		case SFR_CSREPR :
			CSREPR = (unsigned char)sfrData;
			break;
		case SFR_P1 :
			P1 = (unsigned char)sfrData;
			break;
		case SFR_EIF :
			EIF = (unsigned char)sfrData;
			break;
		case SFR_WTST :
			WTST = (unsigned char)sfrData;
			break;
		case SFR_DPX0 :
			DPX0 = (unsigned char)sfrData;
			break;
		case SFR_SDSTSR :
			SDSTSR = (unsigned char)sfrData;
			break;
		case SFR_DPX1 :
			DPX1 = (unsigned char)sfrData;
			break;
		case SFR_I2CCIR :
			I2CCIR = (unsigned char)sfrData;
			break;
		case SFR_I2CDR :
			I2CDR = (unsigned char)sfrData;
			break;
		case SFR_SCON0 :
			SCON0 = (unsigned char)sfrData;
			break;
		case SFR_SBUF0 :
			SBUF0 = (unsigned char)sfrData;
			break;
		case SFR_DBAR :
			DBAR = (unsigned char)sfrData;
			break;
		case SFR_DCIR :
			DCIR = (unsigned char)sfrData;
			break;
		case SFR_DDR :
			DDR = (unsigned char)sfrData;
			break;
		case SFR_ACON :
			ACON = (unsigned char)sfrData;
			break;
		case SFR_PISSR1 :
			PISSR1 = (unsigned char)sfrData;
			break;
		case SFR_PISSR2 :
			PISSR2 = (unsigned char)sfrData;
			break;
		case SFR_P2 :
			P2 = (unsigned char)sfrData;
			break;
		case SFR_LMSR_LSAIER :
			LMSR = (unsigned char)sfrData;
			break;
		case SFR_LCR_LSCR :
			LCR = (unsigned char)sfrData;
			break;
		case SFR_LSR_LSSR :
			LSR = (unsigned char)sfrData;
			break;
		case SFR_LDALR_XMWLR :
			LDALR = (unsigned char)sfrData;
			break;
		case SFR_LDAHR_XMWHR :
			LDAHR = (unsigned char)sfrData;
			break;
		case SFR_LDCSR_XMRLR :
			LDCSR = (unsigned char)sfrData;
			break;
		case SFR_XMRHR :
			XMRHR = (unsigned char)sfrData;
			break;
		case SFR_IE :
			IE = (unsigned char)sfrData;
			break;
		case SFR_LDLR :
			LDLR = (unsigned char)sfrData;
			break;
		case SFR_LDHR :
			LDHR = (unsigned char)sfrData;
			break;
		case SFR_LDMLR :
			DMALR = (unsigned char)sfrData;
			break;
		case SFR_LDMMR :
			DMAMR = (unsigned char)sfrData;
			break;
		case SFR_LDMHR :
			DMAHR = (unsigned char)sfrData;
			break;
		case SFR_TCIR :
			TCIR = (unsigned char)sfrData;
			break;
		case SFR_TDR :
			TDR = (unsigned char)sfrData;
			break;
		case SFR_P3 :
			P3 = (unsigned char)sfrData;
			break;
		case SFR_CCAPL0 :
			CCAPL0 = (unsigned char)sfrData;
			break;
		case SFR_CCAPL1 :
			CCAPL1 = (unsigned char)sfrData;
			break;
		case SFR_CCAPL2 :
			CCAPL2 = (unsigned char)sfrData;
			break;
		case SFR_CCAPL3 :
			CCAPL3 = (unsigned char)sfrData;
			break;
		case SFR_CCAPL4 :
			CCAPL4 = (unsigned char)sfrData;
			break;
		case SFR_MCIR :
			MCIR = (unsigned char)sfrData;
			break;
		case SFR_MDR :
			MDR = (unsigned char)sfrData;
			break;
		case SFR_IP :
			IP = (unsigned char)sfrData;
			break;
		case SFR_CCAPH0 :
			CCAPH0 = (unsigned char)sfrData;
			break;
		case SFR_CCAPH1 :
			CCAPH1 = (unsigned char)sfrData;
			break;
		case SFR_CCAPH2 :
			CCAPH2 = (unsigned char)sfrData;
			break;
		case SFR_CCAPH3 :
			CCAPH3 = (unsigned char)sfrData;
			break;
		case SFR_CCAPH4 :
			CCAPH4 = (unsigned char)sfrData;
			break;
		case SFR_EPCR :
			EPCR = (unsigned char)sfrData;
			break;
		case SFR_EPDR :
			EPDR = (unsigned char)sfrData;
			break;
		case SFR_SCON1 :
			SCON1 = (unsigned char)sfrData;
			break;
		case SFR_SBUF1 :
			SBUF1 = (unsigned char)sfrData;
			break;
		case SFR_CMOD :
			CMOD = (unsigned char)sfrData;
			break;
		case SFR_CCON :
			CCON = (unsigned char)sfrData;
			break;
		case SFR_CL :
			CL = (unsigned char)sfrData;
			break;
		case SFR_CH :
			CH = (unsigned char)sfrData;
			break;
		case SFR_T2CON :
			T2CON = (unsigned char)sfrData;
			break;
		case SFR_T2IF :
			T2IF = (unsigned char)sfrData;
			break;
		case SFR_RLDL :
			RLDL = (unsigned char)sfrData;
			break;
		case SFR_RLDH :
			RLDH = (unsigned char)sfrData;
			break;
		case SFR_TL2 :
			TL2 = (unsigned char)sfrData;
			break;
		case SFR_TH2 :
			TH2 = (unsigned char)sfrData;
			break;
		case SFR_SPICIR :
			SPICIR = (unsigned char)sfrData;
			break;
		case SFR_SPIDR :
			SPIDR = (unsigned char)sfrData;
			break;
		case SFR_PSW :
			PSW = (unsigned char)sfrData;
			break;
		case SFR_CCAPM0 :
			CCAPM0 = (unsigned char)sfrData;
			break;
		case SFR_CCAPM1 :
			CCAPM1 = (unsigned char)sfrData;
			break;
		case SFR_CCAPM2 :
			CCAPM2 = (unsigned char)sfrData;
			break;
		case SFR_CCAPM3 :
			CCAPM3 = (unsigned char)sfrData;
			break;
		case SFR_CCAPM4 :
			CCAPM4 = (unsigned char)sfrData;
			break;
		case SFR_OWCIR :
			OWCIR = (unsigned char)sfrData;
			break;
		case SFR_OWDR :
			OWDR = (unsigned char)sfrData;
			break;
		case SFR_WDCON :
			WDCON = (unsigned char)sfrData;
			break;
		case SFR_CANCIR :
			CANCIR = (unsigned char)sfrData;
			break;
		case SFR_CANDR :
			CANDR = (unsigned char)sfrData;
			break;
		case SFR_ACC :
			ACC = (unsigned char)sfrData;
			break;
		case SFR_UR2_THR_RBR_DLL :
			UR2_THR = (unsigned char)sfrData;
			break;
		case SFR_UR2_IER_DLH :
			UR2_IER = (unsigned char)sfrData;
			break;
		case SFR_UR2_IIR_FCR :
			UR2_IIR = (unsigned char)sfrData;
			break;
		case SFR_UR2_LCR :
			UR2_LCR = (unsigned char)sfrData;
			break;
		case SFR_UR2_MCR :
			UR2_MCR = (unsigned char)sfrData;
			break;
		case SFR_UR2_LSR :
			UR2_LSR = (unsigned char)sfrData;
			break;
		case SFR_UR2_MSR :
			UR2_MSR = (unsigned char)sfrData;
			break;
		case SFR_EIE :
			EIE = (unsigned char)sfrData;
			break;
		case SFR_STATUS :
			STATUS = (unsigned char)sfrData;
			break;
		case SFR_MXAX :
			MXAX = (unsigned char)sfrData;
			break;
		case SFR_TA :
			TA = (unsigned char)sfrData;
			break;
		case SFR_B :
			B = (unsigned char)sfrData;
			break;
		case SFR_EIP :
			EIP = (unsigned char)sfrData;
			break;
		case SFR_MD0 :
			MD0 = (unsigned char)sfrData;
			break;
		case SFR_MD1 :
			MD1 = (unsigned char)sfrData;
			break;
		case SFR_MD2 :
			MD2 = (unsigned char)sfrData;
			break;
		case SFR_MD3 :
			MD3 = (unsigned char)sfrData;
			break;
		case SFR_MD4 :
			MD4 = (unsigned char)sfrData;
			break;
		case SFR_MD5 :
			MD5 = (unsigned char)sfrData;
			break;
		case SFR_ARCON :
			ARCON = (unsigned char)sfrData;
			break;
		case SFR_C6 :
			SFRC6 = (unsigned char)sfrData;
			break;
		case SFR_C7 :
			SFRC7 = (unsigned char)sfrData;
			break;
		case SFR_D9 :
			SFRD9 = (unsigned char)sfrData;
			break;
		case SFR_DA :
			SFRDA = (unsigned char)sfrData;
			break;
		case SFR_DB :
			SFRDB = (unsigned char)sfrData;
			break;
		case SFR_DC :
			SFRDC = (unsigned char)sfrData;
			break;
		case SFR_DD :
			SFRDD = (unsigned char)sfrData;
			break;
		case SFR_EC :
			SFREC = (unsigned char)sfrData;
			break;
		case SFR_ED :
			SFRED = (unsigned char)sfrData;
			break;
		case SFR_EE :
			SFREE = (unsigned char)sfrData;
			break;
		case SFR_EF :
			SFREF = (unsigned char)sfrData;
			break;
		case SFR_F1 :
			SFRF1 = (unsigned char)sfrData;
			break;
		case SFR_F2 :
			SFRF2 = (unsigned char)sfrData;
			break;
		case SFR_F3 :
			SFRF3 = (unsigned char)sfrData;
			break;
		case SFR_F4 :
			SFRF4 = (unsigned char)sfrData;
			break;
		case SFR_F5 :
			SFRF5 = (unsigned char)sfrData;
			break;
		case SFR_F6 :
			SFRF6 = (unsigned char)sfrData;
			break;
		case SFR_F7 :
			SFRF7 = (unsigned char)sfrData;
			break;
		default :
			printf("Undefined SFR Address !\n");
	}
	return (TRUE);
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_SfrRd(unsigned char sfrAddr, unsigned char *sfrData)
 * Purpose : Read one byte data from a SFR address.
 * Params  : sfrAddr - address of SFR
 *           sfrData - one byte data
 * Returns : TRUE - successful
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_SfrRd(unsigned char sfrAddr, unsigned char *sfrData)
{
	switch (sfrAddr)
	{
		case SFR_P0 :
			*sfrData = (unsigned char)P0;
			break;
		case SFR_SP :
			*sfrData = (unsigned char)SP;
			break;
		case SFR_DPL0 :
			*sfrData = (unsigned char)DPL0;
			break;
		case SFR_DPH0 :
			*sfrData = (unsigned char)DPH0;
			break;
		case SFR_DPL1 :
			*sfrData = (unsigned char)DPL1;
			break;
		case SFR_DPH1 :
			*sfrData = (unsigned char)DPH1;
			break;
		case SFR_DPS :
			*sfrData = (unsigned char)DPS;
			break;
		case SFR_PCON :
			*sfrData = (unsigned char)PCON;
			break;
		case SFR_TCON :
			*sfrData = (unsigned char)TCON;
			break;
		case SFR_TMOD :
			*sfrData = (unsigned char)TMOD;
			break;
		case SFR_TL0 :
			*sfrData = (unsigned char)TL0;
			break;
		case SFR_TL1 :
			*sfrData = (unsigned char)TL1;
			break;
		case SFR_TH0 :
			*sfrData = (unsigned char)TH0;
			break;
		case SFR_TH1 :
			*sfrData = (unsigned char)TH1;
			break;
		case SFR_CKCON :
			*sfrData = (unsigned char)CKCON;
			break;
		case SFR_CSREPR :
			*sfrData = (unsigned char)CSREPR;
			break;
		case SFR_P1 :
			*sfrData = (unsigned char)P1;
			break;
		case SFR_EIF :
			*sfrData = (unsigned char)EIF;
			break;
		case SFR_WTST :
			*sfrData = (unsigned char)WTST;
			break;
		case SFR_DPX0 :
			*sfrData = (unsigned char)DPX0;
			break;
		case SFR_SDSTSR :
			*sfrData = (unsigned char)SDSTSR;
			break;
		case SFR_DPX1 :
			*sfrData = (unsigned char)DPX1;
			break;
		case SFR_I2CCIR :
			*sfrData = (unsigned char)I2CCIR;
			break;
		case SFR_I2CDR :
			*sfrData = (unsigned char)I2CDR;
			break;
		case SFR_SCON0 :
			*sfrData = (unsigned char)SCON0;
			break;
		case SFR_SBUF0 :
			*sfrData = (unsigned char)SBUF0;
			break;
		case SFR_DBAR :
			*sfrData = (unsigned char)DBAR;
			break;
		case SFR_DCIR :
			*sfrData = (unsigned char)DCIR;
			break;
		case SFR_DDR :
			*sfrData = (unsigned char)DDR;
			break;
		case SFR_ACON :
			*sfrData = (unsigned char)ACON;
			break;
		case SFR_PISSR1 :
			*sfrData = (unsigned char)PISSR1;
			break;
		case SFR_PISSR2 :
			*sfrData = (unsigned char)PISSR2;
			break;
		case SFR_P2 :
			*sfrData = (unsigned char)P2;
			break;
		case SFR_LMSR_LSAIER :
			*sfrData = (unsigned char)LMSR;
			break;
		case SFR_LCR_LSCR :
			*sfrData = (unsigned char)LCR;
			break;
		case SFR_LSR_LSSR :
			*sfrData = (unsigned char)LSR;
			break;
		case SFR_LDALR_XMWLR :
			*sfrData = (unsigned char)LDALR;
			break;
		case SFR_LDAHR_XMWHR :
			*sfrData = (unsigned char)LDAHR;
			break;
		case SFR_LDCSR_XMRLR :
			*sfrData = (unsigned char)LDCSR;
			break;
		case SFR_XMRHR :
			*sfrData = (unsigned char)XMRHR;
			break;
		case SFR_IE :
			*sfrData = (unsigned char)IE;
			break;
		case SFR_LDLR :
			*sfrData = (unsigned char)LDLR;
			break;
		case SFR_LDHR :
			*sfrData = (unsigned char)LDHR;
			break;
		case SFR_LDMLR :
			*sfrData = (unsigned char)DMALR;
			break;
		case SFR_LDMMR :
			*sfrData = (unsigned char)DMAMR;
			break;
		case SFR_LDMHR :
			*sfrData = (unsigned char)DMAHR;
			break;
		case SFR_TCIR :
			*sfrData = (unsigned char)TCIR;
			break;
		case SFR_TDR :
			*sfrData = (unsigned char)TDR;
			break;
		case SFR_P3 :
			*sfrData = (unsigned char)P3;
			break;
		case SFR_CCAPL0 :
			*sfrData = (unsigned char)CCAPL0;
			break;
		case SFR_CCAPL1 :
			*sfrData = (unsigned char)CCAPL1;
			break;
		case SFR_CCAPL2 :
			*sfrData = (unsigned char)CCAPL2;
			break;
		case SFR_CCAPL3 :
			*sfrData = (unsigned char)CCAPL3;
			break;
		case SFR_CCAPL4 :
			*sfrData = (unsigned char)CCAPL4;
			break;
		case SFR_MCIR :
			*sfrData = (unsigned char)MCIR;
			break;
		case SFR_MDR :
			*sfrData = (unsigned char)MDR;
			break;
		case SFR_IP :
			*sfrData = (unsigned char)IP;
			break;
		case SFR_CCAPH0 :
			*sfrData = (unsigned char)CCAPH0;
			break;
		case SFR_CCAPH1 :
			*sfrData = (unsigned char)CCAPH1;
			break;
		case SFR_CCAPH2 :
			*sfrData = (unsigned char)CCAPH2;
			break;
		case SFR_CCAPH3 :
			*sfrData = (unsigned char)CCAPH3;
			break;
		case SFR_CCAPH4 :
			*sfrData = (unsigned char)CCAPH4;
			break;
		case SFR_EPCR :
			*sfrData = (unsigned char)EPCR;
			break;
		case SFR_EPDR :
			*sfrData = (unsigned char)EPDR;
			break;
		case SFR_SCON1 :
			*sfrData = (unsigned char)SCON1;
			break;
		case SFR_SBUF1 :
			*sfrData = (unsigned char)SBUF1;
			break;
		case SFR_CMOD :
			*sfrData = (unsigned char)CMOD;
			break;
		case SFR_CCON :
			*sfrData = (unsigned char)CCON;
			break;
		case SFR_CL :
			*sfrData = (unsigned char)CL;
			break;
		case SFR_CH :
			*sfrData = (unsigned char)CH;
			break;
		case SFR_T2CON :
			*sfrData = (unsigned char)T2CON;
			break;
		case SFR_T2IF :
			*sfrData = (unsigned char)T2IF;
			break;
		case SFR_RLDL :
			*sfrData = (unsigned char)RLDL;
			break;
		case SFR_RLDH :
			*sfrData = (unsigned char)RLDH;
			break;
		case SFR_TL2 :
			*sfrData = (unsigned char)TL2;
			break;
		case SFR_TH2 :
			*sfrData = (unsigned char)TH2;
			break;
		case SFR_SPICIR :
			*sfrData = (unsigned char)SPICIR;
			break;
		case SFR_SPIDR :
			*sfrData = (unsigned char)SPIDR;
			break;
		case SFR_PSW :
			*sfrData = (unsigned char)PSW;
			break;
		case SFR_CCAPM0 :
			*sfrData = (unsigned char)CCAPM0;
			break;
		case SFR_CCAPM1 :
			*sfrData = (unsigned char)CCAPM1;
			break;
		case SFR_CCAPM2 :
			*sfrData = (unsigned char)CCAPM2;
			break;
		case SFR_CCAPM3 :
			*sfrData = (unsigned char)CCAPM3;
			break;
		case SFR_CCAPM4 :
			*sfrData = (unsigned char)CCAPM4;
			break;
		case SFR_OWCIR :
			*sfrData = (unsigned char)OWCIR;
			break;
		case SFR_OWDR :
			*sfrData = (unsigned char)OWDR;
			break;
		case SFR_WDCON :
			*sfrData = (unsigned char)WDCON;
			break;
		case SFR_CANCIR :
			*sfrData = (unsigned char)CANCIR;
			break;
		case SFR_CANDR :
			*sfrData = (unsigned char)CANDR;
			break;
		case SFR_ACC :
			*sfrData = (unsigned char)ACC;
			break;
		case SFR_UR2_THR_RBR_DLL :
			*sfrData = (unsigned char)UR2_THR;
			break;
		case SFR_UR2_IER_DLH :
			*sfrData = (unsigned char)UR2_IER;
			break;
		case SFR_UR2_IIR_FCR :
			*sfrData = (unsigned char)UR2_IIR;
			break;
		case SFR_UR2_LCR :
			*sfrData = (unsigned char)UR2_LCR;
			break;
		case SFR_UR2_MCR :
			*sfrData = (unsigned char)UR2_MCR;
			break;
		case SFR_UR2_LSR :
			*sfrData = (unsigned char)UR2_LSR;
			break;
		case SFR_UR2_MSR :
			*sfrData = (unsigned char)UR2_MSR;
			break;
		case SFR_EIE :
			*sfrData = (unsigned char)EIE;
			break;
		case SFR_STATUS :
			*sfrData = (unsigned char)STATUS;
			break;
		case SFR_MXAX :
			*sfrData = (unsigned char)MXAX;
			break;
		case SFR_TA :
			*sfrData = (unsigned char)TA;
			break;
		case SFR_B :
			*sfrData = (unsigned char)B;
			break;
		case SFR_EIP :
			*sfrData = (unsigned char)EIP;
			break;
		case SFR_MD0 :
			*sfrData = (unsigned char)MD0;
			break;
		case SFR_MD1 :
			*sfrData = (unsigned char)MD1;
			break;
		case SFR_MD2 :
			*sfrData = (unsigned char)MD2;
			break;
		case SFR_MD3 :
			*sfrData = (unsigned char)MD3;
			break;
		case SFR_MD4 :
			*sfrData = (unsigned char)MD4;
			break;
		case SFR_MD5 :
			*sfrData = (unsigned char)MD5;
			break;
		case SFR_ARCON :
			*sfrData = (unsigned char)ARCON;
			break;
		case SFR_C6 :
			*sfrData = (unsigned char)SFRC6;
			break;
		case SFR_C7 :
			*sfrData = (unsigned char)SFRC7;
			break;
		case SFR_D9 :
			*sfrData = (unsigned char)SFRD9;
			break;
		case SFR_DA :
			*sfrData = (unsigned char)SFRDA;
			break;
		case SFR_DB :
			*sfrData = (unsigned char)SFRDB;
			break;
		case SFR_DC :
			*sfrData = (unsigned char)SFRDC;
			break;
		case SFR_DD :
			*sfrData = (unsigned char)SFRDD;
			break;
		case SFR_EC :
			*sfrData = (unsigned char)SFREC;
			break;
		case SFR_ED :
			*sfrData = (unsigned char)SFRED;
			break;
		case SFR_EE :
			*sfrData = (unsigned char)SFREE;
			break;
		case SFR_EF :
			*sfrData = (unsigned char)SFREF;
			break;
		case SFR_F1 :
			*sfrData = (unsigned char)SFRF1;
			break;
		case SFR_F2 :
			*sfrData = (unsigned char)SFRF2;
			break;
		case SFR_F3 :
			*sfrData = (unsigned char)SFRF3;
			break;
		case SFR_F4 :
			*sfrData = (unsigned char)SFRF4;
			break;
		case SFR_F5 :
			*sfrData = (unsigned char)SFRF5;
			break;
		case SFR_F6 :
			*sfrData = (unsigned char)SFRF6;
			break;
		case SFR_F7 :
			*sfrData = (unsigned char)SFRF7;
			break;
		default :
			printf("Undefined SFR Address !\n");
	}
	return (TRUE);
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_ExtMemWr(unsigned long extMemAddr, unsigned char extMemData)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_ExtMemWr(unsigned long extMemAddr, unsigned char extMemData)
{
	FVAR(unsigned char, extMemAddr) = extMemData;

	return (TRUE);
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_ExtMemRd(unsigned long extMemAddr, unsigned char *extMemData)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_ExtMemRd(unsigned long extMemAddr, unsigned char *extMemData)
{
	*extMemData = FVAR(unsigned char, extMemAddr);

	return (TRUE);
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_ToeWr(unsigned char toeAddr, unsigned char *ptToeData, unsigned char toeDataLen)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_ToeWr(unsigned char toeAddr, unsigned char *ptToeData, unsigned char toeDataLen)
{
	unsigned char	i;

	for (i=0 ; i<toeDataLen ; i++)
	{
		TDR = *(ptToeData + i);
	}
	TCIR = toeAddr;
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_ToeRd(unsigned char toeAddr, unsigned char *ptToeData, unsigned char toeDataLen)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_ToeRd(unsigned char toeAddr, unsigned char *ptToeData, unsigned char toeDataLen)
{
	unsigned char	i;

	TCIR = toeAddr;
	for (i=0 ; i<toeDataLen ; i++)
	{
		*(ptToeData + i) = TDR;
	}
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_MacWr(unsigned char macAddr, unsigned char *ptMacData, unsigned char macDataLen)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_MacWr(unsigned char macAddr, unsigned char *ptMacData, unsigned char macDataLen)
{
	unsigned char	i;

	for (i=0 ; i<macDataLen ; i++)
	{
		MDR = *(ptMacData + i);
	}
	MCIR = macAddr;
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_MacRd(unsigned char macAddr, unsigned char *ptMacData, unsigned char macDataLen)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_MacRd(unsigned char macAddr, unsigned char *ptMacData, unsigned char macDataLen)
{
	unsigned char	i;

	MCIR = macAddr;
	for (i=0 ; i<macDataLen ; i++)
	{
		*(ptMacData + i) = MDR;
	}
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_PhyWr(unsigned char phyId, unsigned char phyAddr, unsigned short phyData)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_PhyWr(unsigned char phyId, unsigned char phyAddr, unsigned short phyData)
{
	unsigned char	cmdChk = 0;

	EPCR = 0xFF;
	EPDR = (unsigned char)(phyData);
	EPDR = (unsigned char)(phyData >> 8);
	EPCR = (unsigned char)(phyAddr & 0x000000FF);
	EPCR = (unsigned char)(phyId & 0x000000FF) + BIT6;
	while (1)
	{
		cmdChk = EPCR;
		cmdChk = EPCR;
		if (!(cmdChk & BIT6))
			break;
	}
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_PhyRd(unsigned char phyId, unsigned char phyAddr, unsigned short *phyData)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_PhyRd(unsigned char phyId, unsigned char phyAddr, unsigned short *phyData)
{
	unsigned char	cmdChk = 0;
	unsigned char	temp1 = 0;
	unsigned char	temp2 = 0;

	EPCR = 0xFF;
	EPCR = (unsigned char)(phyAddr & 0x000000FF);
	EPCR = (unsigned char)(phyId & 0x000000FF) + BIT6 + BIT7;
	while (1)
	{
		cmdChk = EPCR;
		cmdChk = EPCR;
		if (!(cmdChk & BIT6))
			break;
	}
	temp1 = EPDR;
	temp2 = EPDR;
	*phyData = (unsigned short)temp1 | ((unsigned short)temp2 << 8);
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_I2cWr(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_I2cWr(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
{
	unsigned char	i;

	for (i=0 ; i<dataLen ; i++)
	{
		I2CDR = *(ptData + i);
	}
	I2CCIR = addr;
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_I2cRd(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_I2cRd(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
{
	unsigned char	i;

	I2CCIR = addr;
	for (i=0 ; i<dataLen ; i++)
	{
		*(ptData + i) = I2CDR;
	}
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_SpiWr(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_SpiWr(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
{
	unsigned char	i;

	for (i=0 ; i<dataLen ; i++)
	{
		SPIDR = *(ptData + i);
	}
	SPICIR = addr;
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_SpiRd(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_SpiRd(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
{
	unsigned char	i;

	SPICIR = addr;
	for (i=0 ; i<dataLen ; i++)
	{
		*(ptData + i) = SPIDR;
	}
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_OwWr(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_OwWr(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
{
	unsigned char	i;

	for (i=0 ; i<dataLen ; i++)
	{
		OWDR = *(ptData + i);
	}
	OWCIR = addr;
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_OwRd(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_OwRd(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
{
	unsigned char	i;

	OWCIR = addr;
	for (i=0 ; i<dataLen ; i++)
	{
		*(ptData + i) = OWDR;
	}
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_CanWr(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_CanWr(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
{
	unsigned char	i;

	for (i=0 ; i<dataLen ; i++)
	{
		CANDR = *(ptData + i);
	}
	CANCIR = addr;
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_CanRd(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_CanRd(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
{
	unsigned char	i;

	CANCIR = addr;
	for (i=0 ; i<dataLen ; i++)
	{
		*(ptData + i) = CANDR;
	}
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_SwDmaWr(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_SwDmaWr(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
{
	unsigned char	i;

	for (i=0 ; i<dataLen ; i++)
	{
		DDR = *(ptData + i);
	}
	DCIR = addr;
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool AX11000SLV_SwDmaRd(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
 * Purpose:
 * Params:
 * Returns:
 * Note:
 *--------------------------------------------------------------------------------
 */
bool AX11000SLV_SwDmaRd(unsigned char addr, unsigned char *ptData, unsigned char dataLen)
{
	unsigned char	i;

	DCIR = addr;
	for (i=0 ; i<dataLen ; i++)
	{
		*(ptData + i) = DDR;
	}
	return TRUE;
}


/* End of ax11000slv.c */
