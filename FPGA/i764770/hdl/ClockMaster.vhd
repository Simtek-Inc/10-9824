--------------------------------------------------------------------------------
-- Company: Simtek, Inc
--
-- File: ClockMaster.vhd
-- File history:
--      revision - : Aug 27, 2015: original program
--
-- Description:
--
-- steps down the master clock for different functions.
--
-- Targeted device: <Family::IGLOO> <Die::AGLN250V5> <Package::100 VQFP>
-- Author: c. mason
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ClockMaster is
  port(
      Clock        : in  std_logic;
      Clock01      : out std_logic;
      Clock02      : out std_logic;
      Clock03      : out std_logic;
      Clock04      : out std_logic;
      Clock05      : out std_logic;
      Reset        : in  std_logic
      );
end ClockMaster;

architecture Behavioral of ClockMaster is

signal counter : std_logic_vector(12 downto 0);

begin

process(Reset, Clock, counter)
begin
   if (rising_edge(Clock)) then
     if Reset = '1' then
       counter <= counter + 7;
     else
       counter <= counter + 1;
     end if;
   end if;
   if counter(0) = '1' then --
     Clock01 <= '1';
   else
     Clock01 <= '0';
   end if;
   if counter(1) = '1' then --
     Clock02 <= '1';
   else
     Clock02 <= '0';
   end if;
   if counter(2) = '1' then --
     Clock03 <= '1';
   else
     Clock03 <= '0';
   end if;
   if counter(3) = '1' then --
     Clock04 <= '1';
   else
     Clock04 <= '0';
   end if;
   if counter(12) = '1' then --
     Clock05 <= '1';
   else
     Clock05 <= '0';
   end if;
end process;

end Behavioral;