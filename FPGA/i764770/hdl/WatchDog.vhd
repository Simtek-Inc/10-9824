--------------------------------------------------------------------------------
-- Company: Simtek, Inc
--
-- File: WatchDog.vhd
-- File history:
--      Rev 0:  8/31/2016: Original written cjm
--
-- Description: 
--
-- This routine is meant to act as a watch dog/ reset timer.
--
-- Targeted device: <Family::IGLOO> <Die::AGLN250V5> <Package::100 VQFP>
-- Author: C. Mason
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity WatchDog is
  generic(
         timerout   : integer := 255 --
         );
  port ( 
       clock        : in    std_logic; --
       timerreset   : in    std_logic; --
       timerexpired :   out std_logic  --
       );
end WatchDog;

architecture architecture_WatchDog of WatchDog is

signal timercount  : integer range 0 to timerout;

begin

WatchDocTimer:
process(clock, timerreset, timercount)
begin
   if (rising_edge(clock)) then
     if timerreset = '1' then
       timercount     <=  0;
       timerexpired   <= '0';
     else
       if timercount > timerout then
         timerexpired <= '1';
       else
         timerexpired <= '0';
         timercount   <= timercount + 1;
       end if;--if timercount > timerout then
     end if;--if timerreset = '1' then
   end if;--if (rising_edge(clock)) then
end process;
   -- architecture body
end architecture_WatchDog;
