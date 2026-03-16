--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: piso.vhd
-- File history:
--      <Revision >: <Revision Date>: <Comments>
--      - : 9/23/2016 : Original release
--
-- Description: 
--
-- parallel input to serial out register with enable, latch, address
--
-- Targeted device: <Family::IGLOO> <Die::AGLN250V5> <Package::100 VQFP>
-- Author: c. mason
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity piso is
  generic(
         componentaddress : std_logic_vector := (others => '0')
         );
  port   (
-- master clock input for whole system
         clock            : in    std_logic;
-- parallel input output busses
         address          : in    std_logic_vector;
         input            : in    std_logic_vector;
-- serial module control lines
         sclock           : in    std_logic;
         dataout          :   out std_logic;
         latch            : in    std_logic;
         reset            : in    std_logic
         );
end piso;

architecture architecture_piso of piso is

  -- variable declarations
    signal   parallelholdreg : std_logic_vector(input'range);         -- parallel data holding register
    signal   cellindex       : integer range 0 to input'high;         -- parallel data array cell index

begin

CellIndexUpdate :
process(sclock, reset, latch)
begin
  if (rising_edge(sclock)) then
    if (reset = '1') then
      cellindex <= 0;
    else
      if (sclock = '1') then
        if (latch = '1') then
          cellindex       <= 0;
        else
          cellindex       <= cellindex + 1;
          if(cellindex = (input'high))then
            cellindex <=  input'right;
          end if;--if(cellindex = (input'high))then
        end if;--if (latch = '1') then
      end if;--if (sclock = '1') then
    end if;--if (reset = '1') then
  end if;--if (rising_edge(clock)) then
end process CellIndexUpdate;

SerialOutput :
process(clock, input, reset, address, cellindex, parallelholdreg)
begin
  if (rising_edge(clock)) then
    if (reset = '1') then
      dataout <= '1';
      parallelholdreg <= (others => '1');
    else
      if latch = '0' then
        if(address = componentaddress)then
          if cellindex = input'right then 
            parallelholdreg <= input;
          end if; --if cellindex = 0 then 
        end if;--if(address = componentaddress)then
        dataout <= parallelholdreg(cellindex);
      else
        parallelholdreg <= (others => '1');
        dataout <= '1';
      end if;--if latch = '0' then
    end if;--if reset = '1' then
  end if;--if (rising_edge(clock)) then
end process SerialOutput;

end architecture_piso;
