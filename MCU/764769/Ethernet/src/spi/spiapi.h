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
 * Module Name : spiapi.h
 * Purpose     : API header file. Definite the command code.
 * Author      : Robin Lee
 * Date        : 2006-01-10
 * Notes       :
 * $Log: spiapi.h,v $
 * Revision 1.1  2006/04/07 11:39:02  robin6633
 * no message
 *
 *================================================================================
 */
#ifndef SPIAPI_H
#define SPIAPI_H

/* INCLUDE FILE DECLARATIONS */


/* NAMING CONSTANT DECLARATIONS */
#define		SPI_READ	0x03	// read command
#define		SPI_WRITE	0x02	// write command
#define		SPI_WRDI	0x04	// write disable command
#define		SPI_WREN	0x06	// write enable command
#define		SPI_RDSR	0x05	// read status command
#define		SPI_WRSR	0x01	// write status command
#define		SPI_WPEN	BIT7	// write protect enable
#define		SPI_BP1		BIT3	// block protect control bit 1
#define		SPI_BP0		BIT2	// block protect control bit 0
#define		SPI_WEL		BIT1	// write enable latch
#define		SPI_WIP		BIT0	// write cycle is in progress



/* MACRO DECLARATIONS */


/* TYPE DECLARATIONS */


/* GLOBAL VARIABLES */


/* EXPORTED SUBPROGRAM SPECIFICATIONS */
bool	SPI_WriteEnable(void);
bool	SPI_WriteDisable(void);
bool	SPI_WriteStatus(unsigned char status);
bool	SPI_ReadStatus(unsigned char *status);
bool	SPI_ByteWrite(unsigned short addrofmem, unsigned char bytedata);
bool	SPI_Write(unsigned char *ptbytedata, unsigned short wrlen); 
bool	SPI_PageWrite(unsigned short addrofmem, unsigned char *ptbytedata, unsigned short wrlen);
bool	SPI_ByteRead(unsigned short addrofmem, unsigned char *ptbytedata);
bool	SPI_PageRead(unsigned short addrofmem, unsigned char *ptbytedata, unsigned short rdlen);


#endif /* End of SPIAPI_H */
