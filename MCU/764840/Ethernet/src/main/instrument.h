//========================================================================================//
//========================================================================================//
//========================================================================================//
//     Copyright (c) 2018     Simtek, Incorporated      All rights reserved.              //
//                                                                                        //
//     This is unpublished proprietary source code of Simtek, Inc                         //
//                                                                                        //
//     The copyright notice above does not evidence any actual or intended                //
//     publication of such source code.                                                   //
//========================================================================================//
//========================================================================================//
//========================================================================================//
// Module Name     : revision.h                                                           //
// Purpose         : definition of firmware number.date.release.rev.build                 //
// Author          : C. Mason                                                             //
// Date            : April 20, 2018                                                       //
// Notes           :                                                                      //
//========================================================================================//
//========================================================================================//
//========================================================================================//
#ifndef INSTRUMENT_H                                                                      //
#define INSTRUMENT_H                                                                      //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          simtek microcontroller date and firmware revision number                      //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
#define SIMTEK_Inst_Number   "10_9823"                                                    //
#define SIMTEK_CFG           "_01"                                                        //
#define SIMTEK_SN            "_xxx  "                                                     //
extern  byte DefaultDevName[16];                                                          //
#define defaultDeviceName     "10-9823_01_1XX"                                //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
#define defaultServerStaticIP 0xC0A8885A                                                  //
#define defaultClientDestIP   0xC0A88801                                                  //
#define defaultsubnetmask     0xFFFFFF00                                                  //
#define defaultDNSServer      0xa85f0101                                                  //
#define defaultGateway        0xc0a80001                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
#define defaultDataPort       51020                                                       //
#define defaultHostPort       51021                                                       //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
#define a2dCh1Max             4095                                                        //
#define a2dCh1Min             0                                                           //
#define a2dCh1Offset          10                                                          //
#define a2dCh1MaxReading      3866                                                        //
#define a2dCh1scalefactor     1.0619813278008298755186721991701                           // a2dCh1Max/(a2dCh1MaxReading - a2dCh1Offset)
#define DebugBuild            0                                                           //

#define numof5841used         3
extern  uint                  PortLeaseTimeoutVal;                                        //
#define PortLeaseTimeout      6000                                                        //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          port pin name static definition                                               //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
#define PORT0_PIN_NAMES    "P0_0,P0_1,P0_2,P0_3,P0_4,P0_5,P0_6,P0_7,"                     //
#define PORT1_PIN_NAMES    "P1_0,P1_1,P1_2,P1_3,P1_4,P1_5,P1_6,P1_7,"                     //
#define PORT2_PIN_NAMES    "P2_0,P2_1,P2_2,P2_3,P2_4,P2_5,P2_6,P2_7,"                     //
#define PORT3_PIN_NAMES    "P3_0,P3_1,P3_2,P3_3,P3_4,P3_5,P3_6,P3_7,\0"                   //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          host message header                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
#define StartByte          0xFF                                                           // start byte
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          first byte of the display data array                                          //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
#define ResetRequest       0xF0                                                           //
#define StatusRequest      0xF1                                                           //      
#define DimmingRequest     0xF4                                                           // 
#define IndicatorRequest     0xF3                                                           // 
//#define DisplayRequest     0xF5                                                         //
//#define MeterMoveRequest   0xF6                                                         //
//#define IntailizeRequest   0xFD                                                         //
#define FirmwareRequest    0xFE                                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          default message buffer definitions                                            //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
#define resetdefault       "\xF0"                                                         // F0
//                             1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20 // 
#define statusdefault      "\xF1\x00\x00\x00"                                                // F1 x 4
#define firmwaredefault    "\xFE\x76\x48\x40\x2d\x76\x00\x00\x2d"                            // FE x 9   
#define dimmingdefault     "\xF4\x00"                                                        // F4 x 2   
#define indicatordefault   "\xF3\x00\x00"                                                    // F3 x 3
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          lengths of messages sent from and to the host                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
#define DefaultMsgLen                      1                          // smallest of slave response messages
#define LargestMsgLen                      (sizeof(statusdefault))*2                        // 
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// buffer length longest message between the request message and the response message     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          lengths of messages sent from and to the host                                 //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define IntailizeRequestLen                7                                              //
#define m2sDimmingMsgLength                sizeof(dimmingdefault) - 1                     //
//#define DefaultMsgLen                      sizeof(statusdefault) - 1                      // smallest of slave response messages
//#define LargestMsgLen                      (sizeof(firmwaredefault)+sizeof(statusdefault))*2                        // 
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// buffer length longest message between the request message and the response message     //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define bufResetMsgLength                  sizeof(resetdefault)     -1                    //  length = 0
#define bufFirmwareMsgLength               sizeof(firmwaredefault)  -1                    //  length = 8 
#define bufStatusMsgLength                 sizeof(statusdefault)    -1                    //  length = 8
#define bufDimmingMsgLength                sizeof(dimmingdefault)   -1                    //  length = 8
#define bufIndicatorgMsgLength             sizeof(indicatordefault)   -1  


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          A2D number of samples to take and number of loops to delay between reads      //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
#define a2dsamples         4                                                              //
#define a2ddelay           20                                                             //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//                                                                                        //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
#define FPGADataLen                          20                                           // 
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          data array index poinx                                                        //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
#define ix01                             0                                                //
#define ix02                             1                                                //
#define ix03                             2                                                //
#define ix04                             3                                                //
#define ix05                             4                                                //
#define ix06                             5                                                //
#define ix07                             6                                                //
#define ix08                             7                                                //
#define ix09                             8                                                //
#define ix10                             9                                                //
#define ix11                            10                                                //
#define ix12                            11                                                //
#define ix13                            12                                                //
#define ix14                            13                                                //
#define ix15                            14                                                //
#define ix16                            15                                                //
#define ix17                            16                                                //
#define ix18                            17                                                //
#define ix19                            18                                                //
#define ix20                            19                                                //
#define ix21                            20                                                //
#define ix22                            21                                                //
#define ix23                            22                                                //
#define ix24                            23                                                //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          debug routines message constants                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
#define DebugStrLen                   0x10                                                // debug commands response string length
#define dbCmd                         ix07                                                // define the position of the debug response command byte
#define dbDat01                       ix08                                                // define the position of the 1st debug response data byte
#define dbDat02                       ix09                                                // define the position of the 2nd debug response data byte
#define dbDat03                       ix10                                                // define the position of the 3rd debug response data byte
#define dbDat04                       ix11                                                // define the position of the 4th debug response data byte
#define DebugDefStrLen                   8                                                // define the number of bytes to send for default command response
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          realtime message array index points                                           //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
#define rt01                          ix02                                                //
#define rt02                          ix03                                                //
#define rt03                          ix04                                                //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//                bit masks                                                               //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          debug routines message constants                                              //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
static byte oP0;                                                                          //
static byte oP1;                                                                          //
static byte oP2;                                                                          //
static byte oP3;                                                                          //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          realtime switch action codes                                                  //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
#define     SwXxPosX                       0x0B                                           // example
#endif      // end of INSTRUMENT_H