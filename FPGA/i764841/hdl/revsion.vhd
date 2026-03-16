--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: revision.vhd
-- File history:
--      <Revision >: <Revision Date>: <Comments>
--      - : 10/5/2016 : Original release
--
-- Description: 
--
-- holad and serialize the firmware information for the top level program
--
-- Targeted device: <Family::IGLOO> <Die::AGLN250V5> <Package::100 VQFP>
-- Author: c. mason
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity revision is
  port   (
-- master clock output for whole system
         clock            : in    std_logic;
-- parallel input output busses
         address          : in    std_logic_vector;
-- serial module control lines
         sclock           : in    std_logic;
         dataout          :   out std_logic;
         latch            : in    std_logic;
         reset            : in    std_logic
         );
end revision;

architecture architecture_revision of revision is

-- constants declarations
constant firmwarebyte01  : std_logic_vector := x"76";         -- firmware number and revision data
constant firmwarebyte02  : std_logic_vector := x"48";         -- firmware number and revision data
constant firmwarebyte03  : std_logic_vector := x"41";         -- firmware number and revision data
constant firmwarebyte04  : std_logic_vector := x"2d";         -- firmware number and revision data
  -- variable declarations
signal   parallelholdreg : std_logic_vector(7 downto 0);      -- parallel data holding register
signal   cellindex       : integer range 0 to 7;              -- parallel data array cell index

begin

CellIndexUpdate :
process(sclock, reset, latch)
begin
  if (rising_edge(sclock)) then
    if (reset = '1') then
      cellindex <= 0;
    else
      if (sclock = '1')  then
        if (latch = '1') then
          cellindex       <= 0;
        else
          cellindex       <= cellindex + 1;
          if(cellindex = (parallelholdreg'high))then
            cellindex <= parallelholdreg'right;
          end if;--if(cellindex = (parallelholdreg'high))then
        end if;--if (latch = '1') then
      end if;--if (sclock = '1') then
    end if;--if (reset = '1') then
  end if;--if (rising_edge(clock)) then
end process CellIndexUpdate;

SerialOutput :
process(clock, reset, address, cellindex, parallelholdreg)
begin
  if (rising_edge(clock)) then
    if (reset = '1') then
      dataout <= '1';
      parallelholdreg <= (others => '1');
    else
      if latch = '0' then
        case address is              --k12
          when x"20"  => if cellindex = parallelholdreg'right then parallelholdreg <= firmwarebyte01; end if; --test <= '0'; end if; -- "75"
          when x"21"  => if cellindex = parallelholdreg'right then parallelholdreg <= firmwarebyte02; end if; --test <= '0'; end if; -- "30"
          when x"22"  => if cellindex = parallelholdreg'right then parallelholdreg <= firmwarebyte03; end if; --test <= '0'; end if; -- "33"
          when x"23"  => if cellindex = parallelholdreg'right then parallelholdreg <= firmwarebyte04; end if; --test <= '0'; end if; -- "-"
          when others => parallelholdreg <= (others => '1'); --test <= '1';
        end case;-- case Address is
        dataout <= parallelholdreg(cellindex);
      else
        parallelholdreg <= (others => '1');
        dataout <= '1';
      end if;--if latch = '0' then
    end if;--if reset = '1' then
  end if;--if (rising_edge(clock)) then
end process SerialOutput;

end architecture_revision;
