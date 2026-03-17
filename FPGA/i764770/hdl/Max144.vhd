--------------------------------------------------------------------------------
-- Company: Simtek, Inc
--
-- File: Max144.vhd
-- File history:
--      Rev 0: 5/22/2014: Original written cjm
--
-- Description: 
--
-- This routine is meant to read the data from a Maxim Max144 analog to digital converter
--
-- Targeted device: <Family::IGLOO> <Die::AGLN250V5> <Package::100 VQFP>
-- Author: C. Mason
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;
--use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Max144 is
  port (
       Clock                   : IN    std_logic;
       Inhibit                 : IN    std_logic;
       AdDin                   : IN    std_logic;
       AdClock                 :   OUT std_logic;
       AdCs1                   :   OUT std_logic;
       DataOutCh0              :   OUT std_logic_vector;
       DataOutCh1              :   OUT std_logic_vector;
       Reset                   : IN    std_logic
       );
end Max144;

architecture Behavioral of Max144 is

signal DataRegU1Ch0  : unsigned(16 downto 1);
signal DataRegU1Ch0a : unsigned(12 downto 1);
signal DataRegU1Ch0b : unsigned(12 downto 1);
signal DataRegU1Ch0c : unsigned(12 downto 1);
signal DataRegU1Ch0d : unsigned(12 downto 1);
signal DataRegU1Ch0e : unsigned(12 downto 1);
signal DataRegU1Ch0f : unsigned(12 downto 1);
signal DataRegU1Ch0g : unsigned(12 downto 1);
signal DataRegU1Ch0h : unsigned(12 downto 1);
signal DataRegU1Ch0i : unsigned(12 downto 1);
signal DataRegU1Ch0j : unsigned(12 downto 1);
signal DataRegU1Ch0k : unsigned(12 downto 1);
signal DataRegU1Ch0l : unsigned(12 downto 1);
signal DataRegU1Ch0m : unsigned(12 downto 1);
signal DataRegU1Ch0n : unsigned(12 downto 1);
signal DataRegU1Ch0o : unsigned(12 downto 1);
signal DataRegU1Ch0p : unsigned(12 downto 1);

signal DataRegU1Ch1  : unsigned(16 downto 1);
signal DataRegU1Ch1a : unsigned(12 downto 1);
signal DataRegU1Ch1b : unsigned(12 downto 1);
signal DataRegU1Ch1c : unsigned(12 downto 1);
signal DataRegU1Ch1d : unsigned(12 downto 1);
signal DataRegU1Ch1e : unsigned(12 downto 1);
signal DataRegU1Ch1f : unsigned(12 downto 1);
signal DataRegU1Ch1g : unsigned(12 downto 1);
signal DataRegU1Ch1h : unsigned(12 downto 1);
signal DataRegU1Ch1i : unsigned(12 downto 1);
signal DataRegU1Ch1j : unsigned(12 downto 1);
signal DataRegU1Ch1k : unsigned(12 downto 1);
signal DataRegU1Ch1l : unsigned(12 downto 1);
signal DataRegU1Ch1m : unsigned(12 downto 1);
signal DataRegU1Ch1n : unsigned(12 downto 1);
signal DataRegU1Ch1o : unsigned(12 downto 1);
signal DataRegU1Ch1p : unsigned(12 downto 1);

signal DatHldRegU1Ch0 : std_logic_vector(12 downto 1);
signal DatHldRegU1Ch1 : std_logic_vector(12 downto 1);

signal DataInReg      : std_logic_vector(13 downto 1);
signal step           : unsigned(8 downto 1);

begin

DataIn : process (Reset, Inhibit, Clock, AdDin)
begin              --
   if (rising_edge(Clock)) then       
--     if Reset = '1' then           --AAA   --Clock = 400ns 40MHz=25nS / 16 = 500nS
--       step <= (others => '0');    --ddd
--     else                          --lss
       if Inhibit = '0' then
         case step is              --k12
--         when x"60"  => AdClock <= '1'; AdCs1 <= '1'; Step <= Step + '1';                                            -- start process
--         when x"61"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                                            -- activate Cs to begin wake up cycle
--         when x"62"  => AdClock <= '1'; AdCs1 <= '1'; Step <= Step + '1';                              --tCS=60nS    -- deactivate chip select
           when x"63"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                              --tWake=2.5uS -- 
           when x"64"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                                            --
           when x"65"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                                            --
           when x"66"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                                            --
           when x"67"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                                            --
           when x"68"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                                            --
           when x"69"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                                            --
           when x"6A"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                                            --
           when x"6B"  => AdClock <= '0'; AdCs1 <= '0'; if(AdDin = '1') then Step <= Step + '1';  end if; --tConv=7us  -- wait for conv cycle to end din = '1'
           when x"6C"  => AdClock <= '0'; AdCs1 <= '0'; if(AdDin = '1') then Step <= Step + '1';  end if; --
           when x"6D"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';                              --tDV=120nS   -- wait extra cycle before starting read
           when x"6E"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                              --tCH=50ns    -- Clock  1 datain = eoc
           when x"6F"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; --DataInReg(16) <= AdDin;
           when x"70"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"71"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; --DataInReg(15) <= AdDin;
           when x"72"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"73"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; --DataInReg(14) <= AdDin;
           when x"74"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"75"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(13) <= AdDin;
           when x"76"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"77"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(12) <= AdDin;
           when x"78"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"79"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(11) <= AdDin;
           when x"7A"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"7B"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(10) <= AdDin;
           when x"7C"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"7D"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(9) <= AdDin;
           when x"7E"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"7F"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(8) <= AdDin;
           when x"80"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"81"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(7) <= AdDin;
           when x"82"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"83"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(6) <= AdDin;
           when x"84"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"85"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(5) <= AdDin;
           when x"86"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"87"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(4) <= AdDin;
           when x"88"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"89"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(3) <= AdDin;
           when x"8A"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"8B"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(2) <= AdDin;
           when x"8C"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1'; DataRegU1Ch0p <= DataRegU1Ch0o; DataRegU1Ch1p <= DataRegU1Ch1o;
           when x"8D"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(1) <= AdDin;
           when x"8E"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1'; DataRegU1Ch0o <= DataRegU1Ch0n; DataRegU1Ch1o <= DataRegU1Ch1n;
           when x"8F"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1'; DataRegU1Ch0n <= DataRegU1Ch0m; DataRegU1Ch1n <= DataRegU1Ch1m;
           when x"90"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1'; DataRegU1Ch0m <= DataRegU1Ch0l; DataRegU1Ch1m <= DataRegU1Ch1l;
           when x"91"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1'; DataRegU1Ch0l <= DataRegU1Ch0k; DataRegU1Ch1l <= DataRegU1Ch1k;
           when x"92"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1'; DataRegU1Ch0k <= DataRegU1Ch0j; DataRegU1Ch1k <= DataRegU1Ch1j;
           when x"93"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1'; DataRegU1Ch0j <= DataRegU1Ch0i; DataRegU1Ch1j <= DataRegU1Ch1i;
           when x"94"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1'; DataRegU1Ch0i <= DataRegU1Ch0h; DataRegU1Ch1i <= DataRegU1Ch1h;
           when x"95"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1'; DataRegU1Ch0h <= DataRegU1Ch0g; DataRegU1Ch1h <= DataRegU1Ch1g;
           when x"96"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1'; DataRegU1Ch0g <= DataRegU1Ch0f; DataRegU1Ch1g <= DataRegU1Ch1f;
           when x"97"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1'; DataRegU1Ch0f <= DataRegU1Ch0e; DataRegU1Ch1f <= DataRegU1Ch1e;
           when x"98"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1'; DataRegU1Ch0e <= DataRegU1Ch0d; DataRegU1Ch1e <= DataRegU1Ch1d;
           when x"99"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1'; DataRegU1Ch0d <= DataRegU1Ch0c; DataRegU1Ch1d <= DataRegU1Ch1c;
           when x"9A"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1'; DataRegU1Ch0c <= DataRegU1Ch0b; DataRegU1Ch1c <= DataRegU1Ch1b;
           when x"9B"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1'; DataRegU1Ch0b <= DataRegU1Ch0a; DataRegU1Ch1b <= DataRegU1Ch1a;
           when x"9C"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1';
                          if DataInReg(13) = '0' then
                            DataRegU1Ch0a <= unsigned(DataInReg(12 downto 1));
                          else
                            DataRegU1Ch1a <= unsigned(DataInReg(12 downto 1));
                          end if;
           when x"9D"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1'; 
                          if DataInReg(13) = '0' then
                             DataRegU1Ch0  <= (x"0" & DataRegU1Ch0p) + (x"0" & DataRegU1Ch0o)
                                            + (x"0" & DataRegU1Ch0n) + (x"0" & DataRegU1Ch0m)
                                            + (x"0" & DataRegU1Ch0l) + (x"0" & DataRegU1Ch0k)
                                            + (x"0" & DataRegU1Ch0j) + (x"0" & DataRegU1Ch0i)
                                            + (x"0" & DataRegU1Ch0h) + (x"0" & DataRegU1Ch0g)
                                            + (x"0" & DataRegU1Ch0f) + (x"0" & DataRegU1Ch0e)
                                            + (x"0" & DataRegU1Ch0d) + (x"0" & DataRegU1Ch0c)
                                            + (x"0" & DataRegU1Ch0b) + (x"0" & DataRegU1Ch0a);
                          else
                             DataRegU1Ch1  <= (x"0" & DataRegU1Ch1p) + (x"0" & DataRegU1Ch1o)
                                            + (x"0" & DataRegU1Ch1n) + (x"0" & DataRegU1Ch1m)
                                            + (x"0" & DataRegU1Ch1l) + (x"0" & DataRegU1Ch1k)
                                            + (x"0" & DataRegU1Ch1j) + (x"0" & DataRegU1Ch1i)
                                            + (x"0" & DataRegU1Ch1h) + (x"0" & DataRegU1Ch1g)
                                            + (x"0" & DataRegU1Ch1f) + (x"0" & DataRegU1Ch1e)
                                            + (x"0" & DataRegU1Ch1d) + (x"0" & DataRegU1Ch1c)
                                            + (x"0" & DataRegU1Ch1b) + (x"0" & DataRegU1Ch1a);
                          end if;
           when x"9E"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1'; 
                          if DataInReg(13) = '0' then
                             DatHldRegU1Ch0 <= std_logic_vector(DataRegU1Ch0(16 downto 5));
                          else
                             DatHldRegU1Ch1 <= std_logic_vector(DataRegU1Ch1(16 downto 5));
                          end if;
--           when x"A0"  => AdClock <= '1'; AdCs1 <= '1'; Step <= Step + '1';                                            -- start process
--           when x"A1"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                                            -- activate Cs to begin wake up cycle
--           when x"A2"  => AdClock <= '1'; AdCs1 <= '1'; Step <= Step + '1';                               --tCS=60nS   -- deactivate chip select
           when x"A3"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                             --tWake=2.5uS  -- 
           when x"A4"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                                            --
           when x"A5"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                                            --
           when x"A6"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                                            --
           when x"A7"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                                            --
           when x"A8"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                                            --
           when x"A9"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                                            --
           when x"AA"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                                            --
           when x"AB"  => AdClock <= '0'; AdCs1 <= '0'; if(AdDin = '1') then Step <= Step + '1';  end if; --tConv=7us  -- wait for conv cycle to end din = '1'
           when x"AC"  => AdClock <= '0'; AdCs1 <= '0'; if(AdDin = '1') then Step <= Step + '1';  end if; --
           when x"AD"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';                               --tDV=120nS  -- wait extra cycle before starting read
           when x"AE"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1';                               --tCH=50ns   -- Clock  1 datain = eoc
           when x"AF"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; --DataInReg(16) <= AdDin;
           when x"B0"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"B1"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; --DataInReg(15) <= AdDin;
           when x"B2"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"B3"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; --DataInReg(14) <= AdDin;
           when x"B4"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"B5"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(13) <= AdDin;
           when x"B6"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"B7"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(12) <= AdDin;
           when x"B8"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"B9"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(11) <= AdDin;
           when x"BA"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"BB"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(10) <= AdDin;
           when x"BC"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"BD"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(9) <= AdDin;
           when x"BE"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"BF"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(8) <= AdDin;
           when x"C0"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"C1"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(7) <= AdDin;
           when x"C2"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"C3"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(6) <= AdDin;
           when x"C4"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"C5"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(5) <= AdDin;
           when x"C6"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"C7"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(4) <= AdDin;
           when x"C8"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"C9"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(3) <= AdDin;
           when x"CA"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"CB"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(2) <= AdDin;
           when x"CC"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1'; 
           when x"CD"  => AdClock <= '1'; AdCs1 <= '0'; Step <= Step + '1'; DataInReg(1) <= AdDin;
           when x"CE"  => AdClock <= '0'; AdCs1 <= '0'; Step <= Step + '1';
           when x"CF"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1';
           when x"D0"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1';
           when x"D1"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1';
           when x"D2"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1';
           when x"D3"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1';
           when x"D4"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1';
           when x"D5"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1';
           when x"D6"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1';
           when x"D7"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1';
           when x"D8"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1';
           when x"D9"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1';
           when x"DA"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1';
           when x"DB"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1';
           when x"DC"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1';
                          if DataInReg(13) = '0' then
                            DataRegU1Ch0a <= unsigned(DataInReg(12 downto 1));
                          else
                            DataRegU1Ch1a <= unsigned(DataInReg(12 downto 1));
                          end if;
           when x"DD"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1'; 
                          if DataInReg(13) = '0' then
                             DataRegU1Ch0  <= (x"0" & DataRegU1Ch0p) + (x"0" & DataRegU1Ch0o)
                                            + (x"0" & DataRegU1Ch0n) + (x"0" & DataRegU1Ch0m)
                                            + (x"0" & DataRegU1Ch0l) + (x"0" & DataRegU1Ch0k)
                                            + (x"0" & DataRegU1Ch0j) + (x"0" & DataRegU1Ch0i)
                                            + (x"0" & DataRegU1Ch0h) + (x"0" & DataRegU1Ch0g)
                                            + (x"0" & DataRegU1Ch0f) + (x"0" & DataRegU1Ch0e)
                                            + (x"0" & DataRegU1Ch0d) + (x"0" & DataRegU1Ch0c)
                                            + (x"0" & DataRegU1Ch0b) + (x"0" & DataRegU1Ch0a);
                          else
                             DataRegU1Ch1  <= (x"0" & DataRegU1Ch1p) + (x"0" & DataRegU1Ch1o)
                                            + (x"0" & DataRegU1Ch1n) + (x"0" & DataRegU1Ch1m)
                                            + (x"0" & DataRegU1Ch1l) + (x"0" & DataRegU1Ch1k)
                                            + (x"0" & DataRegU1Ch1j) + (x"0" & DataRegU1Ch1i)
                                            + (x"0" & DataRegU1Ch1h) + (x"0" & DataRegU1Ch1g)
                                            + (x"0" & DataRegU1Ch1f) + (x"0" & DataRegU1Ch1e)
                                            + (x"0" & DataRegU1Ch1d) + (x"0" & DataRegU1Ch1c)
                                            + (x"0" & DataRegU1Ch1b) + (x"0" & DataRegU1Ch1a);
                          end if;
           when x"DE"  => AdClock <= '0'; AdCs1 <= '1'; Step <= Step + '1'; 
                          if DataInReg(13) = '0' then
                             DatHldRegU1Ch0 <= std_logic_vector(DataRegU1Ch0(16 downto 5));
                          else
                             DatHldRegU1Ch1 <= std_logic_vector(DataRegU1Ch1(16 downto 5));
                          end if;
           when others => AdClock <= '1'; AdCs1 <= '1'; Step <= Step + '1';
         end case;-- case Address is
       end if;-- if Inhibit = '0' then
--     end if;-- if Reset = '1' then
   end if;-- if (rising_edge(Clock)) then
end process DataIn;

DataOutCh0 <= DatHldRegU1Ch0;
DataOutCh1 <= DatHldRegU1Ch1;

end Behavioral;
