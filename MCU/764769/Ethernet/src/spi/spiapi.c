/*
 *********************************************************************************
 *     Copyright (c) 2005	ASIX Electronic Corporation      All rights reserved.
 *
 *     This is unpublished proprietary source code of ASIX Electronic Corporation
 *
 *     The copyright notice above does not evidence any actual or intended
 *     publication of such source code.
 *********************************************************************************
 */
/*================================================================================
 * Module Name : spiapi.c
 * Purpose     : API functions provide user to send and receive packet.
 *               These API functions invovle SPI driver to accomplish
 *               a packet transfer.
 * Author      : Robin Lee
 * Date        : 2006-01-11
 * Notes       :
 * $Log: spiapi.c,v $
 * Revision 1.1  2006/04/07 11:39:02  robin6633
 * no message
 *
 *================================================================================
 */

/* INCLUDE FILE DECLARATIONS */
#include	"reg80390.h"
#include	"types.h"
#include	"spi.h"
#include	"spiapi.h"   
#include "printd.h"                                                                       //


/* STATIC VARIABLE DECLARATIONS */


/* LOCAL SUBPROGRAM DECLARATIONS */


/* LOCAL SUBPROGRAM BODIES */


/* EXPORTED SUBPROGRAM BODIES */

/*
 *--------------------------------------------------------------------------------
 * bool SPI_WriteEnable(void)
 * Purpose : Enable a write process before sending a packet to write.
 * Params  : none
 * Returns : TRUE - successful
 * Note    : Write Enable must be initial when executing all write function.
 *--------------------------------------------------------------------------------
 */
bool SPI_WriteEnable(void)
{
	unsigned char	xmitByte = 0;
//    printd("got into writeEnable\n\r");	                                  
	xmitByte = SPI_WREN;               
	SPI_FlagEnb(SPI_BUSY);
	SPI_MstXmit(&xmitByte, 8, SPI_NORMAL_LEN|SPI_GO_BSY);

	while (SPI_FlagChk(SPI_BUSY)) {
        SPI_Func();
//        printd("exit spi_func\n\r");
    }                 //Stuck in this loop...

	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool SPI_WriteDisable(void)
 * Purpose : Disable a write process.
 * Params  : none
 * Returns : TRUE - successful
 * Note    : After WriteDisable executed, all writing function will be fail.
 *--------------------------------------------------------------------------------
 */
bool SPI_WriteDisable(void)
{
	unsigned char	xmitByte = 0;
	
	xmitByte = SPI_WRDI;
	SPI_FlagEnb(SPI_BUSY);
	SPI_MstXmit(&xmitByte, 8, SPI_NORMAL_LEN|SPI_GO_BSY);

	while (SPI_FlagChk(SPI_BUSY)) {}

	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool SPI_WriteStatus(unsigned char status)
 * Purpose : Change a device status register.
 * Params  : status - changed value.
 * Returns : TRUE - successful.
 * Note    :
 *--------------------------------------------------------------------------------
 */
bool SPI_WriteStatus(unsigned char status)
{
	unsigned char	writeStatus[2];
	
	writeStatus[1] = SPI_WRSR;
	writeStatus[0] = status;

	if (!SPI_WriteEnable())
		return FALSE;
	SPI_FlagEnb(SPI_BUSY);
	SPI_MstXmit(&writeStatus, 16, SPI_NORMAL_LEN|SPI_GO_BSY);
	while (SPI_FlagChk(SPI_BUSY)) {}
	
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool SPI_ReadStatus(unsigned char *status)
 * Purpose : Read a device status register.
 * Params  : *status - a pointer of status value.
 * Returns : TRUE - successful
 * Note    : 
 *--------------------------------------------------------------------------------
 */
bool SPI_ReadStatus(unsigned char *status)
{
	unsigned char	readStatus[2];
	
	readStatus[1] = SPI_RDSR;
	readStatus[0] = 0;
//    printd("read status\n\r");
	
	SPI_FlagEnb(SPI_BUSY);
	SPI_MstXmit(&readStatus, 16, SPI_NORMAL_LEN|SPI_GO_BSY);
//    printd("transmit\n\r");

	while (SPI_FlagChk(SPI_BUSY)) {SPI_Func();}
//    printd("busy\n\r");
	SPI_GetData(&readStatus);
//    printd("got data\n\r");
	*status = readStatus[0];
//    printd("end of read status\n\r");
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool SPI_ByteWrite(unsigned short addrOfMem, unsigned char byteData)
 * Purpose : Write one byte data into spi devices.
 * Params  : addrOfMem - address of accessing.
 *           byteData - data to be written.
 * Returns : TRUE - successful.
 * Note    :
 *--------------------------------------------------------------------------------
 */
bool SPI_ByteWrite(unsigned short addrOfMem, unsigned char byteData)
{
	unsigned char	byteWrite[4];
	unsigned char	status = 0;
	
	byteWrite[3] = SPI_WRITE;
	byteWrite[2] = (unsigned char)(addrOfMem >> 8);
	byteWrite[1] = (unsigned char)(addrOfMem);
	byteWrite[0] = byteData;

	if (!SPI_WriteEnable())
	{
		return FALSE;
	}
	do
	{
		SPI_ReadStatus(&status);
	} while (status & SPI_WIP);
	SPI_FlagEnb(SPI_BUSY);
	SPI_MstXmit(&byteWrite, 32, SPI_NORMAL_LEN|SPI_GO_BSY);
	while (SPI_FlagChk(SPI_BUSY)) {}
	
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool SPI_PageWrite(unsigned short addrOfMem, unsigned char *ptByteData, unsigned short wrLen)
 * Purpose : Write a data string into spi devices.
 * Params  : addrOfMem - address of accessing.
 *           *ptByteData - pointer of data string to be written.
 *           wrLen - write data length.
 * Returns : TRUE - successful.
 * Note    :
 *--------------------------------------------------------------------------------
 */
bool SPI_PageWrite(unsigned short addrOfMem, unsigned char *ptByteData, unsigned short wrLen)
{
	unsigned char		pageWrite[35];
	unsigned char		status = 0;
	unsigned short		i;                     
	
//    printd("got into pagewrite\n\r");
	pageWrite[2] = SPI_WRITE;
	pageWrite[1] = (unsigned char)(addrOfMem >> 8);
	pageWrite[0] = (unsigned char)(addrOfMem);
	for (i=0 ; i<wrLen ; i++)
	{
		pageWrite[3+i] = *(ptByteData+i);
	}                                        
	if (!SPI_WriteEnable())
    {                                
		return FALSE;       
    }   
//    printd("got past Spi_writeEnable\n\r");           
//	do
//	{
//        printd("looping\n\r");
//		SPI_ReadStatus(&status);
//               
//	}
//	while (status & SPI_WIP) ;
//    printd("got past do-while\n\r");        
	SPI_FlagEnb(SPI_BUSY);             
	SPI_MstXmit(&pageWrite[0], 24, SPI_LONG_LEN|SPI_GO_BSY);
                                      
	while (SPI_FlagChk(SPI_BUSY)) {SPI_Func();}
//    printd("got past flag check\n\r");                                   
	for (i=0 ; i<wrLen ; i++)
	{
		SPI_FlagEnb(SPI_BUSY);
		if (i == (wrLen-1))
			SPI_MstXmit(&pageWrite[3+i], 8, SPI_NORMAL_LEN|SPI_GO_BSY);
		else
			SPI_MstXmit(&pageWrite[3+i], 8, SPI_LONG_LEN|SPI_GO_BSY);
		while (SPI_FlagChk(SPI_BUSY)) {SPI_Func();}
	}
//    printd("end of page write\n\r");
	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool SPI_ByteRead(unsigned short addrOfMem, unsigned char *ptByteData)
 * Purpose : Read one byte data from spi devices.
 * Params  : addrOfMem - address of accessing.
 *           *ptByteData - pointer of data which be read.
 * Returns : TRUE - successful.
 * Note    :
 *--------------------------------------------------------------------------------
 */
bool SPI_ByteRead(unsigned short addrOfMem, unsigned char *ptByteData)
{
	unsigned char	byteRead[4];
	unsigned char	status = 0;
	
	byteRead[3] = SPI_READ;
	byteRead[2] = (unsigned char)(addrOfMem >> 8);
	byteRead[1] = (unsigned char)(addrOfMem);
	byteRead[0] = *ptByteData;

	do
	{
		SPI_ReadStatus(&status);
	} while (status & SPI_WIP) ;
	SPI_FlagEnb(SPI_BUSY);
	SPI_MstXmit(&byteRead[0], 32, SPI_NORMAL_LEN|SPI_GO_BSY);
	while (SPI_FlagChk(SPI_BUSY)) {}
	SPI_GetData(&byteRead);
	*ptByteData = byteRead[0];

	return TRUE;
}

/*
 *--------------------------------------------------------------------------------
 * bool MCP25C320_PageRead(unsigned short addrOfMem, unsigned char *ptByteData, unsigned short rdLen)
 * Purpose : read a data string from spi devices.
 * Params  : addrOfMem - address of accessing.
 *           *ptByteData - pointer of data string which be read.
 *           rdLen - read data length.
 * Returns : TRUE - successful.
 * Note    :
 *--------------------------------------------------------------------------------
 */
bool SPI_PageRead(unsigned short addrOfMem, unsigned char *ptByteData, unsigned short rdLen)
{
	unsigned char	pageRead[4], temp[4];
	unsigned char	status = 0;
	unsigned short	i;
	
	temp[0] = 0;
	temp[1] = 0;
	temp[2] = 0;
	temp[3] = 0;
	pageRead[3] = 0;
	pageRead[2] = SPI_READ;
	pageRead[1] = (unsigned char)(addrOfMem >> 8);
	pageRead[0] = (unsigned char)(addrOfMem);

	do
	{
		SPI_ReadStatus(&status);
	}
	while (status & SPI_WIP) ;
	SPI_FlagEnb(SPI_BUSY);
	SPI_MstXmit(&pageRead[0], 24, SPI_LONG_LEN|SPI_GO_BSY);
	
	while (SPI_FlagChk(SPI_BUSY)) {}

	for (i=0 ; i<rdLen ; i++)
	{
		SPI_FlagEnb(SPI_BUSY);
		if (i==rdLen-1)
			SPI_MstXmit(&pageRead[3], 8, SPI_NORMAL_LEN|SPI_GO_BSY);
		else
			SPI_MstXmit(&pageRead[3], 8, SPI_LONG_LEN|SPI_GO_BSY);
		while (SPI_FlagChk(SPI_BUSY)) {}
		SPI_GetData(&temp);
		*(ptByteData + i) = temp[0];
	}
	
	return TRUE;
	
}

 

/*
 *--------------------------------------------------------------------------------
 * bool SPI_Write(unsigned char *ptByteData, unsigned short wrLen)
 * Purpose : Write a data string into spi devices.
 * Params  : addrOfMem - address of accessing.
 *           *ptByteData - pointer of data string to be written.
 *           wrLen - write data length.
 * Returns : TRUE - successful.
 * Note    :
 *--------------------------------------------------------------------------------
 */
bool SPI_Write(unsigned char *ptByteData, unsigned short wrLen)
{
	unsigned char		pageWrite[35];
	unsigned char		status = 0;
	unsigned short		i;                     
    
	for (i=0 ; i<wrLen ; i++)
	{
		pageWrite[i] = *(ptByteData+i);        
	}                                        
	if (!SPI_WriteEnable())
    {                                
		return FALSE;       
    }   
           
	for (i=0 ; i<wrLen ; i++)
	{                         
		SPI_FlagEnb(SPI_BUSY);

		if (i == (wrLen-1))
			SPI_MstXmit(&pageWrite[i], 8, SPI_NORMAL_LEN|SPI_GO_BSY);
		else
			SPI_MstXmit(&pageWrite[i], 8, SPI_LONG_LEN|SPI_GO_BSY);

		while (SPI_FlagChk(SPI_BUSY)) { SPI_Func();}
	}
	return TRUE;
}

/* End of spiapi.c */


