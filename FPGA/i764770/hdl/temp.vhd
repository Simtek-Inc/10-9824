;******************************************************
; Listing 1 -- Synchronous counter designed with
;              generics
; "10 tips for generating reusable VHDL,"
; EDN, August 19, 1999, pg. 49
;******************************************************

1  library ieee;
2  use ieee.std_logic_1164.all;
3  use ieee.std_logic_unsigned.all;
4
5  entity up_counter_en is
6     generic (
7              BIT_WIDTH   : INTEGER := 2;     -- Structure
8              COUNT_ENABLE: INTEGER := 1;  -- Structure
9              DOWN_COUNT  : INTEGER := 0; -- Behavior
10             OutDelay    : TIME    := 3 ns   -- Behavior, Non-
11                                             -- synthesizable
12    );
13    port (
14          clk     : in  std_logic;
15          reset_n : in  std_logic;
16          en      : in  std_logic;
17          count   : out std_logic_vector(BIT_WIDTH-1 downto 0)
18          );
19 end up_counter_en;
20
21 architecture behav of up_counter_en is
22 23 signal count_s : std_logic_vector(BIT_WIDTH-1 downto 0);
24
25 begin
26    process (clk, reset_n)
27    begin
28       if(reset_n = '0') then 
29          count_s <= (others => '0');
30       elsif (clk'event and clk = '1') then
31          if (COUNT_ENABLE = 1) then  -- removed if generic is false
32             if (en = '1') then
33                if (DOWN_COUNT = 0) then  
34                   count_s <= count_s + 1;
35                else 
36                   count_s <= count_s - 1;
37                end if;
38             end if;
39          else 
40             if (DOWN_COUNT = 0) then   
41                count_s <= count_s + 1;
42             else 
43                count_s <= count_s - 1;
44             end if;  
45          end if;
46       end if;
47    end process;
48
49    count <= count_s after OutDelay;
50    end behav;