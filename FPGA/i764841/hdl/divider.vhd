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

entity divider is
  port(
      Clockin      : in  std_logic;
      Clockout     : out std_logic
      );
end divider;

architecture Behavioral of divider is

signal counter : std_logic_vector(1 downto 0);

begin

process(Clockin, counter)
begin
   if (rising_edge(Clockin)) then
     counter <= counter + 1;
   end if;
   Clockout <= counter(0);
end process;


end Behavioral;
