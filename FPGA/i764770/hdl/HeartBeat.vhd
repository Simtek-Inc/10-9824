library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity HeartBeat is
  port (
       Clock        : in    std_logic;
       HeartBeatOut :   out std_logic;
       watchdogin   : in    std_logic;
       pwmin        : in    std_logic;
       pwmoff       : in    std_logic;
       hrtbeatoff   : in    std_logic;
       Reset        : in    std_logic
       );
end HeartBeat;

architecture Behavioral of HeartBeat is

signal counter        : integer range 0 to 5000;

begin

process(Reset, Clock, counter, watchdogin, pwmin, HrtBeatOff, pwmoff)
begin
   if (rising_edge(Clock)) then
-- generate the clocking rate for the heart beat
     if watchdogin = '0' then
       counter <= counter + 8;
     elsif (Reset = '1') then
       counter <= counter + 4;
     else
       counter <= counter + 1;
     end if;
-- generate the heartbeat
     if HrtBeatOff = '0' then
       if counter >= 937 then
         HeartBeatOut <= '1';
       else
         if pwmoff = '0' then
           HeartBeatOut <= (not pwmin);
         else
           HeartBeatOut <= '0';
         end if;
       end if;
     else
       HeartBeatOut <= '1';
     end if;
   end if;
end process;

end Behavioral;
