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
 * Module Name : spi.c
 * Purpose     : This file handles the SPI serial interface driver.
 *               It includes transmitting and receiving functions of master mode
 *               and slave mode.
 * Author      : Robin Lee
 * Date        : 2006-01-11
 * Notes       :
 * $Log: spi.c,v $
 * Revision 1.1  2006/04/07 11:39:02  robin6633
 * no message
 *
 *================================================================================
 */

/* INCLUDE FILE DECLARATIONS */
#include	"reg80390.h"
#include	"types.h"
#include	"spi.h"
#include	"printd.h"

#if SPI_SLAVE_ENABLE
 #include	"ax11000slv.h"
#endif


/* STATIC VARIABLE DECLARATIONS */
static unsigned char		spiActF = 0;
static unsigned char		spiCtrl = 0;
static unsigned char		spiPktDir = 0;
static unsigned char		spiPktLen = 0;
static unsigned short	spiLenCnt = 0;
static unsigned short	spiTransLoop = 0;
static unsigned short	spiTransLoopCnt = 0;
static unsigned char		spiRxBuf[4] = {0,0,0,0};
static unsigned char		spiSlvTxBuf[16] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
static unsigned char		spiSlvRxBuf[16] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};


/* LOCAL SUBPROGRAM DECLARATIONS */
static void	spi_MstRcvr(void);
static void spi_SlvRcvr(void);

#if SPI_SLAVE_ENABLE
static void spi_SlvProcess(void);
#endif


/* LOCAL SUBPROGRAM BODIES */

/*
 *--------------------------------------------------------------------------------
 * static void spi_MstRcvr(void)
 * Purpose : SPI master gets data from receiving register in one transfer.
 * Params  : None.
 * Returns : None.
 * Note    : The receiving register has a size of 4 bytes.
 *--------------------------------------------------------------------------------
 */
static void spi_MstRcvr(void)
{
	unsigned char	i;

	SPICIR = SPIRBR;
	for (i = 0 ; i < 4; i++ )
	{
		spiRxBuf[i] = SPIDR;
	}
}

/*
 *--------------------------------------------------------------------------------
 * static void spi_SlvRcvr(void)
 * Purpose : SPI slave receiving function in one transfer.It will get the packet
 *           from slave buffer register and stores into a software buffer.
 * Params  : None.
 * Returns : None.
 * Note    : The slave buffer register has a size of 16 bytes.
 *--------------------------------------------------------------------------------
 */
#if SPI_SLAVE_ENABLE
static void spi_SlvRcvr(void)
{
	unsigned char	i;
	unsigned char	rxLen = 0;
	unsigned char	slvCmdType = 0;
	unsigned char	dataLen = 0;

	SPICIR = SPISB;
	spiSlvRxBuf[0] = SPIDR;
	slvCmdType = spiSlvRxBuf[0] & 0xF0;
	dataLen = (spiSlvRxBuf[0] & 0x0F) + 1;
	if (slvCmdType == SPI_SLV_SRSFR)
	{
		rxLen = 1;
	}
	else if (slvCmdType == SPI_SLV_SWSFR)
	{
		rxLen = dataLen + 1;
	}
	else if (slvCmdType == SPI_SLV_IRSFR)
	{
		rxLen = 2;
	}
	else if (slvCmdType == SPI_SLV_IWSFR)
	{
		rxLen = dataLen + 2;
	}
	else if (slvCmdType == SPI_SLV_BRMEM)
	{
		rxLen = 3;
	}
	else if (slvCmdType == SPI_SLV_BWMEM)
	{
		rxLen = dataLen + 3;
	}
	for (i = 0 ; i < rxLen ; i ++ )
	{
		spiSlvRxBuf[1+i] = SPIDR;
	}
	/* Command abort*/
	SPICIR = 0xFF;
}
#endif

/*
 *--------------------------------------------------------------------------------
 * static void spi_SlvProcess(void)
 * Purpose : SPI slave function which is responsible to transmit and receive
 *           packets. It will call a specific function corresponding with 
 *           received packets.
 * Params  : None.
 * Returns : None.
 * Note    : None.
 *--------------------------------------------------------------------------------
 */
#if SPI_SLAVE_ENABLE
static void spi_SlvProcess(void)
{
	unsigned char	slvCmdType = 0;
	unsigned char	sfrAddr = 0;
	unsigned char	cmdIndReg = 0;
	unsigned char	realReg = 0;
	unsigned char	realLen = 0;
	unsigned long	memAddr = 0;
	unsigned char	tempData = 0;
	unsigned short	i;

	slvCmdType = spiSlvRxBuf[0] & 0xF0;
	if (slvCmdType == SPI_SLV_SRSFR)
	{
		realLen = (spiSlvRxBuf[0] & 0x07) + 1;
		sfrAddr = spiSlvRxBuf[1];
		for (i=0 ; i<realLen ; i++)
		{
			AX11000SLV_SfrRd((unsigned char)sfrAddr, &tempData);
			spiSlvTxBuf[i] = (unsigned char)tempData;
		}
		SPI_SlvXmit(SPI_SLV_RDY);
	}
	else if (slvCmdType == SPI_SLV_SWSFR)
	{
		realLen = (spiSlvRxBuf[0] & 0x07) + 1;
		sfrAddr = spiSlvRxBuf[1];
		for (i=0 ; i<realLen ; i++)
		{
			tempData = (unsigned long)spiSlvRxBuf[2+i];
			AX11000SLV_SfrWr((unsigned char)sfrAddr, tempData);
		}
		SPI_SlvXmit(SPI_SLV_RDY);
	}
	else if (slvCmdType  == SPI_SLV_IRSFR)
	{
		cmdIndReg = spiSlvRxBuf[1];
		realReg = spiSlvRxBuf[2];
		realLen = (spiSlvRxBuf[0] & 0x0F) + 1;
		if (cmdIndReg == SFR_SPICIR)
		{
			AX11000SLV_SpiRd((unsigned char)realReg, &spiSlvTxBuf[0], (unsigned char)realLen);
		}
		else if (cmdIndReg == SFR_I2CCIR)
		{
			AX11000SLV_I2cRd((unsigned char)realReg, &spiSlvTxBuf[0], (unsigned char)realLen);
		}
		else if (cmdIndReg == SFR_OWCIR)
		{
			AX11000SLV_OwRd((unsigned char)realReg, &spiSlvTxBuf[0], (unsigned char)realLen);
		}
		else if (cmdIndReg == SFR_CANCIR)
		{
			AX11000SLV_CanRd((unsigned char)realReg, &spiSlvTxBuf[0], (unsigned char)realLen);
		}
		else if (cmdIndReg == SFR_TCIR)
		{
			AX11000SLV_ToeRd((unsigned char)realReg, &spiSlvTxBuf[0], (unsigned char)realLen);
		}
		else if (cmdIndReg == SFR_MCIR)
		{
			AX11000SLV_MacRd((unsigned char)realReg, &spiSlvTxBuf[0], (unsigned char)realLen);
		}
		SPI_SlvXmit(SPI_SLV_RDY);
	}
	else if (slvCmdType  == SPI_SLV_IWSFR)
	{
		cmdIndReg = spiSlvRxBuf[1];
		realReg = spiSlvRxBuf[2];
		realLen = (spiSlvRxBuf[0] & 0x0F) + 1;
		if (cmdIndReg == SFR_SPICIR)
		{
			AX11000SLV_SpiWr((unsigned char)realReg, &spiSlvRxBuf[3], (unsigned char)realLen);
		}
		else if (cmdIndReg == SFR_I2CCIR)
		{
			AX11000SLV_I2cWr((unsigned char)realReg, &spiSlvRxBuf[3], (unsigned char)realLen);
		}
		else if (cmdIndReg == SFR_OWCIR)
		{
			AX11000SLV_OwWr((unsigned char)realReg, &spiSlvRxBuf[3], (unsigned char)realLen);
		}
		else if (cmdIndReg == SFR_CANCIR)
		{
			AX11000SLV_CanWr((unsigned char)realReg, &spiSlvRxBuf[3], (unsigned char)realLen);
		}
		else if (cmdIndReg == SFR_TCIR)
		{
			AX11000SLV_ToeWr((unsigned char)realReg, &spiSlvRxBuf[3], (unsigned char)realLen);
		}
		else if (cmdIndReg == SFR_MCIR)
		{
			AX11000SLV_MacWr((unsigned char)realReg, &spiSlvRxBuf[3], (unsigned char)realLen);
		}
		SPI_SlvXmit(SPI_SLV_RDY);
	}
	else if (slvCmdType  == SPI_SLV_BRMEM)
	{
		memAddr = ((unsigned long)spiSlvRxBuf[3] << 16) | ((unsigned long)spiSlvRxBuf[2] << 8) | ((unsigned long)spiSlvRxBuf[1]);
		realLen = (spiSlvRxBuf[0] & 0x0F) + 1;
		for (i = 0 ; i < realLen ; i ++)
		{
			AX11000SLV_ExtMemRd((memAddr + i), &tempData);
			spiSlvTxBuf[i] = (unsigned char)tempData;
		}
		SPI_SlvXmit(SPI_SLV_RDY);
	}
	else if (slvCmdType  == SPI_SLV_BWMEM)
	{
#if 0
		realLen = (spiSlvRxBuf[0] & 0x0F) + 1 + 3;
		AUDIO_Rcv((unsigned char *)&spiSlvRxBuf[1], (unsigned char)realLen);
		SPI_SlvXmit(SPI_SLV_RDY);
#else
	memAddr = ((unsigned long)spiSlvRxBuf[3] << 16) | ((unsigned long)spiSlvRxBuf[2] << 8) | ((unsigned long)spiSlvRxBuf[1]);
		realLen = (spiSlvRxBuf[0] & 0x0F) + 1;
		for (i = 0 ; i < realLen ; i ++)
		{
			tempData = (unsigned long)spiSlvRxBuf[4 + i];
			AX11000SLV_ExtMemWr((memAddr + i), tempData);
		}
		SPI_SlvXmit(SPI_SLV_RDY);
#endif
	}
}
#endif


/* EXPORTED SUBPROGRAM BODIES */

/*
 *--------------------------------------------------------------------------------
 * void SPI_Setup(unsigned char ctrlCmd, unsigned char intrEnb, unsigned char baudrate, unsigned char slvSel)
 * Purpose : Setup the SPI module and initiate SPI function.
 * Params  : ctrlCmd - control register value.
 *           intrEnb - interrupt source enabled bit.
 *           baudrate - a parameterto generate baudrate.
 *           slvSel - slave selection bit.
 * Returns : None.
 * Note    : None.
 *--------------------------------------------------------------------------------
 */
void SPI_Setup(unsigned char ctrlCmd, unsigned char intrEnb, unsigned char baudrate, unsigned char slvSel)
{
	unsigned char	spiSlvCmd = 0;
	unsigned short	i;

	spiActF = 0;
	spiCtrl = 0;
	spiPktDir = 0;
	spiPktLen = 0;
	spiLenCnt = 0;
	spiTransLoop = 0;
	spiTransLoopCnt = 0;
	for (i=0 ; i<4 ; i++)
		spiRxBuf[i] = 0;
	for (i=0 ; i<16 ; i++)
	{
		spiSlvTxBuf[i] = 0;
		spiSlvRxBuf[i] = 0;
	}

	/* Record the SPI control mode */
	spiCtrl = intrEnb;
	/* Setup SPI mode */
	SPI_Cmd(SI_WR, SPICTRLR, &ctrlCmd);
	/* Enable intertupe flag type of SPI */
	SPI_Cmd(SI_WR, SPIIER, &intrEnb);
	/* SPI baud rate selection */
	SPI_Cmd(SI_WR, SPIBRR, &baudrate);
	/* SPI slave select */
	SPI_Cmd(SI_WR, SPISSR, &slvSel);
	/* SPI slave is ready to receive */
	spiSlvCmd = SPI_SLV_RDY;
	SPI_Cmd(SI_WR, SPISCR, &spiSlvCmd);
}

/*
 *--------------------------------------------------------------------------------
 * void SPI_Func(void)
 * Purpose : Handling SPI interrupt function. It will check interrupt status of
 *           master and slave. And receiving packets first.
 * Params  : None.
 * Returns : None.
 * Note    : None.
 *--------------------------------------------------------------------------------
 */
void SPI_Func(void)
{
	unsigned char	spiStatus = 0;

	/* Take down the interrupt type */

	EA = 0;
	SPI_Cmd(SI_RD, /*SPIISR*/ SPICMDR, &spiStatus);
	EA = 1;
//    printd("spiStatus %02bx\n\r", spiStatus);
//    printd("spiCtrl %02bx\n\r", spiCtrl);

	if ((spiCtrl & SPI_STCFIE) || (spiCtrl & SPI_SRCFIE))
	{
		/* Read SPI interrupt status register */
		if ((spiStatus & /*SPI_MCF*/BIT7==0)) // when master complete a transfer
		{
            printd("MCF\n\r");
			spi_MstRcvr();
			SPI_FlagClr(SPI_BUSY);
//            printd("FlagClear\n\r");
		}

		#if SPI_SLAVE_ENABLE
		else if (spiStatus & SPI_SCF) // when slave complete a transfer
		{
			spi_SlvRcvr();
			spi_SlvProcess();
		}
		#endif
	}
	else
	{
		if (spiStatus & SPI_MCF) // when master complete a transfer
		{
			spi_MstRcvr();
			SPI_FlagClr(SPI_BUSY);
		}
		#if SPI_SLAVE_ENABLE
		else if (spiStatus & SPI_SCF) // when slave complete a transfer
		{
			spi_SlvRcvr();
			spi_SlvProcess();
		}
		#endif
	}
//    printd("After IF-ELSE\n\r");
}

/*
 *--------------------------------------------------------------------------------
 * void SPI_MstXmit(unsigned char *ptSpiTxPkt, unsigned char xmitBit, unsigned char cmd)
 * Purpose : SPI master transmit function in one transfer smaller than 32 bits.
 * Params  : ptSpiTxPkt - a pointer of transmitting data.
 *           xmitBit - a number of transmit bit.
 *           cmd - transfer condition in this transfer.
 * Returns : None.
 * Note    : None.
 *--------------------------------------------------------------------------------
 */
void SPI_MstXmit(unsigned char *ptSpiTxPkt, unsigned char xmitBit, unsigned char cmd)
{
	unsigned short	i;
	unsigned char	xmitCmd = 0;
	
	for (i = 0 ; i <= (xmitBit-1)/8 ; i++ )
	{
		SPIDR = *(ptSpiTxPkt + i);
	}
	SPICIR = SPITBR;
	/* order command */
	xmitCmd = ((xmitBit - 1)|cmd);
	SPI_Cmd(SI_WR, SPICMDR, &xmitCmd);
}

/*
 *--------------------------------------------------------------------------------
 * void SPI_SlvXmit(unsigned char spiSlvCmd)
 * Purpose : SPI slave transmit function. It puts data from software TX buffer to
 *           hardware slave buffer register.
 * Params  : spiSlvCmd - ready bit to transmit.
 * Returns : None.
 * Note    : None.
 *--------------------------------------------------------------------------------
 */
void SPI_SlvXmit(unsigned char spiSlvCmd)
{
	unsigned short	i;

	for (i = 0 ; i <16 ; i++ )
	{
		SPIDR = spiSlvTxBuf[i];
	}
	SPICIR = SPISB;
	/* order command */
	SPI_Cmd(SI_WR, SPISCR, &spiSlvCmd);
}

/*
 *--------------------------------------------------------------------------------
 * BOOL SPI_FlagChk(unsigned char chkBit)
 * Purpose : Checking the current state in this driver.
 * Params  : chkBit - a state bit to be checked.
 * Returns : TRUE - the current state meets the chkBit. Or FALSE.
 * Note    : None.
 *--------------------------------------------------------------------------------
 */
bool SPI_FlagChk(unsigned char chkBit)
{

	if (spiActF & chkBit)
		return TRUE;
	else
		return FALSE;
}

/*
 *--------------------------------------------------------------------------------
 * void SPI_FlagEnb(unsigned char enbBit)
 * Purpose : Setting a state bit in this driver for state machine.
 * Params  : enbBit - a state bit to be turned on.
 * Returns : None.
 * Note    : None.
 *--------------------------------------------------------------------------------
 */
void SPI_FlagEnb(unsigned char enbBit)
{
	spiActF = spiActF | enbBit;
}

/*
 *--------------------------------------------------------------------------------
 * void SPI_FlagClr(unsigned char clrBit)
 * Purpose : Clearing a state bit in this driver for state machine.
 * Params  : clrBit - a state bit to be cleared.
 * Returns : None.
 * Note    : None.
 *--------------------------------------------------------------------------------
 */
void SPI_FlagClr(unsigned char clrBit)
{
	spiActF = spiActF & ~clrBit;
}

/*
 *--------------------------------------------------------------------------------
 * void SPI_GetData(unsigned char *ptBuf)
 * Purpose : Getting data which be stored in software RX buffer.
 * Params  : ptBuf - a pointer to store data.
 * Returns : None.
 * Note    : None.
 *--------------------------------------------------------------------------------
 */
void SPI_GetData(unsigned char *ptBuf)
{
	unsigned char	i;

	for (i=0 ; i<4 ; i++)
	{
		*(ptBuf + i) = spiRxBuf[i];
	}
}

/*
 *--------------------------------------------------------------------------------
 * void SPI_Cmd(unsigned char cmdType, unsigned char spiCmdIndex, unsigned char *spiData)
 * Purpose : Accessing the SPI interface indirectly through SPI's SFR.
 * Params  : cmdType - command type of writing or reading.
 *           spiCmdIndex - SPI register address.
 *           *spiData - a pointer store the data.
 * Returns : None.
 * Note    : None.
 *--------------------------------------------------------------------------------
 */
void SPI_Cmd(unsigned char cmdType, unsigned char spiCmdIndex, unsigned char *spiData)
{
	if (cmdType == SI_WR)
	{
		SPIDR = *spiData;
		SPICIR = spiCmdIndex;
	}
	else if (cmdType == SI_RD)
	{
		SPICIR = spiCmdIndex;
		*spiData = SPIDR;
	}
}

/*
 *--------------------------------------------------------------------------------
 * void SPI_Post(void)
 * Purpose :
 * Params  :
 * Returns :
 * Note    :
 *--------------------------------------------------------------------------------
 */
void SPI_Post(void)
{
}

//// ---------------------------------------------------------------------------------------
//// Name    : static void uart1_ISR(void)
//// Purpose : UART1 interrupt service routine. For sending out, it puts data
////           from software buffer into hardware serial buffer register (SBUF1).
////           For receiving, it gets data from hardware serial buffer register
////           (SBUF1) and stores into software buffer.
//// Params  : none
//// Returns : none
//// Note    : none
//// ---------------------------------------------------------------------------------------
//static void SPI_ISR(void) interrupt 4
//{
//      byte  tmp    = 0;                                                                   // 
//
//      if (RI1)                                                                            // 
//        {
//        EA               = 0;                                                             // disable interrupts before receiving data
//        if (uart1_RxCount != MAX_RX_UART1_BUF_SIZE)                                       // check to see if the buffer is full
//          {
//          tmp            = SBUF1;                                                         // get the received data byte
////          if (uart1_Mode  & TRUE)                                                         // if bit is one check for even parity
////            {
////            parity = UART_ParityChk(tmp);                                                 // calculate the parity of the recieved byte
////            if (RB18 == parity)                                                           // compare to received parity bit
////              {
////              uart1_RxBuf[uart1_RxHead] = tmp;                                            // place the data byte in the ring buffer
////              uart1_RxCount++;                                                            // update the byte count to show data received
////              uart1_RxHead++;                                                             // update buffer index to next byte
////              uart1_RxHead &= MAX_RX_UART1_MASK;                                          // mask the index to buffer circular
////              }
////            else
////              {
////              printd("!!parity fail!!\n\r");
////              }
////            }
////          else                                                                            // no parity check required
//            {
//            uart1_RxBuf[uart1_RxHead] = tmp;                                              // place the data byte in the ring buffer
//            uart1_RxCount++;                                                              // update the byte count to show data received
//            uart1_RxHead++;                                                               // update buffer index to next byte
//            uart1_RxHead &= MAX_RX_UART1_MASK;                                            // mask the index to buffer circular
//            }  
//          }
//        RI1             = 0;
//        EA              = 1;
//        } // End of if(RI0) //
//
//      if (TI1)
//        {
//        EA              = 0;                                                              // disable interrupts
//        uart1_TxTail++;                                                                   // update the array index to the next cell
//        uart1_TxTail   &= MAX_TX_UART1_MASK;                                              // mask the index to make the buffer circular
//        uart1_TxCount--;                                                                  // update the number of bytes in the buffer
//        if (uart1_TxCount > 0)                                                            // check for more data to transmit
//          {
//          SBUF1         = uart1_TxBuf[uart1_TxTail];                                      // start the transmission of the next byte in the buffer
////          if (uart1_Mode & BIT1)                                                          // if bit is one check for even parity
////            {
////            parity = UART_ParityChk((byte)uart1_TxBuf[uart1_TxTail]);                     // generate the parity bity for even parity
////            if (parity)                                                                   // if true byte parity is odd
////              TB18 = 1;                                                                   // data parity is odd set parity bit to '1' to correct for even parity
////            else
////              TB18 = 0;                                                                   // data parity is even set parity bit to '0' no correction needed
////            }
//          }
//        else
//          uart1_TxFlag  = 0;                                                              // set the process running flag to false
//        TI1             = 0;                                                              // clear the transmitted flag
//        EA              = 1;                                                              // reenable interrupts
//        } // End of if(TI0) //
//}


/* End of spi.c */
