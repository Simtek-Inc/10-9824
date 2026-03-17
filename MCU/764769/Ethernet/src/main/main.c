//----------------------------------------------------------------------------------------//
//     Copyright (c) 2021     Simtek, Incorporated      All rights reserved.              //
//                                                                                        //
//     This is unpublished proprietary source code of Simtek, Inc                         //
//                                                                                        //
//     The copyright notice above does not evidence any actual or intended                //
//     publication of such source code.                                                   //
//========================================================================================//
// 76-4769  for 10-9824                                                                //
// Circuit boards used : 51-5330-01                                                       //
// Used programs from C. Mason to start with                                              //
//                                                                                        //
//========================================================================================//
// Module Name : Main.c                                                                   //
// Purpose     : Main loop                                                                //
//----------------------------------------------------------------------------------------//
// Author      : C.Jeardoe                                                                  //
// Date        : 3/17/26                                                                  //
// Revision    : -                                                                        //
// Notes       : Shipped with instrument.                                                 //
//----------------------------------------------------------------------------------------//
                                                                                          //
//----------------------------------------------------------------------------------------//
//          include file declarations                                                     //
//----------------------------------------------------------------------------------------//
#include "reg80390.h"                                                                     //
#include "main.h"                                                                         //
#include "fpga.h"                                                                         //
#include "adapter.h"                                                                      //
#include "mstimer.h"                                                                      //
#include "ax11000.h"                                                                      //
#include "interrupt.h"                                                                    //
#include "stoe.h"                                                                         //
#include "dma.h"                                                                          //
#include "tcpip.h"                                                                        //
#include "printd.h"                                                                       //
#include "delay.h"                                                                        //
#include "intrins.h"                                                                      //
#include "Hardware.h"                                                                     //
#include "uart.h"                                                                         //
#include "gconfig.h"                                                                      //
#include "phy.h"                                                                          //
#include "mac.h"                                                                          //
#include "gudpdat.h"                                                                      //
#include "uart.h"                                                                         //
#include "gs2e.h"                                                                         //
#include <string.h>                                                                       //
#include <stdio.h>                                                                        //
#include "CIRCUIT.H"                                                                      //
#include "instrument.h"                                                                   //
#include <math.h>                                                                         //
#include "dhcpc.h"                                                                        //
#include <stdlib.h>                                                                       //
#include "eeprom.h"                                                                       //
#include "util_menus.h"                                                                   //
#include "hi8045.h"                                                                       //
#include "spi.h"                                                                          //
#include "spiapi.h"                                                                       //

//----------------------------------------------------------------------------------------
//                 naming #define declarations                                            //
//----------------------------------------------------------------------------------------
#define  RS422                            0                                               //
#define  RS232                            1                                               //
#define  DEDisable                        0                                               //
#define  DEEnable                         1                                               //

#ifdef DEBUG                                                                              //
#define DBGMSG(A) {A}                                                                     //
#else                                                                                     //
#define DBGMSG(A) {}                                                                      //
#endif                                                                                    //
#define  TIME_OUT_COUNTER                 (20/SWTIMER_INTERVAL)                           // 20/swtimer_interval = x ms
#define  SW_TIME_OUT_COUNTER              3000 // 3000 = 30 seconds                       // 30 seconds
#define  DBG_TIME_OUT_COUNTER             100 // 100  =  1 seconds                        // 1 seconds 
#define  RTC_TIME_OUT_COUNTER             100 // 100  =  1 seconds                        // 1 seconds * 86400 = 24 hours +/-120 seconds

#define Serial                            0
#define Ethernet                          1
#define Host_Port                       (Ethernet)

// MACRO DECLARATIONS //
#if   ( Host_Port == Serial )
#define     wrHost(p,c)    UART0_PutStr(p,c)
#else
#define     wrHost(p,c)    wrStrEthTxBuffer(p,c)
#endif

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//           fpga #define declarations/data array structure                               //
//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------
//      fpga register addresses                                                           //
//----------------------------------------------------------------------------------------
//#define defaultaddress        0x00                                                        // default address to use after reset
#define adrsfirmware1         0x20                                                        // firmware number and revision data
#define adrsfirmware2         0x21                                                        // firmware number and revision data
#define adrsfirmware3         0x22                                                        // firmware number and revision data
#define adrsfirmware4         0x23                                                        // firmware number and revision data

#define status1               0x60                                                        // address of switch bank 1 reader
#define status2               0x61                                                        // address of switch bank 2 reader
#define status3               0x62                                                        // address of switch bank 3 reader
#define status4               0x63                                                        // address of switch bank 3 reader

#define adrAD0                0x50                                                        // address of switch bank 4 reader
#define adrAD1                0x51                                                        // address of switch bank 4 reader

#define adrsCOM1              0x90

#define adrsexternalenables   0x80                                                        // address of control register for external hardware enable/disable

#define adrsSPI01_SDI         0x77
#define adrsSPI01_CLK         0x78
#define adrsSPI01_LOAD        0x79
//----------------------------------------------------------------------------------------
//          external hardware control enable bits
//----------------------------------------------------------------------------------------
#define onSwCmnLo             0x02
#define onSwCmnHi             0x01
#define onRs422port           0x0C
#define onRs422portDe         0x04
#define onRs422portRe         0x08
#define onRs233port           0x10
//----------------------------------------------------------------------------------------
//          commbined hardware control enable word
//----------------------------------------------------------------------------------------
#define defaultexternal       onRs233port                
//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------
#define adrsbitcontrol1       0x90   // USED TO TURN BITS ON AND OFF                      // address of discrete bit control bank 1

#define adrspwmon01           0xA0   // USED TO ENABLE THE PWM TO THE CONTROLLED BIT      // address of the device enable latch bank 1
#define defaultpwmctrl01      0xFD   // PWM OFF EXCEPT BIT 1                              // default off state of device enable bank = 0xFF

#define adrsbitcontrol2       0x91                                                        // address of discrete bit control bank 2
#define adrspwmon02           0xA1                                                        // address of the device enable latch bank 2
#define defaultpwmctrl02      0xFF                                                        // default off state of device enable bank = 0x3F

#define adrsbitcontrol3       0x92                                                        // address of discrete bit control bank 3
#define adrspwmon03           0xA2                                                        // address of the device enable latch bank 3
#define defaultpwmctrl03      0x3F                                                        // default off state of device enable bank = 0x3F

#define defaultbitonbit3      0x3F   // ALL SOURCE BITS OFF                               // define the default state

#define adrsDutyCycle00       0xC0                                                        // address_xC0 address of pwm duty cycle control register for discrete 2
#define Ind_1                 0xC1                                                        // address_xC1 address of pwm duty cycle control register for discrete 2
#define Ind_2                 0xC2                                                        // address_xC2 address of pwm duty cycle control register for discrete 3
#define adrsDutyCycle03       0xC3                                                        // address_xC2 address of pwm duty cycle control register for discrete 3
#define adrsDutyCycle04       0xC4                                                        // address_xC2 address of pwm duty cycle control register for discrete 3

#define adrsEncoderReset      0xE1

#define defaultdutycycle      0x0C00                                                      // default PWM duty cycle
//----------------------------------------------------------------------------------------//
//           end fpga #define declarations                                                //
//----------------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------------//
//          GLOBAL VARIABLES DECLARATIONS                                                 //
//----------------------------------------------------------------------------------------//
typedef struct app_buf {                                                                  //
      ulong ipaddr;                                                                       //
      byte  buf[100];                                                                     //
      uint  uip_len;                                                                      //
      uint  PayLoadOffset;                                                                //
      byte  wait;                                                                         //
}APP_BUF;                                                                                 //

APP_BUF     app_arp_buf;                                                                  //

ulong  processEthernetTraffic(ulong ptc, dls);                                            //
//----------------------------------------------------------------------------------------//
//          static variable declarations                                                  //
//----------------------------------------------------------------------------------------//
byte  EthTxBuffer[EthMaxTxSize];                                                          //
uint              EthTxBufHead            = 0;                                            // array index to write data into the temporary buffer
uint              EthTxBufTail            = 0;                                            // array index to transfer data into the actual transmit buffer
uint              EthTxCount              = 0;                                            // number of bytes in the temporary buffer to transmit
uint              EthTxBufIndx            = 0;                                            // number of bytes in the temporary buffer to transmit
uint              HrtBeatCnt              = 0x00;                                         //
static byte       MinMsgLen;                                                              //
       byte       HardwareSettings;                                                       //
//----------------------------------------------------------------------------------------//
//          hardware specific definitions                                                 //
//----------------------------------------------------------------------------------------//
// ACC (0xE0) Bit Registers                                                               //
sbit A_0                      = 0xE0;                                                     //
sbit A_1                      = 0xE1;                                                     //
sbit A_2                      = 0xE2;                                                     //
sbit A_3                      = 0xE3;                                                     //
sbit A_4                      = 0xE4;                                                     //
sbit A_5                      = 0xE5;                                                     //
sbit A_6                      = 0xE6;                                                     //
sbit A_7                      = 0xE7;                                                     //

//unsigned char bdata Status_byte_2;        // create a bit addressable byte
//========================================================================================//
//          port pin name definition                                                      //
//----------------------------------------------------------------------------------------
byte PinDefStr0[] = PORT0_PIN_NAMES;                                                      //
byte PinDefStr1[] = PORT1_PIN_NAMES;                                                      //
byte PinDefStr2[] = PORT2_PIN_NAMES;                                                      //
byte PinDefStr3[] = PORT3_PIN_NAMES;                                                      //
//========================================================================================//
//          ethernet message frames                                                       //
//========================================================================================//
//byte bufStatusData[bufStatusRspLength];                                                   //
//byte bufFirmwareData[bufFirmwareRspLength];                                               //
//byte bufIndicatorData[bufIndicatorReqLength];                                             //
byte bufDimmingData[bufDimmingMsgLength];                                                 //
byte bufResetReq[bufResetMsgLength];                                                      //
byte bufStatusRsp[bufStatusMsgLength];                                                    //
byte bufStatusReq[bufStatusMsgLength];                                                    //
byte bufFirmwareReq[bufFirmwareMsgLength];                                                //
byte bufFirmwareRsp[bufFirmwareMsgLength];                                                //
//----------------------------------------------------------------------------------------//
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//                serial variables                                                        //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
byte   stage;                                                                             //
word   stagetimeout;                                                                      //

byte  mRxBuf[128];    
static word  mRxCnt;
                                                              //
byte    SwBank02Cnt;                                                                      // 
#define SwBank02Delay 0x20;                                                               //
byte    SwBank03Cnt;                                                                      // 
#define SwBank03Delay 0x20;                                                               //
byte    SwBank04Cnt;                                                                      // 
#define SwBank04Delay 0x20;                                                               //
//----------------------------------------------------------------------------------------//
//                local variables declarations                                            //
//----------------------------------------------------------------------------------------//
byte fpgaOutputData[FPGADataLen];                                                         // data output from the FPGA -- switch/a2d/fpga revision
byte bitmap[numof5841used];                                                               //
uint ADCount;                                                                             //
bool fDebugMode;                                                                          //
bool fTransmitMode;                                                                       //
byte ChngCnt;                                                                             //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//                bit addressable register definitions                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
word  idata Word1    _at_ 0x20;                                                     //
byte  bdata WByte1   _at_ 0x20;                                                     //
byte  bdata WByte0   _at_ 0x21;                                                     //
sbit          bits00      = WByte0^0;                                                 //
sbit          bits01      = WByte0^1;                                                 //
sbit          bits02      = WByte0^2;                                                 //
sbit          bits03      = WByte0^3;                                                 //
sbit          bits04      = WByte0^4;                                                 //
sbit          bits05      = WByte0^5;                                                 //
sbit          bits06      = WByte0^6;                                                 //
sbit          bits07      = WByte0^7;                                                 //
sbit          bits08      = WByte1^0;                                                 //
sbit          bits09      = WByte1^1;                                                 //
sbit          bits10      = WByte1^2;                                                 //
sbit          bits11      = WByte1^3;                                                 //
sbit          bits12      = WByte1^4;                                                 //
sbit          bits13      = WByte1^5;                                                 //
sbit          bits14      = WByte1^6;                                                 //
sbit          bits15      = WByte1^7;                                                 //

//;************************************************
unsigned char bdata Status_byte_1;        // create a bit addressable byte
sbit AP1         = Status_byte_1^0;
sbit AP2       = Status_byte_1^1;
sbit FDSEL         = Status_byte_1^2;
sbit COLL       = Status_byte_1^3;
sbit CPL       = Status_byte_1^4;
//;************************************************
unsigned char bdata Status_byte_2;        // create a bit addressable byte
sbit SAS_ALT  = Status_byte_2^0;
sbit TEST        = Status_byte_2^1;
sbit RADALT        = Status_byte_2^2;
sbit VELHLD        = Status_byte_2^3;
//;************************************************
// unsigned char bdata Status_byte_3;        // create a bit addressable byte
// sbit APR_HOV    = Status_byte_2^0;
// sbit STBY_RIGHT = Status_byte_2^1;
//;************************************************
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          action counters                                                               //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
uint acResetRequest;                                  // host requested       //          //
uint acFirmwareRequest;                               // host requested       //          //
uint acStatusRequest;                                 // host requested       //          //
uint acDimmingRequest; 								  // host requested       / /         //
uint acIndicatorRequest;                              // host requested       //          //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//                local subprogram prototype declarations                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static void UpdateIpSettings(ulong);                                                      // update the IP and port setting
void  NOP(uint loop);                                                                     //
// ==== function used to access the TOE buffers and controls =============================//
uint  wrChrEthTxBuffer(byte ch, uint Count);                                              //
uint  wrStrEthTxBuffer(byte* pData, uint cnt);                                            // write data to the ethernet transmit buffer
void  printFirmwareInformation();                                                         //
void  printDeviceConfigurationInformation();                                              //
void  printdHex2Bin(byte num);                                                            //
void  writeEthTxCount(uint TempCount);                                                    //
uint  readEthTxBufCount(void);                                                            //
// ==== functions to place data in the ethernet buffer for transmission ==================//
void  processResetRsp(void);                                                              //
void  processStatusRequest(void);                                                         //
void  processFirmwareRsp(void);                                                           //
void  processDimmingRequest(void); 
// slave board and serial functions
void  processSerialData(void);  
void  processIndicatorCommand(byte* commandBuffer);

// ==== functions to retrive user data and process it ====================================//
void  checkSwitch_Status1(void);
void  checkSwitch_Status2(void);
void  checkSwitch_Status3(void);

//== ---------------------------------------------------------------------------------- ==//
//== -                       local subprogram definitions                             - ==//
//== ---------------------------------------------------------------------------------- ==//
// name    : NOP                                                                          //
// purpose : create a small runtime delay                                                 //
// params  : the number of times to loop                                                  //
// returns : void                                                                         //
// notes   :                                                                              //
//----------------------------------------------------------------------------------------//
void NOP(uint loop)                                                                       //
{
      uint i;                                                                             //

      for (i = 0; i < loop; i++)                                                          //
       {    _nop_();    }                                                                 //
}

//----------------------------------------------------------------------------------------
// name    : wrEthTxBuffer(byte ch, uint Count)                                           //
// purpose : write data to the ring buffer to transmit over Ethernet                      //
// params  : Data byte to write, Count of bytes currently in buffer                       //
// returns : updated count of bytes in buffer                                             //
// notes   :                                                                              //
//----------------------------------------------------------------------------------------
uint wrChrEthTxBuffer(byte ch, uint Count)                                                // write data to the ethernet transmit buffer
{
      EthTxBuffer[EthTxBufIndx] = ch;                                                     // add the data to the ethernet buffer
      EthTxBufIndx++;                                                                     // update the ethernet buffer index
      Count++;                                                                            // update the count showing the number of bytes in the buffer
      if (EthTxBufIndx == EthMaxTxSize)                                                   // check to see if the index is at the maximum
        EthTxBufIndx = 0;                                                                 // reset the index to the first byte of the buffer
      return Count;                                                                       // pass the buffer count back to the calling routine
}

//----------------------------------------------------------------------------------------
// name    : wrStrEthTxBuffer(byte* pData, uint cnt)                                      //
// purpose : write data to the ring buffer to transmit over Ethernet                      //
// params  : pointer to the data bytes to write, number of bytes to write                 //
// returns : number of bytes sucessfully written into the buffer                          //
// notes   :                                                                              //
//----------------------------------------------------------------------------------------
uint wrStrEthTxBuffer(byte* pData, uint cnt)                                              // write data to the ethernet transmit buffer
{
      uint TmpCnt;                                                                        //
      uint offset;                                                                        //

      if((EthTxBufIndx + cnt) > EthMaxTxSize)                                             // make sure that the number of bytes to write added to the number
      {                                                                                   //  of bytes in the buffer already is not greater then the buffer
        offset = EthMaxTxSize - EthTxBufIndx;                                             // find the number of bytes that will fit in the buffer before overflow
        memmove(&EthTxBuffer[EthTxBufIndx], pData, offset);                               // fill the remainder of the buffer with the given data
        memmove(&EthTxBuffer[ix01], pData+offset, cnt - offset);                          // add the remainder of the given data to the begining of the buffer
        }
      else                                                                                // else all of the given data will still fit in the buffer
        {
        memmove(&EthTxBuffer[EthTxBufIndx], pData, cnt);                                  // place all of the given data into the buffer
        }
      EthTxBufIndx += cnt;                                                                // make sure that the index points at the first empty byte
      EthTxBufIndx &= EthMaxTxMask;                                                       // mask the index to wrap the buffer around into a ring
      TmpCnt = readEthTxBufCount() + cnt;                                                 // adjust the current buffer count
      writeEthTxCount(TmpCnt);
      return TmpCnt;                                                                      // return the number of bytes in the buffer
}

//----------------------------------------------------------------------------------------
// name    : WriteEthTxCount(uint TempCount)                                              //
// purpose : update the count checked by Ethernet process                                 //
// params  : updated count                                                                //
// returns : void                                                                         //
// notes   :                                                                              //
//----------------------------------------------------------------------------------------
void writeEthTxCount(uint TempCount)                                                      // update the global ethernet transmit buffer count
{
      EthTxCount = TempCount;                                                             // write the new count to the global buffer
}

//----------------------------------------------------------------------------------------
// name    : main_readEthChar(byte* pDat)                                                 //
// purpose : retrieve data from buffer to place in ethernet transmit buffer               //
// params  : pointer to variable to return                                                //
// returns : count of data left in buffer                                                 //
// notes   : this routine replaced GetEthChar defined in main.c.                          //
//----------------------------------------------------------------------------------------
uint main_readEthChar(byte* pDat)                                                         // read a data byte from the ethernet buffer
{
      uint temp;                                                                          //
      
      temp = readEthTxBufCount();                                                         // get the current ethernet buffer count
      if (temp > 0)                                                                       // see if there are any bytes in the buffer
        {
        *pDat = EthTxBuffer[EthTxBufTail];                                                // write the data to the location pointed to by the pointer
        EthTxBufTail++;                                                                   // update the ethernet ring buffer index
        if (EthTxBufTail == EthMaxTxSize)                                                 // check the index to make sure that the index remains within the buffer space 
          {  EthTxBufTail = 0;  }                                                         // reset the index to the first byte of the buffer
        EthTxCount--;                                                                     // update the count of the bytes in the buffer
        return EthTxCount;                                                                // pass the altered count back to the calling routine
        }
      return 0;                                                                           // write the default value for the count
}

//----------------------------------------------------------------------------------------
// name    : readEthTxBufCount(void)                                                      //
// purpose : read the current number of bytes in the Ethernet ring buffer                 //
// params  : void                                                                         //
// returns : current number of bytes in the Ethernet ring buffer                          //
// notes   :                                                                              //
//----------------------------------------------------------------------------------------
uint readEthTxBufCount(void)                                                               // retrieve the current number of bytes in the ethernet transmit buffer
{
      return EthTxCount;                                                                  // pass the ethernet transmit buffer to the calling routine
}

//----------------------------------------------------------------------------------------
// name    : processResetRsp                                                              //
// purpose : execute all steps required for a response                                    //
// params  : void                                                                         //
// returns : void                                                                         //
// notes   :                                                                              //
//----------------------------------------------------------------------------------------//
void  processResetRsp(void)                                                               //
{                                                                                         //
      int   i     = 0;                                                                    //
      byte  tmp   = 0;                                                                    //
      char  ch    = ' ';                                                                  //
      uint  port;                                                                         //
	  word  firmwaretimeout = 10;    
      //byte FPGA_firmware_tmp[4];                                                          //
                                                                                          //
      if (acResetRequest != 0)                                                            //
        {                                                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          initailize the message buffers                                                //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
        port = GCONFIG_GetServerDataPktListenPort();                                      // get the port number used by the device
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          initailize the message buffers device host communications                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
        strncpy(&bufResetReq[ix01],resetdefault,sizeof(resetdefault));                    //  reset buffer (not used)
        strncpy(&bufFirmwareReq[ix01],firmwaredefault,sizeof(firmwaredefault));           //  firmware req (should only be used for talking to slave)
        strncpy(&bufFirmwareRsp[ix01],firmwaredefault,sizeof(firmwaredefault));           //  firmware rsp (gets written to in reset(here) and process serial data)
        strncpy(&bufStatusReq[ix01],statusdefault,sizeof(statusdefault));                 //  status req   (should only be used for talking to slave)
        strncpy(&bufStatusRsp[ix01],statusdefault,sizeof(statusdefault));                 //  status rsp   (gets written to in check switches and process serial data)
        strncpy(&bufDimmingData[ix01],statusdefault,sizeof(statusdefault));               //  dimming req
 //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          Read FPGA Firmware (Make sure not empty and 'debounce' response               //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//									
                                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          reset the external hardware functions                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
        LogicRst = 1;                                                                     // activate FPGA reset
        DELAY_Ms(5);                                                                      // wait for the FPGA to see the reset signal
        LogicRst = 0;                                                                     // activate FPGA reset
        DELAY_Ms(10);                                                                     // wait for the FPGA to see the reset signal
        writeFpgaData(adrsexternalenables, defaultexternal, 5);                           // 
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          initialize the action counters to zero                                        //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
        acResetRequest         = 0;                                                       // clear the display change request flag
		acStatusRequest        = 0;
        acFirmwareRequest      = 0;                                                       // clear the firmware response action count
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          initialize the menu for debug port operations                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
        UTIL_MenuInit();                                                                  // process any messages entered in the debug window
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      Word1   = readFpgaData(adrsfirmware1,8);                                            // get the fpga firmware data MSB
      bufFirmwareRsp[ix06] = WByte0;                                                        // format and write the data to the firmware message array 8th byte
      Word1   = readFpgaData(adrsfirmware2,8);                                            // get the fpga firmware data MSB
      bufFirmwareRsp[ix07] = WByte0;                                                        // format and write the data to the firmware message array 9th byte
      Word1   = readFpgaData(adrsfirmware3,8);                                            // get the fpga firmware data MSB
      bufFirmwareRsp[ix08] = WByte0;                                                        // format and write the data to the firmware message array 9th byte
      Word1   = readFpgaData(adrsfirmware4,8);                                            // get the fpga firmware data MSB
      bufFirmwareRsp[ix09] = WByte0;                                                        // format and write the data to the firmware message array 9th byte    
	  
	  writeFpgaData(adrsCOM1, 0x00, 4);

	  Status_byte_1 = 0x00;
	  Status_byte_2 = 0x00;
	  //Status_byte_3 = 0x00;
        }                                                                                 //
}                                                                                         //
//----------------------------------------------------------------------------------------//
// name    : processDimmingRequest                                                         //
// purpose :                                                                              //
// params  : void                                                                         //
// returns : void                                                                         //
// notes   :                                                                              //
//----------------------------------------------------------------------------------------//
void processDimmingRequest(void)                                                           //
{                                                                                         //
      if (acDimmingRequest != 0)                                                           //
        {                                                                                 //
   		    writeFpgaData(0xC0,bufDimmingData[1],8);		
        	acDimmingRequest--;                                                                // clear the status response action count
        }                                                                                 //
}                                                                                            //
//----------------------------------------------------------------------------------------//
// name    : processStatusRequest                                                         //
// purpose :                                                                              //
// params  : void                                                                         //
// returns : void                                                                         //
// notes   :                                                                              //
//----------------------------------------------------------------------------------------//
void processStatusRequest(void)                                                           //
{                                                                                         //
      if (acStatusRequest != 0)                                                           //
        {                                                                                 //
		uart0_PutStr(&bufStatusRsp[ix01], bufStatusMsgLength);                          // send the slave 0 unicast firmware request
        //wrHost(&bufStatusRsp[ix01], bufStatusMsgLength);                                 // send the host a firmware response message
        acStatusRequest--;                                                                // clear the status response action count
        }                                                                                 //
}                                                                                         //
//----------------------------------------------------------------------------------------
// name    : processFirmwareRsp                                                           //
// purpose :                                                                              //
// params  : void                                                                         //
// returns : void                                                                         //
// notes   :                                                                              //
//----------------------------------------------------------------------------------------
void processFirmwareRsp(void)                                                             //
{                                                                                         //         
      if (acFirmwareRequest > 0)                                                          //
        {                                                                                 //
		uart0_PutStr(&bufFirmwareRsp[ix01], bufFirmwareMsgLength);                          // send the slave 0 unicast firmware request
        //wrHost(&bufFirmwareRsp[ix01], bufFirmwareMsgLength);                             // send the host a firmware response message
        acFirmwareRequest--;                                                              // clear the status response action count
        }                                                                                 //
}                                                                                         //                                                                                         //

//----------------------------------------------------------------------------------------
// name    : UpdateIpSettings                                                             //
// purpose : Update IP address, subnet mak, gateway IP address and DNS IP address         //
// params  : IP to use for update                                                         //
// returns : void                                                                         //
// notes   :                                                                              //
//----------------------------------------------------------------------------------------
void UpdateIpSettings(ulong ip)                                                           // Update IP address, subnet mask, gateway IP address and DNS IP address
{                                                                                         //
      if (ip > 0)                                                                         // check the IP to see if it is valid
        {                                                                                 //
        printd("IP  : %bu.%bu.%bu.%bu\n\r", (byte) ((ip >> 24) & 0x000000FF),             // write the IP address to the user debug port
                                            (byte) ((ip >> 16) & 0x000000FF),             //
                                            (byte) ((ip >> 8)  & 0x000000FF),             //
                                            (byte) ( ip        & 0x000000FF));            //
        }                                                                                 //
      else                                                                                // the IP was valid
        if (ip == 0)                                                                      // check the IP to see if it is valid
          {                                                                               //
          ulong mask = GCONFIG_GetNetmask();                                              // retrieve the default net mask
          ip = GCONFIG_GetServerStaticIP();                                               // retrieve the static IP
          TCPIP_SetIPAddr(ip);                                                            // write the default IP addess into the DCB
          STOE_SetIPAddr(ip);                                                             // write the default IP addess into the DCB
          TCPIP_SetSubnetMask(mask);                                                      // write the default net mask into the DCB
          STOE_SetSubnetMask(mask);                                                       // write the default net mask into the DCB
          }                                                                               //
      GS2E_Init();                                                                        //
} // End of UpdateIpSettings //                                                           //
                                                                                          //
//----------------------------------------------------------------------------------------
// name    : printdHex2Bin(byte num)                                                      //
// purpose :                                                                              //
// params  : void                                                                         //
// returns : void                                                                         //
// notes   :                                                                              //
//----------------------------------------------------------------------------------------
void printdHex2Bin(byte num)
{
  if((num & 0x80) == 0) printd("0");  else printd("1");
  if((num & 0x40) == 0) printd("0");  else printd("1");
  if((num & 0x20) == 0) printd("0");  else printd("1");
  if((num & 0x10) == 0) printd("0");  else printd("1");
  if((num & 0x08) == 0) printd("0");  else printd("1");
  if((num & 0x04) == 0) printd("0");  else printd("1");
  if((num & 0x02) == 0) printd("0");  else printd("1");
  if((num & 0x01) == 0) printd("0 "); else printd("1 ");
}
//----------------------------------------------------------------------------------------
// name    : printFirmwareInformation                                                     //
// purpose : display the  firmware information in the debug window                        //
// params  : void                                                                         //
// returns : void                                                                         //
// note    :                                                                              //
//----------------------------------------------------------------------------------------
void  printFirmwareInformation()                                                          //
{
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
    printd("uC Firmware PN          : ");                                                 // output the firmware data for the master processor
    printd("%02bx-",   bufFirmwareRsp[ix02]);                                            //
    printd("%02bx",    bufFirmwareRsp[ix03]);                                            //
    printd("%02bx",    bufFirmwareRsp[ix04]);                                            //
    printd(" : %c\n\r",bufFirmwareRsp[ix05]);                                            //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
    printd("FPGA Firmware PN        : ");                                                 // output the firmware data for the slave 0 processor
    printd("%02bx-",   bufFirmwareRsp[ix06]);                                            //
    printd("%02bx",    bufFirmwareRsp[ix07]);                                            //
    printd("%02bx",    bufFirmwareRsp[ix08]);                                            //
    printd(" : %c\n\r",bufFirmwareRsp[ix09]);                                            //
}

//----------------------------------------------------------------------------------------
// name    : printDeviceConfigurationInformation                                          //
// purpose : show the user the device information in the debug window                     //
// params  : void                                                                         //
// returns : void                                                                         //
// notes   :                                                                              //
//----------------------------------------------------------------------------------------
void  printDeviceConfigurationInformation()                                               //
{
    printd("Debug Routines          : ");                                                 //
    if(fDebugMode == OFF)                                                                 // get the state of the debug bit
      printd("disabled\n\r");                                                             // alert the user to port status
    else                                                                                  //
      printd("enabled\n\r");                                                              // alert the user to port status
    printd("Transmit Mode           : ");                                                 // alert the user to port status
    if(fDebugMode == OFF)                                                                 // get the state of the debug bit
      {
      if(fTransmitMode == Server)                                                         // get the state of the client port bit
        printd("Server\n\r");                                                             // alert the user to port status
      else                                                                                //
        printd("Client\n\r");                                                             // alert the user to port status
      }
    else                                                                                  //
      printd("Server\n\r");                                                               // alert the user to port status
    gconfig_ExDisplayConfigData();                                                        //
    printd("*****************************************************\n\r");                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          display the firmware information for all programs in the debug window         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
    printFirmwareInformation();                                                           //
    printd("*****************************************************\n\r");                  //
}

//----------------------------------------------------------------------------------------
// name    : processEthernetTraffic                                                       //
// purpose : check for new Ethernet traffic and process new data                          //
// params  : last software timer count, display link speed flag                           //
// returns : current timer count                                                          //
// notes   :                                                                              //
//----------------------------------------------------------------------------------------
ulong processEthernetTraffic(ulong ptc, dls)                                              //
{
    ulong tc;                                                                             // current time count
    byte  linkSpeed = 0;                                                                  //
    
    tc              = (uint)SWTIMER_Tick();                                               // get the current timer count
    if ((tc - ptc) >= TIME_OUT_COUNTER)                                                   // see if the difference in the curent & last time differs more then the timeout
      {
      ptc           = tc;                                                                 // set the last time to the current time
      TCPIP_PeriodicCheck();                                                              // check the for any TCPIP traffic
      }
    STOE_ProcessInterrupt();                                                              // process all TOE buffers input/output
    if (MAC_GetInterruptFlag())                                                           // get the data for this device
      { linkSpeed   = MAC_ProcessInterruptExt(); }                                        // find the linkage speed, and process device traffic
    if(dls == ON) printd("Ethernet Link Speed = bps\n\r", linkSpeed);                     // display the linkage speed
    return ptc;                                                                           // return the current timer count
}

//----------------------------------------------------------------------------------------
// name    : setupEthernet                                                                //
// purpose : initailize and start all of the Ethernet processes                           //
// params  : enabled                                                                      //
// returns : the last updated timer count                                                 //
// notes   :                                                                              //
//----------------------------------------------------------------------------------------
ulong setupEthernet(byte enabled)
{
    ulong ip;                                                                             //
    ulong mask;                                                                           //
    byte  cmdDhcpFlag      = 0;                                                           //
    ulong dhcpTimeStart    = 0;                                                           //
    ulong swtc;                                                                           //

    if(enabled == TRUE)                                                                   //
      {
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          initialize network adapter                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      ETH_Init();                                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          initailize the device configurationnitialization                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      GCONFIG_Init();                                                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          iniailize the software timer                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      SWTIMER_Init();                                                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          enable transmit socket for runtime mode                                       //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      gudpdat_ClientOpen(TrxSocket);                                                      //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          Start the Ethernet Engine and Software Timer for DMA                          //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      ETH_Start();                                                                        // start the ethernet process
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          Start the Ethernet Engine and Software Timer for DMA                          //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      SWTIMER_Start();                                                                    // start the software timer
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          initailize the hardware DCB                                                   //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      mask    = GCONFIG_GetNetmask();                                                     //
      ip      = GCONFIG_GetServerStaticIP();                                              //
      TCPIP_SetIPAddr(ip);                                                                //
      STOE_SetIPAddr(ip);                                                                 //
      TCPIP_SetSubnetMask(mask);                                                          //
      STOE_SetSubnetMask(mask);                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          update device IP and port settings                                            //
      if ((GCONFIG_GetNetwork() & GCONFIG_NETWORK_DHCP_ENABLE) == GCONFIG_NETWORK_DHCP_ENABLE)
        {
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          initialize network adapter                                                    //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
        printd("DHCP     init           : ");                                             //
        if (DHCP_Init())                                                                  //
          printd("pass\n\r");                                                             //
        else
          printd("**ERROR**\n\r");                                                        //
        printd("DHCP Assigned IP    : ");                                                 // tell user that the DHCP process has started
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//    start the DHCP engine                                                               //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
        DHCP_Start();                                                                     // start the DHCP process
        cmdDhcpFlag   = 1;                                                                // set the DHCP initailization flag to start
        dhcpTimeStart = SWTIMER_Tick();                                                   // record the DHCP process start time
        }
      else                                                                                //
        {
        ip            = 0;                                                                // update the IP settings to the static IP and port
        cmdDhcpFlag   = 0;                                                                // set the DHCP initailization flag to bypass
        }
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          start DHCP process loop                                                       //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      DELAY_Ms(1000);                                                                     // wait 1S to give the internal hardware time to start up
      while(cmdDhcpFlag == 1)                                                             // check the DHCP flag to see if the DHCP process has completed
        {
        printd("DHCP response -- ");                                                      //
        if (DHCP_GetState() > DHCP_IDLE_STATE)                                            // see if the DHCP process is in the beginning idle state
          { DHCP_Send(); }                                                                // send a DHCP request to the DHCP host
        else                                                                              // the DHCP process is not in IDLE, execute the next step
          { 
          ulong ip = STOE_GetIPAddr();                                                    // reteieve the DHCP host proposed IP
          if (ip == 0)                                                                    // make sure the proposed IP was not invalid
            printd(" fail!\n\r");                                                         // let the host know that the DHCP process failed
          cmdDhcpFlag = 0;                                                                // set the DHCP process flag to complete
          }//if (DHCP_GetState() > DHCP_IDLE_STATE)
        swtc = processEthernetTraffic(0, ON);                                             // check for new Ethernet traffic and process new data
        }//while(cmdDhcpFlag == 1)do
      UpdateIpSettings(ip);                                                               // update IP address, subnet mask, gateway IP address and DNS IP address
      printd("*****************************************************\n\r");                // 
      }
      return swtc;                                                                        // return the software timer count
}
//****************************************************************************************************************************************************
//****************************************************************************************************************************************************
void  processSerialData(void)
{
      byte  len              = 0;   
      word t16a             = 0;                                                          //
      byte tmpS;
      uint dataLength       = 0;
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          the following routines implement the RS422 interface between                  //
//          the device and the host system                                                //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          transfer all received into the processing buffer                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
        mRxCnt = uart0_GetByteCount();
        if(mRxCnt >= MinMsgLen)                                                           // check for the minimum message size
          {
          memset(&mRxBuf[0], 0, MinMsgLen);                                               // make sure to zero out the buffer before read from the global receive buffer
          uart0_GetBuf(&mRxBuf[0], MinMsgLen);                                            // get the message data from the serial receive buffer
          tmpS = mRxBuf[0];                                                               // get the message length
              switch(tmpS)                                                                // find which command
                {
                case ResetRequest:
						if(acResetRequest < 0xffff)                                    // make sure that the max number of firmware requests is not pending
                        { acResetRequest++; }                                          // trigger a firmware action in the main loop
						MinMsgLen = DefaultMsgLen;                                        // set the minimum message length to the default
                    	uart0_RxBufUpdate(MinMsgLen);                                     // remove the message from the recieve buffer
                    break;
                case FirmwareRequest:
						if(acFirmwareRequest < 0xffff)                                    // make sure that the max number of firmware requests is not pending
                        { acFirmwareRequest++; }                                          // trigger a firmware action in the main loop
						MinMsgLen = DefaultMsgLen;                                        // set the minimum message length to the default
                    	uart0_RxBufUpdate(MinMsgLen);                                     // remove the message from the recieve buffer
                    break;
                case StatusRequest:
						if(acStatusRequest < 0xffff)                                    // make sure that the max number of firmware requests is not pending
                        { acStatusRequest++; }                                          // trigger a firmware action in the main loop
						MinMsgLen = DefaultMsgLen;                                        // set the minimum message length to the default
                    	uart0_RxBufUpdate(MinMsgLen);                                     // remove the message from the recieve buffer
                    break;
                case DimmingRequest:
              		len = m2sDimmingMsgLength;                                                  // 
              		if(mRxCnt >= len)                                                         // check if the defined message length matches the received message length
                	{
						if(acDimmingRequest < 0xffff)                                     // make sure that the max number of firmware requests is not pending
                        { acDimmingRequest++; }                                           // trigger a firmware action in the main loop
                		uart0_GetBuf(&mRxBuf[ix01], len);                                       // get the message data from the serial receive buffer
                		memmove(&bufDimmingData[ix02], &mRxBuf[ix02], len-1);                    // copy the new display data into the display data buffer
                		uart0_RxBufSet(0,len);                                                  //
                		uart0_RxBufUpdate(len);                                                 // remove the message from the recieve buffer
                		MinMsgLen = DefaultMsgLen;                                              // set the minimum message length to the default
                	}
              		else
                	{
                		MinMsgLen = len;                                                        // set the minimum message length
                	}//else if(mRxCnt >= FirmwareMsgS0Len)
              break;

            case IndicatorRequest:
                  if (acIndicatorRequest < 0xFFFF) // Ensure the max number of requests is not exceeded
                  {
                        acIndicatorRequest++; // Increment the request counter

                        // Determine the actual length of the received data
                        dataLength = uart0_GetByteCount(); // Get the data length from UART buffer

                        // Ensure at least the minimum message length is available
                        if (dataLength >= MinMsgLen)
                        {
                            // Extract the command buffer
                            uart0_GetBuf(&mRxBuf[0], dataLength); // Read the available data

                            // Process the indicator command
                            processIndicatorCommand(mRxBuf);

                            // Update the UART buffer
                            uart0_RxBufUpdate(dataLength); // Remove the processed message from the buffer

                            MinMsgLen = DefaultMsgLen; // Reset the minimum message length to the default
                        }
                        else
                        {
                            MinMsgLen = dataLength; // Set the minimum message length to the received data length
                        }
                  }
                  break;
                default   :
//                    derror("..ERROR : CB");                                               // let user know that there was an error the command sent was not defined
                    //StatusData[ix15] |= 0x1C;                                             // add error flags
                    MinMsgLen = DefaultMsgLen;                                            // set the minimum message length to the default
                    uart0_RxBufUpdate(MinMsgLen);                                         // remove the message from the recieve buffer
                    break;
                }
		}
}

void  processIndicatorCommand(byte* commandBuffer)
{
    // Extract the command byte
    byte commandByte = commandBuffer[0];

    // Process the data based on the command byte
    if (commandByte == 0xF3)
    {
        // Extract data bytes, using defaults if not provided
        byte dataByte1 = commandBuffer[1]; // Defaults to 0 if not provided
        byte dataByte2 = commandBuffer[2]; // Defaults to 0 if not provided

        // Extract individual bits from dataByte1 and dataByte2
        byte ap1 = (dataByte1 >> 0) & 0x01;
        byte ap2 = (dataByte1 >> 1) & 0x01;
        byte fdsel1 = (dataByte1 >> 2) & 0x01;
        byte fdsel2 = (dataByte1 >> 3) & 0x01;
        byte cpl = (dataByte1 >> 4) & 0x01;

        byte sas = (dataByte2 >> 0) & 0x01;
        byte att = (dataByte2 >> 1) & 0x01;
        byte test = (dataByte2 >> 2) & 0x01;
        byte radalt = (dataByte2 >> 3) & 0x01;
        byte velhld = (dataByte2 >> 4) & 0x01;

        // Combine the extracted bits into a single byte for FPGA
        byte fpgaData1 = (ap1 << 0) | (ap2 << 1) | (fdsel1 << 2) | (fdsel2 << 3) | (cpl << 4);
        byte fpgaData2 = (sas << 0) | (att << 1) | (test << 2) | (radalt << 3) | (velhld << 4);

        // Send the data to the FPGA
        writeFpgaData(Ind_1, fpgaData1, 8); // Write first byte to FPGA
        writeFpgaData(Ind_2, fpgaData2, 8); // Write second byte to FPGA
    }
}    
void  checkSwitch_Status1(void)
{
	
	Word1 = readFpgaData(status1, 8);
	Status_byte_1 = WByte0 & 0x1F; /* status1: bits 0-4 AP1(0),AP2(1),FDSEL(2),COLL(3),CPL(4) */

	Word1 = readFpgaData(status2, 8);
	Status_byte_2 = WByte0 & 0x0F; /* status2: bits 0-3 SAS_ALT(0),TEST(1),RADALT(2),VELHLD(3) */

	bufStatusRsp[ix02] = Status_byte_1;
	bufStatusRsp[ix03] = Status_byte_2;
	//bufStatusRsp[ix04] = Status_byte_3;
}

//----------------------------------------------------------------------------------------
// name    : main                                                                         //
// purpose : execute the main loop of the program as long as powered                      //
// params  : void                                                                         //
// returns : void                                                                         //
// notes   :                                                                              //
//----------------------------------------------------------------------------------------
void main(void)
{
      uint  temp16 = 1;                                                                   //
      byte  sysInitFlag = 1;                                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      byte  linkFlag = 0;                                                                 //
      byte  cmdDhcpFlag = 0;                                                              //
      ulong dhcpTimeStart = 0;                                                            //
//      ulong timeCount;                                                                    //
      ulong preTimeCount;                                                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          Start Main Code                                                               //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      ExecuteRuntimeFlag     = 1;                                                         //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          system initiation                                                             //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      AX11000_Init();                                                                     // initailize the AX110xx setup registers
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          uart interface initiation                                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      uart_Init(0,Baud__19200, FALSE);                                                    // setup port 0 for 8,1,1n, and baudrate
      uart_Init(1,Baud___9600, FALSE);                                                    // setup port 1 for 8,1,1n, and 9600bps
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          uart interface initiation                                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      printd("Instrument Part Number  : %s\n\r",SIMTEK_Inst_Number);                      //
      printd("Firmware Last Revised   : %s %s\n\r",__DATE__,__TIME__);                    // c:\tftpd64
      printd("Ethernet Library Ver.   : %s\n\r", GCONFIG_VERSION_STRING);                 //
      printd("*********************************************************\n\r");            //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          uart interface initiation                                                     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      printd("UART-0   init           : pass   ");                                        //
      printd("baud : %02bx \n\r",Baud__19200);                                            // show the user the baudrate
      printd("UART-1   init           : pass\n\r");                                       //
      printd("*****************************************************\n\r");                // print this in the debug widow to ease readability for user
	  MinMsgLen = DefaultMsgLen;                                                          // set the minimum message length
	  stagetimeout = 5000;
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          initailize the device configuration                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      preTimeCount = setupEthernet(TRUE);                                                 // initailize and start all of the Ethernet processes
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          initialize harware                                                            //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      LogicRst                = 1;                                                        // activate FPGA reset
      DELAY_Ms(5);                                                                        // wait for the FPGA to see the reset signal
      LogicRst                = 0;                                                        // activate FPGA reset
      acResetRequest          = 1;                                                        //
      processResetRsp();                                                                  // reset all functions to the powerup state
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          display device configuration information                                      //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      printDeviceConfigurationInformation();                                              // print the device configuration information in the debug window
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          start main loop                                                               //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//      
      while (1)                                                                           // loop until power is removed
        {
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          begin action request processing for debug commands                            //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
        UTIL_MenuExecute();                                                               // get and process any data the user entered in the debug window

        checkSwitch_Status1();		

        processResetRsp();                                                                //
        processStatusRequest();                                                           //
        processFirmwareRsp();                                                             //
        processDimmingRequest(); 														  //                                                                 //
        processSerialData();                                                              // check serial rx buffer and process any messages 
		 
        preTimeCount = processEthernetTraffic(preTimeCount, OFF);                         // check for new Ethernet traffic and process new data
        GS2E_Task();  
        }
} // End of main()