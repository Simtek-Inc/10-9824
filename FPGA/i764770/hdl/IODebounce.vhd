--------------------------------------------------------------------------------
-- Company: Simtek, Inc
--
-- File: IODebounce.vhd
-- File history:
--      Rev 0:  8/29/2016: Original written cjm
--
-- Description: 
--
-- This routine is meant to handle the io/o states in between the proper 
--   states.
--
-- Targeted device: <Family::IGLOO> <Die::AGLN250V5> <Package::100 VQFP>
-- Author: C. Mason
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity IODebounce is
  generic(
         timer_size        : INTEGER := 8  -- counter size (18 bits gives 10.5ms with 20MHz clock)
         );
  port ( 
       clock : in  std_logic;
       IOIn  : in  std_logic_vector;
       IOOut : out std_logic_vector;
       reset : in  std_logic
       );
end IODebounce;

architecture logic of IODebounce is

signal CurrentPosition  : std_logic_vector(IOIn'range);
signal PreviousPosition : std_logic_vector(IOIn'range);

signal Changing         : std_logic;                               -- 1 = changing, 0 = settled
signal DebounceTimer    : std_logic_vector(timer_size downto 0) := (others => '0');

function findchange( PreviousPosition,CurrentPosition : std_logic_vector ) return std_logic is
variable change,IOChngState : std_logic;
begin
  for i in PreviousPosition'range loop
    if i = PreviousPosition'left then
      change := PreviousPosition(i);
    else
      IOChngState := PreviousPosition(i) xor CurrentPosition(i);
      change := change or IOChngState;
    end if;
  end loop;
return  IOChngState;
end;

begin

IODebounce:  process(reset, clock, IOIn, DebounceTimer, Changing)
begin
  if (rising_edge(clock)) then
    if (reset = '1') then
      CurrentPosition  <= not IOIn;
      PreviousPosition <= not IOIn;
      DebounceTimer    <= (others => '0');
      IOOut            <= not IOIn;
    else
      PreviousPosition <= CurrentPosition;
      CurrentPosition <= not IOIn;
      Changing <= findchange(PreviousPosition,CurrentPosition);
      if (Changing = '1') then
        DebounceTimer <= (others => '0');
      elsif(DebounceTimer(timer_size) = '0') then
        DebounceTimer <= DebounceTimer + 1;
      else
        IOOut <= PreviousPosition;
      end if;-- if (Changing = '1') then
    end if;-- if (reset = '1') then
  end if;-- if (rising_edge(Clock)) then
end process IODebounce;

end logic;