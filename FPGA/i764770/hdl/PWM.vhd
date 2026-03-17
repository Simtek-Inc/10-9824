library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWM is
   Port (  PWMClock         : in    std_logic;
           DutyCycle        : in    std_logic_vector;
           PWMOut           :   out std_logic;
           Reset            : in    std_logic
           );
end PWM;

architecture Behavioral of PWM is

signal counter        : integer range 0 to 258;

begin

process(PWMClock, Reset, DutyCycle)--, irun)--, Inhibit, SignalToOutput)
begin
   if (rising_edge(PWMClock)) then
     if (Reset = '1') then
       counter          <=  0;
       PWMOut           <= '1';
     else
       if counter >=  to_integer(unsigned(DutyCycle))   then
         PWMOut  <= '0';
       else
         PWMOut  <= '1';
       end if;--if counter >= DutyCycle then
       case counter is
         when  256 to  258 => counter <= 0;
         when others       => counter <= counter + 1;
       end case;--case counter is
     end if;--if Reset = '0' then
   end if;--if (rising_edge(PWMClock)) then
end process;

end Behavioral;
