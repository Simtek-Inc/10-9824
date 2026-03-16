library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWMS1 is
   generic(
           offset           : INTEGER := 200;  -- counter size (18 bits gives 10.5ms with 20MHz clock)
           mask             : INTEGER := 2047  -- define the mask for the duty cycle limit calculation
          );
   Port (  PWMClock         : in    std_logic;
           DutyCycle        : in    std_logic_vector;
           PWMOut           :   out std_logic;
           Reset            : in    std_logic
           );
end PWMS1;

architecture Behavioral of PWMS1 is

signal   counter      : integer range 0 to (mask + 100);

begin

process(PWMClock, Reset, DutyCycle)
begin
   if (rising_edge(PWMClock)) then
     if (Reset = '1') then
       counter          <=  offset;
       PWMOut           <= '0';
     else
       --if counter < offset then
         --PWMOut  <= '0';
       --els
       if counter >=  to_integer(unsigned(DutyCycle))  then
         PWMOut  <= '0';
       else
         PWMOut  <= '1';
       end if;--if counter >= DutyCycle then
       case counter is
         when (mask+1) to (mask+7) => counter <= 0;
         when others               => counter <= counter + 1;
       end case;--case counter is
     end if;--if Reset = '0' then
   end if;--if (rising_edge(PWMClock)) then
end process;

end Behavioral;
