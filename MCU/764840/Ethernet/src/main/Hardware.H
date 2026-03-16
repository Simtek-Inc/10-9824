//========================================================================================//
//     Copyright (c) 2017     Simtek, Incorporated      All rights reserved.              //
//                                                                                        //
//     This is unpublished proprietary source code of Simtek, Inc                         //
//                                                                                        //
//     The copyright notice above does not evidence any actual or intended                //
//     publication of such source code.                                                   //
//========================================================================================//
//========================================================================================//
//========================================================================================//
// Module Name     : Hardware.H                                                           //
// Purpose         : Definition of universal variables                                    //
// Author          : C. Mason                                                             //
// Date            : Jult 31, 2017                                                        //
// Notes           :                                                                      //
//========================================================================================//
//========================================================================================//
// Simtek Revision : -                                                                    //
//========================================================================================//
#include "INSTRUMENT.H"                                                                   //
//========================================================================================//
//                NAMING CONSTANT DECLARATIONS                                            //
//========================================================================================//

//========================================================================================//
//                GLOBAL VARIABLES                                                        //
//========================================================================================//
extern uint  acReadP0;                                                                    //
extern uint  acReadP1;                                                                    //
extern uint  acReadP2;                                                                    //
extern uint  acReadP3;                                                                    //
extern uint  acRDFU;                                                                      //
extern uint  acAPF;                                                                       //
extern bool  fDebugPin;                                                                   //
extern bool  fNormalRun;                                                                  //
extern byte  HalfDuplex;                                                                  //
////////////////////////////////////////////////////////////////////////////////////////////
//          GLOBAL VARIABLES                                                              //
////////////////////////////////////////////////////////////////////////////////////////////

extern uint  acResetRequest;                                                              //
extern uint  acStatusRequest;                                                             //
extern uint  acIndicatorRequest;                                                          //
extern uint  acDimmingRequest;                                                            //
extern uint  acMeterMoveRequest;                                                          //
extern uint  acIndicatorRequest;                                                            //

extern uint  acFirmwareRequest;                                                           //
extern uint  acDisplayRequest;                                                            //
extern uint  acPointerRequest;                                                            //
extern byte  bufDisplayReq[];
extern byte  tmpDisplayReq[];
extern byte  bufDimmingReq[];

extern bool fDebugMode;                                                                   //
extern bool fTransmitMode;                                                                //

//extern byte bufStatusData[bufStatusRspLength];                                            //
//extern byte bufFirmwareData[bufFirmwareRspLength];                                        //
extern byte bufIndicatorData[bufIndicatorgMsgLength];                                      //
extern byte  bufDimmingData[bufDimmingMsgLength];                                          //
extern byte  bufResetReq[bufResetMsgLength];                                              //
extern byte  bufStatusRsp[bufStatusMsgLength];                                            //
extern byte  bufStatusReq[bufStatusMsgLength];                                            //
extern byte  bufFirmwareReq[bufFirmwareMsgLength];                                        //
extern byte  bufFirmwareRsp[bufFirmwareMsgLength];                                        //

extern uint main_readEthChar(byte* pDat);                                                 //
