//========================================================================================//
//========================================================================================//
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
// 75-1503  for 10-8324-01                                                                //
//========================================================================================//
// Author      : C. Mason                                                                 //
// Date        : February 8, 2017                                                         //
// Revision    : -                                                                        //
// Notes       : Shipped with instrument.                                                 //
//========================================================================================//
//                                                                                        //
//========================================================================================//
//          include file declarations                                                     //
//========================================================================================//
#include "CIRCUIT.H"                                                                      //
//Change CIRCUIT.H to include definitions for: HI8045CLK, HI8045DIN, HI8045LOAD, HI8045CS // 
                                                                                          //
void formatDataHI8045(byte dat[5],byte *formattedData);                                                       //
void writeHI8045(byte din[11]);                                                           //
void setBPOSC(byte bposc_rate);                                                           //
   
   
//----------------------------------------------------------------------------------------
// Function Name : formatDataHI8045                                                       //
// Purpose       : format 5 digits into 10 byte, 80 bit data format according to PWTNLCD  //
// Params        : data to write to registers                                             //
// Returns       : void                                                                   //
// Note          :                                                                        //
//----------------------------------------------------------------------------------------
void formatDataHI8045(byte dat[5],byte *formattedData)                                                        //
{
//    byte formattedData[10];
    byte i;
    static const byte seg_A  = 0x01;
    static const byte seg_B  = 0x02;
    static const byte seg_C  = 0x04;
    static const byte seg_D  = 0x08;
    static const byte seg_E  = 0x10;
    static const byte seg_F  = 0x20;
    static const byte seg_G  = 0x40;
    static const byte seg_P  = 0x80;

    static const byte bit00  = 0x01;
    static const byte bit01  = 0x02;
    static const byte bit02  = 0x04;
    static const byte bit03  = 0x08;
    static const byte bit04  = 0x10;
    static const byte bit05  = 0x20;
    static const byte bit06  = 0x40;
    static const byte bit07  = 0x80;

    for(i=0; i<10; i++)
    {
        formattedData[i] = 0;   // Load array with zeroes.
    }
// FOLLOWING the HI-8045 pinout from s80 down to s1 on the 51-1331schematic...
    formattedData[0]  = ((dat[4]&seg_B)?bit07:0) + ((dat[4]&00000)?bit06:0) + ((dat[4]&seg_A)?bit05:0) + ((dat[4]&00000)?bit04:0) + ((dat[4]&seg_F)?bit03:0) + ((dat[4]&00000)?bit02:0) + ((dat[4]&seg_G)?bit01:0) + ((dat[4]&00000)?bit00:0);                                 
    formattedData[1]  = ((dat[3]&seg_B)?bit07:0) + ((dat[4]&00000)?bit06:0) + ((dat[3]&seg_A)?bit05:0) + ((dat[4]&00000)?bit04:0) + ((dat[3]&seg_F)?bit03:0) + ((dat[4]&00000)?bit02:0) + ((dat[3]&seg_G)?bit01:0) + ((dat[4]&00000)?bit00:0);                               
    formattedData[2]  = ((dat[2]&seg_B)?bit07:0) + ((dat[2]&00000)?bit06:0) + ((dat[2]&seg_A)?bit05:0) + ((dat[2]&00000)?bit04:0) + ((dat[2]&seg_F)?bit03:0) + ((dat[2]&00000)?bit02:0) + ((dat[2]&seg_G)?bit01:0) + ((dat[2]&00000)?bit00:0);                                 
    formattedData[3]  = ((dat[1]&seg_B)?bit07:0) + ((dat[1]&seg_A)?bit06:0) + ((dat[1]&00000)?bit05:0) + ((dat[1]&seg_F)?bit04:0) + ((dat[1]&00000)?bit03:0) + ((dat[1]&seg_G)?bit02:0) + ((dat[2]&00000)?bit01:0) + ((dat[0]&seg_B)?bit00:0);                                
    formattedData[4]  = ((dat[1]&00000)?bit07:0) + ((dat[0]&seg_A)?bit06:0) + ((dat[1]&00000)?bit05:0) + ((dat[0]&seg_F)?bit04:0) + ((dat[1]&00000)?bit03:0) + ((dat[1]&00000)?bit02:0) + ((dat[0]&seg_G)?bit01:0) + ((dat[0]&00000)?bit00:0);                                
    formattedData[5]  = ((dat[1]&00000)?bit07:0) + ((dat[0]&00000)?bit06:0) + ((dat[1]&00000)?bit05:0) + ((dat[0]&seg_E)?bit04:0) + ((dat[1]&00000)?bit03:0) + ((dat[0]&seg_D)?bit02:0) + ((dat[0]&00000)?bit01:0) + ((dat[0]&seg_C)?bit00:0);                                  
    formattedData[6]  = ((dat[0]&00000)?bit07:0) + ((dat[0]&seg_P)?bit06:0) + ((dat[1]&seg_E)?bit05:0) + ((dat[1]&00000)?bit04:0) + ((dat[1]&seg_D)?bit03:0) + ((dat[1]&00000)?bit02:0) + ((dat[1]&seg_C)?bit01:0) + ((dat[1]&00000)?bit00:0);                                  
    formattedData[7]  = ((dat[1]&seg_P)?bit07:0) + ((dat[2]&00000)?bit06:0) + ((dat[2]&seg_E)?bit05:0) + ((dat[2]&00000)?bit04:0) + ((dat[2]&seg_D)?bit03:0) + ((dat[2]&00000)?bit02:0) + ((dat[2]&seg_C)?bit01:0) + ((dat[2]&00000)?bit00:0);                                   
    formattedData[8]  = ((dat[2]&seg_P)?bit07:0) + ((dat[3]&00000)?bit06:0) + ((dat[3]&seg_E)?bit05:0) + ((dat[3]&00000)?bit04:0) + ((dat[3]&seg_D)?bit03:0) + ((dat[3]&00000)?bit02:0) + ((dat[3]&seg_C)?bit01:0) + ((dat[3]&00000)?bit00:0);                                   
    formattedData[9]  = ((dat[3]&seg_P)?bit07:0) + ((dat[3]&00000)?bit06:0) + ((dat[4]&00000)?bit05:0) + ((dat[4]&seg_E)?bit04:0) + ((dat[4]&00000)?bit03:0) + ((dat[4]&seg_D)?bit02:0) + ((dat[4]&00000)?bit01:0) + ((dat[4]&seg_C)?bit00:0);                                   
}                                                                                         //
//----------------------------------------------------------------------------------------
// Function Name : writeHI8045                                                            //
// Purpose       : write the data into the HI-8045 device, 85 bits at a time              //
// Params        : data to write to registers                                             //
// Returns       : void                                                                   //
// Note          :                                                                        //
//----------------------------------------------------------------------------------------
void writeHI8045(byte dat[10])                                                            //
{
    byte i,j;
    
    HI8045LOAD  = 1;                                                                      // make sure the fpga ale is deactived before starting
    HI8045CLK   = 1;                                                                      // make sure the fpga serial register clock is deactived before starting
    HI8045LOAD  = 0;                                                                      // activate the ale to move the address into the address latch from the sipo function
    HI8045CS    = 0;
    for(i=0; i<5; i++)                                                                    // HI-8045 has 85 bits shift register, but only 80 can be used. Insert 0's into first 5 bits.
    {
        HI8045DIN   = 0;
        HI8045CLK   = 0;          
        HI8045CLK   = 0;                                                                  // deactivate the fpga serial register clock
        HI8045CLK   = 0;                                                                  // deactivate the fpga serial register clock
        HI8045CLK   = 0;                                                                  // deactivate the fpga serial register clock
        HI8045CLK   = 0;   
        HI8045CLK   = 1;                                                                  // set the clock to activate
        HI8045CLK   = 1;                                                                  // set the clock to activate
    }
 
    for (i = 0; i < 10; i++)                                                              // loop until all bits are read
    {
        for (j = 0; j < 8; j++)                                                           // loop until all bits are read
        {
            HI8045DIN = dat[i];                                                           // write the bit of the data to the fpga data input pin
            HI8045DIN = dat[i];                                                           // burn a ccyle
            HI8045CLK = 0;                                                                // deactivate the fpga serial register clock
            HI8045CLK = 0;                                                                // deactivate the fpga serial register clock
            HI8045CLK = 0;                                                                // deactivate the fpga serial register clock
            HI8045CLK = 0;                                                                // burn a ccyle
            dat[i]    = dat[i] >> 1;                                                      // shift the next bit into position for the next bit write
            HI8045CLK = 1;                                                                // set the clock to activate
            HI8045CLK = 1;                                                                // set the clock to activate
            
            HI8045CLK   = 1;                                                              // set the clock to high to burn a cycle
            HI8045LOAD  = 1;                                                              // now that the address is latched deactivate the ale
            HI8045DIN   = 1;                                                              // write the bit of the data to the fpga data input pin
            HI8045CS    = 1;
        }
    }
}