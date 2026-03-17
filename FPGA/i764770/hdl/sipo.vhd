--------------------------------------------------------------------------------
-- Company: Simtek, Inc
--
-- File: sipo.vhd
-- File history:
--      <Revision >: <Revision Date>: <Comments>
--      - : 9/22/2016 : Original release
--
-- Description: 
--
-- serial input to parallel out register with enable, latch, address, and default output value
--
-- Targeted device: <Family::IGLOO> <Die::AGLN250V5> <Package::100 VQFP>
-- Author: c. mason
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity sipo is
  generic(
         outputdefault    : std_logic_vector := (others => '0');
         componentaddress : std_logic_vector := (others => '0')
         );
  port   (
-- master clock input for whole system
         clock            : in    std_logic;
-- parallel input output busses
         address          : in    std_logic_vector;
         output           :   out std_logic_vector;
-- serial module control lines
         sclock           : in    std_logic;
         datain           : in    std_logic;
         latch            : in    std_logic;
         reset            : in    std_logic
         );
end sipo;

architecture architecture_sipo of sipo is

  -- variable declarations                     -- can replace outputdefault'range with array_size generic
    signal   paralleldata    : std_logic_vector(output'range); -- parallel data
    signal   cellindex       : integer range 0 to output'high; -- parallel data array cell index

begin

CellIndexUpdate :
process(reset, address, sclock, latch, datain, cellindex)
begin
  if (rising_edge(sclock)) then
    if (reset = '1') then
      cellindex <= output'right;
      paralleldata <= outputdefault;
    else
      if(address = componentaddress)then
        if (sclock = '1') then
          if (latch = '1') then
            cellindex <= output'right;
          else
            paralleldata(cellindex) <= datain;
            cellindex <= cellindex + 1;
            if(cellindex = (output'length))then
              cellindex <= output'right;
            end if;--if(celliindex = output'length)then
          end if;--if (latch = '1') then
        end if;--if (sclock = '1') then
      else
        null;
      end if;--if(address = componentaddress)then
    end if;--if (reset = '1') then
  end if;--if (rising_edge(sclock)) then
end process CellIndexUpdate;

--output <= paralleldata;

SerialInput :
process(clock, reset, address, latch, paralleldata)
begin
  if (rising_edge(clock)) then
    if reset = '1' then
      output <= outputdefault;
    else
      if (address = componentaddress) then  
        if latch = '0' then
          output <= paralleldata;
        end if;--if latch = '1' then
      end if;--if (address = componentaddress) then  
    end if;--if reset = '1' then
  end if;--if (rising_edge(clock)) then
end process SerialInput;

end architecture_sipo;
