library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--

entity mainprogram is
    Port (
--          fpga             i/o                     IC    SCH                  SCH         NOTES    
--          name                                     PIN   CONNECTION           NET NAME    BLOCK NAME
-- input bank 1
            inputs_1  : in       std_logic_vector(4 downto 0); -- 9 direct IO bits: 0=AP1,1=AP2,2=FDSEL,3=COLL,4=CPL,
            inputs_2  : in       std_logic_vector(3 downto 0); -- 9 direct IO bits: 5=SAS_ALT,6=TEST,7=RADALT,8=VELHLD
--            COL0         0   : in    std_logic; -- 08 -- J7.12             -- GIO16    -- GENERAL PURPOSE I/O
--            COL1         1   : in    std_logic; -- 11 -- J7.14             -- GIO14    -- GENERAL PURPOSE I/O
--            COL2         2   : in    std_logic; -- 15 -- J7.16             -- GIO12    -- GENERAL PURPOSE I/O
--            COL3         3   : in    std_logic; -- 19 -- J7.18            -- GIO10    -- GENERAL PURPOSE I/O ---------------------------------------------------------


            AdClock            :   out std_logic; -- 59 -- U1.8              -- GIO32    -- MAX144 SerialClock
            AdCs1              :   out std_logic; -- 61 -- U1.6              -- GIO30    -- MAX144 ~CS
            AdDout             : in    std_logic; -- 60 -- U1.7              -- GIO31    -- MAX144 DOUT
            HrtBeat            :   out std_logic; -- 23 -- DS2-              -- HB       -- DS2 CATHODE FPGA heartbeat
-- output bank 1
            outputs01          :   out std_logic_vector(5 downto 0);
            --panel_ltg          :   out std_logic_vector(7 downto 0); -- 8 bits for panel lighting control
--            GIO53      0     :   out std_logic; -- 20 -- Q13.3->  J8.20    -- GIO53    -- ROW0     SW COM
--            GIO54      1     :   out std_logic; -- 21 -- Q13.1->  J8.19    -- GIO54    -- ROW1     SW COM
--            GIO52      2     :   out std_logic; -- 26 -- Q12.1->  J8.18    -- GIO52    -- ROW2     SW COM
--            GIO51      3     :   out std_logic; -- 22 -- Q12.3->  J8.17    -- GIO51    -- ROW3     SW COM 

            outputs02          :   out std_logic_vector(4 downto 0);
--            GIO49      0     :   out std_logic; -- 27 -- Q13.3->  J8.16    -- GIO49    -- PNL LGHT RTN



            ExternalHardwareEn :   out std_logic_vector(4 downto 0);
--            GIO33      0       --SwCmnHigh      -- 58 -- Q16.5             -- GIO33    -- 0 -- not  -- switch common j3,15 +3.3V
--            GIO34      1       --SwCmnLow       -- 57 -- Q16.2             -- GIO34    -- 0 --      -- switch common j3,15 ground
--            GIO07      2       --rs422DE        -- 98 -- U10.3(i)          -- GIO07    -- 0 -- not  -- RS422 TRANSMIT ENABLE
--            GIO08      3       --rs422RE        -- 97 -- U10.2(i)          -- GIO08    -- 0 --      -- RS422 RECEIVE ENABLE
--            GIO09      4       --rs232ModePs    -- 96 -- U4.9&10(i)        -- GIO09    -- 0 -- not  -- RS232 TRANSCIEVER MODE&PS
--                       5       -- HrtBeatOn     --    --                   --          -- 0 -- not  -- turn heart beat on all the time
--                       6       -- HrtBeatOff    --    --                   --          -- 0 --      -- turn heart beat off all the time
--                       7       -- A2DEDisable   --    --                   --          -- 0 --      -- disable the a2d sampling engine

            XCLK               : in    std_logic; -- 80 -- U3.97             -- XCLK     -- FPGA SYSTEM CLOCK
            ResetIn            : in    std_logic; -- 82 -- R77&C41           -- RESETI   -- RC CIRCUIT TO GENERATE RESET
            uCReset            :   out std_logic; -- 83 -- U3.120            -- RESETO   -- uC MANUAL RESET INPUT

            SerialClock        : in    std_logic; -- 95 -- U3.5              -- P2.0     -- uC INTERFACE CLOCK IN
            SerialLoad         : in    std_logic; -- 93 -- U3.12             -- P2.2     -- uC INTERFACE LOAD
            SerialOut          :   out std_logic; -- 94 -- U3.9              -- P2.1     -- uC INTERFACE DATA OUT
            SerialIn           : in    std_logic; -- 92 -- U3.14             -- P2.3     -- uC INTERFACE DATA IN
            Ale                : in    std_logic; -- 91 -- U3.17             -- P2.4     -- uC INTERFACE ALE

            LogicReset         : in    std_logic  -- 86 -- U3.19             -- P2.5     -- uC INTERFACE FPGA logic reset
------------------------------------------------------------------------------------------
--            spare signals not in use
------------------------------------------------------------------------------------------
--          fpga             i/o                 IC    SCH                  SCH         NOTES    
--          name                                 PIN   CONNECTION           NET NAME    BLOCK NAME
------------------------------------------------------------------------------------------
--            P26              : inout std_logic; -- 84 -- U3.21             -- P2.6     -- uC INTERFACE SPARE
--            P03              : inout std_logic; -- 79 -- U3.23             -- P0.3     -- uC INTERFACE SPARE
--            P02              : inout std_logic; -- 81 -- U3.22             -- P0.2     -- uC INTERFACE SPARE
--            P01              : inout std_logic; -- 85 -- U3.20             -- P0.1     -- uC INTERFACE SPARE
--            P00              : inout std_logic; -- 90 -- U3.18             -- P0.0     -- uC INTERFACE SPARE
            );

end  mainprogram;

architecture Behavioral of mainprogram is

-- constants
--constant addresswidth  : integer          :=    8 ;         -- width of the internal address bus
constant Ax00            : std_logic_vector := x"00";         -- default address to use after reset

constant Ax20            : std_logic_vector := x"20";         -- address of firmware number and revision
constant Ax21            : std_logic_vector := x"21";         -- address of firmware number and revision
constant Ax22            : std_logic_vector := x"22";         -- address of firmware number and revision
constant Ax23            : std_logic_vector := x"23";         -- address of firmware number and revision

constant Ax50            : std_logic_vector := x"50";         -- address of a2d channel 0 reader
constant Ax51            : std_logic_vector := x"51";         -- address of a2d channel 1 reader
 
constant Ax60            : std_logic_vector := x"60";         -- address of switch bank 1 reader
constant Ax61            : std_logic_vector := x"61";         -- address of switch bank 2 reader
constant Ax62            : std_logic_vector := x"62";         -- address of switch bank 3 reader
constant Ax63            : std_logic_vector := x"63";         -- address of switch bank 4 reader

constant Ax64            : std_logic_vector := x"64";         -- address of switch bank 5 reader
constant Ax65            : std_logic_vector := x"65";         -- address of switch bank 6 reader
constant Ax66            : std_logic_vector := x"66";         -- address of switch bank 7 reader
constant Ax67            : std_logic_vector := x"67";         -- address of switch bank 7 reader
constant Ax68            : std_logic_vector := x"68";         -- address of switch bank 7 reader
constant Ax69            : std_logic_vector := x"69";         -- address of switch bank 7 reader
constant Ax6A            : std_logic_vector := x"6A";         -- address of switch bank 7 reader
constant Ax6B            : std_logic_vector := x"6B";         -- address of switch bank 7 reader

constant Ax80            : std_logic_vector := x"80";         -- address of control register for external hardware enable/disable
constant dfex01          : std_logic_vector := "00001000";    -- default settings for the hardware enable register
--  BIT    hardware         fpga pin   sch ref des          net name    off state    hardware function
--   0     --SwCmnHigh      -- 58      -- Q16.5             -- GIO33    -- 0 -- not  -- switch common j3,15 +3.3V
--   1     --SwCmnLow       -- 57      -- Q16.2             -- GIO34    -- 0 --      -- switch common j3,15 ground
--   2     --rs422DE        -- 98      -- U10.3(i)          -- GIO07    -- 0 --      -- RS422 TRANSMIT ENABLE
--   3     --rs422RE        -- 97      -- U10.2(i)          -- GIO08    -- 0 -- not  -- RS422 RECEIVE ENABLE
--   4     --rs232ModePs    -- 96      -- U4.9&10(i)        -- GIO09    -- 0 --      -- RS232 TRANSCIEVER MODE&PS
--   5     -- HrtBeatOn     --         --                   --          -- 0 -- not  -- turn heart beat on all the time
--   6     -- HrtBeatOff    --         --                   --          -- 0 --      -- turn heart beat off all the time
--   7     -- A2DEDisable   --         --                   --          -- 0 --      -- disable the A2D sampling engine

constant Ax90            : std_logic_vector := x"90";         -- address of discrete bit control bank 1
constant biton01         : std_logic_vector := "11111111"; -- the bit polarity used for an on of the discrete
--constant Ax91            : std_logic_vector := x"91";         -- address of discrete bit control bank 2
--constant biton02         : std_logic_vector := "1111111";     -- the bit polarity used for an on of the discrete
--constant Ax92            : std_logic_vector := x"92";         -- address of discrete bit control bank 3
--constant bitoff03        : std_logic_vector := "000000";      -- the bit polarity used for an on off the discrete

constant AxA0            : std_logic_vector := x"A0";         -- address of the device enable latch bank 1
constant pwmon01         : std_logic_vector := "0000000";     -- default on  state of device enable bank
constant AxA1            : std_logic_vector := x"A1";         -- address of the device enable latch bank 2
constant pwmon02         : std_logic_vector := "0000000";     -- default on  state of device enable bank

constant pwmresolution   : integer          :=   7 ;         -- bits or resolution for the PWM duty cycle
constant dfDutyCycle     : std_logic_vector := x"00";        -- default PWM duty cycle
-- sink driver 1 - 8
constant timer_size      : integer          :=   8 ;
constant AxC0            : std_logic_vector := x"C0";         -- address of duty cycle control register for discrete 0
constant AxC1            : std_logic_vector := x"C1";         -- address of duty cycle control register for discrete 1
constant AxC2            : std_logic_vector := x"C2";         -- address of duty cycle control register for discrete 2
constant AxC3            : std_logic_vector := x"C3";         -- address of duty cycle control register for discrete 3
constant AxC4            : std_logic_vector := x"C4";         -- address of duty cycle control register for discrete 4
constant AxC5            : std_logic_vector := x"C5";         -- address of duty cycle control register for discrete 5
constant AxC6            : std_logic_vector := x"C6";         -- address of duty cycle control register for discrete 6
constant AxC7            : std_logic_vector := x"C7";         -- address of duty cycle control register for discrete 7
constant AxC8            : std_logic_vector := x"C8";         -- address of duty cycle control register for discrete 8
-- sink drivers 9 - 14
constant AxC9            : std_logic_vector := x"C9";         -- address of duty cycle control register for discrete 9
--constant AxCA            : std_logic_vector := x"CA";         -- address of duty cycle control register for discrete 10
--constant AxCB            : std_logic_vector := x"CB";         -- address of duty cycle control register for discrete 11
--constant AxCC            : std_logic_vector := x"CC";         -- address of duty cycle control register for discrete 12
--constant AxCD            : std_logic_vector := x"CD";         -- address of duty cycle control register for discrete 13
--constant AxCE            : std_logic_vector := x"CE";         -- address of duty cycle control register for discrete 14
-- source driver 1 - 6
constant AxD0            : std_logic_vector := x"D0";         -- address of duty cycle control register for discrete 15
--constant AxD1            : std_logic_vector := x"D1";         -- address of duty cycle control register for discrete 16
--constant AxD2            : std_logic_vector := x"D2";         -- address of duty cycle control register for discrete 17
--constant AxD3            : std_logic_vector := x"D3";         -- address of duty cycle control register for discrete 18
--constant AxD4            : std_logic_vector := x"D4";         -- address of duty cycle control register for discrete 19
--constant AxD5       : std_logic_vector := x"D5";         -- address of duty cycle control register for discrete 20

    COMPONENT divider is
    PORT(
        Clockin                  : IN    std_logic;
        clockout                 :   OUT std_logic
        );
    END COMPONENT;--

--    COMPONENT heartbeat is
--    PORT(
--        Clock                    : IN    std_logic;
--        HeartBeatOut             :   OUT std_logic;
--        watchdogin               : IN    std_logic;
--        pwmin                    : IN    std_logic;
--        pwmoff                   : IN    std_logic;
--        hrtbeatoff               : IN    std_logic;
--        Reset                    : IN    std_logic
--        );
--    END COMPONENT;--

    COMPONENT WatchDog is
    GENERIC(
           timerout             : INTEGER := 255 --
           );
    PORT   (
           clock                : IN    std_logic; --
           timerreset           : IN    std_logic; --
           timerexpired         :   OUT std_logic  --
           );
    END COMPONENT;

    COMPONENT clockmaster
    PORT(
        Clock                    : IN    std_logic;
        Clock01                  :   OUT std_logic;
        Clock02                  :   OUT std_logic;
        Clock03                  :   OUT std_logic;
        Clock04                  :   OUT std_logic;
        Clock05                  :   OUT std_logic;
        Reset                    : IN    std_logic
        );
    END COMPONENT;

    COMPONENT sipo is
    GENERIC(
           outputdefault         : std_logic_vector := (others => '0');   -- default settings for parallel output register
           componentaddress      : std_logic_vector := (others => '0')    -- the address of the instaniated component
           );
    PORT   (
-- master clock input for whole system
           clock                 : IN    std_logic;
-- parallel input output busses
           address               : IN    std_logic_vector;
           output                :   OUT std_logic_vector;
-- serial module control lines
           sclock                : IN    std_logic;
           datain                : IN    std_logic;
           latch                 : IN    std_logic;
           reset                 : IN    std_logic
           );
    END COMPONENT;

    COMPONENT piso is
    GENERIC(
           componentaddress      : std_logic_vector := (others => '0')
           );
    PORT   (
-- master clock input for whole system
           clock                 : IN    std_logic;
-- parallel input output busses
           address               : IN    std_logic_vector;
           input                 : IN    std_logic_vector;
-- serial module control lines
           sclock                : IN    std_logic;
           dataout               :   OUT std_logic;
           latch                 : IN    std_logic;
           reset                 : IN    std_logic
           );
    END COMPONENT;

    COMPONENT iodebounce is
    GENERIC(
           timer_size            : INTEGER := 2  -- counter size (18 bits gives 10.5ms with 20MHz clock)
           );
    PORT   (
           clock                 : IN    std_logic;
           IOIn                  : IN    std_logic_vector;
           IOOut                 :   OUT std_logic_vector;
           reset                 : IN    std_logic
           );
    END COMPONENT;

    COMPONENT pwm
    PORT(
        PWMClock                 : IN    std_logic;
        DutyCycle                : IN    std_logic_vector;
        PWMOut                   :   OUT std_logic;
        Reset                    : IN    std_logic
        );
    END COMPONENT;

    COMPONENT PWMS1
    GENERIC(
           offset                : INTEGER := 200;   -- counter size (18 bits gives 10.5ms with 20MHz clock)
           mask                  : INTEGER := 2047;  -- define the mask for the duty cycle limit calculation
           limit                 : INTEGER := 2600   -- difine the upper limit for the counter
           );
    PORT(
        PWMClock                 : IN    std_logic;
        DutyCycle                : IN    std_logic_vector;
        PWMOut                   :   OUT std_logic;
        Reset                    : IN    std_logic
        );
    END COMPONENT;

    COMPONENT Max144
    PORT(
         Clock                   : IN    std_logic;
         inhibit                 : IN    std_logic;
         AdDin                   : IN    std_logic;
         AdClock                 :   OUT std_logic;
         AdCs1                   :   OUT std_logic;
         DataOutCh0              :   OUT std_logic_vector;
         DataOutCh1              :   OUT std_logic_vector;
         Reset                   : IN    std_logic
        );
    END COMPONENT;

    COMPONENT revision
    PORT(
-- master clock input for whole system
        clock                    : IN    std_logic;
-- parallel input output busses
        address                  : IN    std_logic_vector;
-- serial module control lines
        sclock                   : IN    std_logic;
        dataout                  :   OUT std_logic;
        latch                    : IN    std_logic;
        reset                    : IN    std_logic
        );
    END COMPONENT;

    COMPONENT matrixread is
    PORT   (
           clock                 : IN    std_logic;
           IOIn                  : IN    std_logic_vector;
           ctrl                  :   OUT std_logic_vector;
           dataOut00             :   OUT std_logic_vector;
           dataOut01             :   OUT std_logic_vector;
           dataOut02             :   OUT std_logic_vector;
           dataOut03             :   OUT std_logic_vector;
           dataOut04             :   OUT std_logic_vector;
           reset                 : IN    std_logic
           );
    END COMPONENT;

signal Clock01                   : std_logic;
signal Clock02                   : std_logic;
signal Clock03                   : std_logic;
signal Clock04                   : std_logic;
signal Clock05                   : std_logic;

signal iWatchDog                 : std_logic;

signal internaddr                : std_logic_vector(7 downto 0);

-- variables for FPGA readback to microcontroller functions
signal ohold50                   : std_logic_vector(11 downto 0);
signal ohold51                   : std_logic_vector(11 downto 0);

signal ohold60                   : std_logic_vector(inputs_1'range); -- pre-output hold register 9 direct IO
signal ohold61                   : std_logic_vector(inputs_2'range); -- pre-output hold register 9 direct IO

signal do2x                      : std_logic;
signal do50                      : std_logic;
signal do51                      : std_logic;
signal do60                      : std_logic;
signal do61                      : std_logic;

-- variables for FPGA write from microcontroller functions
--signal bitcontrol01              : std_logic_vector(panel_ltg'range);

-- variables for FPGA write from microcontroller functions

signal dutycycle00               : std_logic_vector(7 downto 0); -- panel
signal ind_data_1                : std_logic_vector(7 downto 0); -- annunciator 1
signal ind_data_2                : std_logic_vector(7 downto 0); -- annunciator 2

signal snkpout : std_logic_vector(10 downto 0);
signal pwm_enable : std_logic_vector(10 downto 0); -- Enable signals for each PWM
signal duty_cycle_out : std_logic_vector(13 downto 0); -- Shared duty cycle for all enabled LEDs
type pwm_duty_array is array (0 to 10) of std_logic_vector(13 downto 0);
signal pwm_duty_sel : pwm_duty_array;

signal pout01                    : std_logic;


signal ICLK                      : std_logic;

signal iExternHwEn01             : std_logic_vector(dfex01'range);

--signal iHrtBeat                  : std_logic;
--signal HrtBeatOn                 : std_logic;
--signal HrtBeatOff                : std_logic;

signal A2DEDisable               : std_logic;


begin
    clockdivider       : divider                       PORT MAP(XCLK, ICLK);
    clock_master       : clockmaster                   PORT MAP(ICLK, Clock01, Clock02, Clock03, Clock04, Clock05, LogicReset );
--    heart_beat         : heartbeat                     PORT MAP(Clock05, HrtBeat, iWatchDog, pout01, HrtBeatOn, HrtBeatOff, LogicReset );
------------------------------------------------------------
-- microcontroller management functions
------------------------------------------------------------
    Watch_Dog_Reset    : WatchDog GENERIC MAP(1024)    PORT MAP(Clock02, ResetIn, iWatchDog);
    uCReset          <= iWatchDog;
------------------------------------------------------------
-- parallel data read functions
------------------------------------------------------------
    ExternalHardwareEn(0) <= not iExternHwEn01(0); -- sw cmn low
    ExternalHardwareEn(1) <=     iExternHwEn01(1); -- sw cmn high
    ExternalHardwareEn(2) <= not iExternHwEn01(2); -- rs482 DE
    ExternalHardwareEn(3) <=     iExternHwEn01(3); -- rs485 RE
    ExternalHardwareEn(4) <=     iExternHwEn01(4); -- rs232 PS
    --HrtBeatOn             <= not iExternHwEn01(5);
    --HrtBeatOff            <=     iExternHwEn01(6);
    A2DEDisable           <=     iExternHwEn01(7);

-- feedback functions to the microcontroller
-- analog to digital register to fpga register reader
    A2DRead            : Max144                             PORT MAP(Clock04, A2DEDisable, AdDout, AdClock, AdCs1, ohold50, ohold51, LogicReset);
-------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------
-- debounce inputs
    iobank60debounce   : iodebounce GENERIC MAP(timer_size) PORT MAP(Clock02, inputs_1, ohold60, LogicReset ); -- debounce 9 direct IO
    iobank61debounce   : iodebounce GENERIC MAP(timer_size) PORT MAP(Clock02, inputs_2, ohold61, LogicReset );
------------------------------------------------------------
-- serial data in parallell data output functions
------------------------------------------------------------
-- function data register address selector
--                             GENERIC MAP(default,   address  )     PORT MAP(clock  , address in, output    ,    serialclock, serialin, data latch, reset);
    addresslatch        : sipo GENERIC MAP(Ax00, Ax00)      PORT MAP(Clock01, Ax00,  internaddr,    serialclock, SerialIn, Ale,        LogicReset);
--  hardware enable registers
    externenablelatch01 : sipo GENERIC MAP(dfex01, Ax80)    PORT MAP(Clock01, internaddr, iExternHwEn01, serialclock, SerialIn, SerialLoad, LogicReset);
--  discrete host output control state 0 = off, 1 = on
    --bitcontrol01latch   : sipo GENERIC MAP(biton01,    Ax90)PORT MAP(Clock01, internaddr, bitcontrol01, serialclock, SerialIn, SerialLoad, LogicReset);
-- duty cycle set registers
    dutycyclelatch01    : sipo  GENERIC MAP(dfDutyCycle,AxC0) PORT MAP(Clock01, internaddr, dutycycle00, serialclock, SerialIn, SerialLoad, LogicReset); -- address 0xC0

    Indicator1          : sipo  GENERIC MAP(dfDutyCycle,AxC1) PORT MAP(Clock01, internaddr, ind_data_1, serialclock, SerialIn, SerialLoad, LogicReset);
    Indicator2          : sipo  GENERIC MAP(dfDutyCycle,AxC2) PORT MAP(Clock01, internaddr, ind_data_2, serialclock, SerialIn, SerialLoad, LogicReset);
-- firmware part number and revision bytes
    firmware            : revision                          PORT MAP(Clock01, internaddr, serialclock, do2X, SerialLoad, LogicReset);
-- fpga a2d register to microcontroller write
    A2D00reader         : piso GENERIC MAP(Ax50)            PORT MAP(Clock01, internaddr, ohold50, serialclock, do50, SerialLoad, LogicReset);
    A2D01reader         : piso GENERIC MAP(Ax51)            PORT MAP(Clock01, internaddr, ohold51, serialclock, do51, SerialLoad, LogicReset);
-- read input bank data write back to microcontroller
    ioBank60reader      : piso GENERIC MAP(Ax60)            PORT MAP(Clock01, internaddr, ohold60, serialclock, do60, SerialLoad, LogicReset);
    ioBank61reader      : piso GENERIC MAP(Ax61)            PORT MAP(Clock01, internaddr, ohold61, serialclock, do61, SerialLoad, LogicReset);

-------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------
    SerialOut           <= do2X and do50 and do51 and do60 and do61;

    --snkpout_ltg           : PWMS1 GENERIC MAP(0, 16383)      PORT MAP(Clock03, dutycycle00, pout01, LogicReset); -- panel lighting

    --panel_ltg     <= bitcontrol01;
    --outputs02     <= pout01; -- panel lgihting rtn 

    -- Generate enable signals and shared duty cycle
    pwm_enable <= ind_data_1(5 downto 0) & ind_data_2(4 downto 0); -- Combine indicator data for all 11 LEDs
    duty_cycle_out <= conv_std_logic_vector((conv_integer(dutycycle00) * 16383) / 255, duty_cycle_out'length); -- Scale dimming value to 14-bit duty cycle

    -- Instantiate PWM components
    gen_pwm_control : for i in 0 to 10 generate
        pwm_duty_sel(i) <= (others => '0') when pwm_enable(i) = '0' else duty_cycle_out;
        snkpout_inst : PWMS1 GENERIC MAP(0, 16383)
                   PORT MAP(
                       Clock03,
                       pwm_duty_sel(i),
                       snkpout(i),
                       LogicReset
                   );
    end generate;

    -- Map outputs
    outputs01(0) <= snkpout(0); -- AP1 ON
    outputs01(1) <= snkpout(1); -- AP2 ON
    outputs01(2) <= snkpout(2); -- FDSEL 1
    outputs01(3) <= snkpout(3); -- FDSEL 2
    outputs01(4) <= snkpout(4); -- COLL ON
    outputs01(5) <= snkpout(5); -- CPL ON
    outputs02(0) <= snkpout(6); -- SAS
    outputs02(1) <= snkpout(7); -- ATT
    outputs02(2) <= snkpout(8); -- TEST ON
    outputs02(3) <= snkpout(9); -- RADALT ON
    outputs02(4) <= snkpout(10); -- VELHLD ON



end Behavioral;
