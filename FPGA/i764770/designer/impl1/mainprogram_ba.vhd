-- Version: v11.7 SP1 11.7.1.14
-- File used only for Simulation

library ieee;
use ieee.std_logic_1164.all;
library igloo;
use igloo.all;

entity mainprogram is

    port( inputs60           : in    std_logic_vector(3 downto 0);
          inputs61           : in    std_logic_vector(3 downto 0);
          inputs62           : in    std_logic_vector(2 downto 0);
          inputs62_ctrl      : out   std_logic_vector(4 downto 0);
          inputs67           : in    std_logic_vector(2 downto 0);
          inputs67_ctrl      : out   std_logic_vector(4 downto 0);
          AdDout             : in    std_logic;
          AdClock            : out   std_logic;
          AdCs1              : out   std_logic;
          HrtBeat            : out   std_logic;
          PnlLgtControl      : out   std_logic;
          AN1DimControl      : out   std_logic;
          AN2DimControl      : out   std_logic;
          AN3DimControl      : out   std_logic;
          AN4NRMControl      : out   std_logic;
          AN4PTTControl      : out   std_logic;
          AN5NRMControl      : out   std_logic;
          AN5PTTControl      : out   std_logic;
          AN6NRMControl      : out   std_logic;
          AN6PTTControl      : out   std_logic;
          EncLgtControl      : out   std_logic;
          ExternalHardwareEn : out   std_logic_vector(6 downto 0);
          XCLK               : in    std_logic;
          ResetIn            : in    std_logic;
          uCReset            : out   std_logic;
          SerialIn           : in    std_logic;
          SerialClock        : in    std_logic;
          SerialLoad         : in    std_logic;
          Ale                : in    std_logic;
          SerialOut          : out   std_logic;
          LogicReset         : in    std_logic
        );

end mainprogram;

architecture DEF_ARCH of mainprogram is 

  component XA1C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1E0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component OR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AOI1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OA1C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component MAJ3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XOR3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component MX2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOTRI_OB_EB
    port( D    : in    std_logic := 'U';
          E    : in    std_logic := 'U';
          DOUT : out   std_logic;
          EOUT : out   std_logic
        );
  end component;

  component MX2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1E1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component AO1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOPAD_TRI
    port( D   : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

  component NOR3C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOPAD_IN
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component XA1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OA1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR3A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component INV
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AOI1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR3B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XNOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component BUFF
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component MX2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AND2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AX1D
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XA1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AO1D
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AND2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR3C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AOI1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component MIN3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOIN_IB
    port( YIN : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component OR3A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XNOR3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CLKINT
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XA1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AX1C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AO1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AO18
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AXOI4
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AO13
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AXO7
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OA1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AO1C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CLKIO
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AND3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR3B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OAI1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AOI1D
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component MX2C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AO1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XO1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component ULSICC_INT
    port( USTDBY : in    std_logic := 'U';
          LPENA  : in    std_logic := 'U'
        );
  end component;

  component OA1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AX1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port(Y : out std_logic); 
  end component;

  component VCC
    port(Y : out std_logic); 
  end component;

    signal Clock01, \counter[1]\, Clock03, Clock04, \ohold50[0]\, 
        \ohold50[1]\, \ohold50[2]\, \ohold50[3]\, \ohold50[4]\, 
        \ohold50[5]\, \ohold50[6]\, \ohold50[7]\, \ohold50[8]\, 
        \ohold50[9]\, \ohold50[10]\, \ohold50[11]\, \ohold51[0]\, 
        \ohold51[1]\, \ohold51[2]\, \ohold51[3]\, \ohold51[4]\, 
        \ohold51[5]\, \ohold51[6]\, \ohold51[7]\, \ohold51[8]\, 
        \ohold51[9]\, \ohold51[10]\, \ohold51[11]\, \dhold62[0]\, 
        \dhold62[1]\, \dhold62[2]\, \dhold63[0]\, \dhold63[1]\, 
        \dhold63[2]\, \dhold64[0]\, \dhold64[1]\, \dhold64[2]\, 
        \dhold65[0]\, \dhold65[1]\, \dhold65[2]\, \dhold66[0]\, 
        \dhold66[1]\, \dhold66[2]\, \dhold67[0]\, \dhold67[1]\, 
        \dhold67[2]\, \dhold68[0]\, \dhold68[1]\, \dhold68[2]\, 
        \dhold69[0]\, \dhold69[1]\, \dhold69[2]\, \dhold6A[0]\, 
        \dhold6A[1]\, \dhold6A[2]\, \dhold6B[0]\, \dhold6B[1]\, 
        \dhold6B[2]\, \ohold60[0]\, \ohold60[1]\, \ohold60[2]\, 
        \ohold60[3]\, \ohold61[0]\, \ohold61[1]\, \ohold61[2]\, 
        \ohold61[3]\, \ohold62[0]\, \ohold62[1]\, \ohold62[2]\, 
        \ohold63[0]\, \ohold63[1]\, \ohold63[2]\, \ohold64[0]\, 
        \ohold64[1]\, \ohold64[2]\, \ohold65[0]\, \ohold65[1]\, 
        \ohold65[2]\, \ohold66[0]\, \ohold66[1]\, \ohold66[2]\, 
        \ohold67[0]\, \ohold67[1]\, \ohold67[2]\, \ohold68[0]\, 
        \ohold68[1]\, \ohold68[2]\, \ohold69[0]\, \ohold69[1]\, 
        \ohold69[2]\, \ohold6A[0]\, \ohold6A[1]\, \ohold6A[2]\, 
        \ohold6B[0]\, \ohold6B[1]\, \ohold6B[2]\, \internaddr[0]\, 
        \internaddr[1]\, \internaddr[2]\, \internaddr[3]\, 
        \internaddr[4]\, \internaddr[5]\, \internaddr[6]\, 
        \internaddr[7]\, do2x, do50, do51, do60, do61, do62, do63, 
        do64, do65, do66, do67, do68, do69, do6A, do6B, 
        \bitcontrol01[7]\, \pwmdisable01[0]\, \pwmdisable01[1]\, 
        \pwmdisable01[2]\, \pwmdisable01[3]\, \pwmdisable01[4]\, 
        \pwmdisable01[5]\, \pwmdisable01[6]\, \dutycycle01[0]\, 
        \dutycycle01[1]\, \dutycycle01[2]\, \dutycycle01[3]\, 
        \dutycycle01[4]\, \dutycycle01[5]\, \dutycycle01[6]\, 
        \dutycycle01[7]\, \dutycycle01[8]\, \dutycycle01[9]\, 
        \dutycycle01[10]\, \dutycycle01[11]\, \inputs60_c[0]\, 
        \inputs60_c[1]\, \inputs60_c[2]\, \inputs60_c[3]\, 
        \inputs61_c[0]\, \inputs61_c[1]\, \inputs61_c[2]\, 
        \inputs61_c[3]\, \inputs62_c[0]\, \inputs62_c[1]\, 
        \inputs62_c[2]\, \inputs62_ctrl_c[0]\, 
        \inputs62_ctrl_c[1]\, \inputs62_ctrl_c[2]\, 
        \inputs62_ctrl_c[3]\, \inputs62_ctrl_c[4]\, 
        \inputs67_c[0]\, \inputs67_c[1]\, \inputs67_c[2]\, 
        \inputs67_ctrl_c[0]\, \inputs67_ctrl_c[1]\, 
        \inputs67_ctrl_c[2]\, \inputs67_ctrl_c[3]\, 
        \inputs67_ctrl_c[4]\, AdDout_c, AdClock_c, AdCs1_c, 
        HrtBeat_c, PnlLgtControl_c, AN1DimControl_c, 
        AN2DimControl_c, AN3DimControl_c, AN4NRMControl_c, 
        AN5NRMControl_c, AN6NRMControl_c, \outputs01_c_c_c[3]\, 
        EncLgtControl_c, \ExternalHardwareEn_c[0]\, 
        \ExternalHardwareEn_c[1]\, \ExternalHardwareEn_c[2]\, 
        \ExternalHardwareEn_c[3]\, \ExternalHardwareEn_c[4]\, 
        \ExternalHardwareEn_c[5]\, \ExternalHardwareEn_c[6]\, 
        XCLK_c, ResetIn_c, uCReset_c, SerialIn_c, SerialClock_c, 
        SerialLoad_c, Ale_c, SerialOut_c, LogicReset_c, 
        \ioBank62reader.parallelholdreg_0_sqmuxa_4\, 
        \ioBank6Areader.parallelholdreg_0_sqmuxa_3\, 
        \A2D01reader.parallelholdreg_0_sqmuxa_4\, 
        \ioBank6Breader.parallelholdreg_0_sqmuxa_3\, 
        \firmware.N_76\, 
        \ioBank6Breader.parallelholdreg_0_sqmuxa_4\, 
        \ioBank61reader.parallelholdreg_0_sqmuxa_5\, 
        \A2D01reader.parallelholdreg_0_sqmuxa_5\, 
        \ioBank60reader.cellindex_1_sqmuxa_1_1\, 
        \externenablelatch.CellIndexUpdate.un39_address_4\, 
        \firmware.N_70\, \A2D01reader.parallelholdreg_0_sqmuxa_9\, 
        \A2DRead.AdClock_0_sqmuxa\, SerialOut_1, SerialOut_2, 
        SerialOut_4, SerialOut_6, SerialOut_7, SerialOut_9, 
        SerialOut_10, SerialOut_11, 
        \ioBank6Areader.parallelholdreg_0_sqmuxa_1\, 
        \firmware.N_75\, 
        \ioBank66reader.parallelholdreg_0_sqmuxa_1\, 
        \A2D01reader.dataout_0_0\, \dhold6B_i[2]\, \dhold6B_i[1]\, 
        \dhold6B_i[0]\, \dhold6A_i[2]\, \dhold6A_i[1]\, 
        \dhold6A_i[0]\, \dhold69_i[2]\, \dhold69_i[1]\, 
        \dhold69_i[0]\, \dhold68_i[2]\, \dhold68_i[1]\, 
        \dhold68_i[0]\, \dhold67_i[2]\, \dhold67_i[1]\, 
        \dhold67_i[0]\, \dhold66_i[2]\, \dhold66_i[1]\, 
        \dhold66_i[0]\, \dhold65_i[2]\, \dhold65_i[1]\, 
        \dhold65_i[0]\, \dhold64_i[2]\, \dhold64_i[1]\, 
        \dhold64_i[0]\, \dhold63_i[2]\, \dhold63_i[1]\, 
        \dhold63_i[0]\, \dhold62_i[2]\, \dhold62_i[1]\, 
        \dhold62_i[0]\, LogicReset_pad, SerialLoad_pad, 
        SerialIn_c_0, \iobank62debounce/DebounceTimer_c5_out\, 
        \iobank62debounce/DebounceTimer[6]_net_1\, 
        \iobank62debounce/DebounceTimer[4]_net_1\, 
        \iobank62debounce/DebounceTimer[5]_net_1\, 
        \iobank62debounce/DebounceTimer[3]_net_1\, 
        \iobank62debounce/DebounceTimer[2]_net_1\, 
        \iobank62debounce/DebounceTimer_c3\, 
        \iobank62debounce/DebounceTimer_c1\, 
        \iobank62debounce/N_48\, 
        \iobank62debounce/un1_previousposition7\, 
        \iobank62debounce/DebounceTimer[7]_net_1\, 
        \iobank62debounce/DebounceTimer_c6\, 
        \iobank62debounce/DebounceTimer_n7\, 
        \iobank62debounce/DebounceTimer_n6\, 
        \iobank62debounce/DebounceTimer_c5\, 
        \iobank62debounce/DebounceTimer_n5\, 
        \iobank62debounce/DebounceTimer_c4\, 
        \iobank62debounce/DebounceTimer_n4\, 
        \iobank62debounce/DebounceTimer_n3\, 
        \iobank62debounce/DebounceTimer_c2\, 
        \iobank62debounce/DebounceTimer_n2\, 
        \iobank62debounce/IOOut_0_sqmuxa\, 
        \iobank62debounce/DebounceTimer[8]_net_1\, 
        \iobank62debounce/Changing_net_1\, 
        \iobank62debounce/IOOut_3[0]\, 
        \iobank62debounce/PreviousPosition[0]_net_1\, 
        \iobank62debounce/IOOut_3[1]\, 
        \iobank62debounce/PreviousPosition[1]_net_1\, 
        \iobank62debounce/IOOut_3[2]\, 
        \iobank62debounce/PreviousPosition[2]_net_1\, 
        \iobank62debounce/PreviousPosition_3[1]\, 
        \iobank62debounce/CurrentPosition[1]_net_1\, 
        \iobank62debounce/PreviousPosition_3[2]\, 
        \iobank62debounce/CurrentPosition[2]_net_1\, 
        \iobank62debounce/Changing_0\, 
        \iobank62debounce/CurrentPosition[0]_net_1\, 
        \iobank62debounce/DebounceTimer_RNO_1[8]\, 
        \iobank62debounce/DebounceTimere\, 
        \iobank62debounce/DebounceTimer_n1\, 
        \iobank62debounce/DebounceTimer[1]_net_1\, 
        \iobank62debounce/DebounceTimer[0]_net_1\, 
        \iobank62debounce/N_67\, 
        \iobank62debounce/PreviousPosition_3[0]\, 
        \ioBank67reader/parallelholdreg_0_sqmuxa_4\, 
        \ioBank67reader/parallelholdreg_0_sqmuxa_2\, 
        \ioBank67reader/_decfrac0\, \ioBank67reader/dataout_0_1\, 
        \ioBank67reader/parallelholdreg[0]_net_1\, 
        \ioBank67reader/cellindex_RNO_4[1]\, 
        \ioBank67reader/cellindex[0]_net_1\, 
        \ioBank67reader/un1_latch_1\, 
        \ioBank67reader/cellindex_RNO_4[0]\, 
        \ioBank67reader/dataout_RNO_9\, 
        \ioBank67reader/parallelholdreg_m[2]\, 
        \ioBank67reader/parallelholdreg_m[1]\, 
        \ioBank67reader/cellindex[1]_net_1\, 
        \ioBank67reader/parallelholdreg_1_sqmuxa\, 
        \ioBank67reader/parallelholdreg[1]_net_1\, 
        \ioBank67reader/parallelholdreg[2]_net_1\, 
        \ioBank67reader/N_25\, 
        \ioBank67reader/parallelholdreg_7[2]\, 
        \ioBank67reader/N_24\, 
        \ioBank67reader/parallelholdreg_7[1]\, 
        \ioBank67reader/N_23\, 
        \ioBank67reader/parallelholdreg_7[0]\, 
        \ioBank67reader/parallelholdreg_RNO_8[2]\, 
        \ioBank67reader/parallelholdreg_RNO_8[1]\, 
        \ioBank67reader/parallelholdreg_RNO_8[0]\, 
        \clock_master/counter_i[0]\, \clock_master/counter_i[2]\, 
        \clock_master/counter_i[7]\, 
        \clock_master/DWACT_ADD_CI_0_g_array_2[0]\, 
        \clock_master/DWACT_ADD_CI_0_pog_array_1_1[0]\, 
        \clock_master/DWACT_ADD_CI_0_g_array_2_0[0]\, 
        \clock_master/DWACT_ADD_CI_0_pog_array_1_1_0[0]\, 
        \clock_master/counter[4]_net_1\, 
        \clock_master/DWACT_ADD_CI_0_g_array_1_1[0]\, 
        \clock_master/DWACT_ADD_CI_0_g_array_0_2[0]\, 
        \clock_master/counter[3]_net_1\, 
        \clock_master/DWACT_ADD_CI_0_g_array_1_1_0[0]\, 
        \clock_master/DWACT_ADD_CI_0_g_array_12_2[0]\, 
        \clock_master/counter[6]_net_1\, 
        \clock_master/counter_i_i[0]\, 
        \clock_master/counter_4_0_0[1]\, 
        \clock_master/counter_4_1_0[2]\, 
        \clock_master/counter_4[3]\, \clock_master/counter_4[4]\, 
        \clock_master/counter[5]_net_1\, 
        \clock_master/counter_4[5]\, \clock_master/counter_4[6]\, 
        \clock_master/counter_4_3_0[7]\, 
        \clock_master/DWACT_ADD_CI_0_pog_array_1[0]\, 
        \clock_master/DWACT_ADD_CI_0_g_array_1[0]\, 
        \clock_master/DWACT_ADD_CI_0_pog_array_0[0]\, 
        \clock_master/DWACT_ADD_CI_0_g_array_0_1[0]\, 
        \clock_master/DWACT_ADD_CI_0_g_array_1_0[0]\, 
        \clock_master/DWACT_ADD_CI_0_pog_array_0_0[0]\, 
        \clock_master/DWACT_ADD_CI_0_g_array_0_1_0[0]\, 
        \clock_master/DWACT_ADD_CI_0_pog_array_1_0[0]\, 
        \clock_master/DWACT_ADD_CI_0_pog_array_0_1_0[0]\, 
        \clock_master/DWACT_ADD_CI_0_g_array_1_2[0]\, 
        \clock_master/DWACT_ADD_CI_0_pog_array_0_2[0]\, 
        \clock_master/DWACT_ADD_CI_0_g_array_0_1_1[0]\, 
        \clock_master/DWACT_ADD_CI_0_g_array_12[0]\, 
        \ioBank64reader/parallelholdreg_0_sqmuxa_3_net_1\, 
        \ioBank64reader/parallelholdreg_0_sqmuxa_2\, 
        \ioBank64reader/parallelholdreg_0_sqmuxa_0\, 
        \ioBank64reader/_decfrac0\, \ioBank64reader/dataout_0_2\, 
        \ioBank64reader/parallelholdreg[1]_net_1\, 
        \ioBank64reader/cellindex[0]_net_1\, 
        \ioBank64reader/parallelholdreg_m[2]\, 
        \ioBank64reader/dataout_RNO_6\, 
        \ioBank64reader/parallelholdreg_m[0]\, 
        \ioBank64reader/cellindex_RNO_1[0]\, 
        \ioBank64reader/un1_latch_1\, 
        \ioBank64reader/cellindex_RNO_1[1]\, 
        \ioBank64reader/parallelholdreg_7[0]\, 
        \ioBank64reader/parallelholdreg_7[1]\, 
        \ioBank64reader/parallelholdreg_7[2]\, 
        \ioBank64reader/parallelholdreg_RNO_5[0]\, 
        \ioBank64reader/N_23\, 
        \ioBank64reader/parallelholdreg_RNO_5[1]\, 
        \ioBank64reader/N_24\, 
        \ioBank64reader/parallelholdreg_RNO_5[2]\, 
        \ioBank64reader/N_25\, 
        \ioBank64reader/parallelholdreg[0]_net_1\, 
        \ioBank64reader/parallelholdreg_1_sqmuxa\, 
        \ioBank64reader/parallelholdreg[2]_net_1\, 
        \ioBank64reader/cellindex[1]_net_1\, 
        \ioBank69reader/parallelholdreg_0_sqmuxa_3_net_1\, 
        \ioBank69reader/parallelholdreg_0_sqmuxa_2\, 
        \ioBank69reader/_decfrac0\, \ioBank69reader/dataout_0_1\, 
        \ioBank69reader/parallelholdreg[0]_net_1\, 
        \ioBank69reader/dataout_RNO_11\, 
        \ioBank69reader/parallelholdreg_m[2]\, 
        \ioBank69reader/parallelholdreg_m[1]\, 
        \ioBank69reader/cellindex_RNO_6[0]\, 
        \ioBank69reader/cellindex[0]_net_1\, 
        \ioBank69reader/un1_latch_1\, 
        \ioBank69reader/cellindex_RNO_6[1]\, 
        \ioBank69reader/parallelholdreg_7[0]\, 
        \ioBank69reader/parallelholdreg_7[1]\, 
        \ioBank69reader/parallelholdreg_7[2]\, 
        \ioBank69reader/parallelholdreg_RNO_10[0]\, 
        \ioBank69reader/N_23\, 
        \ioBank69reader/parallelholdreg_RNO_10[1]\, 
        \ioBank69reader/N_24\, 
        \ioBank69reader/parallelholdreg_RNO_10[2]\, 
        \ioBank69reader/N_25\, 
        \ioBank69reader/parallelholdreg_1_sqmuxa\, 
        \ioBank69reader/parallelholdreg[1]_net_1\, 
        \ioBank69reader/parallelholdreg[2]_net_1\, 
        \ioBank69reader/cellindex[1]_net_1\, 
        \ioBank60reader/parallelholdreg_0_sqmuxa_3\, 
        \ioBank60reader/parallelholdreg_0_sqmuxa_0\, 
        \ioBank60reader/parallelholdreg_0_sqmuxa_2_net_1\, 
        \ioBank60reader/cellindex[0]_net_1\, 
        \ioBank60reader/cellindex[1]_net_1\, 
        \ioBank60reader/dataout_RNO_2_net_1\, 
        \ioBank60reader/dataout_57\, 
        \ioBank60reader/cellindex_6[1]\, 
        \ioBank60reader/parallelholdreg_7[2]\, 
        \ioBank60reader/parallelholdreg_7[3]\, 
        \ioBank60reader/parallelholdreg_RNO_1[2]_net_1\, 
        \ioBank60reader/N_40\, 
        \ioBank60reader/parallelholdreg_RNO_1[3]_net_1\, 
        \ioBank60reader/N_41\, 
        \ioBank60reader/parallelholdreg[2]_net_1\, 
        \ioBank60reader/parallelholdreg_1_sqmuxa\, 
        \ioBank60reader/parallelholdreg[3]_net_1\, 
        \ioBank60reader/parallelholdreg_7[0]\, 
        \ioBank60reader/parallelholdreg_7[1]\, 
        \ioBank60reader/parallelholdreg_RNO_1[0]_net_1\, 
        \ioBank60reader/N_38\, 
        \ioBank60reader/parallelholdreg_RNO_1[1]_net_1\, 
        \ioBank60reader/N_39\, 
        \ioBank60reader/parallelholdreg[0]_net_1\, 
        \ioBank60reader/parallelholdreg[1]_net_1\, 
        \ioBank60reader/cellindex_6[0]\, \ioBank60reader/N_33\, 
        \ioBank60reader/N_34\, 
        \ioBank63reader/parallelholdreg_0_sqmuxa_5\, 
        \ioBank63reader/parallelholdreg_0_sqmuxa_0\, 
        \ioBank63reader/parallelholdreg_0_sqmuxa_4_net_1\, 
        \ioBank63reader/_decfrac0\, \ioBank63reader/dataout_0_1\, 
        \ioBank63reader/parallelholdreg[0]_net_1\, 
        \ioBank63reader/dataout_RNO_5\, 
        \ioBank63reader/parallelholdreg_m[2]\, 
        \ioBank63reader/parallelholdreg_m[1]\, 
        \ioBank63reader/cellindex_RNO_0[0]\, 
        \ioBank63reader/cellindex[0]_net_1\, 
        \ioBank63reader/un1_latch_1\, 
        \ioBank63reader/cellindex_RNO_0[1]\, 
        \ioBank63reader/parallelholdreg_7[0]\, 
        \ioBank63reader/parallelholdreg_7[1]\, 
        \ioBank63reader/parallelholdreg_7[2]\, 
        \ioBank63reader/parallelholdreg_RNO_4[0]\, 
        \ioBank63reader/N_23\, 
        \ioBank63reader/parallelholdreg_RNO_4[1]\, 
        \ioBank63reader/N_24\, 
        \ioBank63reader/parallelholdreg_RNO_4[2]\, 
        \ioBank63reader/N_25\, 
        \ioBank63reader/parallelholdreg_1_sqmuxa\, 
        \ioBank63reader/parallelholdreg[1]_net_1\, 
        \ioBank63reader/parallelholdreg[2]_net_1\, 
        \ioBank63reader/cellindex[1]_net_1\, 
        \iobank6Bdebounce/DebounceTimer_c6_out_0\, 
        \iobank6Bdebounce/DebounceTimer[6]_net_1\, 
        \iobank6Bdebounce/DebounceTimer[5]_net_1\, 
        \iobank6Bdebounce/DebounceTimer[4]_net_1\, 
        \iobank6Bdebounce/DebounceTimer[3]_net_1\, 
        \iobank6Bdebounce/DebounceTimer[2]_net_1\, 
        \iobank6Bdebounce/DebounceTimer_c3\, 
        \iobank6Bdebounce/DebounceTimer_c1\, 
        \iobank6Bdebounce/N_48\, 
        \iobank6Bdebounce/un1_previousposition7\, 
        \iobank6Bdebounce/DebounceTimer[7]_net_1\, 
        \iobank6Bdebounce/DebounceTimer_c6\, 
        \iobank6Bdebounce/DebounceTimer_n7\, 
        \iobank6Bdebounce/DebounceTimer_n6\, 
        \iobank6Bdebounce/DebounceTimer_c5\, 
        \iobank6Bdebounce/DebounceTimer_n5\, 
        \iobank6Bdebounce/DebounceTimer_c4\, 
        \iobank6Bdebounce/DebounceTimer_n4\, 
        \iobank6Bdebounce/DebounceTimer_n3\, 
        \iobank6Bdebounce/DebounceTimer_c2\, 
        \iobank6Bdebounce/DebounceTimer_n2\, 
        \iobank6Bdebounce/DebounceTimer_n1\, 
        \iobank6Bdebounce/DebounceTimer[1]_net_1\, 
        \iobank6Bdebounce/DebounceTimer[0]_net_1\, 
        \iobank6Bdebounce/N_67\, 
        \iobank6Bdebounce/Changing_net_1\, 
        \iobank6Bdebounce/PreviousPosition[0]_net_1\, 
        \iobank6Bdebounce/CurrentPosition[0]_net_1\, 
        \iobank6Bdebounce/PreviousPosition_3[2]\, 
        \iobank6Bdebounce/CurrentPosition[2]_net_1\, 
        \iobank6Bdebounce/PreviousPosition_3[1]\, 
        \iobank6Bdebounce/CurrentPosition[1]_net_1\, 
        \iobank6Bdebounce/PreviousPosition_3[0]\, 
        \iobank6Bdebounce/IOOut_3[2]\, 
        \iobank6Bdebounce/PreviousPosition[2]_net_1\, 
        \iobank6Bdebounce/IOOut_3[1]\, 
        \iobank6Bdebounce/PreviousPosition[1]_net_1\, 
        \iobank6Bdebounce/IOOut_3[0]\, 
        \iobank6Bdebounce/DebounceTimere\, 
        \iobank6Bdebounce/DebounceTimer[8]_net_1\, 
        \iobank6Bdebounce/IOOut_0_sqmuxa\, 
        \iobank6Bdebounce/Changing_0\, 
        \pwmdisable01latch/un13_address_3\, 
        \pwmdisable01latch/un13_address_1\, 
        \pwmdisable01latch/un13_address_0\, 
        \pwmdisable01latch/N_101\, 
        \pwmdisable01latch/cellindex[2]_net_1\, 
        \pwmdisable01latch/output_0_sqmuxa_net_1\, 
        \pwmdisable01latch/cellindex_c1\, 
        \pwmdisable01latch/N_97\, \pwmdisable01latch/N_96\, 
        \pwmdisable01latch/un1_paralleldata_1[2]\, 
        \pwmdisable01latch/N_100\, \pwmdisable01latch/N_98\, 
        \pwmdisable01latch/un1_paralleldata_1[0]\, 
        \pwmdisable01latch/N_94\, \pwmdisable01latch/N_99\, 
        \pwmdisable01latch/un1_paralleldata_1[5]\, 
        \pwmdisable01latch/N_95\, 
        \pwmdisable01latch/cellindex_n2\, 
        \pwmdisable01latch/paralleldata_RNO_2[1]\, 
        \pwmdisable01latch/N_95_mux\, 
        \pwmdisable01latch/paralleldata[1]_net_1\, 
        \pwmdisable01latch/paralleldata_RNO_2[5]\, 
        \pwmdisable01latch/N_99_mux\, 
        \pwmdisable01latch/output_RNO_2[0]\, 
        \pwmdisable01latch/N_44\, 
        \pwmdisable01latch/paralleldata[0]_net_1\, 
        \pwmdisable01latch/paralleldata[5]_net_1\, 
        \pwmdisable01latch/cellindex[0]_net_1\, 
        \pwmdisable01latch/cellindex[1]_net_1\, 
        \pwmdisable01latch/paralleldata_RNO_2[0]\, 
        \pwmdisable01latch/N_94_mux\, 
        \pwmdisable01latch/paralleldata_RNO_2[4]\, 
        \pwmdisable01latch/N_98_mux\, 
        \pwmdisable01latch/paralleldata_RNO_2[6]\, 
        \pwmdisable01latch/N_100_mux\, 
        \pwmdisable01latch/output_RNO_2[1]\, 
        \pwmdisable01latch/N_45\, 
        \pwmdisable01latch/output_RNO_2[2]\, 
        \pwmdisable01latch/N_46\, 
        \pwmdisable01latch/output_RNO_2[3]\, 
        \pwmdisable01latch/N_47\, 
        \pwmdisable01latch/output_RNO_2[4]\, 
        \pwmdisable01latch/N_48\, 
        \pwmdisable01latch/output_RNO_2[5]\, 
        \pwmdisable01latch/N_49\, 
        \pwmdisable01latch/output_RNO_2[6]\, 
        \pwmdisable01latch/N_50\, 
        \pwmdisable01latch/output_RNO_1[7]\, 
        \pwmdisable01latch/N_51\, 
        \pwmdisable01latch/paralleldata[2]_net_1\, 
        \pwmdisable01latch/paralleldata[3]_net_1\, 
        \pwmdisable01latch/paralleldata[4]_net_1\, 
        \pwmdisable01latch/paralleldata[6]_net_1\, 
        \pwmdisable01latch/pwmdisable01[7]\, 
        \pwmdisable01latch/paralleldata[7]_net_1\, 
        \pwmdisable01latch/paralleldata_RNO_2[2]\, 
        \pwmdisable01latch/N_96_mux\, 
        \pwmdisable01latch/paralleldata_RNO_2[3]\, 
        \pwmdisable01latch/N_97_mux\, 
        \pwmdisable01latch/paralleldata_RNO_1[7]_net_1\, 
        \pwmdisable01latch/N_101_mux\, 
        \pwmdisable01latch/cellindex_n1\, 
        \pwmdisable01latch/N_79\, 
        \pwmdisable01latch/cellindex_1_sqmuxa_net_1\, 
        \Watch_Dog_Reset/m8_m4_0_a2_5\, 
        \Watch_Dog_Reset/m8_m4_0_a2_2\, 
        \Watch_Dog_Reset/m8_m4_0_a2_1\, 
        \Watch_Dog_Reset/m8_m4_0_a2_3\, 
        \Watch_Dog_Reset/timercount[7]_net_1\, 
        \Watch_Dog_Reset/timercount[8]_net_1\, 
        \Watch_Dog_Reset/timercount[2]_net_1\, 
        \Watch_Dog_Reset/timercount[3]_net_1\, 
        \Watch_Dog_Reset/timercount[4]_net_1\, 
        \Watch_Dog_Reset/timercount[6]_net_1\, 
        \Watch_Dog_Reset/timercount[5]_net_1\, 
        \Watch_Dog_Reset/m16_m2_0_a2_2\, 
        \Watch_Dog_Reset/m19_m1_0_a2_0\, 
        \Watch_Dog_Reset/m15_m3_0_a2_3\, 
        \Watch_Dog_Reset/m15_m3_0_a2_1\, 
        \Watch_Dog_Reset/m16_m2_0_a2_1\, 
        \Watch_Dog_Reset/m40_e_6\, \Watch_Dog_Reset/m40_e_3\, 
        \Watch_Dog_Reset/m40_e_5\, 
        \Watch_Dog_Reset/timercount[10]_net_1\, 
        \Watch_Dog_Reset/m40_e_1\, 
        \Watch_Dog_Reset/timercount[1]_net_1\, 
        \Watch_Dog_Reset/m40_e_4\, 
        \Watch_Dog_Reset/timercount[9]_net_1\, 
        \Watch_Dog_Reset/m19_N_5_mux\, \Watch_Dog_Reset/N_2\, 
        \Watch_Dog_Reset/m16_N_6_mux\, 
        \Watch_Dog_Reset/m15_N_9_mux\, \Watch_Dog_Reset/N_9_0\, 
        \Watch_Dog_Reset/N_63\, \Watch_Dog_Reset/timercount_n6\, 
        \Watch_Dog_Reset/timercount_n8\, 
        \Watch_Dog_Reset/N_51_mux\, 
        \Watch_Dog_Reset/timercount[0]_net_1\, 
        \Watch_Dog_Reset/timercount_0_sqmuxa\, 
        \Watch_Dog_Reset/N_61_i\, \Watch_Dog_Reset/timercount_n1\, 
        \Watch_Dog_Reset/timercount_n2\, 
        \Watch_Dog_Reset/timercount_n3\, \Watch_Dog_Reset/N_3_0\, 
        \Watch_Dog_Reset/timercount_n4\, \Watch_Dog_Reset/N_4_0\, 
        \Watch_Dog_Reset/timercount_n5\, \Watch_Dog_Reset/N_5_0\, 
        \Watch_Dog_Reset/timercount_n7\, 
        \Watch_Dog_Reset/timercount_n9\, 
        \Watch_Dog_Reset/timercount_n10\, 
        \Watch_Dog_Reset/N_10_0\, 
        \externenablelatch/un39_address_3\, 
        \externenablelatch/un39_address_0\, 
        \externenablelatch/un39_address_1\, 
        \externenablelatch/paralleldata_0_e_0[5]\, 
        \externenablelatch/output_0_sqmuxa_net_1\, 
        \externenablelatch/cellindex[2]_net_1\, 
        \externenablelatch/paralleldata_0_e_0[3]\, 
        \externenablelatch/N_97\, 
        \externenablelatch/cellindex[0]_net_1\, 
        \externenablelatch/cellindex[1]_net_1\, 
        \externenablelatch/N_98\, \externenablelatch/N_96\, 
        \externenablelatch/N_95\, 
        \externenablelatch/cellindex_c1\, 
        \externenablelatch/N_93\, \externenablelatch/N_92\, 
        \externenablelatch/un39_address\, 
        \externenablelatch/N_94\, 
        \externenablelatch/cellindex_n1\, 
        \externenablelatch/cellindex_1_sqmuxa_1_0_net_1\, 
        \externenablelatch/cellindex_n1_tz\, 
        \externenablelatch/un45_address\, 
        \externenablelatch/N_77_i\, 
        \externenablelatch/cellindex_n2\, 
        \externenablelatch/N_94_mux\, 
        \externenablelatch/paralleldata[2]_net_1\, 
        \externenablelatch/N_52\, 
        \externenablelatch/paralleldata[6]_net_1\, 
        \externenablelatch/N_51\, 
        \externenablelatch/paralleldata[5]_net_1\, 
        \externenablelatch/N_50\, 
        \externenablelatch/paralleldata[4]_net_1\, 
        \externenablelatch/N_49\, 
        \externenablelatch/paralleldata[3]_net_1\, 
        \externenablelatch/N_48\, \externenablelatch/N_47\, 
        \externenablelatch/paralleldata[1]_net_1\, 
        \externenablelatch/output_RNO_0[4]_net_1\, 
        \externenablelatch/output_RNO_0[3]_net_1\, 
        \externenablelatch/output_RNO_0[6]_net_1\, 
        \externenablelatch/output_RNO_0[5]_net_1\, 
        \externenablelatch/output_RNO_0[2]_net_1\, 
        \externenablelatch/output_RNO_0[1]_net_1\, 
        \externenablelatch/paralleldata_RNO_0[2]_net_1\, 
        \externenablelatch/cellindex_1_sqmuxa_net_1\, 
        \externenablelatch/paralleldata_RNO_0[0]_net_1\, 
        \externenablelatch/N_92_mux\, 
        \externenablelatch/paralleldata_RNO_0[1]_net_1\, 
        \externenablelatch/N_93_mux\, 
        \externenablelatch/paralleldata_RNO_0[6]_net_1\, 
        \externenablelatch/N_98_mux\, 
        \externenablelatch/output_RNO_0[0]_net_1\, 
        \externenablelatch/N_46\, 
        \externenablelatch/paralleldata_RNO_0[3]_net_1\, 
        \externenablelatch/N_95_mux\, 
        \externenablelatch/paralleldata_RNO_0[4]_net_1\, 
        \externenablelatch/N_96_mux\, 
        \externenablelatch/paralleldata[0]_net_1\, 
        \externenablelatch/N_97_mux\, 
        \externenablelatch/paralleldata_RNO_0[5]_net_1\, 
        \ioBank62reader/parallelholdreg_0_sqmuxa_4_0\, 
        \ioBank62reader/parallelholdreg_0_sqmuxa_2\, 
        \ioBank62reader/parallelholdreg_0_sqmuxa_0\, 
        \ioBank62reader/cellindex[0]_net_1\, 
        \ioBank62reader/cellindex[1]_net_1\, 
        \ioBank62reader/dataout_0_2\, 
        \ioBank62reader/parallelholdreg[1]_net_1\, 
        \ioBank62reader/parallelholdreg_m[2]\, 
        \ioBank62reader/dataout_RNO_4\, 
        \ioBank62reader/parallelholdreg_m[0]\, 
        \ioBank62reader/cellindex_RNO[0]_net_1\, 
        \ioBank62reader/un1_latch_1\, 
        \ioBank62reader/cellindex_RNO[1]_net_1\, 
        \ioBank62reader/parallelholdreg_7[1]\, 
        \ioBank62reader/parallelholdreg_7[2]\, 
        \ioBank62reader/parallelholdreg_RNO_3[1]\, 
        \ioBank62reader/N_24\, 
        \ioBank62reader/parallelholdreg_RNO_3[2]\, 
        \ioBank62reader/N_25\, 
        \ioBank62reader/parallelholdreg_1_sqmuxa\, 
        \ioBank62reader/parallelholdreg[2]_net_1\, 
        \ioBank62reader/parallelholdreg[0]_net_1\, 
        \ioBank62reader/N_23\, 
        \ioBank62reader/parallelholdreg_7[0]\, 
        \ioBank62reader/parallelholdreg_RNO_3[0]\, 
        \ioBank61reader/parallelholdreg_0_sqmuxa_4_net_1\, 
        \ioBank61reader/parallelholdreg_0_sqmuxa_3\, 
        \ioBank61reader/parallelholdreg_0_sqmuxa_1\, 
        \ioBank61reader/cellindex[0]_net_1\, 
        \ioBank61reader/cellindex[1]_net_1\, 
        \ioBank61reader/cellindex_6[1]\, 
        \ioBank61reader/dataout_RNO_3\, 
        \ioBank61reader/dataout_52\, 
        \ioBank61reader/parallelholdreg_7[0]\, 
        \ioBank61reader/parallelholdreg_7[1]\, 
        \ioBank61reader/parallelholdreg_7[2]\, 
        \ioBank61reader/parallelholdreg_7[3]\, 
        \ioBank61reader/parallelholdreg_RNO_2[0]\, 
        \ioBank61reader/N_38\, 
        \ioBank61reader/parallelholdreg_RNO_2[1]\, 
        \ioBank61reader/N_39\, 
        \ioBank61reader/parallelholdreg_RNO_2[2]\, 
        \ioBank61reader/N_40\, 
        \ioBank61reader/parallelholdreg_RNO_2[3]\, 
        \ioBank61reader/N_41\, 
        \ioBank61reader/parallelholdreg[0]_net_1\, 
        \ioBank61reader/parallelholdreg_1_sqmuxa\, 
        \ioBank61reader/parallelholdreg[1]_net_1\, 
        \ioBank61reader/parallelholdreg[2]_net_1\, 
        \ioBank61reader/parallelholdreg[3]_net_1\, 
        \ioBank61reader/N_33\, \ioBank61reader/N_34\, 
        \ioBank61reader/cellindex_6[0]\, 
        \ioBank68reader/parallelholdreg_0_sqmuxa_3\, 
        \ioBank68reader/parallelholdreg_0_sqmuxa_1\, 
        \ioBank68reader/_decfrac0\, \ioBank68reader/dataout_0_1\, 
        \ioBank68reader/parallelholdreg[0]_net_1\, 
        \ioBank68reader/cellindex_RNO_5[1]\, 
        \ioBank68reader/cellindex[0]_net_1\, 
        \ioBank68reader/un1_latch_1\, 
        \ioBank68reader/cellindex_RNO_5[0]\, 
        \ioBank68reader/dataout_RNO_10\, 
        \ioBank68reader/parallelholdreg_m[2]\, 
        \ioBank68reader/parallelholdreg_m[1]\, 
        \ioBank68reader/cellindex[1]_net_1\, 
        \ioBank68reader/parallelholdreg_1_sqmuxa\, 
        \ioBank68reader/parallelholdreg[1]_net_1\, 
        \ioBank68reader/parallelholdreg[2]_net_1\, 
        \ioBank68reader/N_25\, 
        \ioBank68reader/parallelholdreg_7[2]\, 
        \ioBank68reader/N_24\, 
        \ioBank68reader/parallelholdreg_7[1]\, 
        \ioBank68reader/N_23\, 
        \ioBank68reader/parallelholdreg_7[0]\, 
        \ioBank68reader/parallelholdreg_RNO_9[2]\, 
        \ioBank68reader/parallelholdreg_RNO_9[1]\, 
        \ioBank68reader/parallelholdreg_RNO_9[0]\, 
        \iobank68debounce/DebounceTimer_c5_out\, 
        \iobank68debounce/DebounceTimer[6]_net_1\, 
        \iobank68debounce/DebounceTimer[4]_net_1\, 
        \iobank68debounce/DebounceTimer[5]_net_1\, 
        \iobank68debounce/DebounceTimer[3]_net_1\, 
        \iobank68debounce/DebounceTimer[2]_net_1\, 
        \iobank68debounce/DebounceTimer_c3\, 
        \iobank68debounce/DebounceTimer_c1\, 
        \iobank68debounce/N_48\, 
        \iobank68debounce/un1_previousposition7\, 
        \iobank68debounce/DebounceTimer[7]_net_1\, 
        \iobank68debounce/DebounceTimer_c6\, 
        \iobank68debounce/DebounceTimer_n7\, 
        \iobank68debounce/DebounceTimer_n6\, 
        \iobank68debounce/DebounceTimer_c5\, 
        \iobank68debounce/DebounceTimer_n5\, 
        \iobank68debounce/DebounceTimer_c4\, 
        \iobank68debounce/DebounceTimer_n4\, 
        \iobank68debounce/DebounceTimer_n3\, 
        \iobank68debounce/DebounceTimer_c2\, 
        \iobank68debounce/DebounceTimer_n2\, 
        \iobank68debounce/DebounceTimer_n1\, 
        \iobank68debounce/DebounceTimer[1]_net_1\, 
        \iobank68debounce/DebounceTimer[0]_net_1\, 
        \iobank68debounce/N_67\, 
        \iobank68debounce/DebounceTimere\, 
        \iobank68debounce/DebounceTimer[8]_net_1\, 
        \iobank68debounce/IOOut_0_sqmuxa\, 
        \iobank68debounce/Changing_net_1\, 
        \iobank68debounce/IOOut_3[0]\, 
        \iobank68debounce/PreviousPosition[0]_net_1\, 
        \iobank68debounce/IOOut_3[1]\, 
        \iobank68debounce/PreviousPosition[1]_net_1\, 
        \iobank68debounce/IOOut_3[2]\, 
        \iobank68debounce/PreviousPosition[2]_net_1\, 
        \iobank68debounce/PreviousPosition_3[0]\, 
        \iobank68debounce/CurrentPosition[0]_net_1\, 
        \iobank68debounce/PreviousPosition_3[1]\, 
        \iobank68debounce/CurrentPosition[1]_net_1\, 
        \iobank68debounce/PreviousPosition_3[2]\, 
        \iobank68debounce/CurrentPosition[2]_net_1\, 
        \iobank68debounce/Changing_0\, 
        \iobank61debounce/inputs61_c_i[0]\, 
        \iobank61debounce/inputs61_c_i[1]\, 
        \iobank61debounce/inputs61_c_i[2]\, 
        \iobank61debounce/inputs61_c_i[3]\, 
        \iobank61debounce/DebounceTimer_m2_0_a2_1\, 
        \iobank61debounce/DebounceTimer[3]_net_1\, 
        \iobank61debounce/DebounceTimer[6]_net_1\, 
        \iobank61debounce/DebounceTimer[2]_net_1\, 
        \iobank61debounce/N_48\, 
        \iobank61debounce/un1_previousposition7\, 
        \iobank61debounce/DebounceTimer[7]_net_1\, 
        \iobank61debounce/DebounceTimer_c6\, 
        \iobank61debounce/DebounceTimer_c1\, 
        \iobank61debounce/DebounceTimer_c5_out\, 
        \iobank61debounce/DebounceTimer[4]_net_1\, 
        \iobank61debounce/DebounceTimer[5]_net_1\, 
        \iobank61debounce/DebounceTimer_n7\, 
        \iobank61debounce/DebounceTimer_n6\, 
        \iobank61debounce/DebounceTimer_c5\, 
        \iobank61debounce/DebounceTimer_n5\, 
        \iobank61debounce/DebounceTimer_c4\, 
        \iobank61debounce/DebounceTimer_n4\, 
        \iobank61debounce/DebounceTimer_c3\, 
        \iobank61debounce/DebounceTimer_n3\, 
        \iobank61debounce/DebounceTimer_c2\, 
        \iobank61debounce/DebounceTimer_n2\, 
        \iobank61debounce/DebounceTimer_RNO_0[8]_net_1\, 
        \iobank61debounce/Changing_net_1\, 
        \iobank61debounce/DebounceTimere\, 
        \iobank61debounce/DebounceTimer_n1\, 
        \iobank61debounce/DebounceTimer[1]_net_1\, 
        \iobank61debounce/DebounceTimer[0]_net_1\, 
        \iobank61debounce/N_69\, 
        \iobank61debounce/DebounceTimer[8]_net_1\, 
        \iobank61debounce/Changing_0\, 
        \iobank61debounce/PreviousPosition[0]_net_1\, 
        \iobank61debounce/CurrentPosition[0]_net_1\, 
        \iobank61debounce/PreviousPosition_3[3]\, 
        \iobank61debounce/CurrentPosition[3]_net_1\, 
        \iobank61debounce/PreviousPosition_3[2]\, 
        \iobank61debounce/CurrentPosition[2]_net_1\, 
        \iobank61debounce/PreviousPosition_3[1]\, 
        \iobank61debounce/CurrentPosition[1]_net_1\, 
        \iobank61debounce/PreviousPosition_3[0]\, 
        \iobank61debounce/IOOut_8[3]\, 
        \iobank61debounce/PreviousPosition[3]_net_1\, 
        \iobank61debounce/IOOut_8[2]\, 
        \iobank61debounce/PreviousPosition[2]_net_1\, 
        \iobank61debounce/IOOut_8[1]\, 
        \iobank61debounce/PreviousPosition[1]_net_1\, 
        \iobank61debounce/IOOut_8[0]\, 
        \iobank61debounce/IOOut_0_sqmuxa\, 
        \firmware/parallelholdreg_2_sqmuxa_i_i_a2_0\, 
        \firmware/un1_reset_0_o2_3_net_1\, 
        \firmware/un1_reset_0_o2_0_net_1\, 
        \firmware/un1_reset_0_o2_1_net_1\, 
        \firmware/dataout_0_0_2\, \firmware/N_63\, 
        \firmware/N_68\, \firmware/dataout_0_0_0\, 
        \firmware/dataout_0_0_a2_1_0\, 
        \firmware/parallelholdreg[1]_net_1\, 
        \firmware/cellindex[0]_net_1\, 
        \firmware/cellindex[1]_net_1\, 
        \firmware/cellindex[2]_net_1\, \firmware/N_43\, 
        \firmware/dataout_RNO_net_1\, \firmware/N_51\, 
        \firmware/N_18\, \firmware/parallelholdreg[3]_net_1\, 
        \firmware/N_40\, \firmware/N_58\, 
        \firmware/parallelholdreg_RNO[6]_net_1\, \firmware/N_79\, 
        \firmware/parallelholdreg[6]_net_1\, \firmware/N_42\, 
        \firmware/N_59\, \firmware/N_62\, 
        \firmware/parallelholdreg[7]_net_1\, \firmware/N_14\, 
        \firmware/parallelholdreg_RNO[7]_net_1\, 
        \firmware/parallelholdreg_13[2]\, \firmware/N_44\, 
        \firmware/N_26\, \firmware/cellindex_n0\, \firmware/N_16\, 
        \firmware/N_49\, \firmware/N_50\, 
        \firmware/parallelholdreg[2]_net_1\, 
        \firmware/parallelholdreg[0]_net_1\, 
        \firmware/parallelholdreg[4]_net_1\, 
        \addresslatch/paralleldata_0_e_0[1]\, 
        \addresslatch/cellindex[2]_net_1\, 
        \addresslatch/paralleldata_0_e_0[7]\, \addresslatch/N_87\, 
        \addresslatch/cellindex[1]_net_1\, 
        \addresslatch/cellindex[0]_net_1\, \addresslatch/N_86\, 
        \addresslatch/cellindex_c1\, \addresslatch/N_83\, 
        \addresslatch/N_84\, \addresslatch/N_85\, 
        \addresslatch/N_88\, \addresslatch/N_89\, 
        \addresslatch/N_90\, \addresslatch/cellindex_n2\, 
        \addresslatch/output_0_sqmuxa_1_net_1\, 
        \addresslatch/output_RNO[5]_net_1\, \addresslatch/N_56\, 
        \addresslatch/paralleldata[5]_net_1\, 
        \addresslatch/N_90_mux\, 
        \addresslatch/paralleldata[7]_net_1\, 
        \addresslatch/N_89_mux\, 
        \addresslatch/paralleldata[6]_net_1\, 
        \addresslatch/N_88_mux\, \addresslatch/N_85_mux\, 
        \addresslatch/paralleldata[2]_net_1\, 
        \addresslatch/N_84_mux\, 
        \addresslatch/paralleldata[1]_net_1\, 
        \addresslatch/paralleldata_RNO[7]_net_1\, 
        \addresslatch/paralleldata_RNO[6]_net_1\, 
        \addresslatch/paralleldata_RNO[5]_net_1\, 
        \addresslatch/paralleldata_RNO[2]_net_1\, 
        \addresslatch/paralleldata_RNO[1]_net_1\, 
        \addresslatch/N_57\, \addresslatch/N_55\, 
        \addresslatch/paralleldata[4]_net_1\, 
        \addresslatch/output_RNO[6]_net_1\, 
        \addresslatch/output_RNO[4]_net_1\, 
        \addresslatch/paralleldata_RNO[0]_net_1\, 
        \addresslatch/N_83_mux\, 
        \addresslatch/paralleldata_RNO[3]_net_1\, 
        \addresslatch/N_86_mux\, 
        \addresslatch/paralleldata_RNO[4]_net_1\, 
        \addresslatch/N_87_mux\, 
        \addresslatch/output_RNO[3]_net_1\, \addresslatch/N_54\, 
        \addresslatch/output_RNO[7]_net_1\, \addresslatch/N_58\, 
        \addresslatch/paralleldata[3]_net_1\, 
        \addresslatch/paralleldata[0]_net_1\, 
        \addresslatch/output_RNO[0]_net_1\, \addresslatch/N_51\, 
        \addresslatch/cellindex_n1\, \addresslatch/cellindex_n0\, 
        \addresslatch/N_53\, \addresslatch/N_52\, 
        \addresslatch/output_RNO[2]_net_1\, 
        \addresslatch/output_RNO[1]_net_1\, 
        \iobank65debounce/DebounceTimer_m2_0_a2_1\, 
        \iobank65debounce/DebounceTimer[5]_net_1\, 
        \iobank65debounce/DebounceTimer[6]_net_1\, 
        \iobank65debounce/DebounceTimer[2]_net_1\, 
        \iobank65debounce/N_48\, 
        \iobank65debounce/un1_previousposition7\, 
        \iobank65debounce/DebounceTimer[7]_net_1\, 
        \iobank65debounce/DebounceTimer_c6\, 
        \iobank65debounce/DebounceTimer_c1\, 
        \iobank65debounce/DebounceTimer_c4_out\, 
        \iobank65debounce/DebounceTimer[3]_net_1\, 
        \iobank65debounce/DebounceTimer[4]_net_1\, 
        \iobank65debounce/DebounceTimer_n7\, 
        \iobank65debounce/DebounceTimer_n6\, 
        \iobank65debounce/DebounceTimer_c5\, 
        \iobank65debounce/DebounceTimer_n5\, 
        \iobank65debounce/DebounceTimer_c4\, 
        \iobank65debounce/DebounceTimer_n4\, 
        \iobank65debounce/DebounceTimer_c3\, 
        \iobank65debounce/DebounceTimer_n3\, 
        \iobank65debounce/DebounceTimer_c2\, 
        \iobank65debounce/DebounceTimer_n2\, 
        \iobank65debounce/Changing_net_1\, 
        \iobank65debounce/PreviousPosition[0]_net_1\, 
        \iobank65debounce/CurrentPosition[0]_net_1\, 
        \iobank65debounce/PreviousPosition_3[0]\, 
        \iobank65debounce/IOOut_3[2]\, 
        \iobank65debounce/PreviousPosition[2]_net_1\, 
        \iobank65debounce/IOOut_3[1]\, 
        \iobank65debounce/PreviousPosition[1]_net_1\, 
        \iobank65debounce/IOOut_3[0]\, 
        \iobank65debounce/IOOut_0_sqmuxa\, 
        \iobank65debounce/DebounceTimer[8]_net_1\, 
        \iobank65debounce/Changing_0\, 
        \iobank65debounce/PreviousPosition_3[1]\, 
        \iobank65debounce/CurrentPosition[1]_net_1\, 
        \iobank65debounce/PreviousPosition_3[2]\, 
        \iobank65debounce/CurrentPosition[2]_net_1\, 
        \iobank65debounce/DebounceTimer_n1\, 
        \iobank65debounce/DebounceTimer[1]_net_1\, 
        \iobank65debounce/DebounceTimer[0]_net_1\, 
        \iobank65debounce/N_67\, 
        \iobank65debounce/DebounceTimere\, 
        \discretedutycycle01/output_0_sqmuxa_0_net_1\, 
        \discretedutycycle01/address\, 
        \discretedutycycle01/address_3\, 
        \discretedutycycle01/address_1\, 
        \discretedutycycle01/address_0\, 
        \discretedutycycle01/un6_address\, 
        \discretedutycycle01/cellindex[2]_net_1\, 
        \discretedutycycle01/cellindex[3]_net_1\, 
        \discretedutycycle01/un6_address_2\, 
        \discretedutycycle01/N_128\, 
        \discretedutycycle01/un1_paralleldata_1[9]\, 
        \discretedutycycle01/output_0_sqmuxa_net_1\, 
        \discretedutycycle01/un1_paralleldata_2[3]\, 
        \discretedutycycle01/N_130\, 
        \discretedutycycle01/cellindex_c1\, 
        \discretedutycycle01/N_132\, 
        \discretedutycycle01/un1_paralleldata_2[7]\, 
        \discretedutycycle01/N_134\, \discretedutycycle01/N_136\, 
        \discretedutycycle01/un1_paralleldata_2[9]\, 
        \discretedutycycle01/N_138\, \discretedutycycle01/N_137\, 
        \discretedutycycle01/un1_paralleldata_1[6]\, 
        \discretedutycycle01/N_135\, \discretedutycycle01/N_133\, 
        \discretedutycycle01/N_131\, \discretedutycycle01/N_129\, 
        \discretedutycycle01/N_127\, 
        \discretedutycycle01/cellindex_n2\, 
        \discretedutycycle01/cellindex_1_sqmuxa_1_0_net_1\, 
        \discretedutycycle01/cellindex_n2_tz\, 
        \discretedutycycle01/cellindex_n3\, 
        \discretedutycycle01/cellindex_n3_tz\, 
        \discretedutycycle01/paralleldata_RNO_3[0]\, 
        \discretedutycycle01/N_127_mux\, 
        \discretedutycycle01/paralleldata_RNO_3[2]\, 
        \discretedutycycle01/N_129_mux\, 
        \discretedutycycle01/paralleldata_RNO_3[4]\, 
        \discretedutycycle01/N_131_mux\, 
        \discretedutycycle01/paralleldata_RNO_3[6]\, 
        \discretedutycycle01/N_133_mux\, 
        \discretedutycycle01/paralleldata_RNO[8]_net_1\, 
        \discretedutycycle01/N_135_mux\, 
        \discretedutycycle01/paralleldata_RNO[10]_net_1\, 
        \discretedutycycle01/N_137_mux\, 
        \discretedutycycle01/output_RNO_3[0]\, 
        \discretedutycycle01/N_60\, 
        \discretedutycycle01/output_RNO_3[1]\, 
        \discretedutycycle01/N_61\, 
        \discretedutycycle01/output_RNO_3[2]\, 
        \discretedutycycle01/N_62\, 
        \discretedutycycle01/output_RNO_3[3]\, 
        \discretedutycycle01/N_63\, 
        \discretedutycycle01/output_RNO_3[4]\, 
        \discretedutycycle01/N_64\, 
        \discretedutycycle01/output_RNO_3[5]\, 
        \discretedutycycle01/N_65\, 
        \discretedutycycle01/output_RNO_3[6]\, 
        \discretedutycycle01/N_66\, 
        \discretedutycycle01/output_RNO_2[7]\, 
        \discretedutycycle01/N_67\, 
        \discretedutycycle01/output_RNO[8]_net_1\, 
        \discretedutycycle01/N_68\, 
        \discretedutycycle01/output_RNO[9]_net_1\, 
        \discretedutycycle01/N_69\, 
        \discretedutycycle01/output_RNO[10]_net_1\, 
        \discretedutycycle01/N_70\, 
        \discretedutycycle01/output_RNO[11]_net_1\, 
        \discretedutycycle01/N_71\, 
        \discretedutycycle01/paralleldata[0]_net_1\, 
        \discretedutycycle01/paralleldata[1]_net_1\, 
        \discretedutycycle01/paralleldata[2]_net_1\, 
        \discretedutycycle01/paralleldata[3]_net_1\, 
        \discretedutycycle01/paralleldata[4]_net_1\, 
        \discretedutycycle01/paralleldata[5]_net_1\, 
        \discretedutycycle01/paralleldata[6]_net_1\, 
        \discretedutycycle01/paralleldata[7]_net_1\, 
        \discretedutycycle01/paralleldata[8]_net_1\, 
        \discretedutycycle01/paralleldata[9]_net_1\, 
        \discretedutycycle01/paralleldata[10]_net_1\, 
        \discretedutycycle01/paralleldata[11]_net_1\, 
        \discretedutycycle01/cellindex[1]_net_1\, 
        \discretedutycycle01/cellindex[0]_net_1\, 
        \discretedutycycle01/cellindex_1_sqmuxa_net_1\, 
        \discretedutycycle01/N_138_mux\, 
        \discretedutycycle01/N_136_mux\, 
        \discretedutycycle01/N_134_mux\, 
        \discretedutycycle01/N_132_mux\, 
        \discretedutycycle01/N_130_mux\, 
        \discretedutycycle01/N_128_mux\, 
        \discretedutycycle01/N_112\, 
        \discretedutycycle01/cellindex_n1\, 
        \discretedutycycle01/paralleldata_RNO[11]_net_1\, 
        \discretedutycycle01/paralleldata_RNO[9]_net_1\, 
        \discretedutycycle01/paralleldata_RNO_2[7]\, 
        \discretedutycycle01/paralleldata_RNO_3[5]\, 
        \discretedutycycle01/paralleldata_RNO_3[3]\, 
        \discretedutycycle01/paralleldata_RNO_3[1]\, 
        \A2DRead/N_1873\, \A2DRead/un60_dataregu1ch0_423_0\, 
        \A2DRead/un60_dataregu1ch0_166\, \A2DRead/N_1808\, 
        \A2DRead/N_1807\, \A2DRead/N_1809\, \A2DRead/N_1841\, 
        \A2DRead/N_1866\, 
        \A2DRead/un60_dataregu1ch0_423_0_tz_out\, 
        \A2DRead/N_1868\, \A2DRead/N_1798\, 
        \A2DRead/un60_dataregu1ch0_259_0\, \A2DRead/N_1833\, 
        \A2DRead/N_1872\, \A2DRead/un60_dataregu1ch0_118\, 
        \A2DRead/un60_dataregu1ch0_198_0\, 
        \A2DRead/un60_dataregu1ch0_408_0_tz_out\, 
        \A2DRead/N_1795\, \A2DRead/N_1797\, \A2DRead/N_1858\, 
        \A2DRead/un60_dataregu1ch1_358_0_tz_out\, 
        \A2DRead/N_1463\, \A2DRead/N_1438\, \A2DRead/N_1495\, 
        \A2DRead/ADD_11x11_fast_I72_Y_out\, 
        \A2DRead/ADD_11x11_fast_I72_un1_Y_0\, \A2DRead/N220\, 
        \A2DRead/ADD_11x11_fast_I72_Y_0\, 
        \A2DRead/ADD_11x11_fast_I4_P0N_out\, \A2DRead/N_1555\, 
        \A2DRead/N_1528\, \A2DRead/N_1585\, 
        \A2DRead/un60_dataregu1ch1_214_0_out\, \A2DRead/un60_N_9\, 
        \A2DRead/N_1414\, 
        \A2DRead/un60_dataregu1ch1_498_0_tz_out\, 
        \A2DRead/N_1519\, \A2DRead/N_1494\, \A2DRead/N_1551\, 
        \A2DRead/ADD_11x11_fast_I91_Y_0\, \A2DRead/N_2031\, 
        \A2DRead/N_2033\, \A2DRead/ADD_11x11_fast_I90_Y_0\, 
        \A2DRead/N_1685\, \A2DRead/N_1682\, 
        \A2DRead/ADD_11x11_fast_I89_Y_0\, \A2DRead/N_2015\, 
        \A2DRead/un60_dataregu1ch0_809_0\, \A2DRead/N_2017\, 
        \A2DRead/ADD_11x11_fast_I89_Y_0_0\, \A2DRead/N_1681\, 
        \A2DRead/N_1670\, \A2DRead/ADD_11x11_fast_I88_Y_0\, 
        \A2DRead/un60_dataregu1ch0_427\, 
        \A2DRead/un60_dataregu1ch0_713_0\, \A2DRead/N_2016\, 
        \A2DRead/ADD_11x11_fast_I69_Y_2\, \A2DRead/N214\, 
        \A2DRead/N221\, \A2DRead/ADD_11x11_fast_I69_Y_1\, 
        \A2DRead/I11_un1_Y\, \A2DRead/N183\, \A2DRead/I33_un1_Y\, 
        \A2DRead/ADD_11x11_fast_I87_Y_0\, \A2DRead/N_1641\, 
        \A2DRead/N_1614\, \A2DRead/ADD_11x11_fast_I69_Y_2_0\, 
        \A2DRead/N214_0\, \A2DRead/N221_0\, 
        \A2DRead/ADD_11x11_fast_I69_Y_1_0\, \A2DRead/N189\, 
        \A2DRead/N192\, \A2DRead/ADD_11x11_fast_I69_Y_0\, 
        \A2DRead/N180\, \A2DRead/ADD_11x11_fast_I70_Y_2\, 
        \A2DRead/N216\, \A2DRead/N223\, 
        \A2DRead/ADD_11x11_fast_I70_Y_1\, \A2DRead/N191\, 
        \A2DRead/N194\, \A2DRead/ADD_11x11_fast_I70_Y_0\, 
        \A2DRead/N_2029\, \A2DRead/N_2032\, \A2DRead/N177\, 
        \A2DRead/ADD_11x11_fast_I70_Y_2_0\, \A2DRead/I35_un1_Y\, 
        \A2DRead/ADD_11x11_fast_I70_Y_0_0\, \A2DRead/I55_un1_Y\, 
        \A2DRead/N177_0\, \A2DRead/ADD_11x11_fast_I71_Y_1\, 
        \A2DRead/I63_un1_Y\, \A2DRead/N218\, 
        \A2DRead/ADD_11x11_fast_I71_Y_0\, \A2DRead/N196\, 
        \A2DRead/N193\, \A2DRead/N192_0\, 
        \A2DRead/ADD_11x11_fast_I71_Y_0_0\, \A2DRead/N196_0\, 
        \A2DRead/N193_0\, \A2DRead/ADD_11x11_fast_I85_Y_0\, 
        \A2DRead/N_1558\, \A2DRead/N198\, \A2DRead/N195\, 
        \A2DRead/ADD_11x11_fast_I86_Y_0\, \A2DRead/N_1613\, 
        \A2DRead/N_1586\, \A2DRead/ADD_11x11_fast_I72_Y_1\, 
        \A2DRead/ADD_11x11_fast_I72_Y_0_0\, \A2DRead/I72_un1_Y\, 
        \A2DRead/N198_0\, \A2DRead/N195_0\, \A2DRead/N194_0\, 
        \A2DRead/ADD_11x11_fast_I86_Y_0_0\, \A2DRead/N_1960\, 
        \A2DRead/N_1933\, \A2DRead/ADD_11x11_fast_I87_Y_0_0\, 
        \A2DRead/N_1988\, \A2DRead/N_1961\, 
        \A2DRead/ADD_11x11_fast_I85_Y_0_0\, \A2DRead/N_1932\, 
        \A2DRead/N_1905\, \A2DRead/ADD_11x11_fast_I69_un1_Y_0\, 
        \A2DRead/N222\, \A2DRead/ADD_11x11_fast_I69_un1_Y_0_0\, 
        \A2DRead/N197\, \A2DRead/N201\, 
        \A2DRead/ADD_11x11_fast_I84_Y_0\, \A2DRead/N_1875\, 
        \A2DRead/un60_dataregu1ch0_499_0\, \A2DRead/N_1877\, 
        \A2DRead/N_1502\, \A2DRead/N_1529\, 
        \A2DRead/ADD_11x11_fast_I70_un1_Y_0\, \A2DRead/N224\, 
        \A2DRead/N216_0\, \A2DRead/N208\, \A2DRead/N205\, 
        \A2DRead/N201_0\, \A2DRead/N_2093\, \A2DRead/N207\, 
        \A2DRead/N203\, \A2DRead/ADD_11x11_fast_I83_Y_0_0\, 
        \A2DRead/un60_dataregu1ch0_217\, 
        \A2DRead/un60_dataregu1ch0_363_0\, \A2DRead/N_1876\, 
        \A2DRead/ADD_11x11_fast_I72_un1_Y_0_0\, \A2DRead/N_2114\, 
        \A2DRead/N228\, \A2DRead/ADD_11x11_fast_I82_Y_0\, 
        \A2DRead/N_1499\, \A2DRead/un60_dataregu1ch1_359_0\, 
        \A2DRead/N_1474\, \A2DRead/N154\, \A2DRead/N157\, 
        \A2DRead/ADD_11x11_fast_I2_P0N_0\, \A2DRead/N_1472\, 
        \A2DRead/N_1497\, \A2DRead/CO3_1\, \A2DRead/N_1389\, 
        \A2DRead/un60_dataregu1ch1_84_0\, \A2DRead/CO3_0\, 
        \A2DRead/un60_dataregu1ch1_29_3\, 
        \A2DRead/un60_dataregu1ch1_29_4\, \A2DRead/N_1367\, 
        \A2DRead/CO3_2\, \A2DRead/N_1738\, \A2DRead/CO3_0_0\, 
        \A2DRead/N_1764\, \A2DRead/un60_dataregu1ch0_29_3\, 
        \A2DRead/un60_dataregu1ch0_29_4\, \A2DRead/N_1714\, 
        \A2DRead/N_2030\, \A2DRead/N_2025\, \A2DRead/N_2024\, 
        \A2DRead/N_2026\, \A2DRead/N_1683\, \A2DRead/N_1678\, 
        \A2DRead/un60_dataregu1ch0_359_0\, \A2DRead/N_1817\, 
        \A2DRead/un60_dataregu1ch0_354_0\, \A2DRead/N_1844\, 
        \A2DRead/N_1525\, \A2DRead/N_1527\, \A2DRead/N_1581\, 
        \A2DRead/N_1583\, \A2DRead/N_1900\, \A2DRead/N_1902\, 
        \A2DRead/N_1609\, \A2DRead/N_1611\, \A2DRead/N_1816\, 
        \A2DRead/N_1818\, \A2DRead/un60_dataregu1ch0_363_0_tz_0\, 
        \A2DRead/un60_dataregu1ch0_172\, 
        \A2DRead/un60_dataregu1ch0_219_0\, \A2DRead/N_1788\, 
        \A2DRead/N_1790\, \A2DRead/N_1523\, \A2DRead/N_1496\, 
        \A2DRead/N_1898\, \A2DRead/N_1871\, \A2DRead/N_1607\, 
        \A2DRead/N_1580\, \A2DRead/N_1815\, \A2DRead/N_1842\, 
        \A2DRead/N_1423\, \A2DRead/un60_dataregu1ch1_189_0\, 
        \A2DRead/N_1431\, \A2DRead/DataInReg_329_e_0\, 
        \A2DRead/step[4]_net_1\, \A2DRead/DataInReg_16_6_e_0[11]\, 
        \A2DRead/step[2]_net_1\, \A2DRead/DataInReg_323_e_0\, 
        \A2DRead/N_2136\, \A2DRead/DataInReg_327_e_0\, 
        \A2DRead/DataInReg_16_6_e_0[9]\, 
        \A2DRead/DataInReg_326_e_0\, \A2DRead/N_2137\, 
        \A2DRead/DataInReg_324_e_0\, \A2DRead/DataInReg_330_e_0\, 
        \A2DRead/DataInReg_331_e_0\, \A2DRead/step[6]_net_1\, 
        \A2DRead/DataInReg_321_e_1\, \A2DRead/DataInReg_328_e_0\, 
        \A2DRead/DataInReg_325_e_0\, \A2DRead/DataInReg_320_e_1\, 
        \A2DRead/DataInReg_322_e_1\, \A2DRead/DataInReg_332_e_0\, 
        \A2DRead/N_1517\, \A2DRead/N_1515\, \A2DRead/N_1892\, 
        \A2DRead/N_1890\, \A2DRead/un60_dataregu1ch0_274_0\, 
        \A2DRead/N_1806\, \A2DRead/m50_0\, 
        \A2DRead/step[5]_net_1\, \A2DRead/step[1]_net_1\, 
        \A2DRead/AdCs1_2_0_0_0\, \A2DRead/step[8]_net_1\, 
        \A2DRead/N_62\, \A2DRead/N_1385\, \A2DRead/N_1387\, 
        \A2DRead/un60_dataregu1ch0_278_0_tz_0\, \A2DRead/N_1732\, 
        \A2DRead/N_1734\, \A2DRead/un60_dataregu1ch1_79_1\, 
        \A2DRead/un60_i1_mux\, \A2DRead/DataRegU1Ch1f[2]_net_1\, 
        \A2DRead/N_1360\, \A2DRead/steplde_i_a3_2\, 
        \A2DRead/steplde_i_a3_0_net_1\, \A2DRead/N_124\, 
        \A2DRead/N_111\, \A2DRead/N_1856\, \A2DRead/N_1717\, 
        \A2DRead/N_1730\, \A2DRead/DataRegU1Ch0o_1_sqmuxa_0_a3_0\, 
        \A2DRead/step[3]_net_1\, \A2DRead/m36_0\, \A2DRead/N_42\, 
        \A2DRead/N_1724\, \A2DRead/N_1726\, \A2DRead/un60_N_11\, 
        \A2DRead/DataRegU1Ch1h[2]_net_1\, 
        \A2DRead/un60_dataregu1ch1_54_0\, \A2DRead/N_1377\, 
        \A2DRead/DataRegU1Ch0b_1_sqmuxa_0_a2_0\, 
        \A2DRead/AdCs1_2_0_0_a3_1\, \A2DRead/m23_2\, 
        \A2DRead/N_4_0\, \A2DRead/m29_2\, \A2DRead/N_7_i\, 
        \A2DRead/N_1794\, \A2DRead/N_1796\, \A2DRead/N_1419\, 
        \A2DRead/N_1421\, \A2DRead/DataRegU1Ch1h[1]_net_1\, 
        \A2DRead/DataRegU1Ch1g[1]_net_1\, 
        \A2DRead/un60_dataregu1ch1_29_2\, 
        \A2DRead/DataRegU1Ch1m[1]_net_1\, 
        \A2DRead/DataRegU1Ch1n[1]_net_1\, 
        \A2DRead/un60_dataregu1ch1_29_1\, 
        \A2DRead/DataRegU1Ch1j[1]_net_1\, 
        \A2DRead/DataRegU1Ch1l[1]_net_1\, 
        \A2DRead/DataRegU1Ch1i[1]_net_1\, 
        \A2DRead/DataRegU1Ch1o[1]_net_1\, 
        \A2DRead/DataRegU1Ch1k[1]_net_1\, 
        \A2DRead/DataRegU1Ch0h[1]_net_1\, 
        \A2DRead/DataRegU1Ch0g[1]_net_1\, 
        \A2DRead/un60_dataregu1ch0_29_2\, 
        \A2DRead/DataRegU1Ch0m[1]_net_1\, 
        \A2DRead/DataRegU1Ch0n[1]_net_1\, 
        \A2DRead/un60_dataregu1ch0_29_1\, 
        \A2DRead/DataRegU1Ch0j[1]_net_1\, 
        \A2DRead/DataRegU1Ch0l[1]_net_1\, 
        \A2DRead/DataRegU1Ch0i[1]_net_1\, 
        \A2DRead/DataRegU1Ch0o[1]_net_1\, 
        \A2DRead/DataRegU1Ch0k[1]_net_1\, 
        \A2DRead/un60_dataregu1ch1_24_2\, 
        \A2DRead/DataRegU1Ch1b[1]_net_1\, 
        \A2DRead/DataRegU1Ch1p[1]_net_1\, 
        \A2DRead/DataRegU1Ch1e[1]_net_1\, 
        \A2DRead/un60_dataregu1ch1_24_1\, 
        \A2DRead/DataRegU1Ch1f[1]_net_1\, 
        \A2DRead/DataRegU1Ch1a[1]_net_1\, 
        \A2DRead/un60_dataregu1ch0_24_2\, 
        \A2DRead/DataRegU1Ch0p[1]_net_1\, 
        \A2DRead/DataRegU1Ch0f[1]_net_1\, 
        \A2DRead/DataRegU1Ch0a[1]_net_1\, 
        \A2DRead/un60_dataregu1ch0_24_1\, 
        \A2DRead/DataRegU1Ch0b[1]_net_1\, 
        \A2DRead/DataRegU1Ch0e[1]_net_1\, 
        \A2DRead/DataRegU1Ch0n_1_sqmuxa_0_a2_0_0\, 
        \A2DRead/step[7]_net_1\, \A2DRead/DataRegU1Ch1i[2]_net_1\, 
        \A2DRead/DataRegU1Ch1g[2]_net_1\, \A2DRead/N157_0\, 
        \A2DRead/N_1821\, \A2DRead/N_1848\, \A2DRead/I50_un1_Y\, 
        \A2DRead/N203_0\, \A2DRead/N163\, \A2DRead/N_1530\, 
        \A2DRead/N_1557\, \A2DRead/N160\, \A2DRead/N163_0\, 
        \A2DRead/un60_dataregu1ch1_153_0_tz\, 
        \A2DRead/un60_dataregu1ch1_52\, \A2DRead/N_1413\, 
        \A2DRead/un60_dataregu1ch1_88_0\, 
        \A2DRead/un60_dataregu1ch1_428_0_tz\, 
        \A2DRead/un60_dataregu1ch1_209\, 
        \A2DRead/un60_dataregu1ch1_353_0\, \A2DRead/N_1675\, 
        \A2DRead/N_1658\, \A2DRead/N_1671\, \A2DRead/N_1656\, 
        \A2DRead/N_1648\, \A2DRead/N_1644\, \A2DRead/N_1646\, 
        \A2DRead/N_1663\, \A2DRead/N_1655\, \A2DRead/N_1657\, 
        \A2DRead/N_1632\, \A2DRead/N_1659\, \A2DRead/N_1651\, 
        \A2DRead/N_1649\, \A2DRead/N_1626\, \A2DRead/N_1645\, 
        \A2DRead/N_1643\, \A2DRead/N_1647\, \A2DRead/N_1624\, 
        \A2DRead/N_1620\, \A2DRead/N_1622\, 
        \A2DRead/DataRegU1Ch1j[12]_net_1\, 
        \A2DRead/DataRegU1Ch1l[12]_net_1\, 
        \A2DRead/DataRegU1Ch1k[12]_net_1\, 
        \A2DRead/DataRegU1Ch1m[12]_net_1\, 
        \A2DRead/DataRegU1Ch1o[12]_net_1\, 
        \A2DRead/DataRegU1Ch1n[12]_net_1\, 
        \A2DRead/DataRegU1Ch1b[12]_net_1\, 
        \A2DRead/DataRegU1Ch1p[12]_net_1\, 
        \A2DRead/DataRegU1Ch1a[12]_net_1\, 
        \A2DRead/DataRegU1Ch1c[12]_net_1\, 
        \A2DRead/DataRegU1Ch1e[12]_net_1\, 
        \A2DRead/DataRegU1Ch1d[12]_net_1\, \A2DRead/N_1623\, 
        \A2DRead/DataRegU1Ch1g[11]_net_1\, 
        \A2DRead/DataRegU1Ch1i[11]_net_1\, 
        \A2DRead/DataRegU1Ch1h[11]_net_1\, \A2DRead/N_1765\, 
        \A2DRead/N_1706\, \A2DRead/N_1704_1\, \A2DRead/N_1918\, 
        \A2DRead/N_1887\, \A2DRead/N_1883\, \A2DRead/N_1885\, 
        \A2DRead/N_1910\, \A2DRead/DataRegU1Ch0m[9]_net_1\, 
        \A2DRead/DataRegU1Ch0o[9]_net_1\, 
        \A2DRead/DataRegU1Ch0n[9]_net_1\, \A2DRead/N_1760\, 
        \A2DRead/N_1762\, \A2DRead/N_1739\, \A2DRead/N_1736\, 
        \A2DRead/N_1728\, \A2DRead/N_1707\, 
        \A2DRead/DataRegU1Ch0f[2]_net_1\, \A2DRead/N_1705\, 
        \A2DRead/N_1713\, \A2DRead/N_1709\, \A2DRead/N_1711\, 
        \A2DRead/N_1710\, \A2DRead/N_47\, \A2DRead/N_68\, 
        \A2DRead/N_105\, \A2DRead/N_49\, \A2DRead/N_63\, 
        \A2DRead/N_51\, \A2DRead/N_61\, \A2DRead/N_53\, 
        \A2DRead/step_c1\, \A2DRead/N_55\, \A2DRead/N_54\, 
        \A2DRead/DataRegU1Ch0o_1_sqmuxa\, \A2DRead/N_119\, 
        \A2DRead/N_128\, \A2DRead/DataRegU1Ch0p_1_sqmuxa\, 
        \A2DRead/N_118\, \A2DRead/DataRegU1Ch0n_1_sqmuxa\, 
        \A2DRead/I71_un1_Y\, \A2DRead/N226\, \A2DRead/N208_0\, 
        \A2DRead/N218_0\, \A2DRead/N271\, \A2DRead/I57_un1_Y\, 
        \A2DRead/N_2027\, \A2DRead/un60_dataregu1ch0[13]\, 
        \A2DRead/un60_dataregu1ch0[5]\, 
        \A2DRead/un60_dataregu1ch0[6]\, \A2DRead/N231\, 
        \A2DRead/N_1363\, \A2DRead/N_1357_1\, \A2DRead/N_1383\, 
        \A2DRead/N_1366\, \A2DRead/N_1362\, \A2DRead/N_1364\, 
        \A2DRead/N_1371\, \A2DRead/DataRegU1Ch1c[2]_net_1\, 
        \A2DRead/DataRegU1Ch1e[2]_net_1\, 
        \A2DRead/DataRegU1Ch1d[2]_net_1\, \A2DRead/N_1373\, 
        \A2DRead/DataRegU1Ch1b[2]_net_1\, 
        \A2DRead/DataRegU1Ch1p[2]_net_1\, 
        \A2DRead/DataRegU1Ch1a[2]_net_1\, \A2DRead/N_1375\, 
        \A2DRead/DataRegU1Ch1m[2]_net_1\, 
        \A2DRead/DataRegU1Ch1o[2]_net_1\, 
        \A2DRead/DataRegU1Ch1n[2]_net_1\, 
        \A2DRead/DataRegU1Ch1j[2]_net_1\, 
        \A2DRead/DataRegU1Ch1l[2]_net_1\, 
        \A2DRead/DataRegU1Ch1k[2]_net_1\, \A2DRead/N_1381\, 
        \A2DRead/N_1358\, \A2DRead/N_1368\, \A2DRead/N_1370\, 
        \A2DRead/N_1393\, \A2DRead/DataRegU1Ch1c[3]_net_1\, 
        \A2DRead/DataRegU1Ch1e[3]_net_1\, 
        \A2DRead/DataRegU1Ch1d[3]_net_1\, \A2DRead/N_1395\, 
        \A2DRead/DataRegU1Ch1b[3]_net_1\, 
        \A2DRead/DataRegU1Ch1p[3]_net_1\, 
        \A2DRead/DataRegU1Ch1a[3]_net_1\, \A2DRead/N_1397\, 
        \A2DRead/DataRegU1Ch1m[3]_net_1\, 
        \A2DRead/DataRegU1Ch1o[3]_net_1\, 
        \A2DRead/DataRegU1Ch1n[3]_net_1\, \A2DRead/N_1399\, 
        \A2DRead/DataRegU1Ch1j[3]_net_1\, 
        \A2DRead/DataRegU1Ch1l[3]_net_1\, 
        \A2DRead/DataRegU1Ch1k[3]_net_1\, \A2DRead/N_1401\, 
        \A2DRead/DataRegU1Ch1g[3]_net_1\, 
        \A2DRead/DataRegU1Ch1i[3]_net_1\, 
        \A2DRead/DataRegU1Ch1h[3]_net_1\, \A2DRead/N_1403\, 
        \A2DRead/N_1374\, \A2DRead/DataRegU1Ch1f[3]_net_1\, 
        \A2DRead/N_1372\, \A2DRead/N_1405\, \A2DRead/N_1380\, 
        \A2DRead/N_1376\, \A2DRead/N_1378\, \A2DRead/N_1407\, 
        \A2DRead/N_1409\, \A2DRead/N_1382\, \A2DRead/N_1411\, 
        \A2DRead/N_1386\, \A2DRead/N_1384\, \A2DRead/un60_i4_mux\, 
        \A2DRead/N_1415\, \A2DRead/N_1390\, \A2DRead/N_1417\, 
        \A2DRead/N_1392\, \A2DRead/DataRegU1Ch1c[4]_net_1\, 
        \A2DRead/DataRegU1Ch1e[4]_net_1\, 
        \A2DRead/DataRegU1Ch1d[4]_net_1\, 
        \A2DRead/DataRegU1Ch1b[4]_net_1\, 
        \A2DRead/DataRegU1Ch1p[4]_net_1\, 
        \A2DRead/DataRegU1Ch1a[4]_net_1\, 
        \A2DRead/DataRegU1Ch1m[4]_net_1\, 
        \A2DRead/DataRegU1Ch1o[4]_net_1\, 
        \A2DRead/DataRegU1Ch1n[4]_net_1\, \A2DRead/N_1425\, 
        \A2DRead/DataRegU1Ch1j[4]_net_1\, 
        \A2DRead/DataRegU1Ch1l[4]_net_1\, 
        \A2DRead/DataRegU1Ch1k[4]_net_1\, \A2DRead/N_1427\, 
        \A2DRead/DataRegU1Ch1g[4]_net_1\, 
        \A2DRead/DataRegU1Ch1i[4]_net_1\, 
        \A2DRead/DataRegU1Ch1h[4]_net_1\, \A2DRead/N_1429\, 
        \A2DRead/N_1396\, \A2DRead/DataRegU1Ch1f[4]_net_1\, 
        \A2DRead/N_1394\, \A2DRead/N_1402\, \A2DRead/N_1398\, 
        \A2DRead/N_1400\, \A2DRead/N_1435\, \A2DRead/N_1404\, 
        \A2DRead/N_1437\, \A2DRead/N_1408\, \A2DRead/N_1406\, 
        \A2DRead/N_1439\, \A2DRead/N_1410\, \A2DRead/N_1441\, 
        \A2DRead/N_1412\, \A2DRead/N_1443\, 
        \A2DRead/un60_i1_mux_0\, \A2DRead/N_1445\, 
        \A2DRead/N_1418\, \A2DRead/N_1447\, 
        \A2DRead/DataRegU1Ch1c[5]_net_1\, 
        \A2DRead/DataRegU1Ch1e[5]_net_1\, 
        \A2DRead/DataRegU1Ch1d[5]_net_1\, \A2DRead/N_1449\, 
        \A2DRead/DataRegU1Ch1b[5]_net_1\, 
        \A2DRead/DataRegU1Ch1p[5]_net_1\, 
        \A2DRead/DataRegU1Ch1a[5]_net_1\, \A2DRead/N_1451\, 
        \A2DRead/DataRegU1Ch1m[5]_net_1\, 
        \A2DRead/DataRegU1Ch1o[5]_net_1\, 
        \A2DRead/DataRegU1Ch1n[5]_net_1\, \A2DRead/N_1453\, 
        \A2DRead/DataRegU1Ch1j[5]_net_1\, 
        \A2DRead/DataRegU1Ch1l[5]_net_1\, 
        \A2DRead/DataRegU1Ch1k[5]_net_1\, \A2DRead/N_1455\, 
        \A2DRead/DataRegU1Ch1g[5]_net_1\, 
        \A2DRead/DataRegU1Ch1i[5]_net_1\, 
        \A2DRead/DataRegU1Ch1h[5]_net_1\, \A2DRead/N_1457\, 
        \A2DRead/N_1422\, \A2DRead/DataRegU1Ch1f[5]_net_1\, 
        \A2DRead/N_1420\, \A2DRead/N_1459\, \A2DRead/N_1428\, 
        \A2DRead/N_1424\, \A2DRead/N_1426\, \A2DRead/N_1461\, 
        \A2DRead/N_1430\, \A2DRead/N_1465\, \A2DRead/N_1434\, 
        \A2DRead/N_1432\, \A2DRead/N_1467\, \A2DRead/N_1436\, 
        \A2DRead/N_1469\, \A2DRead/N_1471\, 
        \A2DRead/un60_i3_mux_1\, \A2DRead/un60_i3_mux\, 
        \A2DRead/N_1473\, \A2DRead/N_1444\, \A2DRead/N_1475\, 
        \A2DRead/DataRegU1Ch1c[6]_net_1\, 
        \A2DRead/DataRegU1Ch1e[6]_net_1\, 
        \A2DRead/DataRegU1Ch1d[6]_net_1\, \A2DRead/N_1477\, 
        \A2DRead/DataRegU1Ch1b[6]_net_1\, 
        \A2DRead/DataRegU1Ch1p[6]_net_1\, 
        \A2DRead/DataRegU1Ch1a[6]_net_1\, \A2DRead/N_1479\, 
        \A2DRead/DataRegU1Ch1m[6]_net_1\, 
        \A2DRead/DataRegU1Ch1o[6]_net_1\, 
        \A2DRead/DataRegU1Ch1n[6]_net_1\, \A2DRead/N_1481\, 
        \A2DRead/DataRegU1Ch1j[6]_net_1\, 
        \A2DRead/DataRegU1Ch1l[6]_net_1\, 
        \A2DRead/DataRegU1Ch1k[6]_net_1\, \A2DRead/N_1483\, 
        \A2DRead/DataRegU1Ch1g[6]_net_1\, 
        \A2DRead/DataRegU1Ch1i[6]_net_1\, 
        \A2DRead/DataRegU1Ch1h[6]_net_1\, \A2DRead/N_1485\, 
        \A2DRead/N_1450\, \A2DRead/DataRegU1Ch1f[6]_net_1\, 
        \A2DRead/N_1448\, \A2DRead/N_1487\, \A2DRead/N_1456\, 
        \A2DRead/N_1452\, \A2DRead/N_1454\, \A2DRead/N_1489\, 
        \A2DRead/N_1491\, \A2DRead/N_1458\, \A2DRead/N_1493\, 
        \A2DRead/N_1462\, \A2DRead/N_1460\, \A2DRead/N_1464\, 
        \A2DRead/N_1466\, \A2DRead/N_1468\, \A2DRead/N_1470\, 
        \A2DRead/N_1503\, \A2DRead/DataRegU1Ch1c[7]_net_1\, 
        \A2DRead/DataRegU1Ch1e[7]_net_1\, 
        \A2DRead/DataRegU1Ch1d[7]_net_1\, \A2DRead/N_1505\, 
        \A2DRead/DataRegU1Ch1b[7]_net_1\, 
        \A2DRead/DataRegU1Ch1p[7]_net_1\, 
        \A2DRead/DataRegU1Ch1a[7]_net_1\, \A2DRead/N_1507\, 
        \A2DRead/DataRegU1Ch1m[7]_net_1\, 
        \A2DRead/DataRegU1Ch1o[7]_net_1\, 
        \A2DRead/DataRegU1Ch1n[7]_net_1\, \A2DRead/N_1509\, 
        \A2DRead/DataRegU1Ch1j[7]_net_1\, 
        \A2DRead/DataRegU1Ch1l[7]_net_1\, 
        \A2DRead/DataRegU1Ch1k[7]_net_1\, \A2DRead/N_1511\, 
        \A2DRead/DataRegU1Ch1g[7]_net_1\, 
        \A2DRead/DataRegU1Ch1i[7]_net_1\, 
        \A2DRead/DataRegU1Ch1h[7]_net_1\, \A2DRead/N_1513\, 
        \A2DRead/N_1478\, \A2DRead/DataRegU1Ch1f[7]_net_1\, 
        \A2DRead/N_1476\, \A2DRead/N_1484\, \A2DRead/N_1480\, 
        \A2DRead/N_1482\, \A2DRead/N_1486\, \A2DRead/N_1521\, 
        \A2DRead/N_1490\, \A2DRead/N_1488\, \A2DRead/N_1492\, 
        \A2DRead/N_1498\, \A2DRead/N_1500\, \A2DRead/N_1531\, 
        \A2DRead/DataRegU1Ch1c[8]_net_1\, 
        \A2DRead/DataRegU1Ch1e[8]_net_1\, 
        \A2DRead/DataRegU1Ch1d[8]_net_1\, \A2DRead/N_1533\, 
        \A2DRead/DataRegU1Ch1b[8]_net_1\, 
        \A2DRead/DataRegU1Ch1p[8]_net_1\, 
        \A2DRead/DataRegU1Ch1a[8]_net_1\, \A2DRead/N_1535\, 
        \A2DRead/DataRegU1Ch1m[8]_net_1\, 
        \A2DRead/DataRegU1Ch1o[8]_net_1\, 
        \A2DRead/DataRegU1Ch1n[8]_net_1\, \A2DRead/N_1537\, 
        \A2DRead/DataRegU1Ch1j[8]_net_1\, 
        \A2DRead/DataRegU1Ch1l[8]_net_1\, 
        \A2DRead/DataRegU1Ch1k[8]_net_1\, \A2DRead/N_1539\, 
        \A2DRead/DataRegU1Ch1g[8]_net_1\, 
        \A2DRead/DataRegU1Ch1i[8]_net_1\, 
        \A2DRead/DataRegU1Ch1h[8]_net_1\, \A2DRead/N_1541\, 
        \A2DRead/N_1506\, \A2DRead/DataRegU1Ch1f[8]_net_1\, 
        \A2DRead/N_1504\, \A2DRead/N_1543\, \A2DRead/N_1512\, 
        \A2DRead/N_1508\, \A2DRead/N_1510\, \A2DRead/N_1545\, 
        \A2DRead/N_1547\, \A2DRead/N_1514\, \A2DRead/N_1549\, 
        \A2DRead/N_1518\, \A2DRead/N_1516\, \A2DRead/N_1520\, 
        \A2DRead/N_1553\, \A2DRead/N_1522\, \A2DRead/N_1524\, 
        \A2DRead/N_1526\, \A2DRead/N_1559\, 
        \A2DRead/DataRegU1Ch1c[9]_net_1\, 
        \A2DRead/DataRegU1Ch1e[9]_net_1\, 
        \A2DRead/DataRegU1Ch1d[9]_net_1\, \A2DRead/N_1561\, 
        \A2DRead/DataRegU1Ch1b[9]_net_1\, 
        \A2DRead/DataRegU1Ch1p[9]_net_1\, 
        \A2DRead/DataRegU1Ch1a[9]_net_1\, \A2DRead/N_1563\, 
        \A2DRead/DataRegU1Ch1m[9]_net_1\, 
        \A2DRead/DataRegU1Ch1o[9]_net_1\, 
        \A2DRead/DataRegU1Ch1n[9]_net_1\, \A2DRead/N_1565\, 
        \A2DRead/DataRegU1Ch1j[9]_net_1\, 
        \A2DRead/DataRegU1Ch1l[9]_net_1\, 
        \A2DRead/DataRegU1Ch1k[9]_net_1\, \A2DRead/N_1567\, 
        \A2DRead/DataRegU1Ch1g[9]_net_1\, 
        \A2DRead/DataRegU1Ch1i[9]_net_1\, 
        \A2DRead/DataRegU1Ch1h[9]_net_1\, \A2DRead/N_1569\, 
        \A2DRead/N_1534\, \A2DRead/DataRegU1Ch1f[9]_net_1\, 
        \A2DRead/N_1532\, \A2DRead/N_1571\, \A2DRead/N_1540\, 
        \A2DRead/N_1536\, \A2DRead/N_1538\, \A2DRead/N_1573\, 
        \A2DRead/N_1575\, \A2DRead/N_1542\, \A2DRead/N_1577\, 
        \A2DRead/N_1546\, \A2DRead/N_1544\, \A2DRead/N_1579\, 
        \A2DRead/N_1548\, \A2DRead/N_1550\, \A2DRead/N_1552\, 
        \A2DRead/N_1554\, \A2DRead/N_1556\, \A2DRead/N_1587\, 
        \A2DRead/DataRegU1Ch1c[10]_net_1\, 
        \A2DRead/DataRegU1Ch1e[10]_net_1\, 
        \A2DRead/DataRegU1Ch1d[10]_net_1\, \A2DRead/N_1589\, 
        \A2DRead/DataRegU1Ch1b[10]_net_1\, 
        \A2DRead/DataRegU1Ch1p[10]_net_1\, 
        \A2DRead/DataRegU1Ch1a[10]_net_1\, \A2DRead/N_1591\, 
        \A2DRead/DataRegU1Ch1m[10]_net_1\, 
        \A2DRead/DataRegU1Ch1o[10]_net_1\, 
        \A2DRead/DataRegU1Ch1n[10]_net_1\, \A2DRead/N_1593\, 
        \A2DRead/DataRegU1Ch1j[10]_net_1\, 
        \A2DRead/DataRegU1Ch1l[10]_net_1\, 
        \A2DRead/DataRegU1Ch1k[10]_net_1\, \A2DRead/N_1595\, 
        \A2DRead/DataRegU1Ch1g[10]_net_1\, 
        \A2DRead/DataRegU1Ch1i[10]_net_1\, 
        \A2DRead/DataRegU1Ch1h[10]_net_1\, \A2DRead/N_1597\, 
        \A2DRead/N_1562\, \A2DRead/DataRegU1Ch1f[10]_net_1\, 
        \A2DRead/N_1560\, \A2DRead/N_1599\, \A2DRead/N_1568\, 
        \A2DRead/N_1564\, \A2DRead/N_1566\, \A2DRead/N_1601\, 
        \A2DRead/N_1603\, \A2DRead/N_1570\, \A2DRead/N_1605\, 
        \A2DRead/N_1574\, \A2DRead/N_1572\, \A2DRead/N_1576\, 
        \A2DRead/N_1578\, \A2DRead/N_1582\, \A2DRead/N_1584\, 
        \A2DRead/N_1615\, \A2DRead/DataRegU1Ch1c[11]_net_1\, 
        \A2DRead/DataRegU1Ch1e[11]_net_1\, 
        \A2DRead/DataRegU1Ch1d[11]_net_1\, \A2DRead/N_1617\, 
        \A2DRead/DataRegU1Ch1b[11]_net_1\, 
        \A2DRead/DataRegU1Ch1p[11]_net_1\, 
        \A2DRead/DataRegU1Ch1a[11]_net_1\, \A2DRead/N_1619\, 
        \A2DRead/DataRegU1Ch1m[11]_net_1\, 
        \A2DRead/DataRegU1Ch1o[11]_net_1\, 
        \A2DRead/DataRegU1Ch1n[11]_net_1\, \A2DRead/N_1621\, 
        \A2DRead/DataRegU1Ch1j[11]_net_1\, 
        \A2DRead/DataRegU1Ch1l[11]_net_1\, 
        \A2DRead/DataRegU1Ch1k[11]_net_1\, \A2DRead/N_1625\, 
        \A2DRead/N_1590\, \A2DRead/DataRegU1Ch1f[11]_net_1\, 
        \A2DRead/N_1588\, \A2DRead/N_1627\, \A2DRead/N_1596\, 
        \A2DRead/N_1592\, \A2DRead/N_1594\, \A2DRead/N_1629\, 
        \A2DRead/N_1631\, \A2DRead/N_1598\, \A2DRead/N_1633\, 
        \A2DRead/N_1602\, \A2DRead/N_1600\, \A2DRead/N_1635\, 
        \A2DRead/N_1604\, \A2DRead/N_1637\, \A2DRead/N_1606\, 
        \A2DRead/N_1639\, \A2DRead/N_1608\, \A2DRead/N_1610\, 
        \A2DRead/N_1612\, \A2DRead/DataRegU1Ch1g[12]_net_1\, 
        \A2DRead/DataRegU1Ch1i[12]_net_1\, 
        \A2DRead/DataRegU1Ch1h[12]_net_1\, \A2DRead/N_1653\, 
        \A2DRead/N_1618\, \A2DRead/DataRegU1Ch1f[12]_net_1\, 
        \A2DRead/N_1616\, \A2DRead/N_1661\, \A2DRead/N_1630\, 
        \A2DRead/N_1628\, \A2DRead/N_1665\, \A2DRead/N_1634\, 
        \A2DRead/N_1667\, \A2DRead/N_1636\, \A2DRead/N_1638\, 
        \A2DRead/N_1669\, \A2DRead/N_1640\, \A2DRead/N_1673\, 
        \A2DRead/N_1652\, \A2DRead/N_1650\, \A2DRead/N_1654\, 
        \A2DRead/N_1677\, \A2DRead/N_1660\, \A2DRead/N_1662\, 
        \A2DRead/N_1679\, \A2DRead/N_1666\, \A2DRead/N_1664\, 
        \A2DRead/N_1668\, \A2DRead/N_1718\, 
        \A2DRead/DataRegU1Ch0c[2]_net_1\, 
        \A2DRead/DataRegU1Ch0e[2]_net_1\, 
        \A2DRead/DataRegU1Ch0d[2]_net_1\, \A2DRead/N_1720\, 
        \A2DRead/DataRegU1Ch0b[2]_net_1\, 
        \A2DRead/DataRegU1Ch0p[2]_net_1\, 
        \A2DRead/DataRegU1Ch0a[2]_net_1\, \A2DRead/N_1722\, 
        \A2DRead/DataRegU1Ch0m[2]_net_1\, 
        \A2DRead/DataRegU1Ch0o[2]_net_1\, 
        \A2DRead/DataRegU1Ch0n[2]_net_1\, 
        \A2DRead/DataRegU1Ch0j[2]_net_1\, 
        \A2DRead/DataRegU1Ch0l[2]_net_1\, 
        \A2DRead/DataRegU1Ch0k[2]_net_1\, 
        \A2DRead/DataRegU1Ch0g[2]_net_1\, 
        \A2DRead/DataRegU1Ch0i[2]_net_1\, 
        \A2DRead/DataRegU1Ch0h[2]_net_1\, \A2DRead/N_1715\, 
        \A2DRead/N_1740\, \A2DRead/DataRegU1Ch0c[3]_net_1\, 
        \A2DRead/DataRegU1Ch0e[3]_net_1\, 
        \A2DRead/DataRegU1Ch0d[3]_net_1\, \A2DRead/N_1742\, 
        \A2DRead/DataRegU1Ch0b[3]_net_1\, 
        \A2DRead/DataRegU1Ch0p[3]_net_1\, 
        \A2DRead/DataRegU1Ch0a[3]_net_1\, \A2DRead/N_1744\, 
        \A2DRead/DataRegU1Ch0m[3]_net_1\, 
        \A2DRead/DataRegU1Ch0o[3]_net_1\, 
        \A2DRead/DataRegU1Ch0n[3]_net_1\, \A2DRead/N_1746\, 
        \A2DRead/DataRegU1Ch0j[3]_net_1\, 
        \A2DRead/DataRegU1Ch0l[3]_net_1\, 
        \A2DRead/DataRegU1Ch0k[3]_net_1\, \A2DRead/N_1748\, 
        \A2DRead/DataRegU1Ch0g[3]_net_1\, 
        \A2DRead/DataRegU1Ch0i[3]_net_1\, 
        \A2DRead/DataRegU1Ch0h[3]_net_1\, \A2DRead/N_1750\, 
        \A2DRead/N_1721\, \A2DRead/DataRegU1Ch0f[3]_net_1\, 
        \A2DRead/N_1719\, \A2DRead/N_1752\, \A2DRead/N_1727\, 
        \A2DRead/N_1723\, \A2DRead/N_1725\, \A2DRead/N_1754\, 
        \A2DRead/N_1756\, \A2DRead/N_1729\, \A2DRead/N_1758\, 
        \A2DRead/N_1733\, \A2DRead/N_1731\, \A2DRead/N_1735\, 
        \A2DRead/N_1737\, \A2DRead/N_1766\, 
        \A2DRead/DataRegU1Ch0c[4]_net_1\, 
        \A2DRead/DataRegU1Ch0e[4]_net_1\, 
        \A2DRead/DataRegU1Ch0d[4]_net_1\, \A2DRead/N_1768\, 
        \A2DRead/DataRegU1Ch0b[4]_net_1\, 
        \A2DRead/DataRegU1Ch0p[4]_net_1\, 
        \A2DRead/DataRegU1Ch0a[4]_net_1\, \A2DRead/N_1770\, 
        \A2DRead/DataRegU1Ch0m[4]_net_1\, 
        \A2DRead/DataRegU1Ch0o[4]_net_1\, 
        \A2DRead/DataRegU1Ch0n[4]_net_1\, \A2DRead/N_1772\, 
        \A2DRead/DataRegU1Ch0j[4]_net_1\, 
        \A2DRead/DataRegU1Ch0l[4]_net_1\, 
        \A2DRead/DataRegU1Ch0k[4]_net_1\, \A2DRead/N_1774\, 
        \A2DRead/DataRegU1Ch0g[4]_net_1\, 
        \A2DRead/DataRegU1Ch0i[4]_net_1\, 
        \A2DRead/DataRegU1Ch0h[4]_net_1\, \A2DRead/N_1776\, 
        \A2DRead/N_1743\, \A2DRead/DataRegU1Ch0f[4]_net_1\, 
        \A2DRead/N_1741\, \A2DRead/N_1778\, \A2DRead/N_1749\, 
        \A2DRead/N_1745\, \A2DRead/N_1747\, \A2DRead/N_1780\, 
        \A2DRead/N_1782\, \A2DRead/N_1751\, \A2DRead/N_1784\, 
        \A2DRead/N_1755\, \A2DRead/N_1753\, \A2DRead/N_1786\, 
        \A2DRead/N_1757\, \A2DRead/N_1759\, \A2DRead/N_1761\, 
        \A2DRead/N_1763\, \A2DRead/DataRegU1Ch0c[5]_net_1\, 
        \A2DRead/DataRegU1Ch0e[5]_net_1\, 
        \A2DRead/DataRegU1Ch0d[5]_net_1\, 
        \A2DRead/DataRegU1Ch0b[5]_net_1\, 
        \A2DRead/DataRegU1Ch0p[5]_net_1\, 
        \A2DRead/DataRegU1Ch0a[5]_net_1\, 
        \A2DRead/DataRegU1Ch0m[5]_net_1\, 
        \A2DRead/DataRegU1Ch0o[5]_net_1\, 
        \A2DRead/DataRegU1Ch0n[5]_net_1\, \A2DRead/N_1800\, 
        \A2DRead/DataRegU1Ch0j[5]_net_1\, 
        \A2DRead/DataRegU1Ch0l[5]_net_1\, 
        \A2DRead/DataRegU1Ch0k[5]_net_1\, \A2DRead/N_1802\, 
        \A2DRead/DataRegU1Ch0g[5]_net_1\, 
        \A2DRead/DataRegU1Ch0i[5]_net_1\, 
        \A2DRead/DataRegU1Ch0h[5]_net_1\, \A2DRead/N_1804\, 
        \A2DRead/N_1769\, \A2DRead/DataRegU1Ch0f[5]_net_1\, 
        \A2DRead/N_1767\, \A2DRead/N_1775\, \A2DRead/N_1771\, 
        \A2DRead/N_1773\, \A2DRead/N_1810\, \A2DRead/N_1777\, 
        \A2DRead/N_1812\, \A2DRead/N_1781\, \A2DRead/N_1779\, 
        \A2DRead/N_1814\, \A2DRead/N_1785\, \A2DRead/N_1787\, 
        \A2DRead/N_1789\, \A2DRead/N_1820\, \A2DRead/N_1791\, 
        \A2DRead/N_1822\, \A2DRead/DataRegU1Ch0c[6]_net_1\, 
        \A2DRead/DataRegU1Ch0e[6]_net_1\, 
        \A2DRead/DataRegU1Ch0d[6]_net_1\, \A2DRead/N_1824\, 
        \A2DRead/DataRegU1Ch0b[6]_net_1\, 
        \A2DRead/DataRegU1Ch0p[6]_net_1\, 
        \A2DRead/DataRegU1Ch0a[6]_net_1\, \A2DRead/N_1826\, 
        \A2DRead/DataRegU1Ch0m[6]_net_1\, 
        \A2DRead/DataRegU1Ch0o[6]_net_1\, 
        \A2DRead/DataRegU1Ch0n[6]_net_1\, \A2DRead/N_1828\, 
        \A2DRead/DataRegU1Ch0j[6]_net_1\, 
        \A2DRead/DataRegU1Ch0l[6]_net_1\, 
        \A2DRead/DataRegU1Ch0k[6]_net_1\, \A2DRead/N_1830\, 
        \A2DRead/DataRegU1Ch0g[6]_net_1\, 
        \A2DRead/DataRegU1Ch0i[6]_net_1\, 
        \A2DRead/DataRegU1Ch0h[6]_net_1\, \A2DRead/N_1832\, 
        \A2DRead/DataRegU1Ch0f[6]_net_1\, \A2DRead/N_1834\, 
        \A2DRead/N_1803\, \A2DRead/N_1799\, \A2DRead/N_1801\, 
        \A2DRead/N_1836\, \A2DRead/N_1838\, \A2DRead/N_1805\, 
        \A2DRead/N_1840\, \A2DRead/N_1811\, \A2DRead/N_1813\, 
        \A2DRead/N_1819\, \A2DRead/N_1850\, 
        \A2DRead/DataRegU1Ch0c[7]_net_1\, 
        \A2DRead/DataRegU1Ch0e[7]_net_1\, 
        \A2DRead/DataRegU1Ch0d[7]_net_1\, \A2DRead/N_1852\, 
        \A2DRead/DataRegU1Ch0b[7]_net_1\, 
        \A2DRead/DataRegU1Ch0p[7]_net_1\, 
        \A2DRead/DataRegU1Ch0a[7]_net_1\, \A2DRead/N_1854\, 
        \A2DRead/DataRegU1Ch0m[7]_net_1\, 
        \A2DRead/DataRegU1Ch0o[7]_net_1\, 
        \A2DRead/DataRegU1Ch0n[7]_net_1\, 
        \A2DRead/DataRegU1Ch0j[7]_net_1\, 
        \A2DRead/DataRegU1Ch0l[7]_net_1\, 
        \A2DRead/DataRegU1Ch0k[7]_net_1\, 
        \A2DRead/DataRegU1Ch0g[7]_net_1\, 
        \A2DRead/DataRegU1Ch0i[7]_net_1\, 
        \A2DRead/DataRegU1Ch0h[7]_net_1\, \A2DRead/N_1860\, 
        \A2DRead/N_1825\, \A2DRead/DataRegU1Ch0f[7]_net_1\, 
        \A2DRead/N_1823\, \A2DRead/N_1862\, \A2DRead/N_1831\, 
        \A2DRead/N_1827\, \A2DRead/N_1829\, \A2DRead/N_1864\, 
        \A2DRead/N_1837\, \A2DRead/N_1835\, \A2DRead/N_1870\, 
        \A2DRead/N_1839\, \A2DRead/N_1874\, \A2DRead/N_1843\, 
        \A2DRead/N_1845\, \A2DRead/N_1847\, \A2DRead/N_1878\, 
        \A2DRead/DataRegU1Ch0c[8]_net_1\, 
        \A2DRead/DataRegU1Ch0e[8]_net_1\, 
        \A2DRead/DataRegU1Ch0d[8]_net_1\, \A2DRead/N_1880\, 
        \A2DRead/DataRegU1Ch0b[8]_net_1\, 
        \A2DRead/DataRegU1Ch0p[8]_net_1\, 
        \A2DRead/DataRegU1Ch0a[8]_net_1\, \A2DRead/N_1882\, 
        \A2DRead/DataRegU1Ch0m[8]_net_1\, 
        \A2DRead/DataRegU1Ch0o[8]_net_1\, 
        \A2DRead/DataRegU1Ch0n[8]_net_1\, \A2DRead/N_1884\, 
        \A2DRead/DataRegU1Ch0j[8]_net_1\, 
        \A2DRead/DataRegU1Ch0l[8]_net_1\, 
        \A2DRead/DataRegU1Ch0k[8]_net_1\, \A2DRead/N_1886\, 
        \A2DRead/DataRegU1Ch0g[8]_net_1\, 
        \A2DRead/DataRegU1Ch0i[8]_net_1\, 
        \A2DRead/DataRegU1Ch0h[8]_net_1\, \A2DRead/N_1888\, 
        \A2DRead/N_1853\, \A2DRead/DataRegU1Ch0f[8]_net_1\, 
        \A2DRead/N_1851\, \A2DRead/N_1859\, \A2DRead/N_1855\, 
        \A2DRead/N_1857\, \A2DRead/N_1894\, \A2DRead/N_1861\, 
        \A2DRead/N_1896\, \A2DRead/N_1865\, \A2DRead/N_1863\, 
        \A2DRead/N_1867\, \A2DRead/N_1869\, \A2DRead/N_1906\, 
        \A2DRead/DataRegU1Ch0c[9]_net_1\, 
        \A2DRead/DataRegU1Ch0e[9]_net_1\, 
        \A2DRead/DataRegU1Ch0d[9]_net_1\, \A2DRead/N_1908\, 
        \A2DRead/DataRegU1Ch0b[9]_net_1\, 
        \A2DRead/DataRegU1Ch0p[9]_net_1\, 
        \A2DRead/DataRegU1Ch0a[9]_net_1\, \A2DRead/N_1912\, 
        \A2DRead/DataRegU1Ch0j[9]_net_1\, 
        \A2DRead/DataRegU1Ch0l[9]_net_1\, 
        \A2DRead/DataRegU1Ch0k[9]_net_1\, \A2DRead/N_1914\, 
        \A2DRead/DataRegU1Ch0g[9]_net_1\, 
        \A2DRead/DataRegU1Ch0i[9]_net_1\, 
        \A2DRead/DataRegU1Ch0h[9]_net_1\, \A2DRead/N_1916\, 
        \A2DRead/N_1881\, \A2DRead/DataRegU1Ch0f[9]_net_1\, 
        \A2DRead/N_1879\, \A2DRead/N_1920\, \A2DRead/N_1922\, 
        \A2DRead/N_1889\, \A2DRead/N_1924\, \A2DRead/N_1893\, 
        \A2DRead/N_1891\, \A2DRead/N_1926\, \A2DRead/N_1895\, 
        \A2DRead/N_1928\, \A2DRead/N_1897\, \A2DRead/N_1930\, 
        \A2DRead/N_1899\, \A2DRead/N_1901\, \A2DRead/N_1903\, 
        \A2DRead/N_1934\, \A2DRead/DataRegU1Ch0c[10]_net_1\, 
        \A2DRead/DataRegU1Ch0e[10]_net_1\, 
        \A2DRead/DataRegU1Ch0d[10]_net_1\, \A2DRead/N_1936\, 
        \A2DRead/DataRegU1Ch0b[10]_net_1\, 
        \A2DRead/DataRegU1Ch0p[10]_net_1\, 
        \A2DRead/DataRegU1Ch0a[10]_net_1\, \A2DRead/N_1938\, 
        \A2DRead/DataRegU1Ch0m[10]_net_1\, 
        \A2DRead/DataRegU1Ch0o[10]_net_1\, 
        \A2DRead/DataRegU1Ch0n[10]_net_1\, \A2DRead/N_1940\, 
        \A2DRead/DataRegU1Ch0j[10]_net_1\, 
        \A2DRead/DataRegU1Ch0l[10]_net_1\, 
        \A2DRead/DataRegU1Ch0k[10]_net_1\, \A2DRead/N_1942\, 
        \A2DRead/DataRegU1Ch0g[10]_net_1\, 
        \A2DRead/DataRegU1Ch0i[10]_net_1\, 
        \A2DRead/DataRegU1Ch0h[10]_net_1\, \A2DRead/N_1944\, 
        \A2DRead/N_1909\, \A2DRead/DataRegU1Ch0f[10]_net_1\, 
        \A2DRead/N_1907\, \A2DRead/N_1946\, \A2DRead/N_1915\, 
        \A2DRead/N_1911\, \A2DRead/N_1913\, \A2DRead/N_1948\, 
        \A2DRead/N_1950\, \A2DRead/N_1917\, \A2DRead/N_1952\, 
        \A2DRead/N_1921\, \A2DRead/N_1919\, \A2DRead/N_1954\, 
        \A2DRead/N_1923\, \A2DRead/N_1956\, \A2DRead/N_1925\, 
        \A2DRead/N_1958\, \A2DRead/N_1927\, \A2DRead/N_1929\, 
        \A2DRead/N_1931\, \A2DRead/N_1962\, 
        \A2DRead/DataRegU1Ch0c[11]_net_1\, 
        \A2DRead/DataRegU1Ch0e[11]_net_1\, 
        \A2DRead/DataRegU1Ch0d[11]_net_1\, \A2DRead/N_1964\, 
        \A2DRead/DataRegU1Ch0b[11]_net_1\, 
        \A2DRead/DataRegU1Ch0p[11]_net_1\, 
        \A2DRead/DataRegU1Ch0a[11]_net_1\, \A2DRead/N_1966\, 
        \A2DRead/DataRegU1Ch0m[11]_net_1\, 
        \A2DRead/DataRegU1Ch0o[11]_net_1\, 
        \A2DRead/DataRegU1Ch0n[11]_net_1\, \A2DRead/N_1968\, 
        \A2DRead/DataRegU1Ch0j[11]_net_1\, 
        \A2DRead/DataRegU1Ch0l[11]_net_1\, 
        \A2DRead/DataRegU1Ch0k[11]_net_1\, \A2DRead/N_1970\, 
        \A2DRead/DataRegU1Ch0g[11]_net_1\, 
        \A2DRead/DataRegU1Ch0i[11]_net_1\, 
        \A2DRead/DataRegU1Ch0h[11]_net_1\, \A2DRead/N_1972\, 
        \A2DRead/N_1937\, \A2DRead/DataRegU1Ch0f[11]_net_1\, 
        \A2DRead/N_1935\, \A2DRead/N_1974\, \A2DRead/N_1943\, 
        \A2DRead/N_1939\, \A2DRead/N_1941\, \A2DRead/N_1976\, 
        \A2DRead/N_1978\, \A2DRead/N_1945\, \A2DRead/N_1980\, 
        \A2DRead/N_1949\, \A2DRead/N_1947\, \A2DRead/N_1982\, 
        \A2DRead/N_1951\, \A2DRead/N_1984\, \A2DRead/N_1953\, 
        \A2DRead/N_1986\, \A2DRead/N_1955\, \A2DRead/N_1957\, 
        \A2DRead/N_1959\, \A2DRead/N_1990\, 
        \A2DRead/DataRegU1Ch0c[12]_net_1\, 
        \A2DRead/DataRegU1Ch0e[12]_net_1\, 
        \A2DRead/DataRegU1Ch0d[12]_net_1\, \A2DRead/N_1992\, 
        \A2DRead/DataRegU1Ch0b[12]_net_1\, 
        \A2DRead/DataRegU1Ch0p[12]_net_1\, 
        \A2DRead/DataRegU1Ch0a[12]_net_1\, \A2DRead/N_1994\, 
        \A2DRead/DataRegU1Ch0m[12]_net_1\, 
        \A2DRead/DataRegU1Ch0o[12]_net_1\, 
        \A2DRead/DataRegU1Ch0n[12]_net_1\, \A2DRead/N_1996\, 
        \A2DRead/DataRegU1Ch0j[12]_net_1\, 
        \A2DRead/DataRegU1Ch0l[12]_net_1\, 
        \A2DRead/DataRegU1Ch0k[12]_net_1\, \A2DRead/N_1998\, 
        \A2DRead/DataRegU1Ch0g[12]_net_1\, 
        \A2DRead/DataRegU1Ch0i[12]_net_1\, 
        \A2DRead/DataRegU1Ch0h[12]_net_1\, \A2DRead/N_2000\, 
        \A2DRead/N_1965\, \A2DRead/DataRegU1Ch0f[12]_net_1\, 
        \A2DRead/N_1963\, \A2DRead/N_2002\, \A2DRead/N_1971\, 
        \A2DRead/N_1967\, \A2DRead/N_1969\, \A2DRead/N_2004\, 
        \A2DRead/N_2006\, \A2DRead/N_1973\, \A2DRead/N_2008\, 
        \A2DRead/N_1977\, \A2DRead/N_1975\, \A2DRead/N_2010\, 
        \A2DRead/N_1979\, \A2DRead/N_2012\, \A2DRead/N_1981\, 
        \A2DRead/N_2014\, \A2DRead/N_1983\, \A2DRead/N_1985\, 
        \A2DRead/N_1987\, \A2DRead/N_2018\, \A2DRead/N_1995\, 
        \A2DRead/N_1991\, \A2DRead/N_1993\, \A2DRead/N_2020\, 
        \A2DRead/N_1999\, \A2DRead/N_1997\, \A2DRead/N_2001\, 
        \A2DRead/N_2022\, \A2DRead/N_2005\, \A2DRead/N_2003\, 
        \A2DRead/N_2007\, \A2DRead/N_2009\, \A2DRead/N_2013\, 
        \A2DRead/N_2011\, \A2DRead/un60_dataregu1ch0[4]\, 
        \A2DRead/N_1793\, \A2DRead/un60_dataregu1ch0[7]\, 
        \A2DRead/N229\, \A2DRead/un60_dataregu1ch0[8]\, 
        \A2DRead/N227\, \A2DRead/I64_un1_Y\, 
        \A2DRead/un60_dataregu1ch0[10]\, \A2DRead/I62_un1_Y\, 
        \A2DRead/un60_dataregu1ch0[11]\, \A2DRead/I61_un1_Y\, 
        \A2DRead/un60_dataregu1ch0[12]\, \A2DRead/I59_un1_Y\, 
        \A2DRead/un60_dataregu1ch0[14]\, \A2DRead/I70_un1_Y\, 
        \A2DRead/un60_dataregu1ch0[9]\, \A2DRead/N225\, 
        \A2DRead/I63_un1_Y_0\, \A2DRead/un60_dataregu1ch1[4]\, 
        \A2DRead/N_1446\, \A2DRead/un60_dataregu1ch1[6]\, 
        \A2DRead/N231_0\, \A2DRead/un60_dataregu1ch1[7]\, 
        \A2DRead/N229_0\, \A2DRead/un60_dataregu1ch1[8]\, 
        \A2DRead/N227_0\, \A2DRead/I64_un1_Y_0\, 
        \A2DRead/un60_dataregu1ch1[10]\, \A2DRead/N223_0\, 
        \A2DRead/I62_un1_Y_0\, \A2DRead/un60_dataregu1ch1[11]\, 
        \A2DRead/N_1642\, \A2DRead/N275\, 
        \A2DRead/un60_dataregu1ch1[12]\, \A2DRead/I59_un1_Y_0\, 
        \A2DRead/un60_dataregu1ch1[14]\, \A2DRead/N_1686\, 
        \A2DRead/N_1684\, \A2DRead/N269\, 
        \A2DRead/un60_dataregu1ch1[5]\, 
        \A2DRead/un60_dataregu1ch1[9]\, \A2DRead/N225_0\, 
        \A2DRead/un60_dataregu1ch1[13]\, \A2DRead/I57_un1_Y_0\, 
        \A2DRead/N_1680\, \A2DRead/N_2184\, \A2DRead/i8_mux_0\, 
        \A2DRead/N_2183\, \A2DRead/N_2182\, \A2DRead/N_2181\, 
        \A2DRead/N_2180\, \A2DRead/N_2179\, \A2DRead/N_2178\, 
        \A2DRead/N_2177\, \A2DRead/N_2176\, \A2DRead/N_2175\, 
        \A2DRead/N_2174\, \A2DRead/N_2173\, \A2DRead/N_2172\, 
        \A2DRead/N_102\, \A2DRead/AdCs1_2\, \A2DRead/N_103\, 
        \A2DRead/N_55_mux\, \A2DRead/N_45\, \A2DRead/N199\, 
        \A2DRead/un60_dataregu1ch1[15]\, \A2DRead/N224_0\, 
        \A2DRead/un60_dataregu1ch0[15]\, 
        \A2DRead/un60_i1_mux_0_1\, \A2DRead/un60_N_1_i_1\, 
        \A2DRead/un60_i3_mux_0\, \A2DRead/un60_i1_mux_1\, 
        \A2DRead/un60_i2_mux\, \A2DRead/N_1357\, 
        \A2DRead/DataRegU1Ch1p_RNIVBI4_0[1]_net_1\, 
        \A2DRead/DataRegU1Ch1c[1]_net_1\, 
        \A2DRead/DataRegU1Ch1d[1]_net_1\, 
        \A2DRead/un60_i1_mux_0_0\, \A2DRead/un60_N_1_i_0\, 
        \A2DRead/un60_N_1_i\, \A2DRead/N_1359\, 
        \A2DRead/un60_dataregu1ch0_288_0\, 
        \A2DRead/un60_dataregu1ch0_503_0\, 
        \A2DRead/un60_dataregu1ch1_783_0_tz\, 
        \A2DRead/un60_dataregu1ch1_424\, 
        \A2DRead/un60_dataregu1ch1_708_0\, 
        \A2DRead/un60_dataregu1ch1_503_0_tz\, 
        \A2DRead/un60_dataregu1ch1_498_0\, 
        \A2DRead/un60_dataregu1ch1_423_0\, 
        \A2DRead/un60_dataregu1ch1_358_0\, 
        \A2DRead/un60_dataregu1ch1_283_0\, 
        \A2DRead/un60_dataregu1ch0_808_0\, 
        \A2DRead/un60_dataregu1ch0_153_0_tz\, 
        \A2DRead/un60_dataregu1ch0_52\, 
        \A2DRead/un60_dataregu1ch0_88_0\, 
        \A2DRead/un60_dataregu1ch0_278_0\, 
        \A2DRead/un60_dataregu1ch0_283_0_tz\, 
        \A2DRead/un60_dataregu1ch0_119\, 
        \A2DRead/un60_dataregu1ch0_203_0\, 
        \A2DRead/un60_dataregu1ch0_343_0\, 
        \A2DRead/un60_dataregu1ch1_488_0_tz\, 
        \A2DRead/un60_dataregu1ch1_244\, 
        \A2DRead/un60_dataregu1ch1_408_0\, 
        \A2DRead/un60_dataregu1ch0_408_0\, 
        \A2DRead/un60_dataregu1ch0_323_0\, \A2DRead/N_1672\, 
        \A2DRead/N_1676\, \A2DRead/N_1674\, 
        \A2DRead/un60_dataregu1ch0_89\, \A2DRead/N_1704\, 
        \A2DRead/DataRegU1Ch0c[1]_net_1\, 
        \A2DRead/DataRegU1Ch0d[1]_net_1\, \A2DRead/N_2019\, 
        \A2DRead/N_2023\, \A2DRead/N_2021\, \A2DRead/N_1708\, 
        \A2DRead/N_1712\, \A2DRead/N_1361\, \A2DRead/N_1365\, 
        \A2DRead/un60_dataregu1ch1_89\, 
        \A2DRead/un60_dataregu1ch1_256\, 
        \A2DRead/un60_dataregu1ch1_292\, 
        \A2DRead/un60_dataregu1ch1_469\, 
        \A2DRead/un60_dataregu1ch0_167\, 
        \A2DRead/un60_dataregu1ch0_301\, \A2DRead/N153\, 
        \A2DRead/N165\, \A2DRead/N166\, \A2DRead/N169\, 
        \A2DRead/N171\, \A2DRead/N172\, \A2DRead/N175\, 
        \A2DRead/N178\, \A2DRead/N184\, \A2DRead/N174\, 
        \A2DRead/N168\, \A2DRead/N199_0\, \A2DRead/N200\, 
        \A2DRead/N162\, \A2DRead/N204\, \A2DRead/N160_0\, 
        \A2DRead/I49_un1_Y\, \A2DRead/N159\, \A2DRead/N165_0\, 
        \A2DRead/N166_0\, \A2DRead/N169_0\, \A2DRead/N171_0\, 
        \A2DRead/N172_0\, \A2DRead/N175_0\, \A2DRead/N178_0\, 
        \A2DRead/N181\, \A2DRead/N184_0\, \A2DRead/N191_0\, 
        \A2DRead/N174_0\, \A2DRead/N168_0\, \A2DRead/N202\, 
        \A2DRead/N162_0\, \A2DRead/I29_un1_Y\, \A2DRead/N206\, 
        \A2DRead/N156\, \A2DRead/N200_0\, \A2DRead/N197_0\, 
        \A2DRead/N204_0\, \A2DRead/N_108\, \A2DRead/N_43\, 
        \A2DRead/N_71\, \A2DRead/DatHldRegU1Ch0_1_sqmuxa\, 
        \A2DRead/DataInReg[13]_net_1\, 
        \A2DRead/DatHldRegU1Ch1_1_sqmuxa\, 
        \A2DRead/DataRegU1Ch0_1_sqmuxa\, 
        \A2DRead/DataRegU1Ch0a_1_sqmuxa\, 
        \A2DRead/DataRegU1Ch1_1_sqmuxa\, 
        \A2DRead/DataRegU1Ch1a_1_sqmuxa\, \A2DRead/N_48\, 
        \A2DRead/i6_mux\, \A2DRead/i5_mux\, \A2DRead/N_18\, 
        \A2DRead/N_6_0\, \A2DRead/N_14\, \A2DRead/i2_mux\, 
        \A2DRead/N_17_mux\, \A2DRead/N_15\, \A2DRead/N_835\, 
        \A2DRead/i3_mux\, \A2DRead/N_17\, \A2DRead/N156_0\, 
        \A2DRead/N159_0\, \A2DRead/N206_0\, \A2DRead/N202_0\, 
        \A2DRead/DataRegU1Ch0g_1_sqmuxa\, \A2DRead/N_115\, 
        \A2DRead/DataRegU1Ch0h_1_sqmuxa\, \A2DRead/N_123\, 
        \A2DRead/N_72\, \A2DRead/N_59\, \A2DRead/N_110\, 
        \A2DRead/N_114\, \A2DRead/DataRegU1Ch0m_1_sqmuxa\, 
        \A2DRead/DataRegU1Ch0l_1_sqmuxa\, 
        \A2DRead/DataRegU1Ch0k_1_sqmuxa\, 
        \A2DRead/DataRegU1Ch0j_1_sqmuxa\, 
        \A2DRead/DataRegU1Ch0i_1_sqmuxa\, 
        \A2DRead/DataRegU1Ch0f_1_sqmuxa\, 
        \A2DRead/DataRegU1Ch0e_1_sqmuxa\, 
        \A2DRead/DataRegU1Ch0d_1_sqmuxa\, 
        \A2DRead/DataRegU1Ch0c_1_sqmuxa\, 
        \A2DRead/DataRegU1Ch0b_1_sqmuxa\, 
        \A2DRead/DataRegU1Ch1[5]_net_1\, 
        \A2DRead/DataRegU1Ch1[6]_net_1\, 
        \A2DRead/DataRegU1Ch1[7]_net_1\, 
        \A2DRead/DataRegU1Ch1[8]_net_1\, 
        \A2DRead/DataRegU1Ch1[9]_net_1\, 
        \A2DRead/DataRegU1Ch1[10]_net_1\, 
        \A2DRead/DataRegU1Ch1[11]_net_1\, 
        \A2DRead/DataRegU1Ch1[12]_net_1\, 
        \A2DRead/DataRegU1Ch1[13]_net_1\, 
        \A2DRead/DataRegU1Ch1[14]_net_1\, 
        \A2DRead/DataRegU1Ch1[15]_net_1\, 
        \A2DRead/DataRegU1Ch1[16]_net_1\, 
        \A2DRead/DataRegU1Ch0[5]_net_1\, 
        \A2DRead/DataRegU1Ch0[6]_net_1\, 
        \A2DRead/DataRegU1Ch0[7]_net_1\, 
        \A2DRead/DataRegU1Ch0[8]_net_1\, 
        \A2DRead/DataRegU1Ch0[9]_net_1\, 
        \A2DRead/DataRegU1Ch0[10]_net_1\, 
        \A2DRead/DataRegU1Ch0[11]_net_1\, 
        \A2DRead/DataRegU1Ch0[12]_net_1\, 
        \A2DRead/DataRegU1Ch0[13]_net_1\, 
        \A2DRead/DataRegU1Ch0[14]_net_1\, 
        \A2DRead/DataRegU1Ch0[15]_net_1\, 
        \A2DRead/DataRegU1Ch0[16]_net_1\, 
        \A2DRead/DataInReg[1]_net_1\, 
        \A2DRead/DataInReg[2]_net_1\, 
        \A2DRead/DataInReg[3]_net_1\, 
        \A2DRead/DataInReg[4]_net_1\, 
        \A2DRead/DataInReg[5]_net_1\, 
        \A2DRead/DataInReg[6]_net_1\, 
        \A2DRead/DataInReg[7]_net_1\, 
        \A2DRead/DataInReg[8]_net_1\, 
        \A2DRead/DataInReg[9]_net_1\, 
        \A2DRead/DataInReg[10]_net_1\, 
        \A2DRead/DataInReg[11]_net_1\, 
        \A2DRead/DataInReg[12]_net_1\, 
        \iobank66debounce/DebounceTimer_m2_0_a2_1\, 
        \iobank66debounce/DebounceTimer[5]_net_1\, 
        \iobank66debounce/DebounceTimer[6]_net_1\, 
        \iobank66debounce/DebounceTimer[2]_net_1\, 
        \iobank66debounce/N_48\, 
        \iobank66debounce/un1_previousposition7\, 
        \iobank66debounce/DebounceTimer[7]_net_1\, 
        \iobank66debounce/DebounceTimer_c6\, 
        \iobank66debounce/DebounceTimer_c1\, 
        \iobank66debounce/DebounceTimer_c4_out\, 
        \iobank66debounce/DebounceTimer[3]_net_1\, 
        \iobank66debounce/DebounceTimer[4]_net_1\, 
        \iobank66debounce/DebounceTimer_n7\, 
        \iobank66debounce/DebounceTimer_n6\, 
        \iobank66debounce/DebounceTimer_c5\, 
        \iobank66debounce/DebounceTimer_n5\, 
        \iobank66debounce/DebounceTimer_c4\, 
        \iobank66debounce/DebounceTimer_n4\, 
        \iobank66debounce/DebounceTimer_c3\, 
        \iobank66debounce/DebounceTimer_n3\, 
        \iobank66debounce/DebounceTimer_c2\, 
        \iobank66debounce/DebounceTimer_n2\, 
        \iobank66debounce/DebounceTimer_RNO_4[8]\, 
        \iobank66debounce/Changing_net_1\, 
        \iobank66debounce/DebounceTimere\, 
        \iobank66debounce/DebounceTimer_n1\, 
        \iobank66debounce/DebounceTimer[1]_net_1\, 
        \iobank66debounce/DebounceTimer[0]_net_1\, 
        \iobank66debounce/N_67\, 
        \iobank66debounce/DebounceTimer[8]_net_1\, 
        \iobank66debounce/IOOut_0_sqmuxa\, 
        \iobank66debounce/IOOut_3[0]\, 
        \iobank66debounce/PreviousPosition[0]_net_1\, 
        \iobank66debounce/IOOut_3[1]\, 
        \iobank66debounce/PreviousPosition[1]_net_1\, 
        \iobank66debounce/IOOut_3[2]\, 
        \iobank66debounce/PreviousPosition[2]_net_1\, 
        \iobank66debounce/PreviousPosition_3[0]\, 
        \iobank66debounce/CurrentPosition[0]_net_1\, 
        \iobank66debounce/PreviousPosition_3[1]\, 
        \iobank66debounce/CurrentPosition[1]_net_1\, 
        \iobank66debounce/PreviousPosition_3[2]\, 
        \iobank66debounce/CurrentPosition[2]_net_1\, 
        \iobank66debounce/Changing_0\, \snkpout01/N_20\, 
        \snkpout01/counter[11]_net_1\, \snkpout01/counter_25_0\, 
        \snkpout01/counter_1_sqmuxa\, \snkpout01/counter10_1\, 
        \snkpout01/counter[12]_net_1\, 
        \snkpout01/counter[2]_net_1\, \snkpout01/un1_counterlto5\, 
        \snkpout01/un1_counterlto11_4\, 
        \snkpout01/un1_counterlto11_1\, 
        \snkpout01/un1_counterlto11_0\, 
        \snkpout01/un1_counterlto11_2\, 
        \snkpout01/counter[10]_net_1\, 
        \snkpout01/counter[7]_net_1\, 
        \snkpout01/counter[6]_net_1\, 
        \snkpout01/counter[8]_net_1\, 
        \snkpout01/counter[9]_net_1\, \snkpout01/counter_n11\, 
        \snkpout01/counter_c10\, \snkpout01/counter_n10\, 
        \snkpout01/counter_c9\, \snkpout01/counter_n9\, 
        \snkpout01/counter_c8\, \snkpout01/counter_n8\, 
        \snkpout01/counter_c7\, \snkpout01/counter_n7\, 
        \snkpout01/counter_c6\, \snkpout01/counter_n6\, 
        \snkpout01/counter_n6_tz\, \snkpout01/counter[5]_net_1\, 
        \snkpout01/counter_c4\, \snkpout01/counter_n5\, 
        \snkpout01/counter_n4\, \snkpout01/counter[4]_net_1\, 
        \snkpout01/counter_c3\, \snkpout01/counter_n3\, 
        \snkpout01/counter[3]_net_1\, \snkpout01/counter_c2\, 
        \snkpout01/counter_n2\, \snkpout01/counter_n2_tz\, 
        \snkpout01/counter[0]_net_1\, 
        \snkpout01/counter[1]_net_1\, \snkpout01/counter_n12\, 
        \snkpout01/N_59\, \snkpout01/counter_n1\, 
        \snkpout01/counter_n0\, \snkpout01/un1_counterlt11\, 
        \snkpout01/un1_counter\, \snkpout01/PWMOut_RNO_net_1\, 
        \snkpout01/PWMOut_3\, \snkpout01/DWACT_COMP0_E[1]\, 
        \snkpout01/DWACT_COMP0_E[2]\, 
        \snkpout01/DWACT_COMP0_E[0]\, 
        \snkpout01/DWACT_CMPLE_PO2_DWACT_COMP0_E[1]\, 
        \snkpout01/DWACT_CMPLE_PO2_DWACT_COMP0_E[2]\, 
        \snkpout01/DWACT_CMPLE_PO2_DWACT_COMP0_E[0]\, 
        \snkpout01/N_11\, \snkpout01/N_10\, \snkpout01/N_9\, 
        \snkpout01/N_6\, \snkpout01/N_8\, \snkpout01/N_7\, 
        \snkpout01/N_5\, \snkpout01/N_2\, \snkpout01/N_3\, 
        \snkpout01/N_4\, \snkpout01/ACT_LT3_E[3]\, 
        \snkpout01/ACT_LT3_E[4]\, \snkpout01/ACT_LT3_E[5]\, 
        \snkpout01/ACT_LT3_E[0]\, \snkpout01/ACT_LT3_E[1]\, 
        \snkpout01/ACT_LT3_E[2]\, 
        \snkpout01/DWACT_BL_EQUAL_0_E[2]\, 
        \snkpout01/DWACT_BL_EQUAL_0_E[1]\, 
        \snkpout01/DWACT_BL_EQUAL_0_E[0]\, \snkpout01/N_21\, 
        \snkpout01/N_16\, \snkpout01/N_18\, \snkpout01/N_17\, 
        \snkpout01/N_12\, \snkpout01/N_13\, \snkpout01/N_14\, 
        \snkpout01/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[1]\, 
        \snkpout01/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[0]\, 
        \snkpout01/DWACT_BL_EQUAL_0_E_0[0]\, 
        \snkpout01/DWACT_BL_EQUAL_0_E_0[1]\, 
        \snkpout01/DWACT_BL_EQUAL_0_E_0[2]\, 
        \iobank69debounce/DebounceTimer_c5_out\, 
        \iobank69debounce/DebounceTimer[6]_net_1\, 
        \iobank69debounce/DebounceTimer[4]_net_1\, 
        \iobank69debounce/DebounceTimer[5]_net_1\, 
        \iobank69debounce/DebounceTimer[3]_net_1\, 
        \iobank69debounce/DebounceTimer[2]_net_1\, 
        \iobank69debounce/DebounceTimer_c3\, 
        \iobank69debounce/DebounceTimer_c1\, 
        \iobank69debounce/N_48\, 
        \iobank69debounce/un1_previousposition7\, 
        \iobank69debounce/DebounceTimer[7]_net_1\, 
        \iobank69debounce/DebounceTimer_c6\, 
        \iobank69debounce/DebounceTimer_n7\, 
        \iobank69debounce/DebounceTimer_n6\, 
        \iobank69debounce/DebounceTimer_c5\, 
        \iobank69debounce/DebounceTimer_n5\, 
        \iobank69debounce/DebounceTimer_c4\, 
        \iobank69debounce/DebounceTimer_n4\, 
        \iobank69debounce/DebounceTimer_n3\, 
        \iobank69debounce/DebounceTimer_c2\, 
        \iobank69debounce/DebounceTimer_n2\, 
        \iobank69debounce/Changing_net_1\, 
        \iobank69debounce/PreviousPosition[0]_net_1\, 
        \iobank69debounce/CurrentPosition[0]_net_1\, 
        \iobank69debounce/PreviousPosition_3[2]\, 
        \iobank69debounce/CurrentPosition[2]_net_1\, 
        \iobank69debounce/PreviousPosition_3[1]\, 
        \iobank69debounce/CurrentPosition[1]_net_1\, 
        \iobank69debounce/PreviousPosition_3[0]\, 
        \iobank69debounce/IOOut_3[2]\, 
        \iobank69debounce/PreviousPosition[2]_net_1\, 
        \iobank69debounce/IOOut_3[1]\, 
        \iobank69debounce/PreviousPosition[1]_net_1\, 
        \iobank69debounce/IOOut_3[0]\, 
        \iobank69debounce/IOOut_0_sqmuxa\, 
        \iobank69debounce/DebounceTimer[8]_net_1\, 
        \iobank69debounce/Changing_0\, 
        \iobank69debounce/DebounceTimer_RNO_6[8]\, 
        \iobank69debounce/DebounceTimere\, 
        \iobank69debounce/DebounceTimer_n1\, 
        \iobank69debounce/DebounceTimer[1]_net_1\, 
        \iobank69debounce/DebounceTimer[0]_net_1\, 
        \iobank69debounce/N_67\, 
        \ioBank6Breader/parallelholdreg_0_sqmuxa_4_0\, 
        \ioBank6Breader/parallelholdreg_0_sqmuxa_2_net_1\, 
        \ioBank6Breader/parallelholdreg_0_sqmuxa_1\, 
        \ioBank6Breader/_decfrac0\, \ioBank6Breader/dataout_0_1\, 
        \ioBank6Breader/parallelholdreg[0]_net_1\, 
        \ioBank6Breader/cellindex_RNO_8[1]\, 
        \ioBank6Breader/cellindex[0]_net_1\, 
        \ioBank6Breader/un1_latch_1\, 
        \ioBank6Breader/cellindex_RNO_8[0]\, 
        \ioBank6Breader/dataout_RNO_13\, 
        \ioBank6Breader/parallelholdreg_m[2]\, 
        \ioBank6Breader/parallelholdreg_m[1]\, 
        \ioBank6Breader/cellindex[1]_net_1\, 
        \ioBank6Breader/parallelholdreg_1_sqmuxa\, 
        \ioBank6Breader/parallelholdreg[1]_net_1\, 
        \ioBank6Breader/parallelholdreg[2]_net_1\, 
        \ioBank6Breader/N_25\, 
        \ioBank6Breader/parallelholdreg_7[2]\, 
        \ioBank6Breader/N_24\, 
        \ioBank6Breader/parallelholdreg_7[1]\, 
        \ioBank6Breader/N_23\, 
        \ioBank6Breader/parallelholdreg_7[0]\, 
        \ioBank6Breader/parallelholdreg_RNO_12[2]\, 
        \ioBank6Breader/parallelholdreg_RNO_12[1]\, 
        \ioBank6Breader/parallelholdreg_RNO_12[0]\, 
        \heart_beat/ADD_19x19_fast_I121_Y\, 
        \heart_beat/counter[17]_net_1\, \heart_beat/N_22_i\, 
        \heart_beat/counter[18]_net_1\, \heart_beat/N_2_i\, 
        \heart_beat/counter[0]_net_1\, \heart_beat/N_3_i\, 
        \heart_beat/counter[1]_net_1\, \heart_beat/N_11_i\, 
        \heart_beat/counter[4]_net_1\, 
        \heart_beat/counter[5]_net_1\, \heart_beat/i5_mux\, 
        \heart_beat/N_13_i\, \heart_beat/counter[6]_net_1\, 
        \heart_beat/counter[7]_net_1\, \heart_beat/N_15_i\, 
        \heart_beat/counter[8]_net_1\, 
        \heart_beat/counter[9]_net_1\, \heart_beat/N_17_i\, 
        \heart_beat/counter[10]_net_1\, 
        \heart_beat/counter[11]_net_1\, \heart_beat/N_19_i\, 
        \heart_beat/counter[12]_net_1\, 
        \heart_beat/counter[13]_net_1\, \heart_beat/N_21_i\, 
        \heart_beat/counter[14]_net_1\, 
        \heart_beat/counter[15]_net_1\, 
        \heart_beat/counter[16]_net_1\, \heart_beat/m22\, 
        \heart_beat/m23\, \heart_beat/m24\, \heart_beat/m25\, 
        \heart_beat/m26\, \heart_beat/i3_mux\, 
        \heart_beat/counter[2]_net_1\, \heart_beat/N_44\, 
        \heart_beat/counter[3]_net_1\, 
        \heart_beat/un1_counterlto18_1\, 
        \heart_beat/un1_counterlto15_1\, \heart_beat/N_41_i\, 
        \heart_beat/N_39\, \heart_beat/un1_counterlt9\, 
        \heart_beat/un1_counterlto6\, 
        \heart_beat/HeartBeatOut_RNO_net_1\, 
        \heart_beat/un1_counterlt15\, 
        \heart_beat/un1_counterlt11\, \heart_beat/m27\, 
        \heart_beat/m28\, \heart_beat/m29\, \heart_beat/m30\, 
        \heart_beat/m31\, \heart_beat/m32\, \heart_beat/m33\, 
        \heart_beat/m34\, \heart_beat/m35\, \heart_beat/m36\, 
        \heart_beat/m41\, 
        \iobank67debounce/DebounceTimer[3]_net_1\, 
        \iobank67debounce/DebounceTimer[4]_net_1\, 
        \iobank67debounce/DebounceTimer_m2_0_a2_2\, 
        \iobank67debounce/DebounceTimer[6]_net_1\, 
        \iobank67debounce/DebounceTimer[5]_net_1\, 
        \iobank67debounce/DebounceTimer_m2_0_a2_1\, 
        \iobank67debounce/DebounceTimer[2]_net_1\, 
        \iobank67debounce/N_48\, 
        \iobank67debounce/un1_previousposition7\, 
        \iobank67debounce/DebounceTimer[7]_net_1\, 
        \iobank67debounce/DebounceTimer_c6\, 
        \iobank67debounce/DebounceTimer_c1\, 
        \iobank67debounce/DebounceTimer_n7\, 
        \iobank67debounce/DebounceTimer_n6\, 
        \iobank67debounce/DebounceTimer_c5\, 
        \iobank67debounce/DebounceTimer_n5\, 
        \iobank67debounce/DebounceTimer_c4\, 
        \iobank67debounce/DebounceTimer_n4\, 
        \iobank67debounce/DebounceTimer_c3\, 
        \iobank67debounce/DebounceTimer_n3\, 
        \iobank67debounce/DebounceTimer_c2\, 
        \iobank67debounce/DebounceTimer_n2\, 
        \iobank67debounce/DebounceTimer_RNO_5[8]\, 
        \iobank67debounce/Changing_net_1\, 
        \iobank67debounce/DebounceTimere\, 
        \iobank67debounce/DebounceTimer_n1\, 
        \iobank67debounce/DebounceTimer[1]_net_1\, 
        \iobank67debounce/DebounceTimer[0]_net_1\, 
        \iobank67debounce/N_67\, 
        \iobank67debounce/DebounceTimer[8]_net_1\, 
        \iobank67debounce/IOOut_0_sqmuxa\, 
        \iobank67debounce/IOOut_3[0]\, 
        \iobank67debounce/PreviousPosition[0]_net_1\, 
        \iobank67debounce/IOOut_3[1]\, 
        \iobank67debounce/PreviousPosition[1]_net_1\, 
        \iobank67debounce/IOOut_3[2]\, 
        \iobank67debounce/PreviousPosition[2]_net_1\, 
        \iobank67debounce/PreviousPosition_3[0]\, 
        \iobank67debounce/CurrentPosition[0]_net_1\, 
        \iobank67debounce/PreviousPosition_3[1]\, 
        \iobank67debounce/CurrentPosition[1]_net_1\, 
        \iobank67debounce/PreviousPosition_3[2]\, 
        \iobank67debounce/CurrentPosition[2]_net_1\, 
        \iobank67debounce/Changing_0\, 
        \A2D01reader/parallelholdreg_0_sqmuxa_5_0\, 
        \A2D01reader/parallelholdreg_0_sqmuxa_3\, 
        \A2D01reader/parallelholdreg_0_sqmuxa_1\, 
        \A2D01reader/parallelholdreg_0_sqmuxa_0\, 
        \A2D01reader/cellindex[3]_net_1\, 
        \A2D01reader/cellindex[1]_net_1\, 
        \A2D01reader/cellindex[2]_net_1\, 
        \A2D01reader/cellindex[0]_net_1\, 
        \A2D01reader/un170_dataout_11_0\, 
        \A2D01reader/cellindex_c1\, \A2D01reader/N_89\, 
        \A2D01reader/dataout_RNO_1_net_1\, 
        \A2D01reader/dataout_62\, \A2D01reader/cellindex_n2\, 
        \A2D01reader/cellindex_1_sqmuxa_1\, 
        \A2D01reader/parallelholdreg_7[0]\, 
        \A2D01reader/parallelholdreg_7[1]\, 
        \A2D01reader/parallelholdreg_7[3]\, 
        \A2D01reader/parallelholdreg_7[4]\, 
        \A2D01reader/parallelholdreg_7[5]\, 
        \A2D01reader/parallelholdreg_7[6]\, 
        \A2D01reader/parallelholdreg_7[7]\, 
        \A2D01reader/parallelholdreg_7[9]\, 
        \A2D01reader/parallelholdreg_7[11]\, 
        \A2D01reader/parallelholdreg_RNO_0[0]_net_1\, 
        \A2D01reader/N_91\, 
        \A2D01reader/parallelholdreg_RNO_0[1]_net_1\, 
        \A2D01reader/N_92\, 
        \A2D01reader/parallelholdreg_RNO_0[3]_net_1\, 
        \A2D01reader/N_94\, 
        \A2D01reader/parallelholdreg_RNO_0[4]_net_1\, 
        \A2D01reader/N_95\, 
        \A2D01reader/parallelholdreg_RNO_0[5]_net_1\, 
        \A2D01reader/N_96\, 
        \A2D01reader/parallelholdreg_RNO_1[6]_net_1\, 
        \A2D01reader/N_97\, 
        \A2D01reader/parallelholdreg_RNO_1[7]_net_1\, 
        \A2D01reader/N_98\, 
        \A2D01reader/parallelholdreg_RNO_0[9]_net_1\, 
        \A2D01reader/N_100\, 
        \A2D01reader/parallelholdreg_RNO_0[11]_net_1\, 
        \A2D01reader/N_102\, 
        \A2D01reader/parallelholdreg[0]_net_1\, 
        \A2D01reader/parallelholdreg_1_sqmuxa\, 
        \A2D01reader/parallelholdreg[1]_net_1\, 
        \A2D01reader/parallelholdreg[3]_net_1\, 
        \A2D01reader/parallelholdreg[4]_net_1\, 
        \A2D01reader/parallelholdreg[5]_net_1\, 
        \A2D01reader/parallelholdreg[6]_net_1\, 
        \A2D01reader/parallelholdreg[7]_net_1\, 
        \A2D01reader/parallelholdreg[9]_net_1\, 
        \A2D01reader/parallelholdreg[11]_net_1\, 
        \A2D01reader/cellindex_n3\, \A2D01reader/cellindex_n1\, 
        \A2D01reader/cellindex_n0\, \A2D01reader/N_75\, 
        \A2D01reader/N_78\, \A2D01reader/N_76\, 
        \A2D01reader/N_77\, \A2D01reader/N_71\, 
        \A2D01reader/N_74\, \A2D01reader/N_72\, 
        \A2D01reader/N_73\, \A2D01reader/N_69\, 
        \A2D01reader/N_70\, 
        \A2D01reader/parallelholdreg[2]_net_1\, 
        \A2D01reader/parallelholdreg[10]_net_1\, 
        \A2D01reader/parallelholdreg[8]_net_1\, 
        \A2D01reader/N_101\, \A2D01reader/parallelholdreg_7[10]\, 
        \A2D01reader/N_99\, \A2D01reader/parallelholdreg_7[8]\, 
        \A2D01reader/N_93\, \A2D01reader/parallelholdreg_7[2]\, 
        \A2D01reader/parallelholdreg_RNO_0[10]_net_1\, 
        \A2D01reader/parallelholdreg_RNO_0[8]_net_1\, 
        \A2D01reader/parallelholdreg_RNO_0[2]_net_1\, 
        \iobank6Adebounce/DebounceTimer_m2_0_a2_1\, 
        \iobank6Adebounce/DebounceTimer[3]_net_1\, 
        \iobank6Adebounce/DebounceTimer[6]_net_1\, 
        \iobank6Adebounce/DebounceTimer[2]_net_1\, 
        \iobank6Adebounce/N_48\, 
        \iobank6Adebounce/un1_previousposition7\, 
        \iobank6Adebounce/DebounceTimer[7]_net_1\, 
        \iobank6Adebounce/DebounceTimer_c6\, 
        \iobank6Adebounce/DebounceTimer_c1\, 
        \iobank6Adebounce/DebounceTimer_c5_out\, 
        \iobank6Adebounce/DebounceTimer[4]_net_1\, 
        \iobank6Adebounce/DebounceTimer[5]_net_1\, 
        \iobank6Adebounce/DebounceTimer_n7\, 
        \iobank6Adebounce/DebounceTimer_n6\, 
        \iobank6Adebounce/DebounceTimer_c5\, 
        \iobank6Adebounce/DebounceTimer_n5\, 
        \iobank6Adebounce/DebounceTimer_c4\, 
        \iobank6Adebounce/DebounceTimer_n4\, 
        \iobank6Adebounce/DebounceTimer_c3\, 
        \iobank6Adebounce/DebounceTimer_n3\, 
        \iobank6Adebounce/DebounceTimer_c2\, 
        \iobank6Adebounce/DebounceTimer_n2\, 
        \iobank6Adebounce/Changing_net_1\, 
        \iobank6Adebounce/PreviousPosition[0]_net_1\, 
        \iobank6Adebounce/CurrentPosition[0]_net_1\, 
        \iobank6Adebounce/PreviousPosition_3[2]\, 
        \iobank6Adebounce/CurrentPosition[2]_net_1\, 
        \iobank6Adebounce/PreviousPosition_3[1]\, 
        \iobank6Adebounce/CurrentPosition[1]_net_1\, 
        \iobank6Adebounce/PreviousPosition_3[0]\, 
        \iobank6Adebounce/IOOut_3[2]\, 
        \iobank6Adebounce/PreviousPosition[2]_net_1\, 
        \iobank6Adebounce/IOOut_3[1]\, 
        \iobank6Adebounce/PreviousPosition[1]_net_1\, 
        \iobank6Adebounce/IOOut_3[0]\, 
        \iobank6Adebounce/IOOut_0_sqmuxa\, 
        \iobank6Adebounce/DebounceTimer[8]_net_1\, 
        \iobank6Adebounce/Changing_0\, 
        \iobank6Adebounce/DebounceTimer_RNO_7[8]\, 
        \iobank6Adebounce/DebounceTimere\, 
        \iobank6Adebounce/DebounceTimer_n1\, 
        \iobank6Adebounce/DebounceTimer[1]_net_1\, 
        \iobank6Adebounce/DebounceTimer[0]_net_1\, 
        \iobank6Adebounce/N_67\, 
        \iobank64debounce/DebounceTimer_c6_out_0\, 
        \iobank64debounce/DebounceTimer[6]_net_1\, 
        \iobank64debounce/DebounceTimer[5]_net_1\, 
        \iobank64debounce/DebounceTimer[4]_net_1\, 
        \iobank64debounce/DebounceTimer[3]_net_1\, 
        \iobank64debounce/DebounceTimer[2]_net_1\, 
        \iobank64debounce/DebounceTimer_c3\, 
        \iobank64debounce/DebounceTimer_c1\, 
        \iobank64debounce/N_48\, 
        \iobank64debounce/un1_previousposition7\, 
        \iobank64debounce/DebounceTimer[7]_net_1\, 
        \iobank64debounce/DebounceTimer_c6\, 
        \iobank64debounce/DebounceTimer_n7\, 
        \iobank64debounce/DebounceTimer_n6\, 
        \iobank64debounce/DebounceTimer_c5\, 
        \iobank64debounce/DebounceTimer_n5\, 
        \iobank64debounce/DebounceTimer_c4\, 
        \iobank64debounce/DebounceTimer_n4\, 
        \iobank64debounce/DebounceTimer_n3\, 
        \iobank64debounce/DebounceTimer_c2\, 
        \iobank64debounce/DebounceTimer_n2\, 
        \iobank64debounce/DebounceTimer_RNO_3[8]\, 
        \iobank64debounce/Changing_net_1\, 
        \iobank64debounce/DebounceTimere\, 
        \iobank64debounce/DebounceTimer_n1\, 
        \iobank64debounce/DebounceTimer[1]_net_1\, 
        \iobank64debounce/DebounceTimer[0]_net_1\, 
        \iobank64debounce/N_67\, 
        \iobank64debounce/DebounceTimer[8]_net_1\, 
        \iobank64debounce/Changing_0\, 
        \iobank64debounce/PreviousPosition[0]_net_1\, 
        \iobank64debounce/CurrentPosition[0]_net_1\, 
        \iobank64debounce/PreviousPosition_3[2]\, 
        \iobank64debounce/CurrentPosition[2]_net_1\, 
        \iobank64debounce/PreviousPosition_3[1]\, 
        \iobank64debounce/CurrentPosition[1]_net_1\, 
        \iobank64debounce/PreviousPosition_3[0]\, 
        \iobank64debounce/IOOut_3[2]\, 
        \iobank64debounce/PreviousPosition[2]_net_1\, 
        \iobank64debounce/IOOut_3[1]\, 
        \iobank64debounce/PreviousPosition[1]_net_1\, 
        \iobank64debounce/IOOut_3[0]\, 
        \iobank64debounce/IOOut_0_sqmuxa\, 
        \iobank60debounce/inputs60_c_i[0]\, 
        \iobank60debounce/inputs60_c_i[1]\, 
        \iobank60debounce/inputs60_c_i[2]\, 
        \iobank60debounce/inputs60_c_i[3]\, 
        \iobank60debounce/DebounceTimer_c5_0\, 
        \iobank60debounce/DebounceTimer[4]_net_1\, 
        \iobank60debounce/DebounceTimer[3]_net_1\, 
        \iobank60debounce/DebounceTimer[5]_net_1\, 
        \iobank60debounce/DebounceTimer_c5\, 
        \iobank60debounce/DebounceTimer_c2\, 
        \iobank60debounce/N_48\, 
        \iobank60debounce/un1_previousposition7\, 
        \iobank60debounce/DebounceTimer[7]_net_1\, 
        \iobank60debounce/DebounceTimer_c6\, 
        \iobank60debounce/DebounceTimer_n7\, 
        \iobank60debounce/DebounceTimer_n6\, 
        \iobank60debounce/DebounceTimer[6]_net_1\, 
        \iobank60debounce/DebounceTimer_n5\, 
        \iobank60debounce/DebounceTimer_c4\, 
        \iobank60debounce/DebounceTimer_n4\, 
        \iobank60debounce/DebounceTimer_c3\, 
        \iobank60debounce/DebounceTimer_n3\, 
        \iobank60debounce/DebounceTimer_n2\, 
        \iobank60debounce/DebounceTimer[2]_net_1\, 
        \iobank60debounce/DebounceTimer_c1\, 
        \iobank60debounce/DebounceTimer_RNO[8]_net_1\, 
        \iobank60debounce/Changing_net_1\, 
        \iobank60debounce/DebounceTimere\, 
        \iobank60debounce/DebounceTimer_n1\, 
        \iobank60debounce/DebounceTimer[1]_net_1\, 
        \iobank60debounce/DebounceTimer[0]_net_1\, 
        \iobank60debounce/N_69\, 
        \iobank60debounce/PreviousPosition_3[3]\, 
        \iobank60debounce/CurrentPosition[3]_net_1\, 
        \iobank60debounce/PreviousPosition_3[2]\, 
        \iobank60debounce/CurrentPosition[2]_net_1\, 
        \iobank60debounce/IOOut_8[3]\, 
        \iobank60debounce/PreviousPosition[3]_net_1\, 
        \iobank60debounce/IOOut_8[2]\, 
        \iobank60debounce/PreviousPosition[2]_net_1\, 
        \iobank60debounce/IOOut_8[1]\, 
        \iobank60debounce/PreviousPosition[1]_net_1\, 
        \iobank60debounce/DebounceTimer[8]_net_1\, 
        \iobank60debounce/Changing_0\, 
        \iobank60debounce/PreviousPosition[0]_net_1\, 
        \iobank60debounce/CurrentPosition[0]_net_1\, 
        \iobank60debounce/PreviousPosition_3[1]\, 
        \iobank60debounce/CurrentPosition[1]_net_1\, 
        \iobank60debounce/PreviousPosition_3[0]\, 
        \iobank60debounce/IOOut_8[0]\, 
        \iobank60debounce/IOOut_0_sqmuxa\, 
        \matrix_read03/ctrl15_m1_e_0_1\, 
        \matrix_read03/stage[3]_net_1\, 
        \matrix_read03/stage[2]_net_1\, 
        \matrix_read03/ctrl15_m1_e_0_0\, 
        \matrix_read03/stage[4]_net_1\, 
        \matrix_read03/stage[5]_net_1\, 
        \matrix_read03/ctrl9_0_a3_0\, 
        \matrix_read03/stage_m1_0_a2_0\, 
        \matrix_read03/ctrl_7_i_0_a3_0_0[2]\, 
        \matrix_read03/ctrl_7_i_0_a3_1[2]\, 
        \matrix_read03/stage[1]_net_1\, 
        \matrix_read03/stage_N_3_mux\, \matrix_read03/N_26\, 
        \matrix_read03/ctrl15\, \matrix_read03/N_17\, 
        \matrix_read03/N_36\, \matrix_read03/N_19\, 
        \matrix_read03/ctrl9\, \matrix_read03/N_63\, 
        \matrix_read03/ctrl12\, \matrix_read03/N_68\, 
        \matrix_read03/ctrl18_1\, \matrix_read03/N_64\, 
        \matrix_read03/ctrl18\, \matrix_read03/N_65\, 
        \matrix_read03/ctrl21\, \matrix_read03/ctrl_RNO[0]_net_1\, 
        \matrix_read03/N_37\, \matrix_read03/ctrl_RNO[1]_net_1\, 
        \matrix_read03/ctrl_RNO[3]_net_1\, 
        \matrix_read03/ctrl_RNO[4]_net_1\, \matrix_read03/N_60\, 
        \matrix_read03/N_66\, \matrix_read03/N_21\, 
        \matrix_read03/N_15\, \matrix_read03/N_55\, 
        \matrix_read03/stage[0]_net_1\, \matrix_read03/N_13\, 
        \matrix_read03/ctrl_RNO[2]_net_1\, \matrix_read03/N_58\, 
        \matrix_read03/data04[0]_net_1\, 
        \matrix_read03/data04[1]_net_1\, 
        \matrix_read03/data04[2]_net_1\, 
        \matrix_read03/data03[0]_net_1\, 
        \matrix_read03/data03[1]_net_1\, 
        \matrix_read03/data03[2]_net_1\, 
        \matrix_read03/data02[0]_net_1\, 
        \matrix_read03/data02[1]_net_1\, 
        \matrix_read03/data02[2]_net_1\, 
        \matrix_read03/data01[0]_net_1\, 
        \matrix_read03/data01[1]_net_1\, 
        \matrix_read03/data01[2]_net_1\, 
        \matrix_read03/data00[0]_net_1\, 
        \matrix_read03/data00[1]_net_1\, 
        \matrix_read03/data00[2]_net_1\, 
        \A2D00reader/parallelholdreg_0_sqmuxa_5_net_1\, 
        \A2D00reader/parallelholdreg_0_sqmuxa_3\, 
        \A2D00reader/parallelholdreg_0_sqmuxa_1\, 
        \A2D00reader/parallelholdreg_0_sqmuxa_0\, 
        \A2D00reader/cellindex[3]_net_1\, 
        \A2D00reader/cellindex[1]_net_1\, 
        \A2D00reader/cellindex[2]_net_1\, 
        \A2D00reader/cellindex[0]_net_1\, 
        \A2D00reader/un193_dataout_11_0\, 
        \A2D00reader/cellindex_c1\, \A2D00reader/N_89\, 
        \A2D00reader/dataout_RNO_0_net_1\, 
        \A2D00reader/dataout_67\, \A2D00reader/cellindex_n2\, 
        \A2D00reader/cellindex_1_sqmuxa_1\, 
        \A2D00reader/parallelholdreg_7[0]\, 
        \A2D00reader/parallelholdreg_7[1]\, 
        \A2D00reader/parallelholdreg_7[2]\, 
        \A2D00reader/parallelholdreg_7[3]\, 
        \A2D00reader/parallelholdreg_7[4]\, 
        \A2D00reader/parallelholdreg_7[6]\, 
        \A2D00reader/parallelholdreg_7[8]\, 
        \A2D00reader/parallelholdreg_7[10]\, 
        \A2D00reader/parallelholdreg_7[11]\, 
        \A2D00reader/parallelholdreg_RNO[0]_net_1\, 
        \A2D00reader/N_91\, 
        \A2D00reader/parallelholdreg_RNO[1]_net_1\, 
        \A2D00reader/N_92\, 
        \A2D00reader/parallelholdreg_RNO[2]_net_1\, 
        \A2D00reader/N_93\, 
        \A2D00reader/parallelholdreg_RNO[3]_net_1\, 
        \A2D00reader/N_94\, 
        \A2D00reader/parallelholdreg_RNO[4]_net_1\, 
        \A2D00reader/N_95\, 
        \A2D00reader/parallelholdreg_RNO_0[6]_net_1\, 
        \A2D00reader/N_97\, 
        \A2D00reader/parallelholdreg_RNO[8]_net_1\, 
        \A2D00reader/N_99\, 
        \A2D00reader/parallelholdreg_RNO[10]_net_1\, 
        \A2D00reader/N_101\, 
        \A2D00reader/parallelholdreg_RNO[11]_net_1\, 
        \A2D00reader/N_102\, 
        \A2D00reader/parallelholdreg[0]_net_1\, 
        \A2D00reader/parallelholdreg_1_sqmuxa\, 
        \A2D00reader/parallelholdreg[1]_net_1\, 
        \A2D00reader/parallelholdreg[2]_net_1\, 
        \A2D00reader/parallelholdreg[3]_net_1\, 
        \A2D00reader/parallelholdreg[4]_net_1\, 
        \A2D00reader/parallelholdreg[6]_net_1\, 
        \A2D00reader/parallelholdreg[8]_net_1\, 
        \A2D00reader/parallelholdreg[10]_net_1\, 
        \A2D00reader/parallelholdreg[11]_net_1\, 
        \A2D00reader/N_75\, \A2D00reader/N_78\, 
        \A2D00reader/N_76_0\, \A2D00reader/N_77\, 
        \A2D00reader/parallelholdreg[5]_net_1\, 
        \A2D00reader/parallelholdreg[7]_net_1\, 
        \A2D00reader/N_71\, \A2D00reader/N_74\, 
        \A2D00reader/N_72\, \A2D00reader/N_73\, 
        \A2D00reader/parallelholdreg[9]_net_1\, 
        \A2D00reader/N_69\, \A2D00reader/N_70\, 
        \A2D00reader/N_100\, \A2D00reader/parallelholdreg_7[9]\, 
        \A2D00reader/parallelholdreg_RNO[9]_net_1\, 
        \A2D00reader/cellindex_n0\, \A2D00reader/cellindex_n1\, 
        \A2D00reader/cellindex_n3\, \A2D00reader/N_98\, 
        \A2D00reader/parallelholdreg_7[7]\, \A2D00reader/N_96\, 
        \A2D00reader/parallelholdreg_7[5]\, 
        \A2D00reader/parallelholdreg_RNO_0[7]_net_1\, 
        \A2D00reader/parallelholdreg_RNO[5]_net_1\, 
        \ioBank6Areader/parallelholdreg_0_sqmuxa_3_0\, 
        \ioBank6Areader/parallelholdreg_0_sqmuxa_2_0\, 
        \ioBank6Areader/_decfrac0\, \ioBank6Areader/dataout_0_1\, 
        \ioBank6Areader/parallelholdreg[0]_net_1\, 
        \ioBank6Areader/dataout_RNO_12\, 
        \ioBank6Areader/parallelholdreg_m[2]\, 
        \ioBank6Areader/parallelholdreg_m[1]\, 
        \ioBank6Areader/cellindex_RNO_7[0]\, 
        \ioBank6Areader/cellindex[0]_net_1\, 
        \ioBank6Areader/un1_latch_1\, 
        \ioBank6Areader/cellindex_RNO_7[1]\, 
        \ioBank6Areader/parallelholdreg_7[0]\, 
        \ioBank6Areader/parallelholdreg_7[1]\, 
        \ioBank6Areader/parallelholdreg_7[2]\, 
        \ioBank6Areader/parallelholdreg_RNO_11[0]\, 
        \ioBank6Areader/N_23\, 
        \ioBank6Areader/parallelholdreg_RNO_11[1]\, 
        \ioBank6Areader/N_24\, 
        \ioBank6Areader/parallelholdreg_RNO_11[2]\, 
        \ioBank6Areader/N_25\, 
        \ioBank6Areader/parallelholdreg_1_sqmuxa\, 
        \ioBank6Areader/parallelholdreg[1]_net_1\, 
        \ioBank6Areader/parallelholdreg[2]_net_1\, 
        \ioBank6Areader/cellindex[1]_net_1\, 
        \ioBank65reader/parallelholdreg_0_sqmuxa_3_net_1\, 
        \ioBank65reader/parallelholdreg_0_sqmuxa_2\, 
        \ioBank65reader/_decfrac0\, \ioBank65reader/dataout_0_1\, 
        \ioBank65reader/parallelholdreg[0]_net_1\, 
        \ioBank65reader/cellindex_RNO_2[1]\, 
        \ioBank65reader/cellindex[0]_net_1\, 
        \ioBank65reader/un1_latch_1\, 
        \ioBank65reader/cellindex_RNO_2[0]\, 
        \ioBank65reader/dataout_RNO_7\, 
        \ioBank65reader/parallelholdreg_m[2]\, 
        \ioBank65reader/parallelholdreg_m[1]\, 
        \ioBank65reader/parallelholdreg_7[1]\, 
        \ioBank65reader/parallelholdreg_7[2]\, 
        \ioBank65reader/parallelholdreg_RNO_6[1]\, 
        \ioBank65reader/N_24\, 
        \ioBank65reader/parallelholdreg_RNO_6[2]\, 
        \ioBank65reader/N_25\, 
        \ioBank65reader/parallelholdreg[1]_net_1\, 
        \ioBank65reader/parallelholdreg_1_sqmuxa\, 
        \ioBank65reader/parallelholdreg[2]_net_1\, 
        \ioBank65reader/cellindex[1]_net_1\, 
        \ioBank65reader/N_23\, 
        \ioBank65reader/parallelholdreg_7[0]\, 
        \ioBank65reader/parallelholdreg_RNO_6[0]\, 
        \bitcontrol01latch/un26_address_2\, 
        \bitcontrol01latch/un26_address_0\, 
        \bitcontrol01latch/N_94\, 
        \bitcontrol01latch/output_0_sqmuxa_net_1\, 
        \bitcontrol01latch/un1_paralleldata_1[0]\, 
        \bitcontrol01latch/cellindex[2]_net_1\, 
        \bitcontrol01latch/N_96\, 
        \bitcontrol01latch/un1_paralleldata_1[2]\, 
        \bitcontrol01latch/N_101\, 
        \bitcontrol01latch/cellindex_c1\, 
        \bitcontrol01latch/N_100\, \bitcontrol01latch/N_98\, 
        \bitcontrol01latch/N_97\, \bitcontrol01latch/N_99\, 
        \bitcontrol01latch/un1_paralleldata_1[1]\, 
        \bitcontrol01latch/N_95\, 
        \bitcontrol01latch/cellindex_n2\, 
        \bitcontrol01latch/paralleldata_RNO_1[1]_net_1\, 
        \bitcontrol01latch/N_95_mux\, 
        \bitcontrol01latch/paralleldata_RNO_1[5]_net_1\, 
        \bitcontrol01latch/N_99_mux\, 
        \bitcontrol01latch/output_RNO_1[0]\, 
        \bitcontrol01latch/N_44\, 
        \bitcontrol01latch/bitcontrol01[0]\, 
        \bitcontrol01latch/paralleldata[0]_net_1\, 
        \bitcontrol01latch/paralleldata[1]_net_1\, 
        \bitcontrol01latch/paralleldata[5]_net_1\, 
        \bitcontrol01latch/bitcontrol01[6]\, 
        \bitcontrol01latch/cellindex[0]_net_1\, 
        \bitcontrol01latch/cellindex[1]_net_1\, 
        \bitcontrol01latch/paralleldata_RNO_1[3]_net_1\, 
        \bitcontrol01latch/N_97_mux\, 
        \bitcontrol01latch/paralleldata_RNO_1[4]_net_1\, 
        \bitcontrol01latch/N_98_mux\, 
        \bitcontrol01latch/paralleldata_RNO_1[6]_net_1\, 
        \bitcontrol01latch/N_100_mux\, 
        \bitcontrol01latch/output_RNO_1[1]\, 
        \bitcontrol01latch/N_45\, 
        \bitcontrol01latch/output_RNO_1[2]\, 
        \bitcontrol01latch/N_46\, 
        \bitcontrol01latch/output_RNO_1[3]\, 
        \bitcontrol01latch/N_47\, 
        \bitcontrol01latch/output_RNO_1[4]\, 
        \bitcontrol01latch/N_48\, 
        \bitcontrol01latch/output_RNO_1[6]\, 
        \bitcontrol01latch/N_50\, 
        \bitcontrol01latch/bitcontrol01[1]\, 
        \bitcontrol01latch/bitcontrol01[2]\, 
        \bitcontrol01latch/paralleldata[2]_net_1\, 
        \bitcontrol01latch/bitcontrol01[3]\, 
        \bitcontrol01latch/paralleldata[3]_net_1\, 
        \bitcontrol01latch/bitcontrol01[4]\, 
        \bitcontrol01latch/paralleldata[4]_net_1\, 
        \bitcontrol01latch/paralleldata[6]_net_1\, 
        \bitcontrol01latch/bitcontrol01[5]\, 
        \bitcontrol01latch/paralleldata_RNO_0[7]_net_1\, 
        \bitcontrol01latch/N_101_mux\, 
        \bitcontrol01latch/paralleldata[7]_net_1\, 
        \bitcontrol01latch/N_96_mux\, \bitcontrol01latch/N_51\, 
        \bitcontrol01latch/output_RNO_0[7]_net_1\, 
        \bitcontrol01latch/paralleldata_RNO_1[2]_net_1\, 
        \bitcontrol01latch/cellindex_n1\, 
        \bitcontrol01latch/N_79\, 
        \bitcontrol01latch/cellindex_1_sqmuxa_net_1\, 
        \bitcontrol01latch/output_RNO_1[5]\, 
        \bitcontrol01latch/N_49\, \bitcontrol01latch/N_94_mux\, 
        \bitcontrol01latch/paralleldata_RNO_1[0]_net_1\, 
        \ioBank66reader/parallelholdreg_0_sqmuxa_3_net_1\, 
        \ioBank66reader/parallelholdreg_0_sqmuxa_0\, 
        \ioBank66reader/cellindex[0]_net_1\, 
        \ioBank66reader/cellindex[1]_net_1\, 
        \ioBank66reader/dataout_0_2\, 
        \ioBank66reader/parallelholdreg[1]_net_1\, 
        \ioBank66reader/parallelholdreg_m[2]\, 
        \ioBank66reader/cellindex_RNO_3[1]\, 
        \ioBank66reader/un1_latch_1\, 
        \ioBank66reader/cellindex_RNO_3[0]\, 
        \ioBank66reader/dataout_RNO_8\, 
        \ioBank66reader/parallelholdreg_m[0]\, 
        \ioBank66reader/parallelholdreg_1_sqmuxa\, 
        \ioBank66reader/parallelholdreg[0]_net_1\, 
        \ioBank66reader/parallelholdreg[2]_net_1\, 
        \ioBank66reader/N_25\, 
        \ioBank66reader/parallelholdreg_7[2]\, 
        \ioBank66reader/N_24\, 
        \ioBank66reader/parallelholdreg_7[1]\, 
        \ioBank66reader/N_23\, 
        \ioBank66reader/parallelholdreg_7[0]\, 
        \ioBank66reader/parallelholdreg_RNO_7[2]\, 
        \ioBank66reader/parallelholdreg_RNO_7[1]\, 
        \ioBank66reader/parallelholdreg_RNO_7[0]\, 
        \iobank63debounce/DebounceTimer[2]_net_1\, 
        \iobank63debounce/DebounceTimer[3]_net_1\, 
        \iobank63debounce/DebounceTimer_m2_0_a2_2\, 
        \iobank63debounce/DebounceTimer[4]_net_1\, 
        \iobank63debounce/DebounceTimer[6]_net_1\, 
        \iobank63debounce/DebounceTimer[5]_net_1\, 
        \iobank63debounce/N_48\, 
        \iobank63debounce/un1_previousposition7\, 
        \iobank63debounce/DebounceTimer[7]_net_1\, 
        \iobank63debounce/DebounceTimer_c6\, 
        \iobank63debounce/DebounceTimer_c3\, 
        \iobank63debounce/DebounceTimer_n7\, 
        \iobank63debounce/DebounceTimer_n6\, 
        \iobank63debounce/DebounceTimer_c5\, 
        \iobank63debounce/DebounceTimer_n5\, 
        \iobank63debounce/DebounceTimer_c4\, 
        \iobank63debounce/DebounceTimer_n4\, 
        \iobank63debounce/DebounceTimer_n3\, 
        \iobank63debounce/DebounceTimer_c2\, 
        \iobank63debounce/DebounceTimer_n2\, 
        \iobank63debounce/DebounceTimer_c1\, 
        \iobank63debounce/DebounceTimer_RNO_2[8]\, 
        \iobank63debounce/Changing_net_1\, 
        \iobank63debounce/DebounceTimere\, 
        \iobank63debounce/DebounceTimer_n1\, 
        \iobank63debounce/DebounceTimer[1]_net_1\, 
        \iobank63debounce/DebounceTimer[0]_net_1\, 
        \iobank63debounce/N_67\, 
        \iobank63debounce/DebounceTimer[8]_net_1\, 
        \iobank63debounce/IOOut_0_sqmuxa\, 
        \iobank63debounce/IOOut_3[0]\, 
        \iobank63debounce/PreviousPosition[0]_net_1\, 
        \iobank63debounce/IOOut_3[1]\, 
        \iobank63debounce/PreviousPosition[1]_net_1\, 
        \iobank63debounce/IOOut_3[2]\, 
        \iobank63debounce/PreviousPosition[2]_net_1\, 
        \iobank63debounce/PreviousPosition_3[0]\, 
        \iobank63debounce/CurrentPosition[0]_net_1\, 
        \iobank63debounce/PreviousPosition_3[1]\, 
        \iobank63debounce/CurrentPosition[1]_net_1\, 
        \iobank63debounce/PreviousPosition_3[2]\, 
        \iobank63debounce/CurrentPosition[2]_net_1\, 
        \iobank63debounce/Changing_0\, 
        \matrix_read04/ctrl15_m1_e_0_1\, 
        \matrix_read04/stage[3]_net_1\, 
        \matrix_read04/stage[2]_net_1\, 
        \matrix_read04/ctrl15_m1_e_0_0\, 
        \matrix_read04/stage[4]_net_1\, 
        \matrix_read04/stage[5]_net_1\, 
        \matrix_read04/ctrl9_0_a3_0\, 
        \matrix_read04/stage_m1_0_a2_0\, 
        \matrix_read04/ctrl_7_i_0_a3_0_0[2]\, 
        \matrix_read04/ctrl_7_i_0_a3_1[2]\, 
        \matrix_read04/stage[1]_net_1\, 
        \matrix_read04/stage_N_3_mux\, \matrix_read04/N_26\, 
        \matrix_read04/ctrl15\, \matrix_read04/N_17\, 
        \matrix_read04/N_36\, \matrix_read04/N_19\, 
        \matrix_read04/ctrl9\, \matrix_read04/N_63\, 
        \matrix_read04/ctrl12\, \matrix_read04/N_68\, 
        \matrix_read04/ctrl18_1\, \matrix_read04/N_64\, 
        \matrix_read04/ctrl18\, \matrix_read04/N_65\, 
        \matrix_read04/ctrl21\, \matrix_read04/ctrl_RNO_0[0]\, 
        \matrix_read04/N_37\, \matrix_read04/ctrl_RNO_0[1]\, 
        \matrix_read04/ctrl_RNO_0[3]\, 
        \matrix_read04/ctrl_RNO_0[4]\, \matrix_read04/N_60\, 
        \matrix_read04/N_66\, \matrix_read04/N_21\, 
        \matrix_read04/N_15\, \matrix_read04/N_55\, 
        \matrix_read04/stage[0]_net_1\, \matrix_read04/N_13\, 
        \matrix_read04/ctrl_RNO_0[2]_net_1\, \matrix_read04/N_58\, 
        \matrix_read04/data04[0]_net_1\, 
        \matrix_read04/data04[1]_net_1\, 
        \matrix_read04/data04[2]_net_1\, 
        \matrix_read04/data03[0]_net_1\, 
        \matrix_read04/data03[1]_net_1\, 
        \matrix_read04/data03[2]_net_1\, 
        \matrix_read04/data02[0]_net_1\, 
        \matrix_read04/data02[1]_net_1\, 
        \matrix_read04/data02[2]_net_1\, 
        \matrix_read04/data01[0]_net_1\, 
        \matrix_read04/data01[1]_net_1\, 
        \matrix_read04/data01[2]_net_1\, 
        \matrix_read04/data00[0]_net_1\, 
        \matrix_read04/data00[1]_net_1\, 
        \matrix_read04/data00[2]_net_1\, \GND\, \VCC\, 
        \inputs60_pad[0]/U0/NET1\, \AN2DimControl_pad/U0/NET1\, 
        \AN2DimControl_pad/U0/NET2\, \HrtBeat_pad/U0/NET1\, 
        \HrtBeat_pad/U0/NET2\, \AN6NRMControl_pad/U0/NET1\, 
        \AN6NRMControl_pad/U0/NET2\, 
        \inputs62_ctrl_pad[0]/U0/NET1\, 
        \inputs62_ctrl_pad[0]/U0/NET2\, 
        \AN4NRMControl_pad/U0/NET1\, \AN4NRMControl_pad/U0/NET2\, 
        \inputs62_ctrl_pad[2]/U0/NET1\, 
        \inputs62_ctrl_pad[2]/U0/NET2\, \inputs61_pad[0]/U0/NET1\, 
        \inputs62_pad[2]/U0/NET1\, \AdDout_pad/U0/NET1\, 
        \inputs62_pad[0]/U0/NET1\, \inputs62_ctrl_pad[1]/U0/NET1\, 
        \inputs62_ctrl_pad[1]/U0/NET2\, \SerialLoad_pad/U0/NET1\, 
        \XCLK_pad/U0/NET1\, \ExternalHardwareEn_pad[1]/U0/NET1\, 
        \ExternalHardwareEn_pad[1]/U0/NET2\, 
        \inputs62_ctrl_pad[3]/U0/NET1\, 
        \inputs62_ctrl_pad[3]/U0/NET2\, 
        \ExternalHardwareEn_pad[2]/U0/NET1\, 
        \ExternalHardwareEn_pad[2]/U0/NET2\, 
        \ExternalHardwareEn_pad[6]/U0/NET1\, 
        \ExternalHardwareEn_pad[6]/U0/NET2\, 
        \inputs67_ctrl_pad[0]/U0/NET1\, 
        \inputs67_ctrl_pad[0]/U0/NET2\, 
        \inputs62_ctrl_pad[4]/U0/NET1\, 
        \inputs62_ctrl_pad[4]/U0/NET2\, 
        \AN1DimControl_pad/U0/NET1\, \AN1DimControl_pad/U0/NET2\, 
        \inputs67_ctrl_pad[2]/U0/NET1\, 
        \inputs67_ctrl_pad[2]/U0/NET2\, 
        \AN6PTTControl_pad/U0/NET1\, \AN6PTTControl_pad/U0/NET2\, 
        \AN5NRMControl_pad/U0/NET1\, \AN5NRMControl_pad/U0/NET2\, 
        \inputs67_pad[0]/U0/NET1\, 
        \ExternalHardwareEn_pad[4]/U0/NET1\, 
        \ExternalHardwareEn_pad[4]/U0/NET2\, 
        \ExternalHardwareEn_pad[5]/U0/NET1\, 
        \ExternalHardwareEn_pad[5]/U0/NET2\, 
        \AN3DimControl_pad/U0/NET1\, \AN3DimControl_pad/U0/NET2\, 
        \SerialClock_pad/U0/NET1\, \inputs61_pad[1]/U0/NET1\, 
        \EncLgtControl_pad/U0/NET1\, \EncLgtControl_pad/U0/NET2\, 
        \inputs60_pad[3]/U0/NET1\, \inputs67_ctrl_pad[1]/U0/NET1\, 
        \inputs67_ctrl_pad[1]/U0/NET2\, 
        \PnlLgtControl_pad/U0/NET1\, \PnlLgtControl_pad/U0/NET2\, 
        \AdCs1_pad/U0/NET1\, \AdCs1_pad/U0/NET2\, 
        \inputs60_pad[2]/U0/NET1\, \AN4PTTControl_pad/U0/NET1\, 
        \AN4PTTControl_pad/U0/NET2\, 
        \ExternalHardwareEn_pad[0]/U0/NET1\, 
        \ExternalHardwareEn_pad[0]/U0/NET2\, 
        \AdClock_pad/U0/NET1\, \AdClock_pad/U0/NET2\, 
        \inputs60_pad[1]/U0/NET1\, \SerialIn_pad/U0/NET1\, 
        \inputs61_pad[3]/U0/NET1\, \LogicReset_pad/U0/NET1\, 
        \inputs67_ctrl_pad[3]/U0/NET1\, 
        \inputs67_ctrl_pad[3]/U0/NET2\, \inputs62_pad[1]/U0/NET1\, 
        \AN5PTTControl_pad/U0/NET1\, \AN5PTTControl_pad/U0/NET2\, 
        \inputs67_ctrl_pad[4]/U0/NET1\, 
        \inputs67_ctrl_pad[4]/U0/NET2\, \uCReset_pad/U0/NET1\, 
        \uCReset_pad/U0/NET2\, 
        \ExternalHardwareEn_pad[3]/U0/NET1\, 
        \ExternalHardwareEn_pad[3]/U0/NET2\, 
        \ResetIn_pad/U0/NET1\, \SerialOut_pad/U0/NET1\, 
        \SerialOut_pad/U0/NET2\, \inputs67_pad[1]/U0/NET1\, 
        \inputs61_pad[2]/U0/NET1\, \Ale_pad/U0/NET1\, 
        \inputs67_pad[2]/U0/NET1\, AFLSDF_VCC, AFLSDF_GND
         : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;

begin 

    AFLSDF_GND <= GND_power_net1;
    \GND\ <= GND_power_net1;
    \VCC\ <= VCC_power_net1;
    AFLSDF_VCC <= VCC_power_net1;

    \matrix_read03/stage_RNO[2]\ : XA1C
      port map(A => \matrix_read03/stage[2]_net_1\, B => 
        \matrix_read03/N_26\, C => LogicReset_c, Y => 
        \matrix_read03/N_19\);
    
    \iobank69debounce/IOOut[0]\ : DFN1E0
      port map(D => \iobank69debounce/IOOut_3[0]\, CLK => Clock03, 
        E => \iobank69debounce/IOOut_0_sqmuxa\, Q => \ohold69[0]\);
    
    \A2D00reader/parallelholdreg_RNO_1[10]\ : OR2
      port map(A => \ohold50[10]\, B => SerialLoad_c, Y => 
        \A2D00reader/parallelholdreg_7[10]\);
    
    \ioBank66reader/parallelholdreg_RNO[2]\ : OR2
      port map(A => \ioBank66reader/N_25\, B => LogicReset_c, Y
         => \ioBank66reader/parallelholdreg_RNO_7[2]\);
    
    \iobank63debounce/DebounceTimer_RNI0F752[4]\ : NOR2B
      port map(A => \iobank63debounce/DebounceTimer_c3\, B => 
        \iobank63debounce/DebounceTimer[4]_net_1\, Y => 
        \iobank63debounce/DebounceTimer_c4\);
    
    \A2D01reader/cellindex_RNI303P1[2]\ : AOI1B
      port map(A => \A2D01reader/un170_dataout_11_0\, B => 
        \A2D01reader/cellindex_c1\, C => 
        \ioBank60reader.cellindex_1_sqmuxa_1_1\, Y => 
        \A2D01reader/cellindex_1_sqmuxa_1\);
    
    \A2DRead/un60_dataregu1ch0_277_RNID3N7A\ : OR2
      port map(A => \A2DRead/un60_dataregu1ch0_278_0\, B => 
        \A2DRead/un60_dataregu1ch0_166\, Y => \A2DRead/N_1815\);
    
    \heart_beat/HeartBeatOut_RNO_3\ : OA1C
      port map(A => \heart_beat/counter[9]_net_1\, B => 
        \heart_beat/un1_counterlt9\, C => 
        \heart_beat/counter[10]_net_1\, Y => 
        \heart_beat/un1_counterlt11\);
    
    \snkpout01/counter[10]\ : DFN1
      port map(D => \snkpout01/counter_n10\, CLK => Clock04, Q
         => \snkpout01/counter[10]_net_1\);
    
    \ioBank69reader/parallelholdreg[0]\ : DFN1
      port map(D => \ioBank69reader/parallelholdreg_RNO_10[0]\, 
        CLK => Clock01, Q => 
        \ioBank69reader/parallelholdreg[0]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNIHP9F1_0[5]\ : MAJ3
      port map(A => \A2DRead/N_1447\, B => \A2DRead/N_1451\, C
         => \A2DRead/N_1449\, Y => \A2DRead/N_1462\);
    
    \A2DRead/DataRegU1Ch1p_RNIMS46R[10]\ : XOR3
      port map(A => \A2DRead/N_1608\, B => \A2DRead/N_1635\, C
         => \A2DRead/N_1610\, Y => \A2DRead/N_1639\);
    
    \iobank61debounce/IOOut_RNO[1]\ : MX2B
      port map(A => \iobank61debounce/PreviousPosition[1]_net_1\, 
        B => \inputs61_c[1]\, S => LogicReset_c, Y => 
        \iobank61debounce/IOOut_8[1]\);
    
    \A2DRead/DataRegU1Ch1o_RNI2UPT[5]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1m[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch1o[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch1n[5]_net_1\, Y => \A2DRead/N_1451\);
    
    \pwmdisable01latch/paralleldata[4]\ : DFN1
      port map(D => \pwmdisable01latch/paralleldata_RNO_2[4]\, 
        CLK => SerialClock_c, Q => 
        \pwmdisable01latch/paralleldata[4]_net_1\);
    
    \pwmdisable01latch/paralleldata_RNO[0]\ : NOR2A
      port map(A => \pwmdisable01latch/N_94_mux\, B => 
        LogicReset_c, Y => 
        \pwmdisable01latch/paralleldata_RNO_2[0]\);
    
    \AN3DimControl_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => AN3DimControl_c, E => \VCC\, DOUT => 
        \AN3DimControl_pad/U0/NET1\, EOUT => 
        \AN3DimControl_pad/U0/NET2\);
    
    \matrix_read04/ctrl[0]\ : DFN1
      port map(D => \matrix_read04/ctrl_RNO_0[0]\, CLK => Clock03, 
        Q => \inputs67_ctrl_c[0]\);
    
    \A2DRead/DataRegU1Ch0g_RNINUKN1[11]\ : XOR3
      port map(A => \A2DRead/N_1971\, B => \A2DRead/N_1967\, C
         => \A2DRead/N_1969\, Y => \A2DRead/N_2002\);
    
    \externenablelatch/paralleldata[0]\ : DFN1
      port map(D => 
        \externenablelatch/paralleldata_RNO_0[0]_net_1\, CLK => 
        SerialClock_c, Q => 
        \externenablelatch/paralleldata[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNIC0GV2_0[4]\ : MAJ3
      port map(A => \A2DRead/N_1800\, B => \A2DRead/N_1777\, C
         => \A2DRead/N_1802\, Y => \A2DRead/N_1811\);
    
    \A2DRead/DataRegU1Ch1c_RNIUSSC_0[3]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1e[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch1d[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch1c[3]_net_1\, Y => \A2DRead/N_1394\);
    
    \ioBank6Areader/parallelholdreg_RNO_0[1]\ : MX2
      port map(A => \ioBank6Areader/parallelholdreg_7[1]\, B => 
        \ioBank6Areader/parallelholdreg[1]_net_1\, S => 
        \ioBank6Areader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank6Areader/N_24\);
    
    \ioBank64reader/dataout_RNO_2\ : NOR2B
      port map(A => \ioBank64reader/parallelholdreg[2]_net_1\, B
         => \ioBank64reader/cellindex[1]_net_1\, Y => 
        \ioBank64reader/parallelholdreg_m[2]\);
    
    \A2DRead/DataRegU1Ch1p_RNIDH3NA2[11]\ : NOR2B
      port map(A => \A2DRead/N_1667\, B => \A2DRead/N_1640\, Y
         => \A2DRead/un60_dataregu1ch1_469\);
    
    \A2DRead/DataRegU1Ch1f_RNIUOVN[6]\ : XOR3
      port map(A => \A2DRead/N_1450\, B => 
        \A2DRead/DataRegU1Ch1f[6]_net_1\, C => \A2DRead/N_1448\, 
        Y => \A2DRead/N_1485\);
    
    \A2DRead/DataRegU1Ch1f_RNITV417[5]\ : XOR3
      port map(A => \A2DRead/N_1517\, B => \A2DRead/N_1515\, C
         => \A2DRead/N_1492\, Y => \A2DRead/N_1523\);
    
    \A2DRead/DataRegU1Ch1f_RNI0017R[8]\ : XOR3
      port map(A => \A2DRead/N_1607\, B => \A2DRead/N_1580\, C
         => \A2DRead/N_1582\, Y => \A2DRead/N_1611\);
    
    \A2DRead/DataRegU1Ch0f_RNIDGAKG[8]\ : XOR3
      port map(A => \A2DRead/N_1922\, B => \A2DRead/N_1924\, C
         => \A2DRead/N_1897\, Y => \A2DRead/N_1928\);
    
    \A2DRead/DataRegU1Ch1k[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1j[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1k[2]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_423_0_tz_s\ : AO1
      port map(A => \A2DRead/N_1807\, B => \A2DRead/N_1809\, C
         => \A2DRead/N_1866\, Y => 
        \A2DRead/un60_dataregu1ch0_423_0_tz_out\);
    
    \ExternalHardwareEn_pad[1]/U0/U0\ : IOPAD_TRI
      port map(D => \ExternalHardwareEn_pad[1]/U0/NET1\, E => 
        \ExternalHardwareEn_pad[1]/U0/NET2\, PAD => 
        ExternalHardwareEn(1));
    
    \A2DRead/DataRegU1Ch1o_RNI2VPR2[4]\ : XOR3
      port map(A => \A2DRead/N_1428\, B => \A2DRead/N_1424\, C
         => \A2DRead/N_1426\, Y => \A2DRead/N_1459\);
    
    \A2DRead/step_RNIR5A12[6]\ : NOR3C
      port map(A => \A2DRead/N_111\, B => 
        \A2DRead/DataRegU1Ch0n_1_sqmuxa_0_a2_0_0\, C => 
        \A2DRead/step[6]_net_1\, Y => \A2DRead/N_128\);
    
    \SerialClock_pad/U0/U0\ : IOPAD_IN
      port map(PAD => SerialClock, Y => \SerialClock_pad/U0/NET1\);
    
    \iobank6Adebounce/PreviousPosition[0]\ : DFN1
      port map(D => \iobank6Adebounce/PreviousPosition_3[0]\, CLK
         => Clock03, Q => 
        \iobank6Adebounce/PreviousPosition[0]_net_1\);
    
    \discretedutycycle01/paralleldata_RNO_1[8]\ : NOR3C
      port map(A => \discretedutycycle01/un6_address_2\, B => 
        \discretedutycycle01/output_0_sqmuxa_net_1\, C => 
        \discretedutycycle01/un1_paralleldata_2[9]\, Y => 
        \discretedutycycle01/N_135\);
    
    \A2DRead/DataRegU1Ch1i_RNIT7A332[12]\ : XOR3
      port map(A => \A2DRead/N_1679\, B => \A2DRead/N_1677\, C
         => \A2DRead/N_1668\, Y => \A2DRead/N_1681\);
    
    \iobank6Adebounce/DebounceTimer_RNO[6]\ : XA1
      port map(A => \iobank6Adebounce/DebounceTimer_c5\, B => 
        \iobank6Adebounce/DebounceTimer[6]_net_1\, C => 
        \iobank6Adebounce/un1_previousposition7\, Y => 
        \iobank6Adebounce/DebounceTimer_n6\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I71_un1_Y\ : 
        NOR3C
      port map(A => \A2DRead/N226\, B => \A2DRead/N208_0\, C => 
        \A2DRead/N218_0\, Y => \A2DRead/I71_un1_Y\);
    
    \matrix_read04/dataOut01[1]\ : DFN1
      port map(D => \matrix_read04/data01[1]_net_1\, CLK => 
        Clock03, Q => \dhold68[1]\);
    
    \A2DRead/DataRegU1Ch1j_RNIP2U31_0[5]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1l[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch1k[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch1j[5]_net_1\, Y => \A2DRead/N_1454\);
    
    \A2DRead/DataRegU1Ch1d[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1c[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1d[3]_net_1\);
    
    \A2DRead/DataRegU1Ch0b[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0a[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0b[4]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNIFUC0T_0[11]\ : OA1
      port map(A => \A2DRead/N_2011\, B => \A2DRead/N_2013\, C
         => \A2DRead/N_2022\, Y => 
        \A2DRead/un60_dataregu1ch0_808_0\);
    
    \A2DRead/DataRegU1Ch0g_RNITV362[8]\ : XOR3
      port map(A => \A2DRead/N_1887\, B => \A2DRead/N_1883\, C
         => \A2DRead/N_1885\, Y => \A2DRead/N_1918\);
    
    \A2DRead/DataRegU1Ch0b[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0a[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0b[11]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNIPS55V_0[10]\ : MAJ3
      port map(A => \A2DRead/N_1955\, B => \A2DRead/N_1957\, C
         => \A2DRead/N_1982\, Y => \A2DRead/N_1987\);
    
    \externenablelatch/output_RNO[2]\ : NOR2A
      port map(A => \externenablelatch/N_48\, B => LogicReset_c, 
        Y => \externenablelatch/output_RNO_0[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0p_RNISVV71_0[1]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0b[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch0a[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch0p[1]_net_1\, Y => \A2DRead/N_1707\);
    
    \A2DRead/DataRegU1Ch1j[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1i[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1j[9]_net_1\);
    
    \A2DRead/DataRegU1Ch1e_RNIBFFP[11]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1c[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch1e[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch1d[11]_net_1\, Y => \A2DRead/N_1615\);
    
    \A2DRead/DataRegU1Ch0d_RNID3BG[9]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0c[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch0e[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch0d[9]_net_1\, Y => \A2DRead/N_1906\);
    
    \A2D00reader/dataout\ : DFN1
      port map(D => \A2D00reader/dataout_RNO_0_net_1\, CLK => 
        Clock01, Q => do50);
    
    \iobank65debounce/DebounceTimer[2]\ : DFN1E1
      port map(D => \iobank65debounce/DebounceTimer_n2\, CLK => 
        Clock03, E => \iobank65debounce/DebounceTimere\, Q => 
        \iobank65debounce/DebounceTimer[2]_net_1\);
    
    \ioBank66reader/dataout\ : DFN1
      port map(D => \ioBank66reader/dataout_RNO_8\, CLK => 
        Clock01, Q => do66);
    
    \A2DRead/DataRegU1Ch1o_RNIFDRR2_0[9]\ : MAJ3
      port map(A => \A2DRead/N_1564\, B => \A2DRead/N_1568\, C
         => \A2DRead/N_1566\, Y => \A2DRead/N_1600\);
    
    \ioBank6Breader/cellindex_RNO[1]\ : NOR3A
      port map(A => \ioBank6Breader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank6Breader/un1_latch_1\, Y => 
        \ioBank6Breader/cellindex_RNO_8[1]\);
    
    \A2DRead/DataRegU1Ch1c_RNIA9TC[7]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1c[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch1e[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch1d[7]_net_1\, Y => \A2DRead/N_1503\);
    
    \A2DRead/DataRegU1Ch0i[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0h[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0i[11]_net_1\);
    
    \ioBank6Areader/parallelholdreg_RNO_1[2]\ : OR2
      port map(A => \ohold6A[2]\, B => SerialLoad_c, Y => 
        \ioBank6Areader/parallelholdreg_7[2]\);
    
    \A2DRead/DataRegU1Ch0f_RNI2S669[1]\ : NOR2B
      port map(A => \A2DRead/N_1734\, B => \A2DRead/N_1736\, Y
         => \A2DRead/un60_dataregu1ch0_52\);
    
    \A2DRead/DataRegU1Ch0f_RNI34TPB[4]\ : OR2
      port map(A => \A2DRead/un60_dataregu1ch0_203_0\, B => 
        \A2DRead/un60_dataregu1ch0_119\, Y => \A2DRead/N_1785\);
    
    \A2DRead/DataRegU1Ch0j[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0i[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0j[5]_net_1\);
    
    \A2DRead/DataRegU1Ch0j[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0i[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0j[1]_net_1\);
    
    \A2DRead/DataRegU1Ch0d_RNI1NAG_0[5]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0e[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch0d[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch0c[5]_net_1\, Y => \A2DRead/N_1795\);
    
    \matrix_read04/data04[2]\ : DFN1E1
      port map(D => \inputs67_c[2]\, CLK => Clock03, E => 
        \matrix_read04/ctrl21\, Q => 
        \matrix_read04/data04[2]_net_1\);
    
    \A2DRead/DataInReg_RNO_0[2]\ : NOR3C
      port map(A => \A2DRead/step[4]_net_1\, B => 
        \A2DRead/step[6]_net_1\, C => \A2DRead/step[2]_net_1\, Y
         => \A2DRead/DataInReg_321_e_1\);
    
    \iobank63debounce/DebounceTimer_RNIQQIV[8]\ : OA1C
      port map(A => \iobank63debounce/DebounceTimer[8]_net_1\, B
         => \iobank63debounce/Changing_net_1\, C => LogicReset_c, 
        Y => \iobank63debounce/IOOut_0_sqmuxa\);
    
    \bitcontrol01latch/paralleldata[5]\ : DFN1
      port map(D => 
        \bitcontrol01latch/paralleldata_RNO_1[5]_net_1\, CLK => 
        SerialClock_c, Q => 
        \bitcontrol01latch/paralleldata[5]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I43_Y\ : AO1
      port map(A => \A2DRead/N202_0\, B => \A2DRead/N199_0\, C
         => \A2DRead/N198\, Y => \A2DRead/N223\);
    
    \A2DRead/DataRegU1Ch0j[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0i[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0j[4]_net_1\);
    
    \iobank63debounce/IOOut[2]\ : DFN1E0
      port map(D => \iobank63debounce/IOOut_3[2]\, CLK => Clock03, 
        E => \iobank63debounce/IOOut_0_sqmuxa\, Q => \ohold63[2]\);
    
    \A2D00reader/parallelholdreg_RNO_0[6]\ : MX2
      port map(A => \A2D00reader/parallelholdreg_7[6]\, B => 
        \A2D00reader/parallelholdreg[6]_net_1\, S => 
        \A2D00reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D00reader/N_97\);
    
    \A2DRead/DataRegU1Ch0k[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0j[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0k[5]_net_1\);
    
    \matrix_read03/dataOut00_RNIS0I7[1]\ : INV
      port map(A => \dhold62[1]\, Y => \dhold62_i[1]\);
    
    \A2DRead/DatHldRegU1Ch0[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0[15]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch0_1_sqmuxa\, Q => 
        \ohold50[10]\);
    
    \A2DRead/DataRegU1Ch1h[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1g[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1h[8]_net_1\);
    
    \inputs62_ctrl_pad[4]/U0/U1\ : IOTRI_OB_EB
      port map(D => \inputs62_ctrl_c[4]\, E => \VCC\, DOUT => 
        \inputs62_ctrl_pad[4]/U0/NET1\, EOUT => 
        \inputs62_ctrl_pad[4]/U0/NET2\);
    
    \A2DRead/DataRegU1Ch1f_RNIC7VL2[3]\ : XOR3
      port map(A => \A2DRead/N_1427\, B => \A2DRead/N_1425\, C
         => \A2DRead/N_1404\, Y => \A2DRead/N_1435\);
    
    \ioBank65reader/cellindex_RNO[1]\ : NOR3A
      port map(A => \ioBank65reader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank65reader/un1_latch_1\, Y => 
        \ioBank65reader/cellindex_RNO_2[1]\);
    
    \matrix_read04/dataOut03[0]\ : DFN1
      port map(D => \matrix_read04/data03[0]_net_1\, CLK => 
        Clock03, Q => \dhold6A[0]\);
    
    \iobank68debounce/CurrentPosition[2]\ : DFN1
      port map(D => \dhold68_i[2]\, CLK => Clock03, Q => 
        \iobank68debounce/CurrentPosition[2]_net_1\);
    
    \A2D00reader/cellindex_RNIUKRJ2[1]\ : AOI1
      port map(A => 
        \A2D00reader/parallelholdreg_0_sqmuxa_5_net_1\, B => 
        \A2D01reader.parallelholdreg_0_sqmuxa_9\, C => 
        SerialLoad_c, Y => \A2D00reader/parallelholdreg_1_sqmuxa\);
    
    \pwmdisable01latch/paralleldata_RNO_1[0]\ : NOR3B
      port map(A => \pwmdisable01latch/output_0_sqmuxa_net_1\, B
         => \pwmdisable01latch/un1_paralleldata_1[0]\, C => 
        \pwmdisable01latch/cellindex[2]_net_1\, Y => 
        \pwmdisable01latch/N_94\);
    
    \A2DRead/DataRegU1Ch1j_RNIJF0M2[7]\ : XOR3
      port map(A => \A2DRead/N_1511\, B => \A2DRead/N_1509\, C
         => \A2DRead/N_1486\, Y => \A2DRead/N_1519\);
    
    \A2D01reader/parallelholdreg[0]\ : DFN1
      port map(D => \A2D01reader/parallelholdreg_RNO_0[0]_net_1\, 
        CLK => Clock01, Q => 
        \A2D01reader/parallelholdreg[0]_net_1\);
    
    SerialOut_pad_RNO_0 : NOR3C
      port map(A => do66, B => do65, C => SerialOut_6, Y => 
        SerialOut_10);
    
    \inputs62_ctrl_pad[0]/U0/U1\ : IOTRI_OB_EB
      port map(D => \inputs62_ctrl_c[0]\, E => \VCC\, DOUT => 
        \inputs62_ctrl_pad[0]/U0/NET1\, EOUT => 
        \inputs62_ctrl_pad[0]/U0/NET2\);
    
    \A2DRead/step_RNIFB3V[3]\ : XNOR2
      port map(A => \A2DRead/step[3]_net_1\, B => 
        \A2DRead/step[2]_net_1\, Y => \A2DRead/N_18\);
    
    \ExternalHardwareEn_pad[4]/U0/U1\ : IOTRI_OB_EB
      port map(D => \ExternalHardwareEn_c[4]\, E => \VCC\, DOUT
         => \ExternalHardwareEn_pad[4]/U0/NET1\, EOUT => 
        \ExternalHardwareEn_pad[4]/U0/NET2\);
    
    \iobank66debounce/DebounceTimer_RNIGH4A1[6]\ : NOR3C
      port map(A => \iobank66debounce/DebounceTimer[5]_net_1\, B
         => \iobank66debounce/DebounceTimer[6]_net_1\, C => 
        \iobank66debounce/DebounceTimer[2]_net_1\, Y => 
        \iobank66debounce/DebounceTimer_m2_0_a2_1\);
    
    \A2DRead/DataRegU1Ch0m[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0l[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0m[9]_net_1\);
    
    \A2DRead/DataRegU1Ch1h[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1g[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1h[9]_net_1\);
    
    \iobank69debounce/DebounceTimer_RNO[6]\ : XA1
      port map(A => \iobank69debounce/DebounceTimer_c5\, B => 
        \iobank69debounce/DebounceTimer[6]_net_1\, C => 
        \iobank69debounce/un1_previousposition7\, Y => 
        \iobank69debounce/DebounceTimer_n6\);
    
    \matrix_read03/stage_RNI1DRL[4]\ : NOR2B
      port map(A => \matrix_read03/stage[4]_net_1\, B => 
        \matrix_read03/stage[3]_net_1\, Y => 
        \matrix_read03/stage_m1_0_a2_0\);
    
    \ioBank67reader/dataout_RNO_1\ : NOR2B
      port map(A => \ioBank67reader/parallelholdreg[1]_net_1\, B
         => \ioBank67reader/cellindex[0]_net_1\, Y => 
        \ioBank67reader/parallelholdreg_m[1]\);
    
    \clock_master/counter_8_I_12\ : XOR2
      port map(A => \counter[1]\, B => LogicReset_c, Y => 
        \clock_master/DWACT_ADD_CI_0_pog_array_0[0]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I10_P0N\ : OR2
      port map(A => \A2DRead/N_2031\, B => \A2DRead/N_2033\, Y
         => \A2DRead/N184\);
    
    \A2DRead/DataRegU1Ch0p_RNI8C081_0[5]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0b[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch0a[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch0p[5]_net_1\, Y => \A2DRead/N_1797\);
    
    \heart_beat/un1_counter_1_m18\ : NOR3C
      port map(A => \heart_beat/counter[12]_net_1\, B => 
        \heart_beat/N_17_i\, C => \heart_beat/counter[13]_net_1\, 
        Y => \heart_beat/N_19_i\);
    
    \A2DRead/DataRegU1Ch1a[12]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[12]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch1a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1a[12]_net_1\);
    
    \iobank6Adebounce/IOOut[1]\ : DFN1E0
      port map(D => \iobank6Adebounce/IOOut_3[1]\, CLK => Clock03, 
        E => \iobank6Adebounce/IOOut_0_sqmuxa\, Q => \ohold6A[1]\);
    
    \ioBank6Areader/cellindex_RNO[0]\ : NOR3
      port map(A => \ioBank6Areader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank6Areader/un1_latch_1\, Y => 
        \ioBank6Areader/cellindex_RNO_7[0]\);
    
    \iobank67debounce/Changing_RNO\ : XOR2
      port map(A => \iobank67debounce/CurrentPosition[0]_net_1\, 
        B => \iobank67debounce/PreviousPosition[0]_net_1\, Y => 
        \iobank67debounce/Changing_0\);
    
    \firmware/dataout_RNO_2\ : MX2
      port map(A => \firmware/parallelholdreg[0]_net_1\, B => 
        \firmware/parallelholdreg[4]_net_1\, S => 
        \firmware/cellindex[2]_net_1\, Y => \firmware/N_49\);
    
    \A2DRead/step_RNO[5]\ : XA1C
      port map(A => \A2DRead/step[5]_net_1\, B => \A2DRead/N_63\, 
        C => LogicReset_c, Y => \A2DRead/N_49\);
    
    \A2DRead/DataRegU1Ch1c_RNIRPSC[2]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1c[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch1e[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch1d[2]_net_1\, Y => \A2DRead/N_1371\);
    
    \addresslatch/output[0]\ : DFN1
      port map(D => \addresslatch/output_RNO[0]_net_1\, CLK => 
        Clock01, Q => \internaddr[0]\);
    
    \A2DRead/DataRegU1Ch1f_RNI35535[8]\ : XOR3
      port map(A => \A2DRead/N_1518\, B => \A2DRead/N_1541\, C
         => \A2DRead/N_1516\, Y => \A2DRead/N_1549\);
    
    \matrix_read04/dataOut00[1]\ : DFN1
      port map(D => \matrix_read04/data00[1]_net_1\, CLK => 
        Clock03, Q => \dhold67[1]\);
    
    \iobank61debounce/IOOut_RNO[0]\ : MX2B
      port map(A => \iobank61debounce/PreviousPosition[0]_net_1\, 
        B => \inputs61_c[0]\, S => LogicReset_c, Y => 
        \iobank61debounce/IOOut_8[0]\);
    
    \A2D00reader/parallelholdreg[4]\ : DFN1
      port map(D => \A2D00reader/parallelholdreg_RNO[4]_net_1\, 
        CLK => Clock01, Q => 
        \A2D00reader/parallelholdreg[4]_net_1\);
    
    \iobank67debounce/DebounceTimer_RNI9FS6[2]\ : NOR2B
      port map(A => \iobank67debounce/DebounceTimer[3]_net_1\, B
         => \iobank67debounce/DebounceTimer[2]_net_1\, Y => 
        \iobank67debounce/DebounceTimer_m2_0_a2_1\);
    
    \iobank67debounce/DebounceTimer_RNO[3]\ : XA1
      port map(A => \iobank67debounce/DebounceTimer_c2\, B => 
        \iobank67debounce/DebounceTimer[3]_net_1\, C => 
        \iobank67debounce/un1_previousposition7\, Y => 
        \iobank67debounce/DebounceTimer_n3\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I62_un1_Y\ : 
        NOR2B
      port map(A => \A2DRead/N224\, B => \A2DRead/N231_0\, Y => 
        \A2DRead/I62_un1_Y_0\);
    
    \ioBank6Breader/cellindex[1]\ : DFN1
      port map(D => \ioBank6Breader/cellindex_RNO_8[1]\, CLK => 
        SerialClock_c, Q => \ioBank6Breader/cellindex[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNIEG754[2]\ : XOR2
      port map(A => \A2DRead/N_1385\, B => \A2DRead/N_1387\, Y
         => \A2DRead/un60_dataregu1ch1_84_0\);
    
    \A2DRead/DataRegU1Ch1i_RNIBGN11[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1j[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1l[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch1i[1]_net_1\, Y => 
        \A2DRead/un60_dataregu1ch1_29_2\);
    
    \A2DRead/DataRegU1Ch1o_RNIGCPR2[2]\ : XOR3
      port map(A => \A2DRead/N_1380\, B => \A2DRead/N_1376\, C
         => \A2DRead/N_1378\, Y => \A2DRead/N_1405\);
    
    \A2DRead/DataRegU1Ch1o_RNIBV6821[7]\ : XOR3
      port map(A => \A2DRead/N_1552\, B => \A2DRead/N_1579\, C
         => \A2DRead/N_1554\, Y => \A2DRead/N_1583\);
    
    \pwmdisable01latch/output_RNO[2]\ : NOR2A
      port map(A => \pwmdisable01latch/N_46\, B => LogicReset_c, 
        Y => \pwmdisable01latch/output_RNO_2[2]\);
    
    \iobank6Adebounce/CurrentPosition[0]\ : DFN1
      port map(D => \dhold6A_i[0]\, CLK => Clock03, Q => 
        \iobank6Adebounce/CurrentPosition[0]_net_1\);
    
    \inputs60_pad[2]/U0/U0\ : IOPAD_IN
      port map(PAD => inputs60(2), Y => \inputs60_pad[2]/U0/NET1\);
    
    \ioBank63reader/cellindex[0]\ : DFN1
      port map(D => \ioBank63reader/cellindex_RNO_0[0]\, CLK => 
        SerialClock_c, Q => \ioBank63reader/cellindex[0]_net_1\);
    
    \firmware/un1_reset_0_o2_3\ : OR3
      port map(A => \firmware/un1_reset_0_o2_0_net_1\, B => 
        \internaddr[7]\, C => \firmware/un1_reset_0_o2_1_net_1\, 
        Y => \firmware/un1_reset_0_o2_3_net_1\);
    
    \iobank6Adebounce/DebounceTimer[6]\ : DFN1E1
      port map(D => \iobank6Adebounce/DebounceTimer_n6\, CLK => 
        Clock03, E => \iobank6Adebounce/DebounceTimere\, Q => 
        \iobank6Adebounce/DebounceTimer[6]_net_1\);
    
    \iobank62debounce/DebounceTimer_RNI3PSG[5]\ : NOR2B
      port map(A => \iobank62debounce/DebounceTimer[4]_net_1\, B
         => \iobank62debounce/DebounceTimer[5]_net_1\, Y => 
        \iobank62debounce/DebounceTimer_c5_out\);
    
    \externenablelatch/cellindex_RNIFOI2[1]\ : NOR2B
      port map(A => \externenablelatch/cellindex[0]_net_1\, B => 
        \externenablelatch/cellindex[1]_net_1\, Y => 
        \externenablelatch/cellindex_c1\);
    
    SerialIn_pad_RNIB4B4 : BUFF
      port map(A => SerialIn_c, Y => SerialIn_c_0);
    
    \pwmdisable01latch/output_RNO[6]\ : NOR2A
      port map(A => \pwmdisable01latch/N_50\, B => LogicReset_c, 
        Y => \pwmdisable01latch/output_RNO_2[6]\);
    
    \A2DRead/DataRegU1Ch1f_RNIVJP941[6]\ : OA1
      port map(A => \A2DRead/un60_dataregu1ch1_423_0\, B => 
        \A2DRead/un60_dataregu1ch1_498_0_tz_out\, C => 
        \A2DRead/N_1524\, Y => \A2DRead/un60_dataregu1ch1_498_0\);
    
    \A2DRead/DataRegU1Ch0m_RNIVH711_0[5]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0o[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch0n[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch0m[5]_net_1\, Y => \A2DRead/N_1799\);
    
    \iobank68debounce/DebounceTimer[4]\ : DFN1E1
      port map(D => \iobank68debounce/DebounceTimer_n4\, CLK => 
        Clock03, E => \iobank68debounce/DebounceTimere\, Q => 
        \iobank68debounce/DebounceTimer[4]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNITV417[6]\ : MAJ3
      port map(A => \A2DRead/N_1515\, B => \A2DRead/N_1492\, C
         => \A2DRead/N_1517\, Y => \A2DRead/N_1524\);
    
    \discretedutycycle01/paralleldata[11]\ : DFN1
      port map(D => 
        \discretedutycycle01/paralleldata_RNO[11]_net_1\, CLK => 
        SerialClock_c, Q => 
        \discretedutycycle01/paralleldata[11]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNI64RR2_0[8]\ : MAJ3
      port map(A => \A2DRead/N_1536\, B => \A2DRead/N_1540\, C
         => \A2DRead/N_1538\, Y => \A2DRead/N_1572\);
    
    \A2DRead/DataRegU1Ch1o_RNIJBDN5[8]\ : NOR2B
      port map(A => \A2DRead/N_1545\, B => \A2DRead/N_1520\, Y
         => \A2DRead/un60_dataregu1ch1_292\);
    
    \pwmdisable01latch/output_RNO_0[5]\ : MX2
      port map(A => \pwmdisable01[5]\, B => 
        \pwmdisable01latch/paralleldata[5]_net_1\, S => 
        \pwmdisable01latch/output_0_sqmuxa_net_1\, Y => 
        \pwmdisable01latch/N_49\);
    
    \A2DRead/DataRegU1Ch0j_RNIMMBN[5]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0j[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch0l[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch0k[5]_net_1\, Y => \A2DRead/N_1800\);
    
    \iobank64debounce/DebounceTimer_RNO[8]\ : MX2A
      port map(A => \iobank64debounce/Changing_net_1\, B => 
        \iobank64debounce/N_48\, S => 
        \iobank64debounce/DebounceTimere\, Y => 
        \iobank64debounce/DebounceTimer_RNO_3[8]\);
    
    \iobank64debounce/DebounceTimer_RNIEBNM[6]\ : NOR2B
      port map(A => \iobank64debounce/DebounceTimer_c3\, B => 
        \iobank64debounce/DebounceTimer_c6_out_0\, Y => 
        \iobank64debounce/DebounceTimer_c6\);
    
    \A2DRead/DataRegU1Ch0d_RNIDPHP2[2]\ : XOR3
      port map(A => \A2DRead/N_1720\, B => \A2DRead/N_1718\, C
         => \A2DRead/N_1722\, Y => \A2DRead/N_1732\);
    
    \ioBank60reader/parallelholdreg_RNO_0[2]\ : MX2
      port map(A => \ioBank60reader/parallelholdreg_7[2]\, B => 
        \ioBank60reader/parallelholdreg[2]_net_1\, S => 
        \ioBank60reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank60reader/N_40\);
    
    \iobank68debounce/CurrentPosition[1]\ : DFN1
      port map(D => \dhold68_i[1]\, CLK => Clock03, Q => 
        \iobank68debounce/CurrentPosition[1]_net_1\);
    
    \iobank62debounce/DebounceTimer_RNO[5]\ : XA1
      port map(A => \iobank62debounce/DebounceTimer_c4\, B => 
        \iobank62debounce/DebounceTimer[5]_net_1\, C => 
        \iobank62debounce/un1_previousposition7\, Y => 
        \iobank62debounce/DebounceTimer_n5\);
    
    \iobank67debounce/DebounceTimer_RNI5BS6[1]\ : NOR2B
      port map(A => \iobank67debounce/DebounceTimer[0]_net_1\, B
         => \iobank67debounce/DebounceTimer[1]_net_1\, Y => 
        \iobank67debounce/DebounceTimer_c1\);
    
    \ioBank67reader/dataout_RNO_2\ : AO1
      port map(A => \ioBank67reader/parallelholdreg[0]_net_1\, B
         => \ioBank67reader/_decfrac0\, C => 
        \A2D01reader.dataout_0_0\, Y => 
        \ioBank67reader/dataout_0_1\);
    
    \iobank63debounce/PreviousPosition_RNO[0]\ : MX2B
      port map(A => \iobank63debounce/CurrentPosition[0]_net_1\, 
        B => \dhold63[0]\, S => LogicReset_c, Y => 
        \iobank63debounce/PreviousPosition_3[0]\);
    
    \ioBank63reader/dataout_RNO\ : OR3
      port map(A => \ioBank63reader/parallelholdreg_m[2]\, B => 
        \ioBank63reader/parallelholdreg_m[1]\, C => 
        \ioBank63reader/dataout_0_1\, Y => 
        \ioBank63reader/dataout_RNO_5\);
    
    \iobank68debounce/DebounceTimer_RNIF5MH[5]\ : NOR2B
      port map(A => \iobank68debounce/DebounceTimer[4]_net_1\, B
         => \iobank68debounce/DebounceTimer[5]_net_1\, Y => 
        \iobank68debounce/DebounceTimer_c5_out\);
    
    \A2DRead/DataRegU1Ch1g_RNI4R1Q_0[1]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1g[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1i[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch1h[1]_net_1\, Y => \A2DRead/N_1366\);
    
    \A2DRead/DataRegU1Ch0c[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0b[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0c[10]_net_1\);
    
    \A2D00reader/parallelholdreg_RNO_1[0]\ : OR2
      port map(A => \ohold50[0]\, B => SerialLoad_c, Y => 
        \A2D00reader/parallelholdreg_7[0]\);
    
    \discretedutycycle01/output_RNO[9]\ : NOR2A
      port map(A => \discretedutycycle01/N_69\, B => LogicReset_c, 
        Y => \discretedutycycle01/output_RNO[9]_net_1\);
    
    \bitcontrol01latch/output_RNO_0[1]\ : MX2
      port map(A => \bitcontrol01latch/bitcontrol01[1]\, B => 
        \bitcontrol01latch/paralleldata[1]_net_1\, S => 
        \bitcontrol01latch/output_0_sqmuxa_net_1\, Y => 
        \bitcontrol01latch/N_45\);
    
    \matrix_read04/ctrl[3]\ : DFN1
      port map(D => \matrix_read04/ctrl_RNO_0[3]\, CLK => Clock03, 
        Q => \inputs67_ctrl_c[3]\);
    
    \iobank64debounce/CurrentPosition[2]\ : DFN1
      port map(D => \dhold64_i[2]\, CLK => Clock03, Q => 
        \iobank64debounce/CurrentPosition[2]_net_1\);
    
    \pwmdisable01latch/output_RNID03R[7]\ : OA1
      port map(A => PnlLgtControl_c, B => 
        \pwmdisable01latch/pwmdisable01[7]\, C => 
        \bitcontrol01[7]\, Y => EncLgtControl_c);
    
    \discretedutycycle01/output_RNO[3]\ : NOR2A
      port map(A => \discretedutycycle01/N_63\, B => LogicReset_c, 
        Y => \discretedutycycle01/output_RNO_3[3]\);
    
    \iobank62debounce/DebounceTimer_RNIOGTT_0[8]\ : OR2B
      port map(A => \iobank62debounce/DebounceTimer[8]_net_1\, B
         => \iobank62debounce/un1_previousposition7\, Y => 
        \iobank62debounce/DebounceTimere\);
    
    \A2DRead/DataRegU1Ch1o_RNI3CAF1[7]\ : XOR3
      port map(A => \A2DRead/N_1505\, B => \A2DRead/N_1503\, C
         => \A2DRead/N_1507\, Y => \A2DRead/N_1517\);
    
    \A2DRead/DataRegU1Ch1p_RNIK1J4_0[8]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1b[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch1a[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch1p[8]_net_1\, Y => \A2DRead/N_1534\);
    
    \A2DRead/DataRegU1Ch0d_RNI5TGQ_0[10]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0e[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch0d[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch0c[10]_net_1\, Y => \A2DRead/N_1935\);
    
    \A2DRead/DataRegU1Ch1g_RNI4R1Q[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1h[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1g[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch1i[1]_net_1\, Y => \A2DRead/N_1365\);
    
    \heart_beat/counter[12]\ : DFN1
      port map(D => \heart_beat/m27\, CLK => Clock04, Q => 
        \heart_beat/counter[12]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNIPLPR2_0[3]\ : MAJ3
      port map(A => \A2DRead/N_1398\, B => \A2DRead/N_1402\, C
         => \A2DRead/N_1400\, Y => \A2DRead/N_1432\);
    
    \ioBank60reader/parallelholdreg_RNO_1[1]\ : OR2
      port map(A => \ohold60[1]\, B => SerialLoad_c, Y => 
        \ioBank60reader/parallelholdreg_7[1]\);
    
    \A2DRead/DataRegU1Ch1p_RNITANSJ[11]\ : NOR2B
      port map(A => \A2DRead/N_1635\, B => \A2DRead/N_1610\, Y
         => \A2DRead/un60_dataregu1ch1_424\);
    
    \A2DRead/DataRegU1Ch1p_RNIIBQ6_0[11]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1b[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch1a[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch1p[11]_net_1\, Y => \A2DRead/N_1618\);
    
    \A2DRead/DataRegU1Ch0o_RNITLLA2[11]\ : XOR3
      port map(A => \A2DRead/N_1964\, B => \A2DRead/N_1962\, C
         => \A2DRead/N_1966\, Y => \A2DRead/N_1976\);
    
    \A2DRead/DataRegU1Ch0d_RNIM2IP2_0[3]\ : MAJ3
      port map(A => \A2DRead/N_1740\, B => \A2DRead/N_1744\, C
         => \A2DRead/N_1742\, Y => \A2DRead/N_1755\);
    
    \clock_master/counter_8_I_6\ : AND2
      port map(A => \counter[1]\, B => LogicReset_c, Y => 
        \clock_master/DWACT_ADD_CI_0_g_array_0_1[0]\);
    
    \A2D01reader/parallelholdreg_RNO[0]\ : OR2
      port map(A => \A2D01reader/N_91\, B => LogicReset_c, Y => 
        \A2D01reader/parallelholdreg_RNO_0[0]_net_1\);
    
    \iobank64debounce/DebounceTimer[2]\ : DFN1E1
      port map(D => \iobank64debounce/DebounceTimer_n2\, CLK => 
        Clock03, E => \iobank64debounce/DebounceTimere\, Q => 
        \iobank64debounce/DebounceTimer[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0a[2]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[2]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch0a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0a[2]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNIBV6821_0[7]\ : MAJ3
      port map(A => \A2DRead/N_1552\, B => \A2DRead/N_1554\, C
         => \A2DRead/N_1579\, Y => \A2DRead/N_1584\);
    
    \discretedutycycle01/paralleldata_RNO_0[4]\ : MX2
      port map(A => \discretedutycycle01/paralleldata[4]_net_1\, 
        B => SerialIn_c_0, S => \discretedutycycle01/N_131\, Y
         => \discretedutycycle01/N_131_mux\);
    
    \ioBank68reader/dataout_RNO_2\ : AO1
      port map(A => \ioBank68reader/parallelholdreg[0]_net_1\, B
         => \ioBank68reader/_decfrac0\, C => 
        \A2D01reader.dataout_0_0\, Y => 
        \ioBank68reader/dataout_0_1\);
    
    \A2DRead/DataRegU1Ch1p_RNI0017R[10]\ : MAJ3
      port map(A => \A2DRead/N_1580\, B => \A2DRead/N_1582\, C
         => \A2DRead/N_1607\, Y => \A2DRead/N_1612\);
    
    \externenablelatch/paralleldata[3]\ : DFN1
      port map(D => 
        \externenablelatch/paralleldata_RNO_0[3]_net_1\, CLK => 
        SerialClock_c, Q => 
        \externenablelatch/paralleldata[3]_net_1\);
    
    \pwmdisable01latch/cellindex_RNO[2]\ : XA1
      port map(A => \pwmdisable01latch/cellindex[2]_net_1\, B => 
        \pwmdisable01latch/cellindex_c1\, C => 
        \ioBank60reader.cellindex_1_sqmuxa_1_1\, Y => 
        \pwmdisable01latch/cellindex_n2\);
    
    \ioBank6Areader/parallelholdreg_RNO[2]\ : OR2
      port map(A => \ioBank6Areader/N_25\, B => LogicReset_c, Y
         => \ioBank6Areader/parallelholdreg_RNO_11[2]\);
    
    \ioBank60reader/parallelholdreg_0_sqmuxa_5\ : NOR2
      port map(A => \internaddr[4]\, B => \internaddr[7]\, Y => 
        \ioBank61reader.parallelholdreg_0_sqmuxa_5\);
    
    \iobank64debounce/DebounceTimer_RNO[7]\ : XA1
      port map(A => \iobank64debounce/DebounceTimer_c6\, B => 
        \iobank64debounce/DebounceTimer[7]_net_1\, C => 
        \iobank64debounce/un1_previousposition7\, Y => 
        \iobank64debounce/DebounceTimer_n7\);
    
    \iobank66debounce/DebounceTimer_RNO[8]\ : MX2A
      port map(A => \iobank66debounce/Changing_net_1\, B => 
        \iobank66debounce/N_48\, S => 
        \iobank66debounce/DebounceTimere\, Y => 
        \iobank66debounce/DebounceTimer_RNO_4[8]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I82_Y\ : XOR3
      port map(A => \A2DRead/N_1821\, B => \A2DRead/N_1848\, C
         => \A2DRead/N208_0\, Y => \A2DRead/un60_dataregu1ch0[5]\);
    
    \A2DRead/DataRegU1Ch1f_RNIVPUL2_1[2]\ : MAJ3
      port map(A => \A2DRead/N_1399\, B => \A2DRead/N_1382\, C
         => \A2DRead/N_1401\, Y => \A2DRead/N_1410\);
    
    \iobank6Bdebounce/DebounceTimer_RNO[2]\ : XA1
      port map(A => \iobank6Bdebounce/DebounceTimer[2]_net_1\, B
         => \iobank6Bdebounce/DebounceTimer_c1\, C => 
        \iobank6Bdebounce/un1_previousposition7\, Y => 
        \iobank6Bdebounce/DebounceTimer_n2\);
    
    \ioBank63reader/parallelholdreg_RNO_1[2]\ : OR2
      port map(A => \ohold63[2]\, B => SerialLoad_c, Y => 
        \ioBank63reader/parallelholdreg_7[2]\);
    
    \A2DRead/DataRegU1Ch1i[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1h[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1i[3]_net_1\);
    
    \A2DRead/DataRegU1Ch1p[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1o[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1p[7]_net_1\);
    
    \bitcontrol01latch/output_RNO[4]\ : OR2
      port map(A => \bitcontrol01latch/N_48\, B => LogicReset_c, 
        Y => \bitcontrol01latch/output_RNO_1[4]\);
    
    \A2DRead/DataRegU1Ch1p_RNIDH3NA2[10]\ : OR3
      port map(A => \A2DRead/N_1667\, B => 
        \A2DRead/un60_dataregu1ch1_424\, C => 
        \A2DRead/un60_dataregu1ch1_708_0\, Y => 
        \A2DRead/un60_dataregu1ch1_783_0_tz\);
    
    \A2DRead/DataRegU1Ch1p_RNIPHD97_0[10]\ : MAJ3
      port map(A => \A2DRead/N_1599\, B => \A2DRead/N_1576\, C
         => \A2DRead/N_1601\, Y => \A2DRead/N_1608\);
    
    \A2DRead/DataRegU1Ch0d_RNI4QAG_0[6]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0e[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch0d[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch0c[6]_net_1\, Y => \A2DRead/N_1823\);
    
    \A2DRead/DataRegU1Ch1[8]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch1[7]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch1_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1[8]_net_1\);
    
    \iobank67debounce/DebounceTimer_RNO[8]\ : MX2A
      port map(A => \iobank67debounce/Changing_net_1\, B => 
        \iobank67debounce/N_48\, S => 
        \iobank67debounce/DebounceTimere\, Y => 
        \iobank67debounce/DebounceTimer_RNO_5[8]\);
    
    \ioBank64reader/cellindex_RNINKUO[1]\ : NOR3B
      port map(A => \ioBank64reader/parallelholdreg_0_sqmuxa_0\, 
        B => \ioBank6Breader.parallelholdreg_0_sqmuxa_3\, C => 
        \internaddr[7]\, Y => 
        \ioBank64reader/parallelholdreg_0_sqmuxa_2\);
    
    \A2DRead/DataRegU1Ch0d[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0c[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0d[1]_net_1\);
    
    \A2DRead/step_RNI3L2F4_3[3]\ : NOR3B
      port map(A => \A2DRead/N_115\, B => \A2DRead/N_119\, C => 
        \A2DRead/step[3]_net_1\, Y => 
        \A2DRead/DataRegU1Ch0k_1_sqmuxa\);
    
    \A2DRead/DataRegU1Ch0g_RNIDRFD[5]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0g[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch0i[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch0h[5]_net_1\, Y => \A2DRead/N_1802\);
    
    \Watch_Dog_Reset/timercount_RNO_0[8]\ : NOR3C
      port map(A => \Watch_Dog_Reset/m15_m3_0_a2_3\, B => 
        \Watch_Dog_Reset/m16_m2_0_a2_1\, C => 
        \Watch_Dog_Reset/N_2\, Y => \Watch_Dog_Reset/m15_N_9_mux\);
    
    \iobank6Bdebounce/DebounceTimer_RNIOHI81[8]\ : OR2B
      port map(A => \iobank6Bdebounce/DebounceTimer[8]_net_1\, B
         => \iobank6Bdebounce/un1_previousposition7\, Y => 
        \iobank6Bdebounce/DebounceTimere\);
    
    \A2DRead/DataRegU1Ch1p_RNI6D1EI1_0[12]\ : XOR3
      port map(A => \A2DRead/N_1683\, B => \A2DRead/N_1678\, C
         => \A2DRead/N_1680\, Y => \A2DRead/N_1685\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I8_G0N\ : XA1
      port map(A => \A2DRead/N_2015\, B => 
        \A2DRead/un60_dataregu1ch0_809_0\, C => \A2DRead/N_2017\, 
        Y => \A2DRead/N177\);
    
    \A2DRead/step_RNIJF3V[5]\ : NOR2A
      port map(A => \A2DRead/step[4]_net_1\, B => 
        \A2DRead/step[5]_net_1\, Y => \A2DRead/N_124\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I0_G0N\ : NOR2B
      port map(A => \A2DRead/N_1793\, B => \A2DRead/N_1820\, Y
         => \A2DRead/N153\);
    
    \matrix_read03/dataOut03[0]\ : DFN1
      port map(D => \matrix_read03/data03[0]_net_1\, CLK => 
        Clock03, Q => \dhold65[0]\);
    
    \A2DRead/DataRegU1Ch0p[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0o[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0p[8]_net_1\);
    
    \ioBank6Areader/parallelholdreg_RNO_1[0]\ : OR2
      port map(A => \ohold6A[0]\, B => SerialLoad_c, Y => 
        \ioBank6Areader/parallelholdreg_7[0]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I83_Y_0\ : AX1D
      port map(A => \A2DRead/un60_dataregu1ch0_217\, B => 
        \A2DRead/un60_dataregu1ch0_363_0\, C => \A2DRead/N_1876\, 
        Y => \A2DRead/ADD_11x11_fast_I83_Y_0_0\);
    
    \ioBank62reader/dataout\ : DFN1
      port map(D => \ioBank62reader/dataout_RNO_4\, CLK => 
        Clock01, Q => do62);
    
    \A2DRead/DataRegU1Ch1p[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1o[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1p[10]_net_1\);
    
    \iobank65debounce/IOOut_RNO[1]\ : MX2B
      port map(A => \iobank65debounce/PreviousPosition[1]_net_1\, 
        B => \dhold65[1]\, S => LogicReset_c, Y => 
        \iobank65debounce/IOOut_3[1]\);
    
    \AN4PTTControl_pad/U0/U0\ : IOPAD_TRI
      port map(D => \AN4PTTControl_pad/U0/NET1\, E => 
        \AN4PTTControl_pad/U0/NET2\, PAD => AN4PTTControl);
    
    \ioBank6Areader/parallelholdreg_RNO[1]\ : OR2
      port map(A => \ioBank6Areader/N_24\, B => LogicReset_c, Y
         => \ioBank6Areader/parallelholdreg_RNO_11[1]\);
    
    \discretedutycycle01/paralleldata_RNO_0[7]\ : MX2
      port map(A => \discretedutycycle01/paralleldata[7]_net_1\, 
        B => SerialIn_c, S => \discretedutycycle01/N_134\, Y => 
        \discretedutycycle01/N_134_mux\);
    
    \bitcontrol01latch/output_RNI7Q2R[4]\ : OA1
      port map(A => PnlLgtControl_c, B => \pwmdisable01[4]\, C
         => \bitcontrol01latch/bitcontrol01[4]\, Y => 
        AN3DimControl_c);
    
    \A2DRead/DataRegU1Ch0j_RNIGGBN_0[3]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0l[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch0k[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch0j[3]_net_1\, Y => \A2DRead/N_1747\);
    
    \clock_master/counter_4_I_32\ : AO1
      port map(A => 
        \clock_master/DWACT_ADD_CI_0_pog_array_0_2[0]\, B => 
        Clock01, C => 
        \clock_master/DWACT_ADD_CI_0_g_array_0_1_1[0]\, Y => 
        \clock_master/DWACT_ADD_CI_0_g_array_1_2[0]\);
    
    \A2DRead/DataRegU1Ch0n[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0m[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0n[2]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I8_P0N\ : OR2
      port map(A => \A2DRead/N_1681\, B => \A2DRead/N_1670\, Y
         => \A2DRead/N178_0\);
    
    \A2DRead/DataRegU1Ch1n[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1m[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1n[8]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNIKGQC_0[11]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0i[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch0h[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch0g[11]_net_1\, Y => \A2DRead/N_1971\);
    
    \matrix_read03/dataOut02_RNIV7O9[2]\ : INV
      port map(A => \dhold64[2]\, Y => \dhold64_i[2]\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I89_Y_0\ : XOR2
      port map(A => \A2DRead/N_1681\, B => \A2DRead/N_1670\, Y
         => \A2DRead/ADD_11x11_fast_I89_Y_0_0\);
    
    \A2DRead/DataRegU1Ch1p_RNIBOI4_0[5]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1b[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch1a[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch1p[5]_net_1\, Y => \A2DRead/N_1450\);
    
    \A2DRead/DataRegU1Ch0n[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0m[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0n[3]_net_1\);
    
    \iobank6Adebounce/DebounceTimer_RNO_0[8]\ : NOR3C
      port map(A => \iobank6Adebounce/un1_previousposition7\, B
         => \iobank6Adebounce/DebounceTimer[7]_net_1\, C => 
        \iobank6Adebounce/DebounceTimer_c6\, Y => 
        \iobank6Adebounce/N_48\);
    
    \heart_beat/un1_counter_1_m20\ : NOR3C
      port map(A => \heart_beat/counter[14]_net_1\, B => 
        \heart_beat/N_19_i\, C => \heart_beat/counter[15]_net_1\, 
        Y => \heart_beat/N_21_i\);
    
    \Watch_Dog_Reset/timercount_RNO[6]\ : XA1B
      port map(A => \Watch_Dog_Reset/m19_N_5_mux\, B => 
        \Watch_Dog_Reset/timercount[6]_net_1\, C => ResetIn_c, Y
         => \Watch_Dog_Reset/timercount_n6\);
    
    \A2DRead/DataRegU1Ch0g_RNIQLLBD2[12]\ : XOR3
      port map(A => \A2DRead/N_2014\, B => \A2DRead/N_2012\, C
         => \A2DRead/N_1987\, Y => \A2DRead/N_2016\);
    
    \A2D01reader/parallelholdreg_RNO_1[7]\ : OR2
      port map(A => \ohold51[7]\, B => SerialLoad_c, Y => 
        \A2D01reader/parallelholdreg_7[7]\);
    
    \A2DRead/DataRegU1Ch0g_RNIFMSVF2_0[11]\ : OA1
      port map(A => \A2DRead/N_1959\, B => \A2DRead/N_1986\, C
         => \A2DRead/N_1984\, Y => 
        \A2DRead/un60_dataregu1ch0_713_0\);
    
    \A2DRead/DataRegU1Ch1f_RNION235[5]\ : XOR3
      port map(A => \A2DRead/N_1434\, B => \A2DRead/N_1457\, C
         => \A2DRead/N_1432\, Y => \A2DRead/N_1465\);
    
    \ioBank68reader/parallelholdreg_RNO_0[0]\ : MX2
      port map(A => \ioBank68reader/parallelholdreg_7[0]\, B => 
        \ioBank68reader/parallelholdreg[0]_net_1\, S => 
        \ioBank68reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank68reader/N_23\);
    
    \discretedutycycle01/cellindex_RNIH8OL_2[1]\ : NOR2
      port map(A => \discretedutycycle01/cellindex[1]_net_1\, B
         => \discretedutycycle01/cellindex[0]_net_1\, Y => 
        \discretedutycycle01/un6_address_2\);
    
    \matrix_read03/dataOut04_RNIVBUB[0]\ : INV
      port map(A => \dhold66[0]\, Y => \dhold66_i[0]\);
    
    \discretedutycycle01/paralleldata[5]\ : DFN1
      port map(D => \discretedutycycle01/paralleldata_RNO_3[5]\, 
        CLK => SerialClock_c, Q => 
        \discretedutycycle01/paralleldata[5]_net_1\);
    
    \ioBank6Breader/parallelholdreg[0]\ : DFN1
      port map(D => \ioBank6Breader/parallelholdreg_RNO_12[0]\, 
        CLK => Clock01, Q => 
        \ioBank6Breader/parallelholdreg[0]_net_1\);
    
    \A2DRead/DatHldRegU1Ch0[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch0_1_sqmuxa\, Q => 
        \ohold50[1]\);
    
    \A2DRead/DataRegU1Ch0g_RNIJ1GD_0[7]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0i[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch0h[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch0g[7]_net_1\, Y => \A2DRead/N_1859\);
    
    \clock_master/counter_8_I_44\ : NOR3C
      port map(A => \clock_master/DWACT_ADD_CI_0_g_array_2_0[0]\, 
        B => \clock_master/DWACT_ADD_CI_0_pog_array_1_1_0[0]\, C
         => \clock_master/counter[6]_net_1\, Y => 
        \clock_master/DWACT_ADD_CI_0_g_array_12_2[0]\);
    
    \iobank69debounce/DebounceTimer_RNIHNFS[5]\ : NOR2B
      port map(A => \iobank69debounce/DebounceTimer[4]_net_1\, B
         => \iobank69debounce/DebounceTimer[5]_net_1\, Y => 
        \iobank69debounce/DebounceTimer_c5_out\);
    
    \ioBank66reader/cellindex_RNO[1]\ : NOR3A
      port map(A => \ioBank66reader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank66reader/un1_latch_1\, Y => 
        \ioBank66reader/cellindex_RNO_3[1]\);
    
    \matrix_read03/ctrl_RNO_0[2]\ : NOR3C
      port map(A => \matrix_read03/stage[4]_net_1\, B => 
        \matrix_read03/stage[1]_net_1\, C => 
        \matrix_read03/stage[3]_net_1\, Y => 
        \matrix_read03/ctrl_7_i_0_a3_1[2]\);
    
    \pwmdisable01latch/paralleldata_RNO_0[6]\ : MX2
      port map(A => \pwmdisable01latch/paralleldata[6]_net_1\, B
         => SerialIn_c, S => \pwmdisable01latch/N_100\, Y => 
        \pwmdisable01latch/N_100_mux\);
    
    \bitcontrol01latch/output_RNIBU2R[6]\ : OA1
      port map(A => PnlLgtControl_c, B => \pwmdisable01[6]\, C
         => \bitcontrol01latch/bitcontrol01[6]\, Y => 
        AN1DimControl_c);
    
    \A2DRead/DataRegU1Ch1p[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1o[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1p[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1i[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1h[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1i[5]_net_1\);
    
    \iobank61debounce/IOOut[0]\ : DFN1E0
      port map(D => \iobank61debounce/IOOut_8[0]\, CLK => Clock03, 
        E => \iobank61debounce/IOOut_0_sqmuxa\, Q => \ohold61[0]\);
    
    \A2DRead/step_RNI7QD41[8]\ : NOR2A
      port map(A => \A2DRead/N_111\, B => AdDout_c, Y => 
        \A2DRead/steplde_i_a3_0_net_1\);
    
    \externenablelatch/paralleldata_RNO[1]\ : NOR2A
      port map(A => \externenablelatch/N_93_mux\, B => 
        LogicReset_c, Y => 
        \externenablelatch/paralleldata_RNO_0[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIJ7LKM1[4]\ : AO1
      port map(A => \A2DRead/N_1495\, B => \A2DRead/N_1470\, C
         => \A2DRead/un60_dataregu1ch1_358_0\, Y => 
        \A2DRead/N_1500\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I83_Y\ : XOR3
      port map(A => \A2DRead/N_1502\, B => \A2DRead/N_1529\, C
         => \A2DRead/N231_0\, Y => \A2DRead/un60_dataregu1ch1[6]\);
    
    \A2DRead/DataRegU1Ch1c_RNIOMSC_1[1]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1c[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1e[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch1d[1]_net_1\, Y => \A2DRead/N_1358\);
    
    \A2DRead/DataRegU1Ch1o_RNIMHPT_0[1]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1m[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1o[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch1n[1]_net_1\, Y => \A2DRead/N_1362\);
    
    \ioBank6Areader/parallelholdreg_RNO[0]\ : OR2
      port map(A => \ioBank6Areader/N_23\, B => LogicReset_c, Y
         => \ioBank6Areader/parallelholdreg_RNO_11[0]\);
    
    \A2DRead/DataInReg[4]\ : DFN1E1
      port map(D => AdDout_c, CLK => Clock04, E => 
        \A2DRead/N_2177\, Q => \A2DRead/DataInReg[4]_net_1\);
    
    \A2DRead/DataRegU1Ch1l[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1k[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1l[1]_net_1\);
    
    \iobank6Adebounce/CurrentPosition[2]\ : DFN1
      port map(D => \dhold6A_i[2]\, CLK => Clock03, Q => 
        \iobank6Adebounce/CurrentPosition[2]_net_1\);
    
    \Watch_Dog_Reset/timercount_RNO[4]\ : XA1B
      port map(A => \Watch_Dog_Reset/timercount[4]_net_1\, B => 
        \Watch_Dog_Reset/N_4_0\, C => ResetIn_c, Y => 
        \Watch_Dog_Reset/timercount_n4\);
    
    \A2DRead/DataRegU1Ch1m[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1l[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1m[4]_net_1\);
    
    \firmware/dataout_RNO_5\ : NOR3A
      port map(A => \firmware/parallelholdreg[3]_net_1\, B => 
        \firmware/N_40\, C => \firmware/cellindex[2]_net_1\, Y
         => \firmware/N_68\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I5_G0N\ : NOR2B
      port map(A => \A2DRead/N_1613\, B => \A2DRead/N_1586\, Y
         => \A2DRead/N168_0\);
    
    \A2DRead/step_RNIGC3V[1]\ : NOR2B
      port map(A => \A2DRead/step[1]_net_1\, B => 
        \A2DRead/step[5]_net_1\, Y => \A2DRead/N_7_i\);
    
    \matrix_read03/stage[4]\ : DFN1
      port map(D => \matrix_read03/N_15\, CLK => Clock03, Q => 
        \matrix_read03/stage[4]_net_1\);
    
    \iobank65debounce/DebounceTimer[8]\ : DFN1E1
      port map(D => \iobank65debounce/N_48\, CLK => Clock03, E
         => \iobank65debounce/DebounceTimere\, Q => 
        \iobank65debounce/DebounceTimer[8]_net_1\);
    
    \A2DRead/step_RNI3L2F4_0[5]\ : NOR3C
      port map(A => \A2DRead/N_128\, B => \A2DRead/N_124\, C => 
        \A2DRead/N_118\, Y => \A2DRead/DataRegU1Ch0p_1_sqmuxa\);
    
    SerialOut_pad_RNO_7 : NOR3C
      port map(A => do6A, B => do2x, C => do69, Y => SerialOut_7);
    
    \A2D01reader/parallelholdreg[4]\ : DFN1
      port map(D => \A2D01reader/parallelholdreg_RNO_0[4]_net_1\, 
        CLK => Clock01, Q => 
        \A2D01reader/parallelholdreg[4]_net_1\);
    
    \SerialIn_pad/U0/U0\ : IOPAD_IN
      port map(PAD => SerialIn, Y => \SerialIn_pad/U0/NET1\);
    
    \ioBank61reader/cellindex_RNIN5PM[0]\ : NOR3A
      port map(A => \internaddr[5]\, B => 
        \ioBank61reader/cellindex[0]_net_1\, C => 
        \ioBank61reader/cellindex[1]_net_1\, Y => 
        \ioBank61reader/parallelholdreg_0_sqmuxa_1\);
    
    \A2DRead/DataRegU1Ch0m_RNI1GLV4[5]\ : XOR3
      port map(A => \A2DRead/N_1798\, B => 
        \A2DRead/un60_dataregu1ch0_259_0\, C => \A2DRead/N_1806\, 
        Y => \A2DRead/un60_dataregu1ch0_274_0\);
    
    \discretedutycycle01/output_RNO_0[0]\ : MX2
      port map(A => \dutycycle01[0]\, B => 
        \discretedutycycle01/paralleldata[0]_net_1\, S => 
        \discretedutycycle01/output_0_sqmuxa_0_net_1\, Y => 
        \discretedutycycle01/N_60\);
    
    \matrix_read03/data01[0]\ : DFN1E1
      port map(D => \inputs62_c[0]\, CLK => Clock03, E => 
        \matrix_read03/ctrl12\, Q => 
        \matrix_read03/data01[0]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I69_Y\ : AO1
      port map(A => \A2DRead/ADD_11x11_fast_I69_un1_Y_0\, B => 
        \A2DRead/N229_0\, C => \A2DRead/ADD_11x11_fast_I69_Y_2\, 
        Y => \A2DRead/un60_dataregu1ch1[15]\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I41_Y\ : AO1
      port map(A => \A2DRead/N200_0\, B => \A2DRead/N197_0\, C
         => \A2DRead/N196\, Y => \A2DRead/N221\);
    
    \ioBank64reader/parallelholdreg_RNO_1[1]\ : OR2
      port map(A => \ohold64[1]\, B => SerialLoad_c, Y => 
        \ioBank64reader/parallelholdreg_7[1]\);
    
    \addresslatch/output_RNO[4]\ : NOR2A
      port map(A => \addresslatch/N_55\, B => LogicReset_c, Y => 
        \addresslatch/output_RNO[4]_net_1\);
    
    \A2DRead/step_RNO[2]\ : NOR3
      port map(A => \A2DRead/N_54\, B => LogicReset_c, C => 
        \A2DRead/step_c1\, Y => \A2DRead/N_55\);
    
    \A2DRead/DataRegU1Ch0j_RNI23CN_0[9]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0l[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch0k[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch0j[9]_net_1\, Y => \A2DRead/N_1913\);
    
    \A2DRead/DataRegU1Ch1h_RNINNVT1[2]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1h[2]_net_1\, B => 
        \A2DRead/un60_dataregu1ch1_54_0\, C => \A2DRead/N_1377\, 
        Y => \A2DRead/un60_N_11\);
    
    \bitcontrol01latch/output_RNO_0[2]\ : MX2
      port map(A => \bitcontrol01latch/bitcontrol01[2]\, B => 
        \bitcontrol01latch/paralleldata[2]_net_1\, S => 
        \bitcontrol01latch/output_0_sqmuxa_net_1\, Y => 
        \bitcontrol01latch/N_46\);
    
    \iobank60debounce/CurrentPosition_RNO[0]\ : INV
      port map(A => \inputs60_c[0]\, Y => 
        \iobank60debounce/inputs60_c_i[0]\);
    
    \A2DRead/DataRegU1Ch1f_RNIGAVN_0[4]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1f[4]_net_1\, B => 
        \A2DRead/N_1396\, C => \A2DRead/N_1394\, Y => 
        \A2DRead/N_1430\);
    
    \iobank60debounce/DebounceTimer_RNO[0]\ : NOR2A
      port map(A => \iobank60debounce/un1_previousposition7\, B
         => \iobank60debounce/DebounceTimer[0]_net_1\, Y => 
        \iobank60debounce/N_69\);
    
    \A2DRead/step_RNID93V_0[1]\ : NOR2A
      port map(A => \A2DRead/step[2]_net_1\, B => 
        \A2DRead/step[1]_net_1\, Y => \A2DRead/N_119\);
    
    \A2DRead/DataRegU1Ch0f_RNIA0CQ6[8]\ : XOR3
      port map(A => \A2DRead/N_1865\, B => \A2DRead/N_1888\, C
         => \A2DRead/N_1863\, Y => \A2DRead/N_1896\);
    
    \matrix_read04/ctrl[4]\ : DFN1
      port map(D => \matrix_read04/ctrl_RNO_0[4]\, CLK => Clock03, 
        Q => \inputs67_ctrl_c[4]\);
    
    \iobank67debounce/CurrentPosition[2]\ : DFN1
      port map(D => \dhold67_i[2]\, CLK => Clock03, Q => 
        \iobank67debounce/CurrentPosition[2]_net_1\);
    
    \firmware/un1_reset_0_o2_1\ : OR2A
      port map(A => \internaddr[5]\, B => \internaddr[2]\, Y => 
        \firmware/un1_reset_0_o2_1_net_1\);
    
    \ExternalHardwareEn_pad[2]/U0/U1\ : IOTRI_OB_EB
      port map(D => \ExternalHardwareEn_c[2]\, E => \VCC\, DOUT
         => \ExternalHardwareEn_pad[2]/U0/NET1\, EOUT => 
        \ExternalHardwareEn_pad[2]/U0/NET2\);
    
    \A2DRead/DataRegU1Ch1c[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1b[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1c[12]_net_1\);
    
    \A2D00reader/parallelholdreg_RNO[9]\ : OR2
      port map(A => \A2D00reader/N_100\, B => LogicReset_c, Y => 
        \A2D00reader/parallelholdreg_RNO[9]_net_1\);
    
    \discretedutycycle01/CellIndexUpdate.address_0\ : NOR2A
      port map(A => \internaddr[6]\, B => \internaddr[4]\, Y => 
        \discretedutycycle01/address_0\);
    
    \A2DRead/DataRegU1Ch0g_RNITL1T[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0h[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch0g[1]_net_1\, C => 
        \A2DRead/un60_dataregu1ch0_29_2\, Y => 
        \A2DRead/un60_dataregu1ch0_29_4\);
    
    \iobank69debounce/PreviousPosition_RNO[0]\ : MX2B
      port map(A => \iobank69debounce/CurrentPosition[0]_net_1\, 
        B => \dhold69[0]\, S => LogicReset_c, Y => 
        \iobank69debounce/PreviousPosition_3[0]\);
    
    \A2DRead/DataRegU1Ch0g_RNI1FFD[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0h[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch0g[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch0i[1]_net_1\, Y => \A2DRead/N_1712\);
    
    \A2DRead/DataRegU1Ch0d_RNICQJP2[9]\ : XOR3
      port map(A => \A2DRead/N_1908\, B => \A2DRead/N_1906\, C
         => \A2DRead/N_1910\, Y => \A2DRead/N_1920\);
    
    \A2DRead/DataRegU1Ch1o_RNIVV217[4]\ : XOR3
      port map(A => \A2DRead/N_1459\, B => \A2DRead/N_1461\, C
         => \A2DRead/N_1436\, Y => \A2DRead/N_1467\);
    
    \iobank61debounce/DebounceTimer_RNIM16C[3]\ : NOR2B
      port map(A => \iobank61debounce/DebounceTimer_c2\, B => 
        \iobank61debounce/DebounceTimer[3]_net_1\, Y => 
        \iobank61debounce/DebounceTimer_c3\);
    
    \Watch_Dog_Reset/timercount_RNO_0[6]\ : NOR3C
      port map(A => \Watch_Dog_Reset/m8_m4_0_a2_2\, B => 
        \Watch_Dog_Reset/m19_m1_0_a2_0\, C => 
        \Watch_Dog_Reset/N_2\, Y => \Watch_Dog_Reset/m19_N_5_mux\);
    
    \iobank67debounce/IOOut_RNO[2]\ : MX2B
      port map(A => \iobank67debounce/PreviousPosition[2]_net_1\, 
        B => \dhold67[2]\, S => LogicReset_c, Y => 
        \iobank67debounce/IOOut_3[2]\);
    
    \addresslatch/cellindex_RNO[2]\ : XA1
      port map(A => \addresslatch/cellindex_c1\, B => 
        \addresslatch/cellindex[2]_net_1\, C => 
        \addresslatch/output_0_sqmuxa_1_net_1\, Y => 
        \addresslatch/cellindex_n2\);
    
    \snkpout01/counter_RNIHPP5[3]\ : AO1D
      port map(A => \snkpout01/counter_c2\, B => 
        \snkpout01/counter[3]_net_1\, C => 
        \snkpout01/un1_counterlto5\, Y => 
        \snkpout01/un1_counterlt11\);
    
    \ioBank6Breader/dataout_RNO_1\ : NOR2B
      port map(A => \ioBank6Breader/parallelholdreg[1]_net_1\, B
         => \ioBank6Breader/cellindex[0]_net_1\, Y => 
        \ioBank6Breader/parallelholdreg_m[1]\);
    
    \matrix_read04/ctrl_RNO_0[2]\ : NOR3C
      port map(A => \matrix_read04/stage[4]_net_1\, B => 
        \matrix_read04/stage[1]_net_1\, C => 
        \matrix_read04/stage[3]_net_1\, Y => 
        \matrix_read04/ctrl_7_i_0_a3_1[2]\);
    
    \ioBank62reader/parallelholdreg_RNO[1]\ : OR2
      port map(A => \ioBank62reader/N_24\, B => LogicReset_c, Y
         => \ioBank62reader/parallelholdreg_RNO_3[1]\);
    
    \iobank69debounce/DebounceTimer_RNO_0[5]\ : NOR2B
      port map(A => \iobank69debounce/DebounceTimer_c3\, B => 
        \iobank69debounce/DebounceTimer[4]_net_1\, Y => 
        \iobank69debounce/DebounceTimer_c4\);
    
    \ioBank60reader/parallelholdreg_RNO_0[0]\ : MX2
      port map(A => \ioBank60reader/parallelholdreg_7[0]\, B => 
        \ioBank60reader/parallelholdreg[0]_net_1\, S => 
        \ioBank60reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank60reader/N_38\);
    
    \A2D00reader/parallelholdreg_RNO_0[5]\ : MX2
      port map(A => \A2D00reader/parallelholdreg_7[5]\, B => 
        \A2D00reader/parallelholdreg[5]_net_1\, S => 
        \A2D00reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D00reader/N_96\);
    
    \iobank64debounce/Changing\ : DFN1E0
      port map(D => \iobank64debounce/Changing_0\, CLK => Clock03, 
        E => LogicReset_c, Q => \iobank64debounce/Changing_net_1\);
    
    \iobank69debounce/DebounceTimer_RNO[7]\ : XA1
      port map(A => \iobank69debounce/DebounceTimer_c6\, B => 
        \iobank69debounce/DebounceTimer[7]_net_1\, C => 
        \iobank69debounce/un1_previousposition7\, Y => 
        \iobank69debounce/DebounceTimer_n7\);
    
    \A2DRead/DataRegU1Ch1o[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1n[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1o[4]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIOA7MA1[6]\ : XOR2
      port map(A => \A2DRead/N_1497\, B => \A2DRead/N_1472\, Y
         => \A2DRead/un60_dataregu1ch1_359_0\);
    
    \snkpout01/PWMOut_3_0_I_31\ : AND2A
      port map(A => \dutycycle01[7]\, B => 
        \snkpout01/counter[7]_net_1\, Y => 
        \snkpout01/ACT_LT3_E[5]\);
    
    \externenablelatch/paralleldata_RNO[2]\ : NOR2A
      port map(A => \externenablelatch/N_94_mux\, B => 
        LogicReset_c, Y => 
        \externenablelatch/paralleldata_RNO_0[2]_net_1\);
    
    \clock_master/counter_RNO[0]\ : INV
      port map(A => \clock_master/counter_i[0]\, Y => 
        \clock_master/counter_i_i[0]\);
    
    \A2DRead/DataRegU1Ch0k[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0j[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0k[11]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIFGV662[2]\ : AO1
      port map(A => \A2DRead/N_1415\, B => 
        \A2DRead/un60_dataregu1ch1_153_0_tz\, C => 
        \A2DRead/un60_dataregu1ch1_89\, Y => \A2DRead/N_1418\);
    
    \matrix_read04/stage_RNI3V3[4]\ : NOR2B
      port map(A => \matrix_read04/stage[4]_net_1\, B => 
        \matrix_read04/stage[3]_net_1\, Y => 
        \matrix_read04/stage_m1_0_a2_0\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I7_P0N\ : OR2
      port map(A => \A2DRead/N_1669\, B => \A2DRead/N_1642\, Y
         => \A2DRead/N175_0\);
    
    \addresslatch/paralleldata_RNO[2]\ : NOR2A
      port map(A => \addresslatch/N_85_mux\, B => LogicReset_c, Y
         => \addresslatch/paralleldata_RNO[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0[13]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch0[12]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0[13]_net_1\);
    
    \iobank6Bdebounce/PreviousPosition[1]\ : DFN1
      port map(D => \iobank6Bdebounce/PreviousPosition_3[1]\, CLK
         => Clock03, Q => 
        \iobank6Bdebounce/PreviousPosition[1]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_423_RNI87FVJ\ : MAJ3
      port map(A => \A2DRead/N_1871\, B => \A2DRead/N_1873\, C
         => \A2DRead/N_1898\, Y => \A2DRead/N_1903\);
    
    \matrix_read03/stage_RNIT0I12[0]\ : NOR3C
      port map(A => \matrix_read03/N_63\, B => 
        \matrix_read03/ctrl18_1\, C => \matrix_read03/N_65\, Y
         => \matrix_read03/ctrl18\);
    
    \A2DRead/DataRegU1Ch1p_RNIMS46R_0[10]\ : OA1
      port map(A => \A2DRead/N_1610\, B => \A2DRead/N_1635\, C
         => \A2DRead/N_1608\, Y => 
        \A2DRead/un60_dataregu1ch1_708_0\);
    
    \A2DRead/DataRegU1Ch1j_RNIJST31_0[3]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1l[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch1k[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch1j[3]_net_1\, Y => \A2DRead/N_1400\);
    
    \A2DRead/DataRegU1Ch0d_RNIVBIP2_0[4]\ : MAJ3
      port map(A => \A2DRead/N_1766\, B => \A2DRead/N_1770\, C
         => \A2DRead/N_1768\, Y => \A2DRead/N_1781\);
    
    \iobank68debounce/DebounceTimer[3]\ : DFN1E1
      port map(D => \iobank68debounce/DebounceTimer_n3\, CLK => 
        Clock03, E => \iobank68debounce/DebounceTimere\, Q => 
        \iobank68debounce/DebounceTimer[3]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNI1RUN[1]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1f[1]_net_1\, B => 
        \A2DRead/N_1359\, C => \A2DRead/N_1357\, Y => 
        \A2DRead/N_1368\);
    
    \matrix_read04/ctrl_RNO[1]\ : OR3C
      port map(A => \matrix_read04/N_64\, B => 
        \matrix_read04/N_68\, C => \matrix_read04/N_26\, Y => 
        \matrix_read04/ctrl_RNO_0[1]\);
    
    \A2DRead/DataRegU1Ch0j_RNIAABN_0[1]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0l[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch0k[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch0j[1]_net_1\, Y => \A2DRead/N_1711\);
    
    \ioBank68reader/dataout\ : DFN1
      port map(D => \ioBank68reader/dataout_RNO_10\, CLK => 
        Clock01, Q => do68);
    
    \snkpout01/counter_RNIKVN7[7]\ : NOR2B
      port map(A => \snkpout01/counter_c6\, B => 
        \snkpout01/counter[7]_net_1\, Y => \snkpout01/counter_c7\);
    
    \ioBank65reader/parallelholdreg_RNO_0[2]\ : MX2
      port map(A => \ioBank65reader/parallelholdreg_7[2]\, B => 
        \ioBank65reader/parallelholdreg[2]_net_1\, S => 
        \ioBank65reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank65reader/N_25\);
    
    \ioBank65reader/cellindex[0]\ : DFN1
      port map(D => \ioBank65reader/cellindex_RNO_2[0]\, CLK => 
        SerialClock_c, Q => \ioBank65reader/cellindex[0]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I40_Y\ : NOR2B
      port map(A => \A2DRead/N199_0\, B => \A2DRead/N195\, Y => 
        \A2DRead/N220\);
    
    \A2DRead/DataRegU1Ch1o_RNIVQPT[4]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1m[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch1o[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch1n[4]_net_1\, Y => \A2DRead/N_1423\);
    
    \HrtBeat_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => HrtBeat_c, E => \VCC\, DOUT => 
        \HrtBeat_pad/U0/NET1\, EOUT => \HrtBeat_pad/U0/NET2\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I23_Y\ : AO1
      port map(A => \A2DRead/N162\, B => \A2DRead/N166\, C => 
        \A2DRead/N165\, Y => \A2DRead/N200\);
    
    \snkpout01/counter_RNO[1]\ : XA1
      port map(A => \snkpout01/counter[1]_net_1\, B => 
        \snkpout01/counter[0]_net_1\, C => 
        \snkpout01/counter_1_sqmuxa\, Y => \snkpout01/counter_n1\);
    
    \ioBank61reader/cellindex_RNO[0]\ : NOR2A
      port map(A => \ioBank60reader.cellindex_1_sqmuxa_1_1\, B
         => \ioBank61reader/cellindex[0]_net_1\, Y => 
        \ioBank61reader/cellindex_6[0]\);
    
    \ioBank63reader/dataout_RNO_2\ : AO1
      port map(A => \ioBank63reader/parallelholdreg[0]_net_1\, B
         => \ioBank63reader/_decfrac0\, C => 
        \A2D01reader.dataout_0_0\, Y => 
        \ioBank63reader/dataout_0_1\);
    
    \A2D01reader/parallelholdreg[1]\ : DFN1
      port map(D => \A2D01reader/parallelholdreg_RNO_0[1]_net_1\, 
        CLK => Clock01, Q => 
        \A2D01reader/parallelholdreg[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1i[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1h[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1i[8]_net_1\);
    
    \snkpout01/PWMOut_3_0_I_32\ : AOI1A
      port map(A => \snkpout01/ACT_LT3_E[3]\, B => 
        \snkpout01/ACT_LT3_E[4]\, C => \snkpout01/ACT_LT3_E[5]\, 
        Y => \snkpout01/DWACT_CMPLE_PO2_DWACT_COMP0_E[0]\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I45_Y\ : AO1
      port map(A => \A2DRead/N204_0\, B => \A2DRead/N201_0\, C
         => \A2DRead/N200_0\, Y => \A2DRead/N225_0\);
    
    \A2DRead/DataRegU1Ch1i_RNIRD5QB_0[12]\ : MAJ3
      port map(A => \A2DRead/N_1660\, B => \A2DRead/N_1662\, C
         => \A2DRead/N_1673\, Y => \A2DRead/N_1678\);
    
    \iobank6Adebounce/IOOut[2]\ : DFN1E0
      port map(D => \iobank6Adebounce/IOOut_3[2]\, CLK => Clock03, 
        E => \iobank6Adebounce/IOOut_0_sqmuxa\, Q => \ohold6A[2]\);
    
    \discretedutycycle01/output[5]\ : DFN1
      port map(D => \discretedutycycle01/output_RNO_3[5]\, CLK
         => Clock01, Q => \dutycycle01[5]\);
    
    \A2DRead/un60_dataregu1ch1_0_1_CO3_0\ : XA1
      port map(A => \A2DRead/un60_dataregu1ch1_29_3\, B => 
        \A2DRead/un60_dataregu1ch1_29_4\, C => \A2DRead/N_1367\, 
        Y => \A2DRead/CO3_0\);
    
    \A2DRead/DataRegU1Ch1f_RNICECSC_0[8]\ : MAJ3
      port map(A => \A2DRead/N_1577\, B => \A2DRead/N_1550\, C
         => \A2DRead/N_1575\, Y => \A2DRead/N_1582\);
    
    \A2DRead/DataInReg_RNO_0[8]\ : NOR3C
      port map(A => \A2DRead/step[4]_net_1\, B => 
        \A2DRead/DataInReg_16_6_e_0[9]\, C => 
        \A2DRead/step[2]_net_1\, Y => \A2DRead/DataInReg_327_e_0\);
    
    \A2DRead/DataRegU1Ch1o_RNIMHPT[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1m[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1n[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch1o[1]_net_1\, Y => \A2DRead/N_1361\);
    
    \Watch_Dog_Reset/timercount_RNICL2S[3]\ : NOR2
      port map(A => \Watch_Dog_Reset/timercount[5]_net_1\, B => 
        \Watch_Dog_Reset/timercount[3]_net_1\, Y => 
        \Watch_Dog_Reset/m40_e_3\);
    
    \pwmdisable01latch/output[0]\ : DFN1
      port map(D => \pwmdisable01latch/output_RNO_2[0]\, CLK => 
        Clock01, Q => \pwmdisable01[0]\);
    
    \A2DRead/DataInReg[5]\ : DFN1E1
      port map(D => AdDout_c, CLK => Clock04, E => 
        \A2DRead/N_2178\, Q => \A2DRead/DataInReg[5]_net_1\);
    
    \A2DRead/DataRegU1Ch1c_RNIOMSC_0[1]\ : MIN3
      port map(A => \A2DRead/DataRegU1Ch1c[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1d[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch1e[1]_net_1\, Y => 
        \A2DRead/un60_i1_mux\);
    
    \A2DRead/DataRegU1Ch1p_RNI6D1EI1[12]\ : MAJ3
      port map(A => \A2DRead/N_1678\, B => \A2DRead/N_1680\, C
         => \A2DRead/N_1683\, Y => \A2DRead/N_1686\);
    
    \A2DRead/DataRegU1Ch0e[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0d[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0e[8]_net_1\);
    
    \bitcontrol01latch/paralleldata_RNO_1[4]\ : NOR3C
      port map(A => \bitcontrol01latch/cellindex[2]_net_1\, B => 
        \bitcontrol01latch/output_0_sqmuxa_net_1\, C => 
        \bitcontrol01latch/un1_paralleldata_1[0]\, Y => 
        \bitcontrol01latch/N_98\);
    
    \A2DRead/DataRegU1Ch0g_RNIDRFD_0[5]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0i[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch0h[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch0g[5]_net_1\, Y => \A2DRead/N_1803\);
    
    \ioBank61reader/parallelholdreg_RNO_0[1]\ : MX2
      port map(A => \ioBank61reader/parallelholdreg_7[1]\, B => 
        \ioBank61reader/parallelholdreg[1]_net_1\, S => 
        \ioBank61reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank61reader/N_39\);
    
    \A2D00reader/parallelholdreg[1]\ : DFN1
      port map(D => \A2D00reader/parallelholdreg_RNO[1]_net_1\, 
        CLK => Clock01, Q => 
        \A2D00reader/parallelholdreg[1]_net_1\);
    
    \ioBank63reader/parallelholdreg_0_sqmuxa_2\ : NOR2B
      port map(A => \internaddr[1]\, B => \internaddr[0]\, Y => 
        \firmware.N_75\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I82_Y_0\ : XOR3
      port map(A => \A2DRead/N_1499\, B => 
        \A2DRead/un60_dataregu1ch1_359_0\, C => \A2DRead/N_1474\, 
        Y => \A2DRead/ADD_11x11_fast_I82_Y_0\);
    
    \iobank6Bdebounce/IOOut_RNO[0]\ : MX2B
      port map(A => \iobank6Bdebounce/PreviousPosition[0]_net_1\, 
        B => \dhold6B[0]\, S => LogicReset_c, Y => 
        \iobank6Bdebounce/IOOut_3[0]\);
    
    \A2DRead/DataRegU1Ch1h[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1g[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1h[6]_net_1\);
    
    \iobank63debounce/IOOut_RNO[0]\ : MX2B
      port map(A => \iobank63debounce/PreviousPosition[0]_net_1\, 
        B => \dhold63[0]\, S => LogicReset_c, Y => 
        \iobank63debounce/IOOut_3[0]\);
    
    \A2DRead/DataRegU1Ch0f_RNIU3LQ1[7]\ : XOR3
      port map(A => \A2DRead/N_1825\, B => 
        \A2DRead/DataRegU1Ch0f[7]_net_1\, C => \A2DRead/N_1823\, 
        Y => \A2DRead/N_1860\);
    
    \clock_master/counter[7]\ : DFN1
      port map(D => \clock_master/counter_4_3_0[7]\, CLK => 
        XCLK_c, Q => \clock_master/counter_i[7]\);
    
    \A2DRead/DataRegU1Ch1m_RNI987N[11]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1m[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch1o[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch1n[11]_net_1\, Y => \A2DRead/N_1619\);
    
    \A2D01reader/cellindex_RNO[2]\ : XA1
      port map(A => \A2D01reader/cellindex[2]_net_1\, B => 
        \A2D01reader/cellindex_c1\, C => 
        \A2D01reader/cellindex_1_sqmuxa_1\, Y => 
        \A2D01reader/cellindex_n2\);
    
    \A2DRead/DataRegU1Ch1k[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1j[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1k[9]_net_1\);
    
    \A2D00reader/parallelholdreg[10]\ : DFN1
      port map(D => \A2D00reader/parallelholdreg_RNO[10]_net_1\, 
        CLK => Clock01, Q => 
        \A2D00reader/parallelholdreg[10]_net_1\);
    
    \iobank62debounce/IOOut_RNO[1]\ : MX2B
      port map(A => \iobank62debounce/PreviousPosition[1]_net_1\, 
        B => \dhold62[1]\, S => LogicReset_c, Y => 
        \iobank62debounce/IOOut_3[1]\);
    
    \A2D01reader/parallelholdreg_RNO_1[6]\ : OR2
      port map(A => \ohold51[6]\, B => SerialLoad_c, Y => 
        \A2D01reader/parallelholdreg_7[6]\);
    
    \ioBank65reader/cellindex_RNI1VL5[1]\ : NOR2
      port map(A => \ioBank65reader/cellindex[1]_net_1\, B => 
        \ioBank65reader/cellindex[0]_net_1\, Y => 
        \ioBank65reader/_decfrac0\);
    
    \pwmdisable01latch/paralleldata_RNO_0[0]\ : MX2
      port map(A => \pwmdisable01latch/paralleldata[0]_net_1\, B
         => SerialIn_c, S => \pwmdisable01latch/N_94\, Y => 
        \pwmdisable01latch/N_94_mux\);
    
    \A2DRead/DataInReg_RNO[3]\ : NOR3C
      port map(A => \A2DRead/i8_mux_0\, B => \A2DRead/m50_0\, C
         => \A2DRead/DataInReg_322_e_1\, Y => \A2DRead/N_2176\);
    
    \ioBank66reader/parallelholdreg_RNO_1[0]\ : OR2
      port map(A => \ohold66[0]\, B => SerialLoad_c, Y => 
        \ioBank66reader/parallelholdreg_7[0]\);
    
    \iobank69debounce/DebounceTimer_RNO[5]\ : XA1
      port map(A => \iobank69debounce/DebounceTimer_c4\, B => 
        \iobank69debounce/DebounceTimer[5]_net_1\, C => 
        \iobank69debounce/un1_previousposition7\, Y => 
        \iobank69debounce/DebounceTimer_n5\);
    
    \ioBank60reader/parallelholdreg_RNO[1]\ : OR2
      port map(A => \ioBank60reader/N_39\, B => LogicReset_c, Y
         => \ioBank60reader/parallelholdreg_RNO_1[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1f[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1e[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1f[5]_net_1\);
    
    \iobank60debounce/PreviousPosition_RNO[0]\ : MX2B
      port map(A => \iobank60debounce/CurrentPosition[0]_net_1\, 
        B => \inputs60_c[0]\, S => LogicReset_c, Y => 
        \iobank60debounce/PreviousPosition_3[0]\);
    
    \clock_master/counter[5]\ : DFN1
      port map(D => \clock_master/counter_4[5]\, CLK => XCLK_c, Q
         => \clock_master/counter[5]_net_1\);
    
    \heart_beat/HeartBeatOut_RNO_1\ : OR3C
      port map(A => \heart_beat/counter[14]_net_1\, B => 
        \heart_beat/counter[15]_net_1\, C => 
        \heart_beat/counter[13]_net_1\, Y => 
        \heart_beat/un1_counterlto15_1\);
    
    \snkpout01/counter_RNI74N8[8]\ : NOR2B
      port map(A => \snkpout01/counter_c7\, B => 
        \snkpout01/counter[8]_net_1\, Y => \snkpout01/counter_c8\);
    
    \matrix_read03/stage_RNI1DRL_1[5]\ : NOR2
      port map(A => \matrix_read03/stage[5]_net_1\, B => 
        \matrix_read03/stage[2]_net_1\, Y => 
        \matrix_read03/ctrl9_0_a3_0\);
    
    \A2DRead/DataRegU1Ch0l[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0k[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0l[12]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I6_G0N\ : NOR2B
      port map(A => \A2DRead/N_1988\, B => \A2DRead/N_1961\, Y
         => \A2DRead/N171\);
    
    \snkpout01/counter_RNI36U1[6]\ : NOR2
      port map(A => \snkpout01/counter[7]_net_1\, B => 
        \snkpout01/counter[6]_net_1\, Y => 
        \snkpout01/un1_counterlto11_1\);
    
    \iobank60debounce/DebounceTimer_RNO[3]\ : XA1
      port map(A => \iobank60debounce/DebounceTimer_c2\, B => 
        \iobank60debounce/DebounceTimer[3]_net_1\, C => 
        \iobank60debounce/un1_previousposition7\, Y => 
        \iobank60debounce/DebounceTimer_n3\);
    
    \A2DRead/DataRegU1Ch1o_RNIVV217_0[4]\ : MAJ3
      port map(A => \A2DRead/N_1459\, B => \A2DRead/N_1436\, C
         => \A2DRead/N_1461\, Y => \A2DRead/N_1468\);
    
    \A2DRead/DataRegU1Ch1k[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1j[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1k[3]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNI5TCN21[4]\ : OA1
      port map(A => \A2DRead/un60_dataregu1ch1_283_0\, B => 
        \A2DRead/un60_dataregu1ch1_358_0_tz_out\, C => 
        \A2DRead/N_1468\, Y => \A2DRead/un60_dataregu1ch1_358_0\);
    
    \iobank61debounce/DebounceTimer_RNO_0[8]\ : NOR3C
      port map(A => \iobank61debounce/un1_previousposition7\, B
         => \iobank61debounce/DebounceTimer[7]_net_1\, C => 
        \iobank61debounce/DebounceTimer_c6\, Y => 
        \iobank61debounce/N_48\);
    
    \bitcontrol01latch/paralleldata[4]\ : DFN1
      port map(D => 
        \bitcontrol01latch/paralleldata_RNO_1[4]_net_1\, CLK => 
        SerialClock_c, Q => 
        \bitcontrol01latch/paralleldata[4]_net_1\);
    
    \iobank64debounce/DebounceTimer_RNICTN9[6]\ : NOR3C
      port map(A => \iobank64debounce/DebounceTimer[6]_net_1\, B
         => \iobank64debounce/DebounceTimer[5]_net_1\, C => 
        \iobank64debounce/DebounceTimer[4]_net_1\, Y => 
        \iobank64debounce/DebounceTimer_c6_out_0\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I2_P0N\ : OR2
      port map(A => \A2DRead/ADD_11x11_fast_I2_P0N_0\, B => 
        \A2DRead/N_1529\, Y => \A2DRead/N160\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I10_G0N\ : 
        NOR2B
      port map(A => \A2DRead/N_1684\, B => \A2DRead/N_1686\, Y
         => \A2DRead/N183\);
    
    \matrix_read04/data04[1]\ : DFN1E1
      port map(D => \inputs67_c[1]\, CLK => Clock03, E => 
        \matrix_read04/ctrl21\, Q => 
        \matrix_read04/data04[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1o[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1n[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1o[10]_net_1\);
    
    \A2DRead/DataRegU1Ch0c[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0b[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0c[9]_net_1\);
    
    \A2DRead/DataRegU1Ch1j_RNI04G11[11]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1j[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch1l[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch1k[11]_net_1\, Y => \A2DRead/N_1621\);
    
    \A2DRead/DataRegU1Ch0f_RNII5FV2_0[2]\ : MAJ3
      port map(A => \A2DRead/N_1746\, B => \A2DRead/N_1729\, C
         => \A2DRead/N_1748\, Y => \A2DRead/N_1757\);
    
    \snkpout01/counter_RNO[4]\ : XA1
      port map(A => \snkpout01/counter[4]_net_1\, B => 
        \snkpout01/counter_c3\, C => \snkpout01/counter_1_sqmuxa\, 
        Y => \snkpout01/counter_n4\);
    
    \iobank60debounce/DebounceTimer_RNO_0[5]\ : NOR3C
      port map(A => \iobank60debounce/DebounceTimer[4]_net_1\, B
         => \iobank60debounce/DebounceTimer[3]_net_1\, C => 
        \iobank60debounce/DebounceTimer_c2\, Y => 
        \iobank60debounce/DebounceTimer_c4\);
    
    \addresslatch/paralleldata_RNO_0[6]\ : MX2
      port map(A => \addresslatch/paralleldata[6]_net_1\, B => 
        SerialIn_c_0, S => \addresslatch/N_89\, Y => 
        \addresslatch/N_89_mux\);
    
    \A2DRead/DataRegU1Ch0d_RNIA0BG[8]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0c[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch0e[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch0d[8]_net_1\, Y => \A2DRead/N_1878\);
    
    \snkpout01/PWMOut_3_0_I_40\ : OR2A
      port map(A => \snkpout01/counter[4]_net_1\, B => 
        \dutycycle01[4]\, Y => \snkpout01/N_9\);
    
    \ioBank69reader/parallelholdreg_0_sqmuxa_3\ : NOR2B
      port map(A => \ioBank6Breader.parallelholdreg_0_sqmuxa_4\, 
        B => \A2D01reader.parallelholdreg_0_sqmuxa_4\, Y => 
        \ioBank69reader/parallelholdreg_0_sqmuxa_3_net_1\);
    
    \A2DRead/DataRegU1Ch0o_RNI6P8O_0[11]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0o[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch0n[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch0m[11]_net_1\, Y => \A2DRead/N_1967\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I3_G0N\ : XA1
      port map(A => \A2DRead/N_1875\, B => 
        \A2DRead/un60_dataregu1ch0_499_0\, C => \A2DRead/N_1877\, 
        Y => \A2DRead/N162\);
    
    \A2DRead/DataRegU1Ch1f_RNIFB6SC[6]\ : XOR3
      port map(A => \A2DRead/N_1491\, B => \A2DRead/N_1493\, C
         => \A2DRead/N_1466\, Y => \A2DRead/N_1497\);
    
    \A2DRead/DataRegU1Ch1f_RNIKKTT83_0[8]\ : XOR3
      port map(A => \A2DRead/N_1581\, B => \A2DRead/N_1583\, C
         => \A2DRead/N_1556\, Y => \A2DRead/N_1585\);
    
    \inputs67_pad[1]/U0/U1\ : IOIN_IB
      port map(YIN => \inputs67_pad[1]/U0/NET1\, Y => 
        \inputs67_c[1]\);
    
    \A2DRead/DataRegU1Ch1j_RNIP2U31[5]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1j[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch1l[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch1k[5]_net_1\, Y => \A2DRead/N_1453\);
    
    \iobank6Bdebounce/DebounceTimer[3]\ : DFN1E1
      port map(D => \iobank6Bdebounce/DebounceTimer_n3\, CLK => 
        Clock03, E => \iobank6Bdebounce/DebounceTimere\, Q => 
        \iobank6Bdebounce/DebounceTimer[3]_net_1\);
    
    \firmware/parallelholdreg_13_i_a2_i_o2[3]\ : OR3A
      port map(A => \ioBank62reader.parallelholdreg_0_sqmuxa_4\, 
        B => \firmware/un1_reset_0_o2_3_net_1\, C => 
        \firmware.N_75\, Y => \firmware/N_44\);
    
    \A2DRead/DataRegU1Ch1j_RNIV8U31[7]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1j[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch1l[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch1k[7]_net_1\, Y => \A2DRead/N_1509\);
    
    \iobank64debounce/DebounceTimer_RNI2EVC[3]\ : NOR3C
      port map(A => \iobank64debounce/DebounceTimer[3]_net_1\, B
         => \iobank64debounce/DebounceTimer[2]_net_1\, C => 
        \iobank64debounce/DebounceTimer_c1\, Y => 
        \iobank64debounce/DebounceTimer_c3\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I48_Y\ : NOR3C
      port map(A => \A2DRead/N154\, B => \A2DRead/N157\, C => 
        \A2DRead/N203_0\, Y => \A2DRead/N228\);
    
    \iobank67debounce/DebounceTimer_RNO[0]\ : NOR2A
      port map(A => \iobank67debounce/un1_previousposition7\, B
         => \iobank67debounce/DebounceTimer[0]_net_1\, Y => 
        \iobank67debounce/N_67\);
    
    \A2D01reader/parallelholdreg_RNO_1[4]\ : OR2
      port map(A => \ohold51[4]\, B => SerialLoad_c, Y => 
        \A2D01reader/parallelholdreg_7[4]\);
    
    \pwmdisable01latch/paralleldata_RNO[2]\ : NOR2A
      port map(A => \pwmdisable01latch/N_96_mux\, B => 
        LogicReset_c, Y => 
        \pwmdisable01latch/paralleldata_RNO_2[2]\);
    
    \A2DRead/DataRegU1Ch1o_RNINVU48[2]\ : XNOR3
      port map(A => \A2DRead/N_1405\, B => \A2DRead/N_1407\, C
         => \A2DRead/un60_i4_mux\, Y => \A2DRead/N_1413\);
    
    \A2DRead/step_RNO_0[6]\ : OA1C
      port map(A => \A2DRead/step[5]_net_1\, B => \A2DRead/N_63\, 
        C => \A2DRead/step[6]_net_1\, Y => \A2DRead/N_105\);
    
    \ioBank6Areader/cellindex_RNIBSBA1[1]\ : NOR3C
      port map(A => \internaddr[1]\, B => 
        \ioBank6Areader/_decfrac0\, C => 
        \ioBank6Areader.parallelholdreg_0_sqmuxa_3\, Y => 
        \ioBank6Areader/parallelholdreg_0_sqmuxa_2_0\);
    
    \iobank65debounce/PreviousPosition[2]\ : DFN1
      port map(D => \iobank65debounce/PreviousPosition_3[2]\, CLK
         => Clock03, Q => 
        \iobank65debounce/PreviousPosition[2]_net_1\);
    
    \discretedutycycle01/output_RNO_0[6]\ : MX2
      port map(A => \dutycycle01[6]\, B => 
        \discretedutycycle01/paralleldata[6]_net_1\, S => 
        \discretedutycycle01/output_0_sqmuxa_0_net_1\, Y => 
        \discretedutycycle01/N_66\);
    
    \A2D01reader/dataout_RNO\ : OR2
      port map(A => \A2D01reader.dataout_0_0\, B => 
        \A2D01reader/dataout_62\, Y => 
        \A2D01reader/dataout_RNO_1_net_1\);
    
    \A2DRead/DataInReg_RNO_0[12]\ : NOR3A
      port map(A => \A2DRead/step[2]_net_1\, B => 
        \A2DRead/step[4]_net_1\, C => \A2DRead/step[6]_net_1\, Y
         => \A2DRead/DataInReg_331_e_0\);
    
    \A2DRead/DataRegU1Ch1f_RNI2SUN_2[2]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1f[2]_net_1\, B => 
        \A2DRead/N_1360\, C => \A2DRead/N_1358\, Y => 
        \A2DRead/N_1382\);
    
    \matrix_read04/data00[1]\ : DFN1E1
      port map(D => \inputs67_c[1]\, CLK => Clock03, E => 
        \matrix_read04/ctrl9\, Q => 
        \matrix_read04/data00[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1c[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1b[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1c[5]_net_1\);
    
    \ioBank60reader/parallelholdreg_RNO_1[0]\ : OR2
      port map(A => \ohold60[0]\, B => SerialLoad_c, Y => 
        \ioBank60reader/parallelholdreg_7[0]\);
    
    \A2DRead/DataRegU1Ch1f_RNIK7CCG[6]\ : AO1
      port map(A => \A2DRead/N_1519\, B => \A2DRead/N_1494\, C
         => \A2DRead/N_1551\, Y => 
        \A2DRead/un60_dataregu1ch1_498_0_tz_out\);
    
    \matrix_read03/data04[2]\ : DFN1E1
      port map(D => \inputs62_c[2]\, CLK => Clock03, E => 
        \matrix_read03/ctrl21\, Q => 
        \matrix_read03/data04[2]_net_1\);
    
    \externenablelatch/output_RNO_0[2]\ : MX2
      port map(A => \ExternalHardwareEn_c[2]\, B => 
        \externenablelatch/paralleldata[2]_net_1\, S => 
        \externenablelatch/output_0_sqmuxa_net_1\, Y => 
        \externenablelatch/N_48\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I2_G0N\ : NOR2B
      port map(A => \A2DRead/N_1529\, B => \A2DRead/N_1502\, Y
         => \A2DRead/N159\);
    
    \A2DRead/DataRegU1Ch0j_RNIMMBN_0[5]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0l[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch0k[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch0j[5]_net_1\, Y => \A2DRead/N_1801\);
    
    \externenablelatch/paralleldata_RNO[5]\ : NOR2A
      port map(A => \externenablelatch/N_97_mux\, B => 
        LogicReset_c, Y => 
        \externenablelatch/paralleldata_RNO_0[5]_net_1\);
    
    \bitcontrol01latch/paralleldata[1]\ : DFN1
      port map(D => 
        \bitcontrol01latch/paralleldata_RNO_1[1]_net_1\, CLK => 
        SerialClock_c, Q => 
        \bitcontrol01latch/paralleldata[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1p_RNI3FUUA[12]\ : XOR3
      port map(A => \A2DRead/N_1676\, B => \A2DRead/N_1674\, C
         => \A2DRead/N_1672\, Y => \A2DRead/N_1683\);
    
    \discretedutycycle01/paralleldata[9]\ : DFN1
      port map(D => 
        \discretedutycycle01/paralleldata_RNO[9]_net_1\, CLK => 
        SerialClock_c, Q => 
        \discretedutycycle01/paralleldata[9]_net_1\);
    
    \A2DRead/DataRegU1Ch1m[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1l[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1m[10]_net_1\);
    
    LogicReset_pad_RNI5AOB : CLKINT
      port map(A => LogicReset_pad, Y => LogicReset_c);
    
    \ioBank69reader/parallelholdreg_RNO_1[2]\ : OR2
      port map(A => \ohold69[2]\, B => SerialLoad_c, Y => 
        \ioBank69reader/parallelholdreg_7[2]\);
    
    \A2DRead/step_RNI3L2F4_0[3]\ : NOR3C
      port map(A => \A2DRead/step[3]_net_1\, B => \A2DRead/N_115\, 
        C => \A2DRead/N_119\, Y => 
        \A2DRead/DataRegU1Ch0g_1_sqmuxa\);
    
    \Watch_Dog_Reset/timercount_RNO_0[5]\ : NOR2B
      port map(A => \Watch_Dog_Reset/N_4_0\, B => 
        \Watch_Dog_Reset/timercount[4]_net_1\, Y => 
        \Watch_Dog_Reset/N_5_0\);
    
    \A2DRead/DataRegU1Ch1i[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1h[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1i[7]_net_1\);
    
    \A2DRead/DataRegU1Ch1j_RNIT0G11[10]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1j[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch1l[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch1k[10]_net_1\, Y => \A2DRead/N_1593\);
    
    \A2DRead/DataRegU1Ch0i[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0h[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0i[1]_net_1\);
    
    \ioBank66reader/dataout_RNO\ : OR3
      port map(A => \ioBank66reader/parallelholdreg_m[0]\, B => 
        \A2D01reader.dataout_0_0\, C => 
        \ioBank66reader/dataout_0_2\, Y => 
        \ioBank66reader/dataout_RNO_8\);
    
    \firmware/cellindex_RNO[2]\ : XA1A
      port map(A => \firmware/cellindex[2]_net_1\, B => 
        \firmware/N_40\, C => 
        \ioBank60reader.cellindex_1_sqmuxa_1_1\, Y => 
        \firmware/N_16\);
    
    \A2DRead/DataRegU1Ch0l[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0k[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0l[3]_net_1\);
    
    \iobank60debounce/PreviousPosition[3]\ : DFN1
      port map(D => \iobank60debounce/PreviousPosition_3[3]\, CLK
         => Clock03, Q => 
        \iobank60debounce/PreviousPosition[3]_net_1\);
    
    \discretedutycycle01/paralleldata_RNO[5]\ : NOR2A
      port map(A => \discretedutycycle01/N_132_mux\, B => 
        LogicReset_c, Y => 
        \discretedutycycle01/paralleldata_RNO_3[5]\);
    
    \pwmdisable01latch/paralleldata_RNO_1[1]\ : NOR3B
      port map(A => \pwmdisable01latch/output_0_sqmuxa_net_1\, B
         => \pwmdisable01latch/un1_paralleldata_1[5]\, C => 
        \pwmdisable01latch/cellindex[2]_net_1\, Y => 
        \pwmdisable01latch/N_95\);
    
    \heart_beat/un1_counter_1_m28\ : AX1C
      port map(A => \heart_beat/counter[10]_net_1\, B => 
        \heart_beat/N_15_i\, C => \heart_beat/counter[11]_net_1\, 
        Y => \heart_beat/m28\);
    
    \A2DRead/DataRegU1Ch0f_RNIRVJQ1_0[2]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0f[2]_net_1\, B => 
        \A2DRead/N_1707\, C => \A2DRead/N_1705\, Y => 
        \A2DRead/N_1729\);
    
    \A2DRead/DataRegU1Ch1d[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1c[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1d[9]_net_1\);
    
    \Watch_Dog_Reset/timercount_RNO[1]\ : XA1B
      port map(A => \Watch_Dog_Reset/timercount[0]_net_1\, B => 
        \Watch_Dog_Reset/timercount[1]_net_1\, C => ResetIn_c, Y
         => \Watch_Dog_Reset/timercount_n1\);
    
    \A2DRead/DataRegU1Ch0k[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0j[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0k[7]_net_1\);
    
    \ioBank62reader/cellindex_RNIJ0IU1[1]\ : AOI1
      port map(A => \ioBank62reader/parallelholdreg_0_sqmuxa_4_0\, 
        B => \ioBank62reader.parallelholdreg_0_sqmuxa_4\, C => 
        SerialLoad_c, Y => 
        \ioBank62reader/parallelholdreg_1_sqmuxa\);
    
    \ioBank66reader/cellindex_RNIROEH1[1]\ : AOI1
      port map(A => 
        \ioBank66reader/parallelholdreg_0_sqmuxa_3_net_1\, B => 
        \ioBank62reader.parallelholdreg_0_sqmuxa_4\, C => 
        SerialLoad_c, Y => 
        \ioBank66reader/parallelholdreg_1_sqmuxa\);
    
    \ioBank64reader/cellindex_RNO[0]\ : NOR3
      port map(A => \ioBank64reader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank64reader/un1_latch_1\, Y => 
        \ioBank64reader/cellindex_RNO_1[0]\);
    
    \addresslatch/cellindex_RNI138L[1]\ : NOR2B
      port map(A => \addresslatch/cellindex[0]_net_1\, B => 
        \addresslatch/cellindex[1]_net_1\, Y => 
        \addresslatch/cellindex_c1\);
    
    \matrix_read04/dataOut02[0]\ : DFN1
      port map(D => \matrix_read04/data02[0]_net_1\, CLK => 
        Clock03, Q => \dhold69[0]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I87_Y\ : AX1D
      port map(A => \A2DRead/N223\, B => \A2DRead/I62_un1_Y\, C
         => \A2DRead/ADD_11x11_fast_I87_Y_0_0\, Y => 
        \A2DRead/un60_dataregu1ch0[10]\);
    
    \ioBank6Breader/cellindex_RNO[0]\ : NOR3
      port map(A => \ioBank6Breader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank6Breader/un1_latch_1\, Y => 
        \ioBank6Breader/cellindex_RNO_8[0]\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I44_Y\ : NOR2B
      port map(A => \A2DRead/N203_0\, B => \A2DRead/N199\, Y => 
        \A2DRead/N224\);
    
    \A2DRead/DataRegU1Ch1n[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1m[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1n[9]_net_1\);
    
    \A2D00reader/parallelholdreg_RNO_0[4]\ : MX2
      port map(A => \A2D00reader/parallelholdreg_7[4]\, B => 
        \A2D00reader/parallelholdreg[4]_net_1\, S => 
        \A2D00reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D00reader/N_95\);
    
    \ioBank6Breader/cellindex_RNIH5331[1]\ : NOR3C
      port map(A => \internaddr[3]\, B => 
        \ioBank6Breader/_decfrac0\, C => \internaddr[1]\, Y => 
        \ioBank6Breader/parallelholdreg_0_sqmuxa_1\);
    
    \ioBank62reader/cellindex[0]\ : DFN1
      port map(D => \ioBank62reader/cellindex_RNO[0]_net_1\, CLK
         => SerialClock_c, Q => 
        \ioBank62reader/cellindex[0]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I7_G0N\ : NOR2B
      port map(A => \A2DRead/N_1669\, B => \A2DRead/N_1642\, Y
         => \A2DRead/N174_0\);
    
    \iobank68debounce/IOOut[2]\ : DFN1E0
      port map(D => \iobank68debounce/IOOut_3[2]\, CLK => Clock03, 
        E => \iobank68debounce/IOOut_0_sqmuxa\, Q => \ohold68[2]\);
    
    \iobank60debounce/DebounceTimer_RNITDU81[5]\ : NOR3C
      port map(A => \iobank60debounce/DebounceTimer[4]_net_1\, B
         => \iobank60debounce/DebounceTimer[3]_net_1\, C => 
        \iobank60debounce/DebounceTimer[5]_net_1\, Y => 
        \iobank60debounce/DebounceTimer_c5_0\);
    
    \A2DRead/DataRegU1Ch0p_RNIFSRN[11]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0b[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch0p[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch0a[11]_net_1\, Y => \A2DRead/N_1964\);
    
    \ioBank60reader/parallelholdreg_RNO[3]\ : OR2
      port map(A => \ioBank60reader/N_41\, B => LogicReset_c, Y
         => \ioBank60reader/parallelholdreg_RNO_1[3]_net_1\);
    
    \matrix_read04/data03[2]\ : DFN1E1
      port map(D => \inputs67_c[2]\, CLK => Clock03, E => 
        \matrix_read04/ctrl18\, Q => 
        \matrix_read04/data03[2]_net_1\);
    
    \snkpout01/PWMOut_3_0_I_33\ : OR2A
      port map(A => \dutycycle01[1]\, B => 
        \snkpout01/counter[1]_net_1\, Y => \snkpout01/N_2\);
    
    \A2DRead/DataRegU1Ch0[11]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch0[10]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0[11]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNICILQ1[9]\ : XOR3
      port map(A => \A2DRead/N_1881\, B => 
        \A2DRead/DataRegU1Ch0f[9]_net_1\, C => \A2DRead/N_1879\, 
        Y => \A2DRead/N_1916\);
    
    \A2DRead/DataRegU1Ch1f_RNI2SUN_0[2]\ : XNOR3
      port map(A => \A2DRead/un60_i1_mux\, B => 
        \A2DRead/DataRegU1Ch1f[2]_net_1\, C => \A2DRead/N_1360\, 
        Y => \A2DRead/un60_dataregu1ch1_79_1\);
    
    \ioBank66reader/parallelholdreg_RNO_0[1]\ : MX2
      port map(A => \ioBank66reader/parallelholdreg_7[1]\, B => 
        \ioBank66reader/parallelholdreg[1]_net_1\, S => 
        \ioBank66reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank66reader/N_24\);
    
    \iobank64debounce/PreviousPosition_RNO[2]\ : MX2B
      port map(A => \iobank64debounce/CurrentPosition[2]_net_1\, 
        B => \dhold64[2]\, S => LogicReset_c, Y => 
        \iobank64debounce/PreviousPosition_3[2]\);
    
    \iobank67debounce/DebounceTimer[0]\ : DFN1E1
      port map(D => \iobank67debounce/N_67\, CLK => Clock03, E
         => \iobank67debounce/DebounceTimere\, Q => 
        \iobank67debounce/DebounceTimer[0]_net_1\);
    
    \iobank65debounce/DebounceTimer_RNO[2]\ : XA1
      port map(A => \iobank65debounce/DebounceTimer[2]_net_1\, B
         => \iobank65debounce/DebounceTimer_c1\, C => 
        \iobank65debounce/un1_previousposition7\, Y => 
        \iobank65debounce/DebounceTimer_n2\);
    
    \inputs67_pad[2]/U0/U0\ : IOPAD_IN
      port map(PAD => inputs67(2), Y => \inputs67_pad[2]/U0/NET1\);
    
    \A2DRead/DataRegU1Ch1f_RNIUP2P7[5]\ : NOR2B
      port map(A => \A2DRead/N_1491\, B => \A2DRead/N_1466\, Y
         => \A2DRead/un60_dataregu1ch1_209\);
    
    \iobank66debounce/Changing\ : DFN1E0
      port map(D => \iobank66debounce/Changing_0\, CLK => Clock03, 
        E => LogicReset_c, Q => \iobank66debounce/Changing_net_1\);
    
    \A2DRead/DatHldRegU1Ch1[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch1_1_sqmuxa\, Q => 
        \ohold51[0]\);
    
    \A2D00reader/dataout_RNO_6\ : MX2
      port map(A => \A2D00reader/parallelholdreg[5]_net_1\, B => 
        \A2D00reader/parallelholdreg[7]_net_1\, S => 
        \A2D00reader/cellindex[1]_net_1\, Y => \A2D00reader/N_77\);
    
    \A2DRead/DataRegU1Ch1f_RNIQA0R73_0[7]\ : MAJ3
      port map(A => \A2DRead/N_1553\, B => \A2DRead/N_1528\, C
         => \A2DRead/N_1555\, Y => \A2DRead/N_1558\);
    
    \A2DRead/DataRegU1Ch0g_RNIAOFD_0[4]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0i[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch0h[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch0g[4]_net_1\, Y => \A2DRead/N_1775\);
    
    \A2DRead/DataRegU1Ch0f_RNIJ8HV2[7]\ : XOR3
      port map(A => \A2DRead/N_1886\, B => \A2DRead/N_1884\, C
         => \A2DRead/N_1861\, Y => \A2DRead/N_1894\);
    
    \iobank61debounce/DebounceTimer[4]\ : DFN1E1
      port map(D => \iobank61debounce/DebounceTimer_n4\, CLK => 
        Clock03, E => \iobank61debounce/DebounceTimere\, Q => 
        \iobank61debounce/DebounceTimer[4]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNITQQR2_0[7]\ : MAJ3
      port map(A => \A2DRead/N_1508\, B => \A2DRead/N_1512\, C
         => \A2DRead/N_1510\, Y => \A2DRead/N_1544\);
    
    \A2DRead/DataRegU1Ch1c_RNIF1G7[1]\ : XOR2
      port map(A => \A2DRead/DataRegU1Ch1d[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1c[1]_net_1\, Y => \A2DRead/N_1357_1\);
    
    \discretedutycycle01/paralleldata_RNO[9]\ : NOR2A
      port map(A => \discretedutycycle01/N_136_mux\, B => 
        LogicReset_c, Y => 
        \discretedutycycle01/paralleldata_RNO[9]_net_1\);
    
    \A2DRead/DataRegU1Ch1c[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1b[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1c[7]_net_1\);
    
    \A2DRead/DataRegU1Ch0d_RNIU27V7_0[7]\ : MAJ3
      port map(A => \A2DRead/N_1862\, B => \A2DRead/N_1839\, C
         => \A2DRead/N_1864\, Y => \A2DRead/N_1871\);
    
    \A2DRead/DataRegU1Ch0j_RNIVIFV2[4]\ : XOR3
      port map(A => \A2DRead/N_1774\, B => \A2DRead/N_1772\, C
         => \A2DRead/N_1751\, Y => \A2DRead/N_1782\);
    
    \snkpout01/counter_RNII67P1[12]\ : AO1B
      port map(A => \snkpout01/un1_counterlto11_4\, B => 
        \snkpout01/un1_counterlt11\, C => 
        \snkpout01/counter[12]_net_1\, Y => 
        \snkpout01/un1_counter\);
    
    \A2DRead/DataRegU1Ch0d_RNIVGDQ21_0[4]\ : OA1
      port map(A => \A2DRead/N_1789\, B => \A2DRead/N_1814\, C
         => \A2DRead/N_1787\, Y => 
        \A2DRead/un60_dataregu1ch0_288_0\);
    
    \clock_master/counter_4_I_38\ : AO1
      port map(A => 
        \clock_master/DWACT_ADD_CI_0_pog_array_1_0[0]\, B => 
        \clock_master/DWACT_ADD_CI_0_g_array_1_2[0]\, C => 
        \clock_master/DWACT_ADD_CI_0_g_array_1_1[0]\, Y => 
        \clock_master/DWACT_ADD_CI_0_g_array_2[0]\);
    
    \ioBank67reader/cellindex_RNIGR3N1[1]\ : NOR3C
      port map(A => \ioBank67reader/parallelholdreg_0_sqmuxa_2\, 
        B => \firmware.N_75\, C => 
        \ioBank6Breader.parallelholdreg_0_sqmuxa_3\, Y => 
        \ioBank67reader/parallelholdreg_0_sqmuxa_4\);
    
    \firmware/un1_reset_0_o2_0\ : OR2A
      port map(A => \ioBank60reader.cellindex_1_sqmuxa_1_1\, B
         => \internaddr[6]\, Y => 
        \firmware/un1_reset_0_o2_0_net_1\);
    
    \matrix_read03/ctrl[0]\ : DFN1
      port map(D => \matrix_read03/ctrl_RNO[0]_net_1\, CLK => 
        Clock03, Q => \inputs62_ctrl_c[0]\);
    
    \AN6PTTControl_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => \outputs01_c_c_c[3]\, E => \VCC\, DOUT => 
        \AN6PTTControl_pad/U0/NET1\, EOUT => 
        \AN6PTTControl_pad/U0/NET2\);
    
    \A2DRead/DataRegU1Ch1g_RNIJA2Q[6]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1g[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch1i[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch1h[6]_net_1\, Y => \A2DRead/N_1483\);
    
    \A2DRead/DataRegU1Ch1f[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1e[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1f[2]_net_1\);
    
    \iobank66debounce/PreviousPosition[0]\ : DFN1
      port map(D => \iobank66debounce/PreviousPosition_3[0]\, CLK
         => Clock03, Q => 
        \iobank66debounce/PreviousPosition[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0p[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0o[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0p[10]_net_1\);
    
    \iobank6Adebounce/IOOut_RNO[0]\ : MX2B
      port map(A => \iobank6Adebounce/PreviousPosition[0]_net_1\, 
        B => \dhold6A[0]\, S => LogicReset_c, Y => 
        \iobank6Adebounce/IOOut_3[0]\);
    
    \snkpout01/counter_RNO[7]\ : XA1
      port map(A => \snkpout01/counter[7]_net_1\, B => 
        \snkpout01/counter_c6\, C => \snkpout01/counter_1_sqmuxa\, 
        Y => \snkpout01/counter_n7\);
    
    \matrix_read04/ctrl_RNO[4]\ : OR3C
      port map(A => \matrix_read04/N_64\, B => 
        \matrix_read04/stage[5]_net_1\, C => \matrix_read04/N_37\, 
        Y => \matrix_read04/ctrl_RNO_0[4]\);
    
    \ioBank60reader/cellindex[0]\ : DFN1
      port map(D => \ioBank60reader/cellindex_6[0]\, CLK => 
        SerialClock_c, Q => \ioBank60reader/cellindex[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNIFLOVB[2]\ : XOR3
      port map(A => \A2DRead/N_1732\, B => \A2DRead/N_1734\, C
         => \A2DRead/N_1736\, Y => \A2DRead/N_1738\);
    
    \addresslatch/output_RNO[3]\ : NOR2A
      port map(A => \addresslatch/N_54\, B => LogicReset_c, Y => 
        \addresslatch/output_RNO[3]_net_1\);
    
    \discretedutycycle01/paralleldata_RNO[7]\ : NOR2A
      port map(A => \discretedutycycle01/N_134_mux\, B => 
        LogicReset_c, Y => 
        \discretedutycycle01/paralleldata_RNO_2[7]\);
    
    \A2DRead/DataRegU1Ch0f_RNI38047[10]\ : XOR3
      port map(A => \A2DRead/N_1921\, B => \A2DRead/N_1944\, C
         => \A2DRead/N_1919\, Y => \A2DRead/N_1952\);
    
    \externenablelatch/output_RNO[5]\ : NOR2A
      port map(A => \externenablelatch/N_51\, B => LogicReset_c, 
        Y => \externenablelatch/output_RNO_0[5]_net_1\);
    
    \A2DRead/DataRegU1Ch0o_RNI3M8O_0[10]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0o[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch0n[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch0m[10]_net_1\, Y => \A2DRead/N_1939\);
    
    \discretedutycycle01/cellindex_1_sqmuxa_1_0\ : NOR2A
      port map(A => \discretedutycycle01/output_0_sqmuxa_net_1\, 
        B => LogicReset_c, Y => 
        \discretedutycycle01/cellindex_1_sqmuxa_1_0_net_1\);
    
    \addresslatch/output_RNO_0[6]\ : MX2
      port map(A => \addresslatch/paralleldata[6]_net_1\, B => 
        \internaddr[6]\, S => Ale_c, Y => \addresslatch/N_57\);
    
    \iobank69debounce/DebounceTimer[1]\ : DFN1E1
      port map(D => \iobank69debounce/DebounceTimer_n1\, CLK => 
        Clock03, E => \iobank69debounce/DebounceTimere\, Q => 
        \iobank69debounce/DebounceTimer[1]_net_1\);
    
    \A2DRead/DataRegU1Ch0a[11]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[11]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch0a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0a[11]_net_1\);
    
    \A2D00reader/parallelholdreg_RNO[5]\ : OR2
      port map(A => \A2D00reader/N_96\, B => LogicReset_c, Y => 
        \A2D00reader/parallelholdreg_RNO[5]_net_1\);
    
    \matrix_read03/ctrl_RNO_1[2]\ : NOR3C
      port map(A => \matrix_read03/N_66\, B => 
        \matrix_read03/ctrl_7_i_0_a3_0_0[2]\, C => 
        \matrix_read03/N_65\, Y => \matrix_read03/N_60\);
    
    \iobank60debounce/DebounceTimer_RNIKSIQ_0[8]\ : OR2B
      port map(A => \iobank60debounce/DebounceTimer[8]_net_1\, B
         => \iobank60debounce/un1_previousposition7\, Y => 
        \iobank60debounce/DebounceTimere\);
    
    \pwmdisable01latch/output_RNO_0[7]\ : MX2
      port map(A => \pwmdisable01latch/pwmdisable01[7]\, B => 
        \pwmdisable01latch/paralleldata[7]_net_1\, S => 
        \pwmdisable01latch/output_0_sqmuxa_net_1\, Y => 
        \pwmdisable01latch/N_51\);
    
    \Watch_Dog_Reset/timercount[8]\ : DFN1E0
      port map(D => \Watch_Dog_Reset/timercount_n8\, CLK => 
        \counter[1]\, E => \Watch_Dog_Reset/timercount_0_sqmuxa\, 
        Q => \Watch_Dog_Reset/timercount[8]_net_1\);
    
    \ioBank67reader/parallelholdreg_RNO[1]\ : OR2
      port map(A => \ioBank67reader/N_24\, B => LogicReset_c, Y
         => \ioBank67reader/parallelholdreg_RNO_8[1]\);
    
    \A2DRead/DataRegU1Ch1[10]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch1[9]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch1_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1[10]_net_1\);
    
    \A2DRead/DataRegU1Ch0p_RNIV2081_0[2]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0b[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch0a[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch0p[2]_net_1\, Y => \A2DRead/N_1721\);
    
    \iobank66debounce/CurrentPosition[0]\ : DFN1
      port map(D => \dhold66_i[0]\, CLK => Clock03, Q => 
        \iobank66debounce/CurrentPosition[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0n[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0m[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0n[12]_net_1\);
    
    \A2DRead/DataRegU1Ch1d[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1c[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1d[10]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNI64135_1[3]\ : AO18
      port map(A => \A2DRead/N_1403\, B => \A2DRead/un60_N_1_i_1\, 
        C => \A2DRead/N_1386\, Y => \A2DRead/un60_i1_mux_0_1\);
    
    \A2DRead/DataRegU1Ch0o_RNI6VLA2_2[12]\ : MAJ3
      port map(A => \A2DRead/N_1990\, B => \A2DRead/N_1994\, C
         => \A2DRead/N_1992\, Y => \A2DRead/N_2005\);
    
    \ioBank63reader/parallelholdreg[0]\ : DFN1
      port map(D => \ioBank63reader/parallelholdreg_RNO_4[0]\, 
        CLK => Clock01, Q => 
        \ioBank63reader/parallelholdreg[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0d_RNIVGDQ21[4]\ : XOR3
      port map(A => \A2DRead/N_1787\, B => \A2DRead/N_1814\, C
         => \A2DRead/N_1789\, Y => \A2DRead/N_1818\);
    
    \A2DRead/DataRegU1Ch0f_RNIF4DPE[4]\ : OR3
      port map(A => \A2DRead/N_1810\, B => 
        \A2DRead/un60_dataregu1ch0_119\, C => 
        \A2DRead/un60_dataregu1ch0_203_0\, Y => 
        \A2DRead/un60_dataregu1ch0_283_0_tz\);
    
    \ioBank64reader/cellindex_RNO[1]\ : NOR3A
      port map(A => \ioBank64reader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank64reader/un1_latch_1\, Y => 
        \ioBank64reader/cellindex_RNO_1[1]\);
    
    \iobank61debounce/CurrentPosition[1]\ : DFN1
      port map(D => \iobank61debounce/inputs61_c_i[1]\, CLK => 
        Clock03, Q => \iobank61debounce/CurrentPosition[1]_net_1\);
    
    \ioBank64reader/dataout_RNO\ : OR3
      port map(A => \ioBank64reader/parallelholdreg_m[0]\, B => 
        \A2D01reader.dataout_0_0\, C => 
        \ioBank64reader/dataout_0_2\, Y => 
        \ioBank64reader/dataout_RNO_6\);
    
    \A2DRead/DataRegU1Ch1f_RNIPKVL2[4]\ : XOR3
      port map(A => \A2DRead/N_1455\, B => \A2DRead/N_1453\, C
         => \A2DRead/N_1430\, Y => \A2DRead/N_1463\);
    
    \A2DRead/DataRegU1Ch1f_RNI1RUN_0[1]\ : AO18
      port map(A => \A2DRead/N_1357\, B => 
        \A2DRead/DataRegU1Ch1p_RNIVBI4_0[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch1f[1]_net_1\, Y => 
        \A2DRead/un60_i2_mux\);
    
    \iobank6Bdebounce/Changing\ : DFN1E0
      port map(D => \iobank6Bdebounce/Changing_net_1\, CLK => 
        Clock03, E => LogicReset_c, Q => 
        \iobank6Bdebounce/Changing_0\);
    
    \iobank63debounce/CurrentPosition[1]\ : DFN1
      port map(D => \dhold63_i[1]\, CLK => Clock03, Q => 
        \iobank63debounce/CurrentPosition[1]_net_1\);
    
    \matrix_read04/stage_RNITM5[0]\ : AXOI4
      port map(A => \matrix_read04/stage[0]_net_1\, B => 
        \matrix_read04/stage[2]_net_1\, C => 
        \matrix_read04/stage[1]_net_1\, Y => \matrix_read04/N_37\);
    
    \A2DRead/DataRegU1Ch0k_RNITKHI[11]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0j[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch0l[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch0k[11]_net_1\, Y => \A2DRead/N_1968\);
    
    \A2D01reader/parallelholdreg_RNO_1[0]\ : OR2
      port map(A => \ohold51[0]\, B => SerialLoad_c, Y => 
        \A2D01reader/parallelholdreg_7[0]\);
    
    \iobank6Adebounce/DebounceTimer[3]\ : DFN1E1
      port map(D => \iobank6Adebounce/DebounceTimer_n3\, CLK => 
        Clock03, E => \iobank6Adebounce/DebounceTimere\, Q => 
        \iobank6Adebounce/DebounceTimer[3]_net_1\);
    
    \A2DRead/DataRegU1Ch0m[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0l[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0m[5]_net_1\);
    
    \bitcontrol01latch/output_RNO[2]\ : OR2
      port map(A => \bitcontrol01latch/N_46\, B => LogicReset_c, 
        Y => \bitcontrol01latch/output_RNO_1[2]\);
    
    \A2DRead/un60_dataregu1ch0_277_RNIMEST44_0\ : XOR2
      port map(A => \A2DRead/un60_dataregu1ch0_359_0\, B => 
        \A2DRead/N_1819\, Y => \A2DRead/N_1848\);
    
    \discretedutycycle01/paralleldata[1]\ : DFN1
      port map(D => \discretedutycycle01/paralleldata_RNO_3[1]\, 
        CLK => SerialClock_c, Q => 
        \discretedutycycle01/paralleldata[1]_net_1\);
    
    \A2D00reader/cellindex_RNO[0]\ : NOR2A
      port map(A => \A2D00reader/cellindex_1_sqmuxa_1\, B => 
        \A2D00reader/cellindex[0]_net_1\, Y => 
        \A2D00reader/cellindex_n0\);
    
    \A2DRead/DataRegU1Ch1f_RNICQJHG3[2]\ : XOR3
      port map(A => \A2DRead/N_1418\, B => \A2DRead/N_1441\, C
         => \A2DRead/N_1443\, Y => \A2DRead/N_1445\);
    
    \snkpout01/counter_RNIN7HP[10]\ : NOR2B
      port map(A => \snkpout01/counter_c9\, B => 
        \snkpout01/counter[10]_net_1\, Y => 
        \snkpout01/counter_c10\);
    
    \ioBank61reader/cellindex_RNIDUO21[0]\ : NOR3C
      port map(A => \ioBank61reader/parallelholdreg_0_sqmuxa_1\, 
        B => \internaddr[0]\, C => 
        \ioBank61reader.parallelholdreg_0_sqmuxa_5\, Y => 
        \ioBank61reader/parallelholdreg_0_sqmuxa_3\);
    
    \A2DRead/DataRegU1Ch1j[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1i[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1j[3]_net_1\);
    
    \snkpout01/counter[4]\ : DFN1
      port map(D => \snkpout01/counter_n4\, CLK => Clock04, Q => 
        \snkpout01/counter[4]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I49_Y\ : OR2
      port map(A => \A2DRead/I49_un1_Y\, B => \A2DRead/N204\, Y
         => \A2DRead/N229\);
    
    \A2DRead/DataRegU1Ch1g[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1f[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1g[9]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNIOCAQ6[6]\ : XOR3
      port map(A => \A2DRead/N_1809\, B => \A2DRead/N_1832\, C
         => \A2DRead/N_1807\, Y => \A2DRead/N_1840\);
    
    \snkpout01/PWMOut_3_0_I_8\ : AND2
      port map(A => 
        \snkpout01/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[1]\, B => 
        \snkpout01/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[0]\, Y => 
        \snkpout01/DWACT_COMP0_E[1]\);
    
    \A2DRead/step_RNO[4]\ : XA1C
      port map(A => \A2DRead/step[4]_net_1\, B => \A2DRead/N_61\, 
        C => LogicReset_c, Y => \A2DRead/N_51\);
    
    \A2DRead/DataRegU1Ch1f_RNIMPHI5[12]\ : XOR3
      port map(A => \A2DRead/N_1630\, B => \A2DRead/N_1653\, C
         => \A2DRead/N_1628\, Y => \A2DRead/N_1661\);
    
    \A2DRead/DataRegU1Ch0[6]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch0[5]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0[6]_net_1\);
    
    \A2DRead/DataRegU1Ch0h[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0g[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0h[7]_net_1\);
    
    \matrix_read03/dataOut01[1]\ : DFN1
      port map(D => \matrix_read03/data01[1]_net_1\, CLK => 
        Clock03, Q => \dhold63[1]\);
    
    \iobank62debounce/DebounceTimer_RNIQ5P11[3]\ : NOR3C
      port map(A => \iobank62debounce/DebounceTimer[3]_net_1\, B
         => \iobank62debounce/DebounceTimer[2]_net_1\, C => 
        \iobank62debounce/DebounceTimer_c1\, Y => 
        \iobank62debounce/DebounceTimer_c3\);
    
    \A2DRead/DataRegU1Ch0c[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0b[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0c[2]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNI9V0QT_1[3]\ : AO18
      port map(A => \A2DRead/un60_i3_mux_1\, B => 
        \A2DRead/N_1467\, C => \A2DRead/un60_i3_mux\, Y => 
        \A2DRead/N_1472\);
    
    \A2DRead/DataRegU1Ch0m_RNI5O711_0[7]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0o[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch0n[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch0m[7]_net_1\, Y => \A2DRead/N_1855\);
    
    \iobank6Adebounce/Changing_RNI20FD\ : NOR2
      port map(A => \iobank6Adebounce/Changing_0\, B => 
        LogicReset_c, Y => 
        \iobank6Adebounce/un1_previousposition7\);
    
    \inputs67_ctrl_pad[2]/U0/U0\ : IOPAD_TRI
      port map(D => \inputs67_ctrl_pad[2]/U0/NET1\, E => 
        \inputs67_ctrl_pad[2]/U0/NET2\, PAD => inputs67_ctrl(2));
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I17_Y\ : AO1
      port map(A => \A2DRead/N171_0\, B => \A2DRead/N175_0\, C
         => \A2DRead/N174_0\, Y => \A2DRead/N194_0\);
    
    \A2DRead/DataRegU1Ch0f_RNIBUEV2_0[1]\ : XOR3
      port map(A => \A2DRead/N_1724\, B => \A2DRead/N_1726\, C
         => \A2DRead/N_1715\, Y => \A2DRead/N_1734\);
    
    \iobank65debounce/Changing\ : DFN1E0
      port map(D => \iobank65debounce/Changing_net_1\, CLK => 
        Clock03, E => LogicReset_c, Q => 
        \iobank65debounce/Changing_0\);
    
    \iobank60debounce/CurrentPosition[2]\ : DFN1
      port map(D => \iobank60debounce/inputs60_c_i[2]\, CLK => 
        Clock03, Q => \iobank60debounce/CurrentPosition[2]_net_1\);
    
    \ioBank63reader/cellindex_RNO[0]\ : NOR3
      port map(A => \ioBank63reader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank63reader/un1_latch_1\, Y => 
        \ioBank63reader/cellindex_RNO_0[0]\);
    
    \A2DRead/DataRegU1Ch1g_RNI7U1Q[2]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1i[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch1h[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch1g[2]_net_1\, Y => \A2DRead/N_1380\);
    
    \addresslatch/cellindex_RNO[1]\ : XA1
      port map(A => \addresslatch/cellindex[1]_net_1\, B => 
        \addresslatch/cellindex[0]_net_1\, C => 
        \addresslatch/output_0_sqmuxa_1_net_1\, Y => 
        \addresslatch/cellindex_n1\);
    
    \iobank61debounce/PreviousPosition[2]\ : DFN1
      port map(D => \iobank61debounce/PreviousPosition_3[2]\, CLK
         => Clock03, Q => 
        \iobank61debounce/PreviousPosition[2]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNI8CSP3[1]\ : MX2A
      port map(A => \A2DRead/N_1377\, B => \A2DRead/un60_i2_mux\, 
        S => \A2DRead/un60_N_11\, Y => \A2DRead/un60_i4_mux\);
    
    \A2DRead/DataRegU1Ch1f_RNI0T0M2[7]\ : XOR3
      port map(A => \A2DRead/N_1539\, B => \A2DRead/N_1537\, C
         => \A2DRead/N_1514\, Y => \A2DRead/N_1547\);
    
    \A2DRead/DataInReg[12]\ : DFN1E1
      port map(D => AdDout_c, CLK => Clock04, E => 
        \A2DRead/N_2173\, Q => \A2DRead/DataInReg[12]_net_1\);
    
    \A2D00reader/cellindex_RNIL2DI[2]\ : NOR2A
      port map(A => \A2D00reader/cellindex[3]_net_1\, B => 
        \A2D00reader/cellindex[2]_net_1\, Y => 
        \A2D00reader/un193_dataout_11_0\);
    
    \addresslatch/output_RNO_0[5]\ : MX2
      port map(A => \addresslatch/paralleldata[5]_net_1\, B => 
        \internaddr[5]\, S => Ale_c, Y => \addresslatch/N_56\);
    
    \A2DRead/DataRegU1Ch1p_RNI77217_0[12]\ : MAJ3
      port map(A => \A2DRead/N_1655\, B => \A2DRead/N_1632\, C
         => \A2DRead/N_1657\, Y => \A2DRead/N_1664\);
    
    \XCLK_pad/U0/U1\ : IOIN_IB
      port map(YIN => \XCLK_pad/U0/NET1\, Y => XCLK_c);
    
    \A2DRead/DataRegU1Ch0o_RNI3M8O[10]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0m[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch0o[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch0n[10]_net_1\, Y => \A2DRead/N_1938\);
    
    \bitcontrol01latch/paralleldata_RNO[4]\ : OR2
      port map(A => \bitcontrol01latch/N_98_mux\, B => 
        LogicReset_c, Y => 
        \bitcontrol01latch/paralleldata_RNO_1[4]_net_1\);
    
    \A2DRead/DataRegU1Ch1j_RNI37G11[12]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1j[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch1l[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch1k[12]_net_1\, Y => \A2DRead/N_1649\);
    
    \heart_beat/counter[1]\ : DFN1
      port map(D => \heart_beat/m36\, CLK => Clock04, Q => 
        \heart_beat/counter[1]_net_1\);
    
    \PnlLgtControl_pad/U0/U0\ : IOPAD_TRI
      port map(D => \PnlLgtControl_pad/U0/NET1\, E => 
        \PnlLgtControl_pad/U0/NET2\, PAD => PnlLgtControl);
    
    \A2DRead/DataRegU1Ch1f_RNIDA1M2[8]\ : XOR3
      port map(A => \A2DRead/N_1567\, B => \A2DRead/N_1565\, C
         => \A2DRead/N_1542\, Y => \A2DRead/N_1575\);
    
    \matrix_read04/ctrl_RNO_1[2]\ : NOR3C
      port map(A => \matrix_read04/N_66\, B => 
        \matrix_read04/ctrl_7_i_0_a3_0_0[2]\, C => 
        \matrix_read04/N_65\, Y => \matrix_read04/N_60\);
    
    \A2DRead/DataRegU1Ch1p_RNILEQ6[12]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1b[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch1p[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch1a[12]_net_1\, Y => \A2DRead/N_1645\);
    
    \AN5PTTControl_pad/U0/U0\ : IOPAD_TRI
      port map(D => \AN5PTTControl_pad/U0/NET1\, E => 
        \AN5PTTControl_pad/U0/NET2\, PAD => AN5PTTControl);
    
    \A2DRead/DataRegU1Ch1e_RNI8CFP[10]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1c[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch1e[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch1d[10]_net_1\, Y => \A2DRead/N_1587\);
    
    \A2DRead/DataRegU1Ch1f_RNI5LIK52[6]\ : AO13
      port map(A => \A2DRead/N_1497\, B => \A2DRead/N_1499\, C
         => \A2DRead/un60_i3_mux_0\, Y => \A2DRead/N_1502\);
    
    \ioBank62reader/parallelholdreg[2]\ : DFN1
      port map(D => \ioBank62reader/parallelholdreg_RNO_3[2]\, 
        CLK => Clock01, Q => 
        \ioBank62reader/parallelholdreg[2]_net_1\);
    
    \addresslatch/cellindex[2]\ : DFN1
      port map(D => \addresslatch/cellindex_n2\, CLK => 
        SerialClock_c, Q => \addresslatch/cellindex[2]_net_1\);
    
    \pwmdisable01latch/paralleldata_RNO_1[5]\ : NOR3C
      port map(A => \pwmdisable01latch/cellindex[2]_net_1\, B => 
        \pwmdisable01latch/output_0_sqmuxa_net_1\, C => 
        \pwmdisable01latch/un1_paralleldata_1[5]\, Y => 
        \pwmdisable01latch/N_99\);
    
    \A2DRead/DataRegU1Ch1o_RNIUV317[5]\ : XOR3
      port map(A => \A2DRead/N_1487\, B => \A2DRead/N_1489\, C
         => \A2DRead/N_1464\, Y => \A2DRead/N_1495\);
    
    \iobank69debounce/DebounceTimer_RNO[4]\ : XA1
      port map(A => \iobank69debounce/DebounceTimer_c3\, B => 
        \iobank69debounce/DebounceTimer[4]_net_1\, C => 
        \iobank69debounce/un1_previousposition7\, Y => 
        \iobank69debounce/DebounceTimer_n4\);
    
    \heart_beat/un1_counter_1_m27\ : XOR2
      port map(A => \heart_beat/N_17_i\, B => 
        \heart_beat/counter[12]_net_1\, Y => \heart_beat/m27\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I20_Y\ : NOR2B
      port map(A => \A2DRead/N172\, B => \A2DRead/N169\, Y => 
        \A2DRead/N197\);
    
    \A2DRead/DataRegU1Ch1j[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1i[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1j[2]_net_1\);
    
    \matrix_read04/dataOut04_RNI1QCC[1]\ : INV
      port map(A => \dhold6B[1]\, Y => \dhold6B_i[1]\);
    
    \addresslatch/output_RNO[2]\ : NOR2A
      port map(A => \addresslatch/N_53\, B => LogicReset_c, Y => 
        \addresslatch/output_RNO[2]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I86_Y_0\ : XOR2
      port map(A => \A2DRead/N_1613\, B => \A2DRead/N_1586\, Y
         => \A2DRead/ADD_11x11_fast_I86_Y_0\);
    
    \A2DRead/DataRegU1Ch1b[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1a[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1b[7]_net_1\);
    
    \firmware/parallelholdreg_RNO[2]\ : OR2
      port map(A => \firmware/N_44\, B => \firmware.N_76\, Y => 
        \firmware/parallelholdreg_13[2]\);
    
    \iobank62debounce/PreviousPosition[0]\ : DFN1
      port map(D => \iobank62debounce/PreviousPosition_3[0]\, CLK
         => Clock03, Q => 
        \iobank62debounce/PreviousPosition[0]_net_1\);
    
    \ioBank63reader/cellindex[1]\ : DFN1
      port map(D => \ioBank63reader/cellindex_RNO_0[1]\, CLK => 
        SerialClock_c, Q => \ioBank63reader/cellindex[1]_net_1\);
    
    \iobank68debounce/DebounceTimer_RNO[8]\ : NOR3C
      port map(A => \iobank68debounce/un1_previousposition7\, B
         => \iobank68debounce/DebounceTimer[7]_net_1\, C => 
        \iobank68debounce/DebounceTimer_c6\, Y => 
        \iobank68debounce/N_48\);
    
    \A2DRead/DataRegU1Ch1p_RNITPGN1_0[10]\ : MAJ3
      port map(A => \A2DRead/N_1587\, B => \A2DRead/N_1591\, C
         => \A2DRead/N_1589\, Y => \A2DRead/N_1602\);
    
    \A2DRead/DataRegU1Ch1j_RNI5FU31_0[9]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1l[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch1k[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch1j[9]_net_1\, Y => \A2DRead/N_1566\);
    
    \ioBank6Areader/cellindex_RNI1D8U[1]\ : OR2
      port map(A => \ioBank6Areader/cellindex[1]_net_1\, B => 
        SerialLoad_c, Y => \ioBank6Areader/un1_latch_1\);
    
    \inputs62_ctrl_pad[2]/U0/U0\ : IOPAD_TRI
      port map(D => \inputs62_ctrl_pad[2]/U0/NET1\, E => 
        \inputs62_ctrl_pad[2]/U0/NET2\, PAD => inputs62_ctrl(2));
    
    \A2DRead/DataRegU1Ch1d[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1c[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1d[2]_net_1\);
    
    \pwmdisable01latch/paralleldata_RNO_0[5]\ : MX2
      port map(A => \pwmdisable01latch/paralleldata[5]_net_1\, B
         => SerialIn_c, S => \pwmdisable01latch/N_99\, Y => 
        \pwmdisable01latch/N_99_mux\);
    
    \ioBank62reader/cellindex[1]\ : DFN1
      port map(D => \ioBank62reader/cellindex_RNO[1]_net_1\, CLK
         => SerialClock_c, Q => 
        \ioBank62reader/cellindex[1]_net_1\);
    
    \A2DRead/DataRegU1Ch0j_RNISSBN_0[7]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0l[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch0k[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch0j[7]_net_1\, Y => \A2DRead/N_1857\);
    
    \iobank65debounce/IOOut[0]\ : DFN1E0
      port map(D => \iobank65debounce/IOOut_3[0]\, CLK => Clock03, 
        E => \iobank65debounce/IOOut_0_sqmuxa\, Q => \ohold65[0]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I71_Y\ : OR3
      port map(A => \A2DRead/I71_un1_Y\, B => 
        \A2DRead/ADD_11x11_fast_I71_Y_0_0\, C => 
        \A2DRead/I57_un1_Y\, Y => \A2DRead/N271\);
    
    \A2DRead/DataRegU1Ch1c[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1b[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1c[8]_net_1\);
    
    \Watch_Dog_Reset/timercount[10]\ : DFN1E0
      port map(D => \Watch_Dog_Reset/timercount_n10\, CLK => 
        \counter[1]\, E => \Watch_Dog_Reset/timercount_0_sqmuxa\, 
        Q => \Watch_Dog_Reset/timercount[10]_net_1\);
    
    \A2DRead/DataRegU1Ch0p_RNIFSRN_0[11]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0b[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch0a[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch0p[11]_net_1\, Y => \A2DRead/N_1965\);
    
    \matrix_read04/data02[2]\ : DFN1E1
      port map(D => \inputs67_c[2]\, CLK => Clock03, E => 
        \matrix_read04/ctrl15\, Q => 
        \matrix_read04/data02[2]_net_1\);
    
    \ExternalHardwareEn_pad[1]/U0/U1\ : IOTRI_OB_EB
      port map(D => \ExternalHardwareEn_c[1]\, E => \VCC\, DOUT
         => \ExternalHardwareEn_pad[1]/U0/NET1\, EOUT => 
        \ExternalHardwareEn_pad[1]/U0/NET2\);
    
    \matrix_read04/stage_RNI3NB[0]\ : NOR3C
      port map(A => \matrix_read04/N_63\, B => 
        \matrix_read04/ctrl18_1\, C => \matrix_read04/N_65\, Y
         => \matrix_read04/ctrl18\);
    
    \externenablelatch/paralleldata[4]\ : DFN1
      port map(D => 
        \externenablelatch/paralleldata_RNO_0[4]_net_1\, CLK => 
        SerialClock_c, Q => 
        \externenablelatch/paralleldata[4]_net_1\);
    
    \discretedutycycle01/paralleldata_RNO[11]\ : NOR2A
      port map(A => \discretedutycycle01/N_138_mux\, B => 
        LogicReset_c, Y => 
        \discretedutycycle01/paralleldata_RNO[11]_net_1\);
    
    \A2D01reader/dataout_RNO_9\ : MX2
      port map(A => \A2D01reader/parallelholdreg[1]_net_1\, B => 
        \A2D01reader/parallelholdreg[9]_net_1\, S => 
        \A2D01reader/cellindex[3]_net_1\, Y => \A2D01reader/N_72\);
    
    \iobank63debounce/DebounceTimer_RNO[3]\ : XA1
      port map(A => \iobank63debounce/DebounceTimer_c2\, B => 
        \iobank63debounce/DebounceTimer[3]_net_1\, C => 
        \iobank63debounce/un1_previousposition7\, Y => 
        \iobank63debounce/DebounceTimer_n3\);
    
    \ioBank60reader/cellindex_1_sqmuxa_1_1\ : NOR2
      port map(A => SerialLoad_c, B => LogicReset_c, Y => 
        \ioBank60reader.cellindex_1_sqmuxa_1_1\);
    
    \A2DRead/DataRegU1Ch0j[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0i[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0j[7]_net_1\);
    
    \addresslatch/cellindex_RNI8C3B_0[2]\ : NOR2
      port map(A => Ale_c, B => \addresslatch/cellindex[2]_net_1\, 
        Y => \addresslatch/paralleldata_0_e_0[1]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I49_un1_Y\ : 
        NOR3C
      port map(A => \A2DRead/N160_0\, B => \A2DRead/N157_0\, C
         => \A2DRead/N208_0\, Y => \A2DRead/I49_un1_Y\);
    
    \A2DRead/DataRegU1Ch0f[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0e[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0f[12]_net_1\);
    
    \externenablelatch/output_RNO[1]\ : NOR2A
      port map(A => \externenablelatch/N_47\, B => LogicReset_c, 
        Y => \externenablelatch/output_RNO_0[1]_net_1\);
    
    \matrix_read03/ctrl[3]\ : DFN1
      port map(D => \matrix_read03/ctrl_RNO[3]_net_1\, CLK => 
        Clock03, Q => \inputs62_ctrl_c[3]\);
    
    \iobank64debounce/DebounceTimer[4]\ : DFN1E1
      port map(D => \iobank64debounce/DebounceTimer_n4\, CLK => 
        Clock03, E => \iobank64debounce/DebounceTimere\, Q => 
        \iobank64debounce/DebounceTimer[4]_net_1\);
    
    \iobank64debounce/PreviousPosition[2]\ : DFN1
      port map(D => \iobank64debounce/PreviousPosition_3[2]\, CLK
         => Clock03, Q => 
        \iobank64debounce/PreviousPosition[2]_net_1\);
    
    \heart_beat/un1_counter_1_m21\ : NOR2B
      port map(A => \heart_beat/N_21_i\, B => 
        \heart_beat/counter[16]_net_1\, Y => \heart_beat/N_22_i\);
    
    \A2DRead/DataRegU1Ch1g[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1f[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1g[2]_net_1\);
    
    \matrix_read03/dataOut00[0]\ : DFN1
      port map(D => \matrix_read03/data00[0]_net_1\, CLK => 
        Clock03, Q => \dhold62[0]\);
    
    \Watch_Dog_Reset/timercount_RNO[5]\ : XA1B
      port map(A => \Watch_Dog_Reset/timercount[5]_net_1\, B => 
        \Watch_Dog_Reset/N_5_0\, C => ResetIn_c, Y => 
        \Watch_Dog_Reset/timercount_n5\);
    
    \bitcontrol01latch/output[5]\ : DFN1
      port map(D => \bitcontrol01latch/output_RNO_1[5]\, CLK => 
        Clock01, Q => \bitcontrol01latch/bitcontrol01[5]\);
    
    \Watch_Dog_Reset/timerexpired\ : DFN1
      port map(D => \Watch_Dog_Reset/timercount_0_sqmuxa\, CLK
         => \counter[1]\, Q => uCReset_c);
    
    \A2DRead/DataRegU1Ch1m[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1l[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1m[2]_net_1\);
    
    \A2DRead/DataRegU1Ch1p[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1o[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1p[12]_net_1\);
    
    \ioBank6Breader/dataout\ : DFN1
      port map(D => \ioBank6Breader/dataout_RNO_13\, CLK => 
        Clock01, Q => do6B);
    
    \externenablelatch/cellindex[0]\ : DFN1E0
      port map(D => \externenablelatch/N_77_i\, CLK => 
        SerialClock_c, E => 
        \externenablelatch/cellindex_1_sqmuxa_net_1\, Q => 
        \externenablelatch/cellindex[0]_net_1\);
    
    \bitcontrol01latch/cellindex_RNIN4LO_2[1]\ : NOR2
      port map(A => \bitcontrol01latch/cellindex[0]_net_1\, B => 
        \bitcontrol01latch/cellindex[1]_net_1\, Y => 
        \bitcontrol01latch/un1_paralleldata_1[0]\);
    
    \ioBank68reader/parallelholdreg_RNO[1]\ : OR2
      port map(A => \ioBank68reader/N_24\, B => LogicReset_c, Y
         => \ioBank68reader/parallelholdreg_RNO_9[1]\);
    
    \discretedutycycle01/output[2]\ : DFN1
      port map(D => \discretedutycycle01/output_RNO_3[2]\, CLK
         => Clock01, Q => \dutycycle01[2]\);
    
    \pwmdisable01latch/output_RNO[1]\ : NOR2A
      port map(A => \pwmdisable01latch/N_45\, B => LogicReset_c, 
        Y => \pwmdisable01latch/output_RNO_2[1]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I19_Y\ : AO1
      port map(A => \A2DRead/N168\, B => \A2DRead/N172\, C => 
        \A2DRead/N171\, Y => \A2DRead/N196_0\);
    
    \discretedutycycle01/output[10]\ : DFN1
      port map(D => \discretedutycycle01/output_RNO[10]_net_1\, 
        CLK => Clock01, Q => \dutycycle01[10]\);
    
    \A2DRead/DataRegU1Ch1o_RNIEAQT[9]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1m[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch1o[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch1n[9]_net_1\, Y => \A2DRead/N_1563\);
    
    \addresslatch/paralleldata_RNO_1[0]\ : NOR3A
      port map(A => \addresslatch/paralleldata_0_e_0[1]\, B => 
        \addresslatch/cellindex[1]_net_1\, C => 
        \addresslatch/cellindex[0]_net_1\, Y => 
        \addresslatch/N_83\);
    
    \iobank6Bdebounce/DebounceTimer[2]\ : DFN1E1
      port map(D => \iobank6Bdebounce/DebounceTimer_n2\, CLK => 
        Clock03, E => \iobank6Bdebounce/DebounceTimere\, Q => 
        \iobank6Bdebounce/DebounceTimer[2]_net_1\);
    
    \matrix_read03/dataOut04_RNI1EUB[2]\ : INV
      port map(A => \dhold66[2]\, Y => \dhold66_i[2]\);
    
    \A2DRead/DataRegU1Ch1p_RNI8LI4_0[4]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1b[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch1a[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch1p[4]_net_1\, Y => \A2DRead/N_1422\);
    
    \A2DRead/DataRegU1Ch1e[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1d[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1e[10]_net_1\);
    
    \A2DRead/DataRegU1Ch0o_RNI6P8O[11]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0m[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch0o[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch0n[11]_net_1\, Y => \A2DRead/N_1966\);
    
    \A2DRead/DataRegU1Ch1j_RNI5FU31[9]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1j[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch1l[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch1k[9]_net_1\, Y => \A2DRead/N_1565\);
    
    \A2DRead/DataRegU1Ch1f_RNIJE0O[9]\ : XOR3
      port map(A => \A2DRead/N_1534\, B => 
        \A2DRead/DataRegU1Ch1f[9]_net_1\, C => \A2DRead/N_1532\, 
        Y => \A2DRead/N_1569\);
    
    \ioBank68reader/parallelholdreg_RNO[0]\ : OR2
      port map(A => \ioBank68reader/N_23\, B => LogicReset_c, Y
         => \ioBank68reader/parallelholdreg_RNO_9[0]\);
    
    \A2D01reader/dataout_RNO_6\ : MX2
      port map(A => \A2D01reader/parallelholdreg[5]_net_1\, B => 
        \A2D01reader/parallelholdreg[7]_net_1\, S => 
        \A2D01reader/cellindex[1]_net_1\, Y => \A2D01reader/N_77\);
    
    \ioBank63reader/parallelholdreg_RNO_0[1]\ : MX2
      port map(A => \ioBank63reader/parallelholdreg_7[1]\, B => 
        \ioBank63reader/parallelholdreg[1]_net_1\, S => 
        \ioBank63reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank63reader/N_24\);
    
    \A2DRead/DataRegU1Ch1m_RNI657N_0[10]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1o[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch1n[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch1m[10]_net_1\, Y => \A2DRead/N_1592\);
    
    \A2DRead/DataRegU1Ch1e[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1d[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1e[6]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I10_P0N\ : OR2
      port map(A => \A2DRead/N_1684\, B => \A2DRead/N_1686\, Y
         => \A2DRead/N184_0\);
    
    \A2D01reader/dataout\ : DFN1
      port map(D => \A2D01reader/dataout_RNO_1_net_1\, CLK => 
        Clock01, Q => do51);
    
    \A2DRead/DataRegU1Ch1m[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1l[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1m[7]_net_1\);
    
    \iobank65debounce/DebounceTimer_RNI7D9H[4]\ : NOR2B
      port map(A => \iobank65debounce/DebounceTimer[3]_net_1\, B
         => \iobank65debounce/DebounceTimer[4]_net_1\, Y => 
        \iobank65debounce/DebounceTimer_c4_out\);
    
    \A2DRead/DataRegU1Ch1n[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1m[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1n[5]_net_1\);
    
    \pwmdisable01latch/cellindex_RNI7TE4_0[1]\ : NOR2A
      port map(A => \pwmdisable01latch/cellindex[1]_net_1\, B => 
        \pwmdisable01latch/cellindex[0]_net_1\, Y => 
        \pwmdisable01latch/un1_paralleldata_1[2]\);
    
    \matrix_read04/stage[1]\ : DFN1
      port map(D => \matrix_read04/N_21\, CLK => Clock03, Q => 
        \matrix_read04/stage[1]_net_1\);
    
    \bitcontrol01latch/paralleldata_RNO_1[7]\ : NOR3C
      port map(A => \bitcontrol01latch/cellindex[2]_net_1\, B => 
        \bitcontrol01latch/output_0_sqmuxa_net_1\, C => 
        \bitcontrol01latch/cellindex_c1\, Y => 
        \bitcontrol01latch/N_101\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I6_G0N\ : NOR2B
      port map(A => \A2DRead/N_1641\, B => \A2DRead/N_1614\, Y
         => \A2DRead/N171_0\);
    
    \ioBank63reader/cellindex_RNI83741[1]\ : NOR3B
      port map(A => \ioBank63reader/parallelholdreg_0_sqmuxa_0\, 
        B => \ioBank63reader/parallelholdreg_0_sqmuxa_4_net_1\, C
         => \internaddr[7]\, Y => 
        \ioBank63reader/parallelholdreg_0_sqmuxa_5\);
    
    \firmware/dataout_RNO_6\ : AO1B
      port map(A => \firmware/dataout_0_0_a2_1_0\, B => 
        \firmware/parallelholdreg[1]_net_1\, C => 
        \ioBank60reader.cellindex_1_sqmuxa_1_1\, Y => 
        \firmware/dataout_0_0_0\);
    
    \A2DRead/DataRegU1Ch0g_RNI2LLT2[12]\ : XOR3
      port map(A => \A2DRead/N_1998\, B => \A2DRead/N_1996\, C
         => \A2DRead/N_1973\, Y => \A2DRead/N_2006\);
    
    \ioBank62reader/cellindex_RNIIFQM[1]\ : OR2
      port map(A => \ioBank62reader/cellindex[1]_net_1\, B => 
        SerialLoad_c, Y => \ioBank62reader/un1_latch_1\);
    
    \A2DRead/DataRegU1Ch0p_RNIEI081[7]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0b[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch0p[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch0a[7]_net_1\, Y => \A2DRead/N_1852\);
    
    \A2DRead/DataRegU1Ch0f_RNIVI9Q6[5]\ : XOR3
      port map(A => \A2DRead/N_1781\, B => \A2DRead/N_1804\, C
         => \A2DRead/N_1779\, Y => \A2DRead/N_1812\);
    
    \A2DRead/DataRegU1Ch0f_RNIB99U1[11]\ : XOR3
      port map(A => \A2DRead/N_1937\, B => 
        \A2DRead/DataRegU1Ch0f[11]_net_1\, C => \A2DRead/N_1935\, 
        Y => \A2DRead/N_1972\);
    
    \A2D00reader/parallelholdreg[9]\ : DFN1
      port map(D => \A2D00reader/parallelholdreg_RNO[9]_net_1\, 
        CLK => Clock01, Q => 
        \A2D00reader/parallelholdreg[9]_net_1\);
    
    \A2DRead/DataRegU1Ch0o[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0n[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0o[10]_net_1\);
    
    \ioBank6Areader/parallelholdreg[1]\ : DFN1
      port map(D => \ioBank6Areader/parallelholdreg_RNO_11[1]\, 
        CLK => Clock01, Q => 
        \ioBank6Areader/parallelholdreg[1]_net_1\);
    
    \iobank67debounce/PreviousPosition_RNO[1]\ : MX2B
      port map(A => \iobank67debounce/CurrentPosition[1]_net_1\, 
        B => \dhold67[1]\, S => LogicReset_c, Y => 
        \iobank67debounce/PreviousPosition_3[1]\);
    
    \clock_master/counter[0]\ : DFN1
      port map(D => \clock_master/counter_i_i[0]\, CLK => XCLK_c, 
        Q => \clock_master/counter_i[0]\);
    
    \A2DRead/DataRegU1Ch0g_RNINH1Q2[10]\ : XOR3
      port map(A => \A2DRead/N_1942\, B => \A2DRead/N_1940\, C
         => \A2DRead/N_1917\, Y => \A2DRead/N_1950\);
    
    \iobank63debounce/DebounceTimer_RNIT2MR[1]\ : NOR2B
      port map(A => \iobank63debounce/DebounceTimer[0]_net_1\, B
         => \iobank63debounce/DebounceTimer[1]_net_1\, Y => 
        \iobank63debounce/DebounceTimer_c1\);
    
    \iobank62debounce/CurrentPosition[1]\ : DFN1
      port map(D => \dhold62_i[1]\, CLK => Clock03, Q => 
        \iobank62debounce/CurrentPosition[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1m_RNICB7N[12]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1m[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch1o[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch1n[12]_net_1\, Y => \A2DRead/N_1647\);
    
    \A2DRead/un60_dataregu1ch0_419\ : XOR3
      port map(A => \A2DRead/N_1866\, B => \A2DRead/N_1868\, C
         => \A2DRead/N_1841\, Y => \A2DRead/N_1872\);
    
    \A2DRead/DataRegU1Ch0f_RNICILQ1_0[9]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0f[9]_net_1\, B => 
        \A2DRead/N_1881\, C => \A2DRead/N_1879\, Y => 
        \A2DRead/N_1917\);
    
    \matrix_read04/data02[0]\ : DFN1E1
      port map(D => \inputs67_c[0]\, CLK => Clock03, E => 
        \matrix_read04/ctrl15\, Q => 
        \matrix_read04/data02[0]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNI73PR2_1[1]\ : MIN3
      port map(A => \A2DRead/N_1362\, B => \A2DRead/N_1366\, C
         => \A2DRead/N_1364\, Y => \A2DRead/un60_N_1_i_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIPKVL2_0[4]\ : MAJ3
      port map(A => \A2DRead/N_1453\, B => \A2DRead/N_1430\, C
         => \A2DRead/N_1455\, Y => \A2DRead/N_1464\);
    
    \iobank6Adebounce/DebounceTimer_RNO[0]\ : NOR2A
      port map(A => \iobank6Adebounce/un1_previousposition7\, B
         => \iobank6Adebounce/DebounceTimer[0]_net_1\, Y => 
        \iobank6Adebounce/N_67\);
    
    \A2DRead/step_RNI533J2[6]\ : NOR3B
      port map(A => \A2DRead/steplde_i_a3_0_net_1\, B => 
        \A2DRead/N_124\, C => \A2DRead/step[6]_net_1\, Y => 
        \A2DRead/steplde_i_a3_2\);
    
    \iobank67debounce/DebounceTimer_RNI238M_0[8]\ : OR2B
      port map(A => \iobank67debounce/DebounceTimer[8]_net_1\, B
         => \iobank67debounce/un1_previousposition7\, Y => 
        \iobank67debounce/DebounceTimere\);
    
    \A2DRead/DataRegU1Ch0c[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0b[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0c[11]_net_1\);
    
    \clock_master/counter_8_I_35\ : AO1
      port map(A => \clock_master/DWACT_ADD_CI_0_pog_array_1[0]\, 
        B => \clock_master/DWACT_ADD_CI_0_g_array_1[0]\, C => 
        \clock_master/DWACT_ADD_CI_0_g_array_1_1_0[0]\, Y => 
        \clock_master/DWACT_ADD_CI_0_g_array_2_0[0]\);
    
    \bitcontrol01latch/paralleldata[7]\ : DFN1
      port map(D => 
        \bitcontrol01latch/paralleldata_RNO_0[7]_net_1\, CLK => 
        SerialClock_c, Q => 
        \bitcontrol01latch/paralleldata[7]_net_1\);
    
    \A2DRead/DataRegU1Ch1g[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1f[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1g[5]_net_1\);
    
    \iobank64debounce/IOOut_RNO[0]\ : MX2B
      port map(A => \iobank64debounce/PreviousPosition[0]_net_1\, 
        B => \dhold64[0]\, S => LogicReset_c, Y => 
        \iobank64debounce/IOOut_3[0]\);
    
    \pwmdisable01latch/output[7]\ : DFN1
      port map(D => \pwmdisable01latch/output_RNO_1[7]\, CLK => 
        Clock01, Q => \pwmdisable01latch/pwmdisable01[7]\);
    
    \iobank62debounce/DebounceTimer_RNO[1]\ : XA1
      port map(A => \iobank62debounce/DebounceTimer[1]_net_1\, B
         => \iobank62debounce/DebounceTimer[0]_net_1\, C => 
        \iobank62debounce/un1_previousposition7\, Y => 
        \iobank62debounce/DebounceTimer_n1\);
    
    \A2DRead/DataRegU1Ch0h[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0g[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0h[3]_net_1\);
    
    \A2DRead/DataRegU1Ch0d_RNIHUIP2_0[6]\ : MAJ3
      port map(A => \A2DRead/N_1822\, B => \A2DRead/N_1826\, C
         => \A2DRead/N_1824\, Y => \A2DRead/N_1837\);
    
    \A2DRead/AdClock_RNO_5\ : AXO7
      port map(A => \A2DRead/step[2]_net_1\, B => 
        \A2DRead/step[5]_net_1\, C => \A2DRead/step[1]_net_1\, Y
         => \A2DRead/i3_mux\);
    
    \A2DRead/DataRegU1Ch1m_RNICB7N_0[12]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1o[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch1m[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch1n[12]_net_1\, Y => \A2DRead/N_1648\);
    
    \matrix_read03/stage_RNIT0I12_0[0]\ : NOR3C
      port map(A => \matrix_read03/N_68\, B => 
        \matrix_read03/ctrl18_1\, C => \matrix_read03/N_64\, Y
         => \matrix_read03/ctrl12\);
    
    \A2DRead/DataRegU1Ch0g_RNI8DVRB[12]\ : XOR3
      port map(A => \A2DRead/N_2007\, B => \A2DRead/N_2020\, C
         => \A2DRead/N_2009\, Y => \A2DRead/N_2024\);
    
    \A2DRead/DataRegU1Ch0g_RNIGUFD[6]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0g[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch0i[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch0h[6]_net_1\, Y => \A2DRead/N_1830\);
    
    \A2DRead/DataRegU1Ch0b[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0a[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0b[12]_net_1\);
    
    \iobank6Bdebounce/DebounceTimer[7]\ : DFN1E1
      port map(D => \iobank6Bdebounce/DebounceTimer_n7\, CLK => 
        Clock03, E => \iobank6Bdebounce/DebounceTimere\, Q => 
        \iobank6Bdebounce/DebounceTimer[7]_net_1\);
    
    \A2DRead/DataRegU1Ch0d_RNIODAG[2]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0c[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch0e[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch0d[2]_net_1\, Y => \A2DRead/N_1718\);
    
    \ioBank64reader/parallelholdreg_RNO[1]\ : OR2
      port map(A => \ioBank64reader/N_24\, B => LogicReset_c, Y
         => \ioBank64reader/parallelholdreg_RNO_5[1]\);
    
    \A2DRead/DataRegU1Ch1a[5]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[5]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch1a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1a[5]_net_1\);
    
    \addresslatch/paralleldata_RNO_1[2]\ : NOR3B
      port map(A => \addresslatch/cellindex[1]_net_1\, B => 
        \addresslatch/paralleldata_0_e_0[1]\, C => 
        \addresslatch/cellindex[0]_net_1\, Y => 
        \addresslatch/N_85\);
    
    \firmware/parallelholdreg_RNO_0[7]\ : NOR2B
      port map(A => \firmware/parallelholdreg[7]_net_1\, B => 
        \firmware/N_42\, Y => \firmware/N_62\);
    
    \A2DRead/DataRegU1Ch0e[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0d[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0e[5]_net_1\);
    
    \iobank62debounce/DebounceTimer_RNI0D4R1[6]\ : NOR3C
      port map(A => \iobank62debounce/DebounceTimer_c5_out\, B
         => \iobank62debounce/DebounceTimer[6]_net_1\, C => 
        \iobank62debounce/DebounceTimer_c3\, Y => 
        \iobank62debounce/DebounceTimer_c6\);
    
    \A2DRead/DataRegU1Ch1c[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1b[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1c[4]_net_1\);
    
    \iobank65debounce/DebounceTimer[5]\ : DFN1E1
      port map(D => \iobank65debounce/DebounceTimer_n5\, CLK => 
        Clock03, E => \iobank65debounce/DebounceTimere\, Q => 
        \iobank65debounce/DebounceTimer[5]_net_1\);
    
    \ioBank66reader/parallelholdreg[2]\ : DFN1
      port map(D => \ioBank66reader/parallelholdreg_RNO_7[2]\, 
        CLK => Clock01, Q => 
        \ioBank66reader/parallelholdreg[2]_net_1\);
    
    \ioBank62reader/dataout_RNO_2\ : NOR2B
      port map(A => \ioBank62reader/parallelholdreg[2]_net_1\, B
         => \ioBank62reader/cellindex[1]_net_1\, Y => 
        \ioBank62reader/parallelholdreg_m[2]\);
    
    \A2DRead/DataRegU1Ch1f_RNISU535_0[9]\ : MAJ3
      port map(A => \A2DRead/N_1569\, B => \A2DRead/N_1544\, C
         => \A2DRead/N_1546\, Y => \A2DRead/N_1578\);
    
    \A2DRead/DataRegU1Ch0i[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0h[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0i[12]_net_1\);
    
    \A2DRead/DataRegU1Ch1c_RNI43TC[5]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1c[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch1e[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch1d[5]_net_1\, Y => \A2DRead/N_1447\);
    
    \A2DRead/DataRegU1Ch0m[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0l[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0m[10]_net_1\);
    
    \A2DRead/AdCs1_RNO_2\ : NOR2A
      port map(A => \A2DRead/step[6]_net_1\, B => \A2DRead/N_63\, 
        Y => \A2DRead/N_103\);
    
    \A2DRead/DatHldRegU1Ch1[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch1_1_sqmuxa\, Q => 
        \ohold51[1]\);
    
    \A2DRead/DataRegU1Ch1j_RNI04G11_0[11]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1l[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch1j[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch1k[11]_net_1\, Y => \A2DRead/N_1622\);
    
    \A2DRead/DataRegU1Ch1g_RNID42Q_0[4]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1i[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch1h[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch1g[4]_net_1\, Y => \A2DRead/N_1428\);
    
    \A2DRead/DataRegU1Ch0e[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0d[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0e[1]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I89_Y\ : AX1D
      port map(A => \A2DRead/I59_un1_Y_0\, B => 
        \A2DRead/ADD_11x11_fast_I72_Y_1\, C => 
        \A2DRead/ADD_11x11_fast_I89_Y_0_0\, Y => 
        \A2DRead/un60_dataregu1ch1[12]\);
    
    \iobank68debounce/PreviousPosition[1]\ : DFN1
      port map(D => \iobank68debounce/PreviousPosition_3[1]\, CLK
         => Clock03, Q => 
        \iobank68debounce/PreviousPosition[1]_net_1\);
    
    \ioBank68reader/dataout_RNO\ : OR3
      port map(A => \ioBank68reader/parallelholdreg_m[2]\, B => 
        \ioBank68reader/parallelholdreg_m[1]\, C => 
        \ioBank68reader/dataout_0_1\, Y => 
        \ioBank68reader/dataout_RNO_10\);
    
    \firmware/parallelholdreg[2]\ : DFN1E1
      port map(D => \firmware/parallelholdreg_13[2]\, CLK => 
        Clock01, E => \firmware/N_14\, Q => 
        \firmware/parallelholdreg[2]_net_1\);
    
    \clock_master/counter_4_I_24\ : XOR2
      port map(A => \clock_master/counter[3]_net_1\, B => 
        \clock_master/DWACT_ADD_CI_0_g_array_12[0]\, Y => 
        \clock_master/counter_4[3]\);
    
    \A2DRead/DataRegU1Ch0d_RNIG4OVB[8]\ : MAJ3
      port map(A => \A2DRead/N_1890\, B => \A2DRead/N_1867\, C
         => \A2DRead/N_1892\, Y => \A2DRead/N_1899\);
    
    \firmware/dataout\ : DFN1
      port map(D => \firmware/dataout_RNO_net_1\, CLK => Clock01, 
        Q => do2x);
    
    \A2DRead/un60_dataregu1ch0_423_RNIFE3792\ : XOR3
      port map(A => \A2DRead/N_1930\, B => \A2DRead/N_1928\, C
         => \A2DRead/N_1903\, Y => \A2DRead/N_1932\);
    
    \A2D00reader/cellindex[0]\ : DFN1
      port map(D => \A2D00reader/cellindex_n0\, CLK => 
        SerialClock_c, Q => \A2D00reader/cellindex[0]_net_1\);
    
    \Watch_Dog_Reset/timercount_RNO[2]\ : XA1B
      port map(A => \Watch_Dog_Reset/timercount[2]_net_1\, B => 
        \Watch_Dog_Reset/N_2\, C => ResetIn_c, Y => 
        \Watch_Dog_Reset/timercount_n2\);
    
    \ioBank63reader/cellindex_RNISI7G[1]\ : NOR2B
      port map(A => \ioBank63reader/_decfrac0\, B => 
        \internaddr[6]\, Y => 
        \ioBank63reader/parallelholdreg_0_sqmuxa_0\);
    
    \ioBank69reader/cellindex_RNISDI81[1]\ : NOR3C
      port map(A => \internaddr[0]\, B => 
        \ioBank69reader/_decfrac0\, C => 
        \ioBank6Areader.parallelholdreg_0_sqmuxa_1\, Y => 
        \ioBank69reader/parallelholdreg_0_sqmuxa_2\);
    
    \iobank63debounce/IOOut_RNO[1]\ : MX2B
      port map(A => \iobank63debounce/PreviousPosition[1]_net_1\, 
        B => \dhold63[1]\, S => LogicReset_c, Y => 
        \iobank63debounce/IOOut_3[1]\);
    
    \matrix_read03/data04[1]\ : DFN1E1
      port map(D => \inputs62_c[1]\, CLK => Clock03, E => 
        \matrix_read03/ctrl21\, Q => 
        \matrix_read03/data04[1]_net_1\);
    
    \ioBank67reader/cellindex_RNO[1]\ : NOR3A
      port map(A => \ioBank67reader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank67reader/un1_latch_1\, Y => 
        \ioBank67reader/cellindex_RNO_4[1]\);
    
    \externenablelatch/paralleldata_RNO[3]\ : OR2
      port map(A => \externenablelatch/N_95_mux\, B => 
        LogicReset_c, Y => 
        \externenablelatch/paralleldata_RNO_0[3]_net_1\);
    
    \iobank6Bdebounce/IOOut_RNO[1]\ : MX2B
      port map(A => \iobank6Bdebounce/PreviousPosition[1]_net_1\, 
        B => \dhold6B[1]\, S => LogicReset_c, Y => 
        \iobank6Bdebounce/IOOut_3[1]\);
    
    \A2DRead/DataRegU1Ch0d_RNICQJP2_0[9]\ : MAJ3
      port map(A => \A2DRead/N_1906\, B => \A2DRead/N_1908\, C
         => \A2DRead/N_1910\, Y => \A2DRead/N_1921\);
    
    \snkpout01/PWMOut\ : DFN1
      port map(D => \snkpout01/PWMOut_RNO_net_1\, CLK => Clock04, 
        Q => PnlLgtControl_c);
    
    \addresslatch/paralleldata_RNO_0[2]\ : MX2
      port map(A => \addresslatch/paralleldata[2]_net_1\, B => 
        SerialIn_c_0, S => \addresslatch/N_85\, Y => 
        \addresslatch/N_85_mux\);
    
    \matrix_read03/dataOut00_RNIT1I7[2]\ : INV
      port map(A => \dhold62[2]\, Y => \dhold62_i[2]\);
    
    \A2DRead/DataRegU1Ch1o_RNI2VPR2_0[4]\ : MAJ3
      port map(A => \A2DRead/N_1424\, B => \A2DRead/N_1428\, C
         => \A2DRead/N_1426\, Y => \A2DRead/N_1460\);
    
    \A2DRead/DataRegU1Ch0d_RNI7TAG_0[7]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0e[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch0d[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch0c[7]_net_1\, Y => \A2DRead/N_1851\);
    
    \iobank65debounce/DebounceTimer_RNO[4]\ : XA1
      port map(A => \iobank65debounce/DebounceTimer_c3\, B => 
        \iobank65debounce/DebounceTimer[4]_net_1\, C => 
        \iobank65debounce/un1_previousposition7\, Y => 
        \iobank65debounce/DebounceTimer_n4\);
    
    \iobank61debounce/CurrentPosition_RNO[2]\ : INV
      port map(A => \inputs61_c[2]\, Y => 
        \iobank61debounce/inputs61_c_i[2]\);
    
    \A2D01reader/parallelholdreg[8]\ : DFN1
      port map(D => \A2D01reader/parallelholdreg_RNO_0[8]_net_1\, 
        CLK => Clock01, Q => 
        \A2D01reader/parallelholdreg[8]_net_1\);
    
    \matrix_read04/stage_RNITO3_1[0]\ : NOR2
      port map(A => \matrix_read04/stage[0]_net_1\, B => 
        \matrix_read04/stage[1]_net_1\, Y => \matrix_read04/N_66\);
    
    \matrix_read03/ctrl[4]\ : DFN1
      port map(D => \matrix_read03/ctrl_RNO[4]_net_1\, CLK => 
        Clock03, Q => \inputs62_ctrl_c[4]\);
    
    \iobank6Bdebounce/DebounceTimer[8]\ : DFN1E1
      port map(D => \iobank6Bdebounce/N_48\, CLK => Clock03, E
         => \iobank6Bdebounce/DebounceTimere\, Q => 
        \iobank6Bdebounce/DebounceTimer[8]_net_1\);
    
    \iobank69debounce/PreviousPosition[2]\ : DFN1
      port map(D => \iobank69debounce/PreviousPosition_3[2]\, CLK
         => Clock03, Q => 
        \iobank69debounce/PreviousPosition[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0c[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0b[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0c[3]_net_1\);
    
    \externenablelatch/paralleldata_RNO_0[2]\ : MX2
      port map(A => \externenablelatch/paralleldata[2]_net_1\, B
         => SerialIn_c_0, S => \externenablelatch/N_94\, Y => 
        \externenablelatch/N_94_mux\);
    
    \matrix_read03/data00[1]\ : DFN1E1
      port map(D => \inputs62_c[1]\, CLK => Clock03, E => 
        \matrix_read03/ctrl9\, Q => 
        \matrix_read03/data00[1]_net_1\);
    
    \A2DRead/DataRegU1Ch0o_RNI9S8O_0[12]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0o[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch0n[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch0m[12]_net_1\, Y => \A2DRead/N_1995\);
    
    \matrix_read04/dataOut04[1]\ : DFN1
      port map(D => \matrix_read04/data04[1]_net_1\, CLK => 
        Clock03, Q => \dhold6B[1]\);
    
    \matrix_read03/stage_RNIR8KM1[2]\ : NOR3B
      port map(A => \matrix_read03/stage_m1_0_a2_0\, B => 
        \matrix_read03/stage[2]_net_1\, C => \matrix_read03/N_26\, 
        Y => \matrix_read03/stage_N_3_mux\);
    
    \iobank65debounce/DebounceTimer[6]\ : DFN1E1
      port map(D => \iobank65debounce/DebounceTimer_n6\, CLK => 
        Clock03, E => \iobank65debounce/DebounceTimere\, Q => 
        \iobank65debounce/DebounceTimer[6]_net_1\);
    
    \iobank62debounce/DebounceTimer[2]\ : DFN1E1
      port map(D => \iobank62debounce/DebounceTimer_n2\, CLK => 
        Clock03, E => \iobank62debounce/DebounceTimere\, Q => 
        \iobank62debounce/DebounceTimer[2]_net_1\);
    
    \externenablelatch/output[0]\ : DFN1
      port map(D => \externenablelatch/output_RNO_0[0]_net_1\, 
        CLK => Clock01, Q => \ExternalHardwareEn_c[0]\);
    
    \Watch_Dog_Reset/timercount[6]\ : DFN1E0
      port map(D => \Watch_Dog_Reset/timercount_n6\, CLK => 
        \counter[1]\, E => \Watch_Dog_Reset/timercount_0_sqmuxa\, 
        Q => \Watch_Dog_Reset/timercount[6]_net_1\);
    
    \heart_beat/un1_counter_1_m4\ : AX1C
      port map(A => LogicReset_c, B => uCReset_c, C => 
        \heart_beat/counter[2]_net_1\, Y => \heart_beat/N_44\);
    
    \snkpout01/PWMOut_3_0_I_38\ : OA1A
      port map(A => \snkpout01/counter[3]_net_1\, B => 
        \dutycycle01[3]\, C => \snkpout01/N_3\, Y => 
        \snkpout01/N_7\);
    
    \A2DRead/DataRegU1Ch1f_RNI620M2_0[5]\ : MAJ3
      port map(A => \A2DRead/N_1481\, B => \A2DRead/N_1458\, C
         => \A2DRead/N_1483\, Y => \A2DRead/N_1492\);
    
    \iobank62debounce/DebounceTimer_RNO_0[6]\ : NOR2B
      port map(A => \iobank62debounce/DebounceTimer_c3\, B => 
        \iobank62debounce/DebounceTimer_c5_out\, Y => 
        \iobank62debounce/DebounceTimer_c5\);
    
    \clock_master/counter_5_I_10\ : XOR3
      port map(A => \counter[1]\, B => LogicReset_c, C => Clock01, 
        Y => \clock_master/counter_4_0_0[1]\);
    
    \A2DRead/step_RNI5URG2[7]\ : NOR3B
      port map(A => \A2DRead/N_111\, B => 
        \A2DRead/DataRegU1Ch0n_1_sqmuxa_0_a2_0_0\, C => 
        \A2DRead/N_62\, Y => \A2DRead/N_114\);
    
    \iobank69debounce/CurrentPosition[1]\ : DFN1
      port map(D => \dhold69_i[1]\, CLK => Clock03, Q => 
        \iobank69debounce/CurrentPosition[1]_net_1\);
    
    \iobank64debounce/Changing_RNIL20E\ : NOR2
      port map(A => \iobank64debounce/Changing_net_1\, B => 
        LogicReset_c, Y => 
        \iobank64debounce/un1_previousposition7\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I7_G0N\ : OA1
      port map(A => \A2DRead/un60_dataregu1ch0_427\, B => 
        \A2DRead/un60_dataregu1ch0_713_0\, C => \A2DRead/N_2016\, 
        Y => \A2DRead/N174\);
    
    \matrix_read04/dataOut04_RNI0PCC[0]\ : INV
      port map(A => \dhold6B[0]\, Y => \dhold6B_i[0]\);
    
    \iobank67debounce/DebounceTimer_RNO_0[4]\ : NOR2B
      port map(A => \iobank67debounce/DebounceTimer_c2\, B => 
        \iobank67debounce/DebounceTimer[3]_net_1\, Y => 
        \iobank67debounce/DebounceTimer_c3\);
    
    \A2DRead/DataRegU1Ch1b[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1a[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1b[4]_net_1\);
    
    \A2DRead/DataRegU1Ch0[9]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch0[8]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0[9]_net_1\);
    
    \snkpout01/PWMOut_3_0_I_45\ : AO1
      port map(A => \snkpout01/DWACT_COMP0_E[1]\, B => 
        \snkpout01/DWACT_COMP0_E[2]\, C => 
        \snkpout01/DWACT_COMP0_E[0]\, Y => \snkpout01/PWMOut_3\);
    
    \iobank64debounce/DebounceTimer[0]\ : DFN1E1
      port map(D => \iobank64debounce/N_67\, CLK => Clock03, E
         => \iobank64debounce/DebounceTimere\, Q => 
        \iobank64debounce/DebounceTimer[0]_net_1\);
    
    \iobank61debounce/DebounceTimer[6]\ : DFN1E1
      port map(D => \iobank61debounce/DebounceTimer_n6\, CLK => 
        Clock03, E => \iobank61debounce/DebounceTimere\, Q => 
        \iobank61debounce/DebounceTimer[6]_net_1\);
    
    \pwmdisable01latch/cellindex[2]\ : DFN1E0
      port map(D => \pwmdisable01latch/cellindex_n2\, CLK => 
        SerialClock_c, E => 
        \pwmdisable01latch/cellindex_1_sqmuxa_net_1\, Q => 
        \pwmdisable01latch/cellindex[2]_net_1\);
    
    \A2DRead/DataRegU1Ch1g[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1f[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1g[11]_net_1\);
    
    \A2DRead/DataRegU1Ch0l[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0k[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0l[4]_net_1\);
    
    \iobank66debounce/IOOut[0]\ : DFN1E0
      port map(D => \iobank66debounce/IOOut_3[0]\, CLK => Clock03, 
        E => \iobank66debounce/IOOut_0_sqmuxa\, Q => \ohold66[0]\);
    
    \ioBank61reader/dataout_RNO_1\ : MX2
      port map(A => \ioBank61reader/parallelholdreg[0]_net_1\, B
         => \ioBank61reader/parallelholdreg[2]_net_1\, S => 
        \ioBank61reader/cellindex[1]_net_1\, Y => 
        \ioBank61reader/N_33\);
    
    \A2DRead/DataRegU1Ch0i[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0h[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0i[4]_net_1\);
    
    \iobank65debounce/PreviousPosition_RNO[2]\ : MX2B
      port map(A => \iobank65debounce/CurrentPosition[2]_net_1\, 
        B => \dhold65[2]\, S => LogicReset_c, Y => 
        \iobank65debounce/PreviousPosition_3[2]\);
    
    \snkpout01/counter_RNO[0]\ : NOR2A
      port map(A => \snkpout01/counter_1_sqmuxa\, B => 
        \snkpout01/counter[0]_net_1\, Y => \snkpout01/counter_n0\);
    
    \matrix_read03/dataOut02_RNIT5O9[0]\ : INV
      port map(A => \dhold64[0]\, Y => \dhold64_i[0]\);
    
    \addresslatch/paralleldata_RNO[7]\ : NOR2A
      port map(A => \addresslatch/N_90_mux\, B => LogicReset_c, Y
         => \addresslatch/paralleldata_RNO[7]_net_1\);
    
    \snkpout01/counter[12]\ : DFN1
      port map(D => \snkpout01/counter_n12\, CLK => Clock04, Q
         => \snkpout01/counter[12]_net_1\);
    
    \inputs67_ctrl_pad[2]/U0/U1\ : IOTRI_OB_EB
      port map(D => \inputs67_ctrl_c[2]\, E => \VCC\, DOUT => 
        \inputs67_ctrl_pad[2]/U0/NET1\, EOUT => 
        \inputs67_ctrl_pad[2]/U0/NET2\);
    
    \firmware/parallelholdreg_RNO[1]\ : OR3A
      port map(A => \ioBank62reader.parallelholdreg_0_sqmuxa_4\, 
        B => \firmware/un1_reset_0_o2_3_net_1\, C => 
        \firmware.N_70\, Y => \firmware/N_26\);
    
    \matrix_read04/stage_RNO_0[4]\ : OA1C
      port map(A => \matrix_read04/stage[3]_net_1\, B => 
        \matrix_read04/N_36\, C => \matrix_read04/stage[4]_net_1\, 
        Y => \matrix_read04/N_55\);
    
    \A2DRead/DataRegU1Ch0g_RNI8HV57_0[11]\ : MAJ3
      port map(A => \A2DRead/N_2002\, B => \A2DRead/N_1979\, C
         => \A2DRead/N_2004\, Y => \A2DRead/N_2011\);
    
    \A2DRead/DataRegU1Ch1f_RNIDDASC[7]\ : XOR3
      port map(A => \A2DRead/N_1547\, B => \A2DRead/N_1549\, C
         => \A2DRead/N_1522\, Y => \A2DRead/N_1553\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I29_Y\ : AO1
      port map(A => \A2DRead/N153\, B => \A2DRead/N157_0\, C => 
        \A2DRead/N156_0\, Y => \A2DRead/N206_0\);
    
    \A2DRead/DataRegU1Ch1j[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1i[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1j[10]_net_1\);
    
    \A2DRead/DataRegU1Ch1j[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1i[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1j[5]_net_1\);
    
    \A2DRead/DataRegU1Ch1j[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1i[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1j[1]_net_1\);
    
    \A2D01reader/cellindex_RNO[1]\ : XA1
      port map(A => \A2D01reader/cellindex[1]_net_1\, B => 
        \A2D01reader/cellindex[0]_net_1\, C => 
        \A2D01reader/cellindex_1_sqmuxa_1\, Y => 
        \A2D01reader/cellindex_n1\);
    
    \matrix_read03/data03[2]\ : DFN1E1
      port map(D => \inputs62_c[2]\, CLK => Clock03, E => 
        \matrix_read03/ctrl18\, Q => 
        \matrix_read03/data03[2]_net_1\);
    
    \discretedutycycle01/paralleldata[0]\ : DFN1
      port map(D => \discretedutycycle01/paralleldata_RNO_3[0]\, 
        CLK => SerialClock_c, Q => 
        \discretedutycycle01/paralleldata[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0d[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0c[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0d[10]_net_1\);
    
    \A2D01reader/cellindex[1]\ : DFN1
      port map(D => \A2D01reader/cellindex_n1\, CLK => 
        SerialClock_c, Q => \A2D01reader/cellindex[1]_net_1\);
    
    \addresslatch/paralleldata_RNO_0[5]\ : MX2
      port map(A => \addresslatch/paralleldata[5]_net_1\, B => 
        SerialIn_c_0, S => \addresslatch/N_88\, Y => 
        \addresslatch/N_88_mux\);
    
    \inputs61_pad[3]/U0/U1\ : IOIN_IB
      port map(YIN => \inputs61_pad[3]/U0/NET1\, Y => 
        \inputs61_c[3]\);
    
    \A2DRead/DataRegU1Ch1o_RNIGCPR2_0[2]\ : MAJ3
      port map(A => \A2DRead/N_1376\, B => \A2DRead/N_1380\, C
         => \A2DRead/N_1378\, Y => \A2DRead/N_1406\);
    
    \A2DRead/DataRegU1Ch1j[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1i[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1j[4]_net_1\);
    
    \A2DRead/DataRegU1Ch1k[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1j[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1k[5]_net_1\);
    
    \ioBank68reader/parallelholdreg_RNO_1[1]\ : OR2
      port map(A => \ohold68[1]\, B => SerialLoad_c, Y => 
        \ioBank68reader/parallelholdreg_7[1]\);
    
    \matrix_read03/dataOut01[0]\ : DFN1
      port map(D => \matrix_read03/data01[0]_net_1\, CLK => 
        Clock03, Q => \dhold63[0]\);
    
    \A2DRead/DataRegU1Ch1o[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1n[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1o[12]_net_1\);
    
    \A2DRead/DataRegU1Ch0a[3]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[3]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch0a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0a[3]_net_1\);
    
    \A2DRead/DataInReg_RNO_0[4]\ : NOR3B
      port map(A => \A2DRead/N_2136\, B => 
        \A2DRead/step[2]_net_1\, C => \A2DRead/step[4]_net_1\, Y
         => \A2DRead/DataInReg_323_e_0\);
    
    \A2DRead/DataRegU1Ch0d_RNIDJHI01_0[6]\ : MAJ3
      port map(A => \A2DRead/N_1843\, B => \A2DRead/N_1845\, C
         => \A2DRead/N_1870\, Y => \A2DRead/N_1875\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I57_un1_Y\ : 
        NOR2B
      port map(A => \A2DRead/N218_0\, B => \A2DRead/N225\, Y => 
        \A2DRead/I57_un1_Y\);
    
    \A2DRead/DataRegU1Ch0f[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0e[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0f[9]_net_1\);
    
    \ioBank67reader/parallelholdreg_RNO_1[2]\ : OR2
      port map(A => \ohold67[2]\, B => SerialLoad_c, Y => 
        \ioBank67reader/parallelholdreg_7[2]\);
    
    \A2DRead/DataRegU1Ch0f_RNI3QCQ6[9]\ : XOR3
      port map(A => \A2DRead/N_1893\, B => \A2DRead/N_1916\, C
         => \A2DRead/N_1891\, Y => \A2DRead/N_1924\);
    
    \A2DRead/DataRegU1Ch0m_RNI2L711_0[6]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0o[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch0n[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch0m[6]_net_1\, Y => \A2DRead/N_1827\);
    
    \iobank61debounce/DebounceTimer_RNI1736[5]\ : NOR2B
      port map(A => \iobank61debounce/DebounceTimer[4]_net_1\, B
         => \iobank61debounce/DebounceTimer[5]_net_1\, Y => 
        \iobank61debounce/DebounceTimer_c5_out\);
    
    \A2DRead/DataRegU1Ch0d_RNIDJHI01[6]\ : XOR3
      port map(A => \A2DRead/N_1843\, B => \A2DRead/N_1870\, C
         => \A2DRead/N_1845\, Y => \A2DRead/N_1874\);
    
    \iobank6Bdebounce/PreviousPosition_RNO[2]\ : MX2B
      port map(A => \iobank6Bdebounce/CurrentPosition[2]_net_1\, 
        B => \dhold6B[2]\, S => LogicReset_c, Y => 
        \iobank6Bdebounce/PreviousPosition_3[2]\);
    
    \A2D00reader/parallelholdreg_RNO_0[8]\ : MX2
      port map(A => \A2D00reader/parallelholdreg_7[8]\, B => 
        \A2D00reader/parallelholdreg[8]_net_1\, S => 
        \A2D00reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D00reader/N_99\);
    
    \ioBank64reader/parallelholdreg[0]\ : DFN1
      port map(D => \ioBank64reader/parallelholdreg_RNO_5[0]\, 
        CLK => Clock01, Q => 
        \ioBank64reader/parallelholdreg[0]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I6_P0N\ : OR2
      port map(A => \A2DRead/N_1988\, B => \A2DRead/N_1961\, Y
         => \A2DRead/N172\);
    
    \A2DRead/DataRegU1Ch1m[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1l[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1m[9]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I26_Y\ : NOR2B
      port map(A => \A2DRead/N160\, B => \A2DRead/N163\, Y => 
        \A2DRead/N203_0\);
    
    \iobank68debounce/DebounceTimer[2]\ : DFN1E1
      port map(D => \iobank68debounce/DebounceTimer_n2\, CLK => 
        Clock03, E => \iobank68debounce/DebounceTimere\, Q => 
        \iobank68debounce/DebounceTimer[2]_net_1\);
    
    \iobank66debounce/DebounceTimer_RNI674A1[2]\ : NOR2B
      port map(A => \iobank66debounce/DebounceTimer_c1\, B => 
        \iobank66debounce/DebounceTimer[2]_net_1\, Y => 
        \iobank66debounce/DebounceTimer_c2\);
    
    \ioBank63reader/cellindex_RNO[1]\ : NOR3A
      port map(A => \ioBank63reader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank63reader/un1_latch_1\, Y => 
        \ioBank63reader/cellindex_RNO_0[1]\);
    
    \ioBank65reader/parallelholdreg_RNO_1[2]\ : OR2
      port map(A => \ohold65[2]\, B => SerialLoad_c, Y => 
        \ioBank65reader/parallelholdreg_7[2]\);
    
    \ioBank60reader/cellindex_RNIN02M[0]\ : NOR2
      port map(A => \ioBank60reader/cellindex[0]_net_1\, B => 
        \ioBank60reader/cellindex[1]_net_1\, Y => 
        \ioBank60reader/parallelholdreg_0_sqmuxa_0\);
    
    \A2DRead/DataRegU1Ch0p_RNIKO081_0[9]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0b[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch0a[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch0p[9]_net_1\, Y => \A2DRead/N_1909\);
    
    \inputs61_pad[2]/U0/U0\ : IOPAD_IN
      port map(PAD => inputs61(2), Y => \inputs61_pad[2]/U0/NET1\);
    
    \A2DRead/DataRegU1Ch0j_RNIAABN[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0k[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch0l[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch0j[1]_net_1\, Y => \A2DRead/N_1710\);
    
    \bitcontrol01latch/paralleldata_RNO_0[0]\ : MX2
      port map(A => \bitcontrol01latch/paralleldata[0]_net_1\, B
         => SerialIn_c, S => \bitcontrol01latch/N_94\, Y => 
        \bitcontrol01latch/N_94_mux\);
    
    \heart_beat/counter[13]\ : DFN1
      port map(D => \heart_beat/m26\, CLK => Clock04, Q => 
        \heart_beat/counter[13]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNI2TBS6[10]\ : XOR3
      port map(A => \A2DRead/N_1974\, B => \A2DRead/N_1976\, C
         => \A2DRead/N_1951\, Y => \A2DRead/N_1982\);
    
    \inputs67_ctrl_pad[4]/U0/U0\ : IOPAD_TRI
      port map(D => \inputs67_ctrl_pad[4]/U0/NET1\, E => 
        \inputs67_ctrl_pad[4]/U0/NET2\, PAD => inputs67_ctrl(4));
    
    \ioBank69reader/cellindex_RNI9NIO[1]\ : NOR2
      port map(A => \ioBank69reader/cellindex[1]_net_1\, B => 
        \ioBank69reader/cellindex[0]_net_1\, Y => 
        \ioBank69reader/_decfrac0\);
    
    \A2DRead/DataRegU1Ch1m[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1l[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1m[12]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I59_un1_Y\ : 
        NOR2B
      port map(A => \A2DRead/N220\, B => \A2DRead/N227\, Y => 
        \A2DRead/I59_un1_Y\);
    
    \A2DRead/DataRegU1Ch0g_RNI4IFD_0[2]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0i[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch0h[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch0g[2]_net_1\, Y => \A2DRead/N_1727\);
    
    \A2DRead/DataRegU1Ch1p_RNI9LFH[4]\ : XOR2
      port map(A => \A2DRead/N_1419\, B => \A2DRead/N_1421\, Y
         => \A2DRead/un60_dataregu1ch1_189_0\);
    
    \inputs67_ctrl_pad[0]/U0/U0\ : IOPAD_TRI
      port map(D => \inputs67_ctrl_pad[0]/U0/NET1\, E => 
        \inputs67_ctrl_pad[0]/U0/NET2\, PAD => inputs67_ctrl(0));
    
    \iobank61debounce/CurrentPosition_RNO[3]\ : INV
      port map(A => \inputs61_c[3]\, Y => 
        \iobank61debounce/inputs61_c_i[3]\);
    
    \A2DRead/DataRegU1Ch1i_RNIIGQHD_0[11]\ : MAJ3
      port map(A => \A2DRead/N_1633\, B => \A2DRead/N_1606\, C
         => \A2DRead/N_1631\, Y => \A2DRead/N_1638\);
    
    \A2DRead/DataInReg_RNO_0[1]\ : NOR3B
      port map(A => \A2DRead/step[4]_net_1\, B => 
        \A2DRead/N_2136\, C => \A2DRead/step[2]_net_1\, Y => 
        \A2DRead/DataInReg_320_e_1\);
    
    \iobank65debounce/IOOut[1]\ : DFN1E0
      port map(D => \iobank65debounce/IOOut_3[1]\, CLK => Clock03, 
        E => \iobank65debounce/IOOut_0_sqmuxa\, Q => \ohold65[1]\);
    
    \iobank65debounce/DebounceTimer_RNO_0[6]\ : NOR2B
      port map(A => \iobank65debounce/DebounceTimer_c4\, B => 
        \iobank65debounce/DebounceTimer[5]_net_1\, Y => 
        \iobank65debounce/DebounceTimer_c5\);
    
    \A2DRead/DataRegU1Ch1i_RNIMTP33[12]\ : XOR3
      port map(A => \A2DRead/N_1652\, B => \A2DRead/N_1650\, C
         => \A2DRead/N_1654\, Y => \A2DRead/N_1673\);
    
    \A2D00reader/parallelholdreg[11]\ : DFN1
      port map(D => \A2D00reader/parallelholdreg_RNO[11]_net_1\, 
        CLK => Clock01, Q => 
        \A2D00reader/parallelholdreg[11]_net_1\);
    
    \iobank6Adebounce/Changing_RNO\ : XOR2
      port map(A => \iobank6Adebounce/PreviousPosition[0]_net_1\, 
        B => \iobank6Adebounce/CurrentPosition[0]_net_1\, Y => 
        \iobank6Adebounce/Changing_net_1\);
    
    \bitcontrol01latch/paralleldata_RNO[2]\ : OR2
      port map(A => \bitcontrol01latch/N_96_mux\, B => 
        LogicReset_c, Y => 
        \bitcontrol01latch/paralleldata_RNO_1[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNIB99U1_0[11]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0f[11]_net_1\, B => 
        \A2DRead/N_1937\, C => \A2DRead/N_1935\, Y => 
        \A2DRead/N_1973\);
    
    \A2D00reader/parallelholdreg_RNO[11]\ : OR2
      port map(A => \A2D00reader/N_102\, B => LogicReset_c, Y => 
        \A2D00reader/parallelholdreg_RNO[11]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_423_RNIMMNJ41\ : XOR2
      port map(A => \A2DRead/N_1900\, B => \A2DRead/N_1902\, Y
         => \A2DRead/un60_dataregu1ch0_499_0\);
    
    \A2DRead/DataRegU1Ch1h[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1g[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1h[11]_net_1\);
    
    \heart_beat/counter[16]\ : DFN1
      port map(D => \heart_beat/m23\, CLK => Clock04, Q => 
        \heart_beat/counter[16]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I43_Y\ : AO1
      port map(A => \A2DRead/N202\, B => \A2DRead/N199\, C => 
        \A2DRead/N198_0\, Y => \A2DRead/N223_0\);
    
    \iobank69debounce/DebounceTimer_RNIHNM33[6]\ : NOR3C
      port map(A => \iobank69debounce/DebounceTimer_c5_out\, B
         => \iobank69debounce/DebounceTimer[6]_net_1\, C => 
        \iobank69debounce/DebounceTimer_c3\, Y => 
        \iobank69debounce/DebounceTimer_c6\);
    
    \matrix_read03/stage_RNI1DRL_1[4]\ : NOR2A
      port map(A => \matrix_read03/stage[3]_net_1\, B => 
        \matrix_read03/stage[4]_net_1\, Y => \matrix_read03/N_63\);
    
    \matrix_read03/dataOut03[2]\ : DFN1
      port map(D => \matrix_read03/data03[2]_net_1\, CLK => 
        Clock03, Q => \dhold65[2]\);
    
    \A2DRead/DataRegU1Ch1[15]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch1[14]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch1_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1[15]_net_1\);
    
    \A2DRead/DataRegU1Ch0o[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0n[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0o[6]_net_1\);
    
    \A2D00reader/dataout_RNO_3\ : MX2
      port map(A => \A2D00reader/N_69\, B => \A2D00reader/N_70\, 
        S => \A2D00reader/cellindex[1]_net_1\, Y => 
        \A2D00reader/N_71\);
    
    \A2DRead/DataRegU1Ch0f_RNII5FV2[2]\ : XOR3
      port map(A => \A2DRead/N_1748\, B => \A2DRead/N_1746\, C
         => \A2DRead/N_1729\, Y => \A2DRead/N_1756\);
    
    \iobank61debounce/CurrentPosition[2]\ : DFN1
      port map(D => \iobank61debounce/inputs61_c_i[2]\, CLK => 
        Clock03, Q => \iobank61debounce/CurrentPosition[2]_net_1\);
    
    \A2DRead/DataRegU1Ch1p_RNI5II4_0[3]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1b[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch1a[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch1p[3]_net_1\, Y => \A2DRead/N_1396\);
    
    \ioBank68reader/parallelholdreg_RNO[2]\ : OR2
      port map(A => \ioBank68reader/N_25\, B => LogicReset_c, Y
         => \ioBank68reader/parallelholdreg_RNO_9[2]\);
    
    \iobank69debounce/DebounceTimer_RNI9FFS[1]\ : NOR2B
      port map(A => \iobank69debounce/DebounceTimer[0]_net_1\, B
         => \iobank69debounce/DebounceTimer[1]_net_1\, Y => 
        \iobank69debounce/DebounceTimer_c1\);
    
    \A2DRead/DataRegU1Ch0h[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0g[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0h[2]_net_1\);
    
    \matrix_read03/stage[5]\ : DFN1
      port map(D => \matrix_read03/N_13\, CLK => Clock03, Q => 
        \matrix_read03/stage[5]_net_1\);
    
    \iobank63debounce/PreviousPosition[2]\ : DFN1
      port map(D => \iobank63debounce/PreviousPosition_3[2]\, CLK
         => Clock03, Q => 
        \iobank63debounce/PreviousPosition[2]_net_1\);
    
    \firmware/parallelholdreg_RNO_0[6]\ : MX2
      port map(A => \firmware.N_76\, B => 
        \firmware/parallelholdreg[6]_net_1\, S => \firmware/N_42\, 
        Y => \firmware/N_79\);
    
    \A2DRead/DataRegU1Ch0l[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0k[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0l[6]_net_1\);
    
    \inputs62_ctrl_pad[4]/U0/U0\ : IOPAD_TRI
      port map(D => \inputs62_ctrl_pad[4]/U0/NET1\, E => 
        \inputs62_ctrl_pad[4]/U0/NET2\, PAD => inputs62_ctrl(4));
    
    \ioBank6Breader/parallelholdreg_RNO[1]\ : OR2
      port map(A => \ioBank6Breader/N_24\, B => LogicReset_c, Y
         => \ioBank6Breader/parallelholdreg_RNO_12[1]\);
    
    \iobank63debounce/CurrentPosition[2]\ : DFN1
      port map(D => \dhold63_i[2]\, CLK => Clock03, Q => 
        \iobank63debounce/CurrentPosition[2]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNI9PF863[7]\ : MAJ3
      port map(A => \A2DRead/N_1525\, B => \A2DRead/N_1500\, C
         => \A2DRead/N_1527\, Y => \A2DRead/N_1530\);
    
    \inputs62_ctrl_pad[0]/U0/U0\ : IOPAD_TRI
      port map(D => \inputs62_ctrl_pad[0]/U0/NET1\, E => 
        \inputs62_ctrl_pad[0]/U0/NET2\, PAD => inputs62_ctrl(0));
    
    \A2DRead/DataRegU1Ch0f_RNI27KQ1[3]\ : XOR3
      port map(A => \A2DRead/N_1721\, B => 
        \A2DRead/DataRegU1Ch0f[3]_net_1\, C => \A2DRead/N_1719\, 
        Y => \A2DRead/N_1750\);
    
    \snkpout01/PWMOut_3_0_I_20\ : OA1A
      port map(A => \snkpout01/N_16\, B => \snkpout01/N_18\, C
         => \snkpout01/N_17\, Y => \snkpout01/N_21\);
    
    \A2DRead/DataRegU1Ch1a[2]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[2]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch1a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1a[2]_net_1\);
    
    \heart_beat/un1_counter_1_m8\ : AO13
      port map(A => uCReset_c, B => \heart_beat/i3_mux\, C => 
        \heart_beat/counter[3]_net_1\, Y => \heart_beat/i5_mux\);
    
    \snkpout01/counter[0]\ : DFN1
      port map(D => \snkpout01/counter_n0\, CLK => Clock04, Q => 
        \snkpout01/counter[0]_net_1\);
    
    \iobank6Bdebounce/DebounceTimer_RNO[4]\ : XA1
      port map(A => \iobank6Bdebounce/DebounceTimer_c3\, B => 
        \iobank6Bdebounce/DebounceTimer[4]_net_1\, C => 
        \iobank6Bdebounce/un1_previousposition7\, Y => 
        \iobank6Bdebounce/DebounceTimer_n4\);
    
    \inputs62_pad[0]/U0/U1\ : IOIN_IB
      port map(YIN => \inputs62_pad[0]/U0/NET1\, Y => 
        \inputs62_c[0]\);
    
    \addresslatch/cellindex_RNO[0]\ : NOR2A
      port map(A => \addresslatch/output_0_sqmuxa_1_net_1\, B => 
        \addresslatch/cellindex[0]_net_1\, Y => 
        \addresslatch/cellindex_n0\);
    
    \pwmdisable01latch/paralleldata_RNO[6]\ : NOR2A
      port map(A => \pwmdisable01latch/N_100_mux\, B => 
        LogicReset_c, Y => 
        \pwmdisable01latch/paralleldata_RNO_2[6]\);
    
    \snkpout01/counter_RNO_0[2]\ : AX1C
      port map(A => \snkpout01/counter[0]_net_1\, B => 
        \snkpout01/counter[1]_net_1\, C => 
        \snkpout01/counter[2]_net_1\, Y => 
        \snkpout01/counter_n2_tz\);
    
    \ioBank69reader/parallelholdreg[1]\ : DFN1
      port map(D => \ioBank69reader/parallelholdreg_RNO_10[1]\, 
        CLK => Clock01, Q => 
        \ioBank69reader/parallelholdreg[1]_net_1\);
    
    \heart_beat/un1_counter_1_m12\ : NOR3C
      port map(A => \heart_beat/counter[6]_net_1\, B => 
        \heart_beat/N_11_i\, C => \heart_beat/counter[7]_net_1\, 
        Y => \heart_beat/N_13_i\);
    
    \A2DRead/DataRegU1Ch1f_RNIAB435_0[7]\ : MAJ3
      port map(A => \A2DRead/N_1513\, B => \A2DRead/N_1488\, C
         => \A2DRead/N_1490\, Y => \A2DRead/N_1522\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I85_Y_0\ : XOR2
      port map(A => \A2DRead/N_1932\, B => \A2DRead/N_1905\, Y
         => \A2DRead/ADD_11x11_fast_I85_Y_0_0\);
    
    \A2DRead/AdClock_RNO_2\ : MX2A
      port map(A => \A2DRead/i2_mux\, B => \A2DRead/N_17_mux\, S
         => \A2DRead/step[6]_net_1\, Y => \A2DRead/N_14\);
    
    \A2DRead/DataRegU1Ch1o_RNICLAF1_0[8]\ : MAJ3
      port map(A => \A2DRead/N_1531\, B => \A2DRead/N_1535\, C
         => \A2DRead/N_1533\, Y => \A2DRead/N_1546\);
    
    \A2DRead/DataRegU1Ch0l[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0k[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0l[9]_net_1\);
    
    \ioBank67reader/cellindex[0]\ : DFN1
      port map(D => \ioBank67reader/cellindex_RNO_4[0]\, CLK => 
        SerialClock_c, Q => \ioBank67reader/cellindex[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNICV382[3]\ : NOR2B
      port map(A => \A2DRead/N_1774\, B => \A2DRead/N_1751\, Y
         => \A2DRead/un60_dataregu1ch0_118\);
    
    \A2DRead/DataRegU1Ch0g_RNI24362_0[5]\ : MAJ3
      port map(A => \A2DRead/N_1799\, B => \A2DRead/N_1803\, C
         => \A2DRead/N_1801\, Y => \A2DRead/N_1835\);
    
    \A2DRead/DataRegU1Ch0g_RNI78262[2]\ : XOR3
      port map(A => \A2DRead/N_1727\, B => \A2DRead/N_1723\, C
         => \A2DRead/N_1725\, Y => \A2DRead/N_1752\);
    
    \A2DRead/DataRegU1Ch1d[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1c[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1d[1]_net_1\);
    
    \inputs62_ctrl_pad[1]/U0/U1\ : IOTRI_OB_EB
      port map(D => \inputs62_ctrl_c[1]\, E => \VCC\, DOUT => 
        \inputs62_ctrl_pad[1]/U0/NET1\, EOUT => 
        \inputs62_ctrl_pad[1]/U0/NET2\);
    
    \A2DRead/step[5]\ : DFN1E0
      port map(D => \A2DRead/N_49\, CLK => Clock04, E => 
        \A2DRead/N_59\, Q => \A2DRead/step[5]_net_1\);
    
    \iobank66debounce/DebounceTimer[7]\ : DFN1E1
      port map(D => \iobank66debounce/DebounceTimer_n7\, CLK => 
        Clock03, E => \iobank66debounce/DebounceTimere\, Q => 
        \iobank66debounce/DebounceTimer[7]_net_1\);
    
    \discretedutycycle01/output_RNO[5]\ : NOR2A
      port map(A => \discretedutycycle01/N_65\, B => LogicReset_c, 
        Y => \discretedutycycle01/output_RNO_3[5]\);
    
    \ioBank6Breader/cellindex_RNIRD3R[1]\ : NOR2
      port map(A => \ioBank6Breader/cellindex[1]_net_1\, B => 
        \ioBank6Breader/cellindex[0]_net_1\, Y => 
        \ioBank6Breader/_decfrac0\);
    
    \A2D01reader/parallelholdreg_RNO_0[1]\ : MX2
      port map(A => \A2D01reader/parallelholdreg_7[1]\, B => 
        \A2D01reader/parallelholdreg[1]_net_1\, S => 
        \A2D01reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D01reader/N_92\);
    
    \A2DRead/DataRegU1Ch0g_RNIBD362[6]\ : XOR3
      port map(A => \A2DRead/N_1831\, B => \A2DRead/N_1827\, C
         => \A2DRead/N_1829\, Y => \A2DRead/N_1862\);
    
    \ioBank6Breader/parallelholdreg_RNO[0]\ : OR2
      port map(A => \ioBank6Breader/N_23\, B => LogicReset_c, Y
         => \ioBank6Breader/parallelholdreg_RNO_12[0]\);
    
    \A2D00reader/dataout_RNO_5\ : MX2
      port map(A => \A2D00reader/parallelholdreg[4]_net_1\, B => 
        \A2D00reader/parallelholdreg[6]_net_1\, S => 
        \A2D00reader/cellindex[1]_net_1\, Y => 
        \A2D00reader/N_76_0\);
    
    \A2DRead/DatHldRegU1Ch0[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch0_1_sqmuxa\, Q => 
        \ohold50[2]\);
    
    \A2DRead/DataRegU1Ch1p[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1o[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1p[8]_net_1\);
    
    \pwmdisable01latch/paralleldata[0]\ : DFN1
      port map(D => \pwmdisable01latch/paralleldata_RNO_2[0]\, 
        CLK => SerialClock_c, Q => 
        \pwmdisable01latch/paralleldata[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNINSKQ1[6]\ : XOR3
      port map(A => \A2DRead/N_1797\, B => 
        \A2DRead/DataRegU1Ch0f[6]_net_1\, C => \A2DRead/N_1795\, 
        Y => \A2DRead/N_1832\);
    
    \A2DRead/DataRegU1Ch0e[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0d[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0e[10]_net_1\);
    
    \Watch_Dog_Reset/timercount_RNO[3]\ : XA1B
      port map(A => \Watch_Dog_Reset/timercount[3]_net_1\, B => 
        \Watch_Dog_Reset/N_3_0\, C => ResetIn_c, Y => 
        \Watch_Dog_Reset/timercount_n3\);
    
    \iobank64debounce/DebounceTimer[7]\ : DFN1E1
      port map(D => \iobank64debounce/DebounceTimer_n7\, CLK => 
        Clock03, E => \iobank64debounce/DebounceTimere\, Q => 
        \iobank64debounce/DebounceTimer[7]_net_1\);
    
    \AdClock_pad/U0/U0\ : IOPAD_TRI
      port map(D => \AdClock_pad/U0/NET1\, E => 
        \AdClock_pad/U0/NET2\, PAD => AdClock);
    
    \pwmdisable01latch/CellIndexUpdate.un13_address_3\ : NOR3C
      port map(A => \pwmdisable01latch/un13_address_1\, B => 
        \pwmdisable01latch/un13_address_0\, C => 
        \A2D01reader.parallelholdreg_0_sqmuxa_5\, Y => 
        \pwmdisable01latch/un13_address_3\);
    
    \A2DRead/DataRegU1Ch1o_RNI84QT_0[7]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1o[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch1n[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch1m[7]_net_1\, Y => \A2DRead/N_1508\);
    
    \snkpout01/counter_RNO[6]\ : NOR2B
      port map(A => \snkpout01/counter_1_sqmuxa\, B => 
        \snkpout01/counter_n6_tz\, Y => \snkpout01/counter_n6\);
    
    \ioBank6Areader/cellindex_RNIP7CU[1]\ : NOR2
      port map(A => \ioBank6Areader/cellindex[1]_net_1\, B => 
        \ioBank6Areader/cellindex[0]_net_1\, Y => 
        \ioBank6Areader/_decfrac0\);
    
    \A2DRead/DataRegU1Ch1d[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1c[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1d[12]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNI2RAC[1]\ : XOR2
      port map(A => \A2DRead/DataRegU1Ch1o[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1k[1]_net_1\, Y => 
        \A2DRead/un60_dataregu1ch1_29_1\);
    
    \matrix_read03/data02[2]\ : DFN1E1
      port map(D => \inputs62_c[2]\, CLK => Clock03, E => 
        \matrix_read03/ctrl15\, Q => 
        \matrix_read03/data02[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNIEF8KG_0[7]\ : MAJ3
      port map(A => \A2DRead/N_1896\, B => \A2DRead/N_1869\, C
         => \A2DRead/N_1894\, Y => \A2DRead/N_1901\);
    
    \firmware/dataout_RNO_1\ : OR3
      port map(A => \firmware/N_63\, B => \firmware/N_68\, C => 
        \firmware/dataout_0_0_0\, Y => \firmware/dataout_0_0_2\);
    
    \clock_master/counter_RNIKGO8[7]\ : CLKINT
      port map(A => \clock_master/counter_i[7]\, Y => Clock04);
    
    \A2DRead/DataRegU1Ch1n[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1m[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1n[2]_net_1\);
    
    \matrix_read04/data00[2]\ : DFN1E1
      port map(D => \inputs67_c[2]\, CLK => Clock03, E => 
        \matrix_read04/ctrl9\, Q => 
        \matrix_read04/data00[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0f[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0e[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0f[8]_net_1\);
    
    \A2DRead/DataRegU1Ch0k[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0j[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0k[12]_net_1\);
    
    \iobank60debounce/IOOut_RNO[1]\ : MX2B
      port map(A => \iobank60debounce/PreviousPosition[1]_net_1\, 
        B => \inputs60_c[1]\, S => LogicReset_c, Y => 
        \iobank60debounce/IOOut_8[1]\);
    
    \iobank60debounce/DebounceTimer[5]\ : DFN1E1
      port map(D => \iobank60debounce/DebounceTimer_n5\, CLK => 
        Clock03, E => \iobank60debounce/DebounceTimere\, Q => 
        \iobank60debounce/DebounceTimer[5]_net_1\);
    
    \AN3DimControl_pad/U0/U0\ : IOPAD_TRI
      port map(D => \AN3DimControl_pad/U0/NET1\, E => 
        \AN3DimControl_pad/U0/NET2\, PAD => AN3DimControl);
    
    \addresslatch/output_RNO[5]\ : NOR2A
      port map(A => \addresslatch/N_56\, B => LogicReset_c, Y => 
        \addresslatch/output_RNO[5]_net_1\);
    
    \A2DRead/DataRegU1Ch1[6]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch1[5]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch1_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1[6]_net_1\);
    
    \A2DRead/DataRegU1Ch1n[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1m[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1n[3]_net_1\);
    
    \iobank6Bdebounce/DebounceTimer_RNIB46A2[4]\ : NOR2B
      port map(A => \iobank6Bdebounce/DebounceTimer_c3\, B => 
        \iobank6Bdebounce/DebounceTimer[4]_net_1\, Y => 
        \iobank6Bdebounce/DebounceTimer_c4\);
    
    \A2DRead/DataRegU1Ch0o[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0n[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0o[2]_net_1\);
    
    \A2DRead/DataInReg_RNI3V404_1[13]\ : NOR3C
      port map(A => \A2DRead/N_118\, B => \A2DRead/m36_0\, C => 
        \A2DRead/DataInReg[13]_net_1\, Y => 
        \A2DRead/DataRegU1Ch1a_1_sqmuxa\);
    
    \A2DRead/DataRegU1Ch0f_RNIVI9Q6_0[5]\ : MAJ3
      port map(A => \A2DRead/N_1804\, B => \A2DRead/N_1779\, C
         => \A2DRead/N_1781\, Y => \A2DRead/N_1813\);
    
    \A2DRead/DataRegU1Ch0d_RNIV26V7[6]\ : XOR3
      port map(A => \A2DRead/N_1834\, B => \A2DRead/N_1836\, C
         => \A2DRead/N_1811\, Y => \A2DRead/N_1842\);
    
    \A2DRead/DataRegU1Ch0d_RNIUJAG_0[4]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0e[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch0d[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch0c[4]_net_1\, Y => \A2DRead/N_1767\);
    
    \discretedutycycle01/paralleldata[3]\ : DFN1
      port map(D => \discretedutycycle01/paralleldata_RNO_3[3]\, 
        CLK => SerialClock_c, Q => 
        \discretedutycycle01/paralleldata[3]_net_1\);
    
    \iobank6Bdebounce/IOOut_RNO[2]\ : MX2B
      port map(A => \iobank6Bdebounce/PreviousPosition[2]_net_1\, 
        B => \dhold6B[2]\, S => LogicReset_c, Y => 
        \iobank6Bdebounce/IOOut_3[2]\);
    
    \ioBank60reader/parallelholdreg_0_sqmuxa_2\ : NOR2B
      port map(A => \internaddr[6]\, B => \internaddr[5]\, Y => 
        \ioBank6Breader.parallelholdreg_0_sqmuxa_3\);
    
    \A2DRead/DataRegU1Ch0p_RNI8C081[5]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0b[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch0p[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch0a[5]_net_1\, Y => \A2DRead/N_1796\);
    
    \ioBank62reader/parallelholdreg[1]\ : DFN1
      port map(D => \ioBank62reader/parallelholdreg_RNO_3[1]\, 
        CLK => Clock01, Q => 
        \ioBank62reader/parallelholdreg[1]_net_1\);
    
    \A2DRead/DataRegU1Ch0l[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0k[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0l[8]_net_1\);
    
    \Watch_Dog_Reset/timercount[5]\ : DFN1E0
      port map(D => \Watch_Dog_Reset/timercount_n5\, CLK => 
        \counter[1]\, E => \Watch_Dog_Reset/timercount_0_sqmuxa\, 
        Q => \Watch_Dog_Reset/timercount[5]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNIL555B2[12]\ : MAJ3
      port map(A => \A2DRead/N_2025\, B => \A2DRead/N_2027\, C
         => \A2DRead/N_2030\, Y => \A2DRead/N_2033\);
    
    \pwmdisable01latch/output_RNO_0[6]\ : MX2
      port map(A => \pwmdisable01[6]\, B => 
        \pwmdisable01latch/paralleldata[6]_net_1\, S => 
        \pwmdisable01latch/output_0_sqmuxa_net_1\, Y => 
        \pwmdisable01latch/N_50\);
    
    \A2D01reader/dataout_RNO_4\ : MX2
      port map(A => \A2D01reader/N_72\, B => \A2D01reader/N_73\, 
        S => \A2D01reader/cellindex[1]_net_1\, Y => 
        \A2D01reader/N_74\);
    
    \A2DRead/DataRegU1Ch1p_RNI63HN1[11]\ : XOR3
      port map(A => \A2DRead/N_1617\, B => \A2DRead/N_1615\, C
         => \A2DRead/N_1619\, Y => \A2DRead/N_1629\);
    
    \A2D00reader/parallelholdreg[3]\ : DFN1
      port map(D => \A2D00reader/parallelholdreg_RNO[3]_net_1\, 
        CLK => Clock01, Q => 
        \A2D00reader/parallelholdreg[3]_net_1\);
    
    \A2DRead/DataRegU1Ch0c[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0b[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0c[6]_net_1\);
    
    \ioBank60reader/parallelholdreg[0]\ : DFN1
      port map(D => 
        \ioBank60reader/parallelholdreg_RNO_1[0]_net_1\, CLK => 
        Clock01, Q => \ioBank60reader/parallelholdreg[0]_net_1\);
    
    \matrix_read04/stage_RNITM5[2]\ : OR2A
      port map(A => \matrix_read04/stage[2]_net_1\, B => 
        \matrix_read04/N_26\, Y => \matrix_read04/N_36\);
    
    \A2DRead/DataRegU1Ch1p_RNIVBI4_1[1]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1b[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1a[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch1p[1]_net_1\, Y => \A2DRead/N_1360\);
    
    \inputs61_pad[1]/U0/U0\ : IOPAD_IN
      port map(PAD => inputs61(1), Y => \inputs61_pad[1]/U0/NET1\);
    
    \A2DRead/DataRegU1Ch0g[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0f[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0g[7]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNIG68J8[7]\ : XOR3
      port map(A => \A2DRead/N_1543\, B => \A2DRead/N_1545\, C
         => \A2DRead/N_1520\, Y => \A2DRead/N_1551\);
    
    \A2DRead/DataRegU1Ch0f_RNIPDGV2_0[5]\ : MAJ3
      port map(A => \A2DRead/N_1828\, B => \A2DRead/N_1805\, C
         => \A2DRead/N_1830\, Y => \A2DRead/N_1839\);
    
    \A2DRead/DataInReg_RNO[12]\ : NOR3C
      port map(A => \A2DRead/i8_mux_0\, B => \A2DRead/m50_0\, C
         => \A2DRead/DataInReg_331_e_0\, Y => \A2DRead/N_2173\);
    
    \matrix_read03/stage_RNO[1]\ : NOR3A
      port map(A => \matrix_read03/N_26\, B => 
        \matrix_read03/N_66\, C => LogicReset_c, Y => 
        \matrix_read03/N_21\);
    
    \firmware/parallelholdreg[3]\ : DFN1E1
      port map(D => \firmware/N_44\, CLK => Clock01, E => 
        \firmware/N_14\, Q => \firmware/parallelholdreg[3]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_404\ : XOR3
      port map(A => \A2DRead/N_1856\, B => \A2DRead/N_1858\, C
         => \A2DRead/N_1833\, Y => \A2DRead/N_1866\);
    
    \iobank67debounce/DebounceTimer[5]\ : DFN1E1
      port map(D => \iobank67debounce/DebounceTimer_n5\, CLK => 
        Clock03, E => \iobank67debounce/DebounceTimere\, Q => 
        \iobank67debounce/DebounceTimer[5]_net_1\);
    
    \A2DRead/DatHldRegU1Ch0[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch0_1_sqmuxa\, Q => 
        \ohold50[0]\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I3_G0N\ : NOR2B
      port map(A => \A2DRead/N_1557\, B => \A2DRead/N_1530\, Y
         => \A2DRead/N162_0\);
    
    \iobank60debounce/DebounceTimer_RNIK4U81[2]\ : NOR2B
      port map(A => \iobank60debounce/DebounceTimer_c1\, B => 
        \iobank60debounce/DebounceTimer[2]_net_1\, Y => 
        \iobank60debounce/DebounceTimer_c2\);
    
    \A2DRead/DataRegU1Ch1o_RNI51QT[6]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1m[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch1o[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch1n[6]_net_1\, Y => \A2DRead/N_1479\);
    
    \A2DRead/DataRegU1Ch0d_RNIODAG_0[2]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0e[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch0d[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch0c[2]_net_1\, Y => \A2DRead/N_1719\);
    
    \A2DRead/DataRegU1Ch0p_RNIIVRN[12]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0b[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch0p[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch0a[12]_net_1\, Y => \A2DRead/N_1992\);
    
    \iobank66debounce/IOOut_RNO[1]\ : MX2B
      port map(A => \iobank66debounce/PreviousPosition[1]_net_1\, 
        B => \dhold66[1]\, S => LogicReset_c, Y => 
        \iobank66debounce/IOOut_3[1]\);
    
    \bitcontrol01latch/paralleldata_RNO[0]\ : OR2
      port map(A => \bitcontrol01latch/N_94_mux\, B => 
        LogicReset_c, Y => 
        \bitcontrol01latch/paralleldata_RNO_1[0]_net_1\);
    
    \iobank64debounce/DebounceTimer_RNO[4]\ : XA1
      port map(A => \iobank64debounce/DebounceTimer_c3\, B => 
        \iobank64debounce/DebounceTimer[4]_net_1\, C => 
        \iobank64debounce/un1_previousposition7\, Y => 
        \iobank64debounce/DebounceTimer_n4\);
    
    \snkpout01/PWMOut_3_0_I_39\ : AO1C
      port map(A => \snkpout01/counter[2]_net_1\, B => 
        \dutycycle01[2]\, C => \snkpout01/N_2\, Y => 
        \snkpout01/N_8\);
    
    \ioBank67reader/parallelholdreg_RNO_0[0]\ : MX2
      port map(A => \ioBank67reader/parallelholdreg_7[0]\, B => 
        \ioBank67reader/parallelholdreg[0]_net_1\, S => 
        \ioBank67reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank67reader/N_23\);
    
    \ioBank63reader/parallelholdreg_RNO[0]\ : OR2
      port map(A => \ioBank63reader/N_23\, B => LogicReset_c, Y
         => \ioBank63reader/parallelholdreg_RNO_4[0]\);
    
    \A2DRead/DataRegU1Ch0f_RNIIB0KG[3]\ : XOR3
      port map(A => \A2DRead/N_1782\, B => \A2DRead/N_1784\, C
         => \A2DRead/N_1759\, Y => \A2DRead/N_1788\);
    
    \pwmdisable01latch/CellIndexUpdate.un13_address_0\ : NOR2
      port map(A => \internaddr[4]\, B => \internaddr[6]\, Y => 
        \pwmdisable01latch/un13_address_0\);
    
    \AN2DimControl_pad/U0/U0\ : IOPAD_TRI
      port map(D => \AN2DimControl_pad/U0/NET1\, E => 
        \AN2DimControl_pad/U0/NET2\, PAD => AN2DimControl);
    
    \clock_master/counter_4_I_28\ : AX1C
      port map(A => \clock_master/DWACT_ADD_CI_0_g_array_2[0]\, B
         => \clock_master/DWACT_ADD_CI_0_pog_array_1_1[0]\, C => 
        \clock_master/counter[6]_net_1\, Y => 
        \clock_master/counter_4[6]\);
    
    \A2DRead/DataRegU1Ch1g_RNIA12Q[3]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1g[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch1i[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch1h[3]_net_1\, Y => \A2DRead/N_1401\);
    
    \discretedutycycle01/cellindex_RNIH8OL_0[1]\ : NOR2A
      port map(A => \discretedutycycle01/cellindex[1]_net_1\, B
         => \discretedutycycle01/cellindex[0]_net_1\, Y => 
        \discretedutycycle01/un1_paralleldata_1[6]\);
    
    \matrix_read04/stage_RNO[3]\ : XA1C
      port map(A => \matrix_read04/stage[3]_net_1\, B => 
        \matrix_read04/N_36\, C => LogicReset_c, Y => 
        \matrix_read04/N_17\);
    
    \A2DRead/step[4]\ : DFN1E0
      port map(D => \A2DRead/N_51\, CLK => Clock04, E => 
        \A2DRead/N_59\, Q => \A2DRead/step[4]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIICG61[11]\ : XOR3
      port map(A => \A2DRead/N_1590\, B => 
        \A2DRead/DataRegU1Ch1f[11]_net_1\, C => \A2DRead/N_1588\, 
        Y => \A2DRead/N_1625\);
    
    \iobank60debounce/DebounceTimer[6]\ : DFN1E1
      port map(D => \iobank60debounce/DebounceTimer_n6\, CLK => 
        Clock03, E => \iobank60debounce/DebounceTimere\, Q => 
        \iobank60debounce/DebounceTimer[6]_net_1\);
    
    \A2DRead/DatHldRegU1Ch0[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0[14]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch0_1_sqmuxa\, Q => 
        \ohold50[9]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I12_Y\ : OA1
      port map(A => \A2DRead/N_2029\, B => \A2DRead/N_2032\, C
         => \A2DRead/N184\, Y => \A2DRead/N189\);
    
    \matrix_read04/ctrl_RNO[2]\ : AOI1
      port map(A => \matrix_read04/ctrl_7_i_0_a3_1[2]\, B => 
        \matrix_read04/N_68\, C => \matrix_read04/N_60\, Y => 
        \matrix_read04/ctrl_RNO_0[2]_net_1\);
    
    \snkpout01/PWMOut_3_0_I_4\ : XNOR2
      port map(A => \snkpout01/counter[10]_net_1\, B => 
        \dutycycle01[10]\, Y => 
        \snkpout01/DWACT_BL_EQUAL_0_E_0[2]\);
    
    \iobank64debounce/PreviousPosition_RNO[0]\ : MX2B
      port map(A => \iobank64debounce/CurrentPosition[0]_net_1\, 
        B => \dhold64[0]\, S => LogicReset_c, Y => 
        \iobank64debounce/PreviousPosition_3[0]\);
    
    \heart_beat/un1_counter_1_m30\ : AX1C
      port map(A => \heart_beat/counter[8]_net_1\, B => 
        \heart_beat/N_13_i\, C => \heart_beat/counter[9]_net_1\, 
        Y => \heart_beat/m30\);
    
    \A2DRead/DataRegU1Ch1f_RNI8LF59[1]\ : NOR2B
      port map(A => \A2DRead/N_1387\, B => \A2DRead/N_1389\, Y
         => \A2DRead/un60_dataregu1ch1_52\);
    
    \A2DRead/DataRegU1Ch0b[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0a[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0b[3]_net_1\);
    
    \A2DRead/DataRegU1Ch1p_RNILEQ6_0[12]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1b[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch1a[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch1p[12]_net_1\, Y => \A2DRead/N_1646\);
    
    \matrix_read03/data02[0]\ : DFN1E1
      port map(D => \inputs62_c[0]\, CLK => Clock03, E => 
        \matrix_read03/ctrl15\, Q => 
        \matrix_read03/data02[0]_net_1\);
    
    \inputs67_pad[0]/U0/U0\ : IOPAD_IN
      port map(PAD => inputs67(0), Y => \inputs67_pad[0]/U0/NET1\);
    
    \heart_beat/counter[8]\ : DFN1
      port map(D => \heart_beat/m31\, CLK => Clock04, Q => 
        \heart_beat/counter[8]_net_1\);
    
    \iobank60debounce/IOOut_RNO[2]\ : MX2B
      port map(A => \iobank60debounce/PreviousPosition[2]_net_1\, 
        B => \inputs60_c[2]\, S => LogicReset_c, Y => 
        \iobank60debounce/IOOut_8[2]\);
    
    \iobank64debounce/IOOut[2]\ : DFN1E0
      port map(D => \iobank64debounce/IOOut_3[2]\, CLK => Clock03, 
        E => \iobank64debounce/IOOut_0_sqmuxa\, Q => \ohold64[2]\);
    
    \A2DRead/DataRegU1Ch1g_RNIQUBH[2]\ : XOR2
      port map(A => \A2DRead/DataRegU1Ch1i[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch1g[2]_net_1\, Y => 
        \A2DRead/un60_dataregu1ch1_54_0\);
    
    \A2D01reader/parallelholdreg_RNO_1[1]\ : OR2
      port map(A => \ohold51[1]\, B => SerialLoad_c, Y => 
        \A2D01reader/parallelholdreg_7[1]\);
    
    \A2DRead/DataRegU1Ch0m_RNI8R711[8]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0m[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch0o[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch0n[8]_net_1\, Y => \A2DRead/N_1882\);
    
    \iobank62debounce/PreviousPosition_RNO[2]\ : MX2B
      port map(A => \iobank62debounce/CurrentPosition[2]_net_1\, 
        B => \dhold62[2]\, S => LogicReset_c, Y => 
        \iobank62debounce/PreviousPosition_3[2]\);
    
    \A2DRead/DataRegU1Ch0p[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0o[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0p[11]_net_1\);
    
    \A2D00reader/parallelholdreg_RNO_0[1]\ : MX2
      port map(A => \A2D00reader/parallelholdreg_7[1]\, B => 
        \A2D00reader/parallelholdreg[1]_net_1\, S => 
        \A2D00reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D00reader/N_92\);
    
    \iobank61debounce/Changing_RNIIF6P\ : NOR2
      port map(A => \iobank61debounce/Changing_net_1\, B => 
        LogicReset_c, Y => 
        \iobank61debounce/un1_previousposition7\);
    
    \ioBank6Areader/dataout\ : DFN1
      port map(D => \ioBank6Areader/dataout_RNO_12\, CLK => 
        Clock01, Q => do6A);
    
    \ioBank68reader/parallelholdreg[0]\ : DFN1
      port map(D => \ioBank68reader/parallelholdreg_RNO_9[0]\, 
        CLK => Clock01, Q => 
        \ioBank68reader/parallelholdreg[0]_net_1\);
    
    \A2DRead/DataInReg_RNO_0[11]\ : NOR3B
      port map(A => \A2DRead/step[4]_net_1\, B => 
        \A2DRead/DataInReg_16_6_e_0[11]\, C => 
        \A2DRead/step[2]_net_1\, Y => \A2DRead/DataInReg_330_e_0\);
    
    \iobank64debounce/DebounceTimer[5]\ : DFN1E1
      port map(D => \iobank64debounce/DebounceTimer_n5\, CLK => 
        Clock03, E => \iobank64debounce/DebounceTimere\, Q => 
        \iobank64debounce/DebounceTimer[5]_net_1\);
    
    \pwmdisable01latch/output_RNO_0[1]\ : MX2
      port map(A => \pwmdisable01[1]\, B => 
        \pwmdisable01latch/paralleldata[1]_net_1\, S => 
        \pwmdisable01latch/output_0_sqmuxa_net_1\, Y => 
        \pwmdisable01latch/N_45\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I71_Y_1\ : AO1
      port map(A => \A2DRead/I63_un1_Y\, B => \A2DRead/N218\, C
         => \A2DRead/ADD_11x11_fast_I71_Y_0\, Y => 
        \A2DRead/ADD_11x11_fast_I71_Y_1\);
    
    \iobank68debounce/DebounceTimer_RNI4DTN[8]\ : OR2B
      port map(A => \iobank68debounce/DebounceTimer[8]_net_1\, B
         => \iobank68debounce/un1_previousposition7\, Y => 
        \iobank68debounce/DebounceTimere\);
    
    \A2DRead/DataRegU1Ch0o_RNI9S8O[12]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0m[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch0o[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch0n[12]_net_1\, Y => \A2DRead/N_1994\);
    
    \A2DRead/DataRegU1Ch1f_RNIEC8SC_0[7]\ : OA1
      port map(A => \A2DRead/N_1494\, B => \A2DRead/N_1519\, C
         => \A2DRead/N_1521\, Y => 
        \A2DRead/un60_dataregu1ch1_423_0\);
    
    \A2DRead/un60_dataregu1ch0_277_RNIC6T6I\ : XOR2
      port map(A => \A2DRead/N_1815\, B => \A2DRead/N_1842\, Y
         => \A2DRead/un60_dataregu1ch0_354_0\);
    
    \inputs60_pad[1]/U0/U0\ : IOPAD_IN
      port map(PAD => inputs60(1), Y => \inputs60_pad[1]/U0/NET1\);
    
    \A2DRead/DataRegU1Ch0i[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0h[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0i[9]_net_1\);
    
    \matrix_read04/data00[0]\ : DFN1E1
      port map(D => \inputs67_c[0]\, CLK => Clock03, E => 
        \matrix_read04/ctrl9\, Q => 
        \matrix_read04/data00[0]_net_1\);
    
    \ioBank6Breader/parallelholdreg_RNO_0[0]\ : MX2
      port map(A => \ioBank6Breader/parallelholdreg_7[0]\, B => 
        \ioBank6Breader/parallelholdreg[0]_net_1\, S => 
        \ioBank6Breader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank6Breader/N_23\);
    
    \A2DRead/DataRegU1Ch0j_RNIVIFV2_0[4]\ : OA1
      port map(A => \A2DRead/N_1751\, B => \A2DRead/N_1774\, C
         => \A2DRead/N_1772\, Y => 
        \A2DRead/un60_dataregu1ch0_198_0\);
    
    \ioBank63reader/parallelholdreg[2]\ : DFN1
      port map(D => \ioBank63reader/parallelholdreg_RNO_4[2]\, 
        CLK => Clock01, Q => 
        \ioBank63reader/parallelholdreg[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0k_RNI0JUJ[1]\ : XOR2
      port map(A => \A2DRead/DataRegU1Ch0o[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch0k[1]_net_1\, Y => 
        \A2DRead/un60_dataregu1ch0_29_1\);
    
    \iobank66debounce/DebounceTimer[3]\ : DFN1E1
      port map(D => \iobank66debounce/DebounceTimer_n3\, CLK => 
        Clock03, E => \iobank66debounce/DebounceTimere\, Q => 
        \iobank66debounce/DebounceTimer[3]_net_1\);
    
    \A2DRead/DataRegU1Ch1p_RNIVBI4_0[1]\ : XNOR3
      port map(A => \A2DRead/DataRegU1Ch1b[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1p[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch1a[1]_net_1\, Y => 
        \A2DRead/DataRegU1Ch1p_RNIVBI4_0[1]_net_1\);
    
    \PnlLgtControl_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => PnlLgtControl_c, E => \VCC\, DOUT => 
        \PnlLgtControl_pad/U0/NET1\, EOUT => 
        \PnlLgtControl_pad/U0/NET2\);
    
    \iobank63debounce/DebounceTimer_RNO[1]\ : XA1
      port map(A => \iobank63debounce/DebounceTimer[1]_net_1\, B
         => \iobank63debounce/DebounceTimer[0]_net_1\, C => 
        \iobank63debounce/un1_previousposition7\, Y => 
        \iobank63debounce/DebounceTimer_n1\);
    
    \discretedutycycle01/output[7]\ : DFN1
      port map(D => \discretedutycycle01/output_RNO_2[7]\, CLK
         => Clock01, Q => \dutycycle01[7]\);
    
    \matrix_read04/stage[3]\ : DFN1
      port map(D => \matrix_read04/N_17\, CLK => Clock03, Q => 
        \matrix_read04/stage[3]_net_1\);
    
    \matrix_read03/stage_RNI1DRL_0[4]\ : NOR2A
      port map(A => \matrix_read03/stage[4]_net_1\, B => 
        \matrix_read03/stage[3]_net_1\, Y => \matrix_read03/N_64\);
    
    \A2DRead/DataRegU1Ch0o_RNI6VLA2_1[12]\ : XOR3
      port map(A => \A2DRead/N_1992\, B => \A2DRead/N_1990\, C
         => \A2DRead/N_1994\, Y => \A2DRead/N_2004\);
    
    \A2DRead/DataRegU1Ch1e[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1d[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1e[12]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNISU535[9]\ : XOR3
      port map(A => \A2DRead/N_1546\, B => \A2DRead/N_1569\, C
         => \A2DRead/N_1544\, Y => \A2DRead/N_1577\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I87_Y_0\ : XOR2
      port map(A => \A2DRead/N_1641\, B => \A2DRead/N_1614\, Y
         => \A2DRead/ADD_11x11_fast_I87_Y_0\);
    
    \heart_beat/un1_counter_1_m25\ : XOR2
      port map(A => \heart_beat/N_19_i\, B => 
        \heart_beat/counter[14]_net_1\, Y => \heart_beat/m25\);
    
    \iobank63debounce/Changing_RNIKHNH\ : NOR2
      port map(A => \iobank63debounce/Changing_net_1\, B => 
        LogicReset_c, Y => 
        \iobank63debounce/un1_previousposition7\);
    
    \discretedutycycle01/output_RNO[11]\ : NOR2A
      port map(A => \discretedutycycle01/N_71\, B => LogicReset_c, 
        Y => \discretedutycycle01/output_RNO[11]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNIHDQC[10]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0g[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch0i[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch0h[10]_net_1\, Y => \A2DRead/N_1942\);
    
    \A2DRead/DataRegU1Ch1i_RNIKSOR_0[10]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1i[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch1h[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch1g[10]_net_1\, Y => \A2DRead/N_1596\);
    
    \A2DRead/DataRegU1Ch1e[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1d[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1e[8]_net_1\);
    
    \pwmdisable01latch/paralleldata_RNO[3]\ : NOR2A
      port map(A => \pwmdisable01latch/N_97_mux\, B => 
        LogicReset_c, Y => 
        \pwmdisable01latch/paralleldata_RNO_2[3]\);
    
    \A2DRead/DataRegU1Ch1p_RNI2FI4_0[2]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1b[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch1a[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch1p[2]_net_1\, Y => \A2DRead/N_1374\);
    
    \A2DRead/DataInReg_RNI3V404_0[13]\ : NOR3C
      port map(A => \A2DRead/N_55_mux\, B => \A2DRead/m29_2\, C
         => \A2DRead/DataInReg[13]_net_1\, Y => 
        \A2DRead/DataRegU1Ch1_1_sqmuxa\);
    
    \Watch_Dog_Reset/timercount_RNIE05O1[3]\ : NOR2B
      port map(A => \Watch_Dog_Reset/N_3_0\, B => 
        \Watch_Dog_Reset/timercount[3]_net_1\, Y => 
        \Watch_Dog_Reset/N_4_0\);
    
    \inputs67_ctrl_pad[4]/U0/U1\ : IOTRI_OB_EB
      port map(D => \inputs67_ctrl_c[4]\, E => \VCC\, DOUT => 
        \inputs67_ctrl_pad[4]/U0/NET1\, EOUT => 
        \inputs67_ctrl_pad[4]/U0/NET2\);
    
    \A2DRead/DataRegU1Ch0j[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0i[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0j[10]_net_1\);
    
    \A2DRead/DatHldRegU1Ch1[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1[15]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch1_1_sqmuxa\, Q => 
        \ohold51[10]\);
    
    \bitcontrol01latch/output_RNI5O2R[3]\ : OA1
      port map(A => PnlLgtControl_c, B => \pwmdisable01[3]\, C
         => \bitcontrol01latch/bitcontrol01[3]\, Y => 
        \outputs01_c_c_c[3]\);
    
    \inputs67_ctrl_pad[0]/U0/U1\ : IOTRI_OB_EB
      port map(D => \inputs67_ctrl_c[0]\, E => \VCC\, DOUT => 
        \inputs67_ctrl_pad[0]/U0/NET1\, EOUT => 
        \inputs67_ctrl_pad[0]/U0/NET2\);
    
    \A2DRead/DataRegU1Ch0f_RNIHQMIG1[3]\ : XOR2
      port map(A => \A2DRead/N_1788\, B => \A2DRead/N_1790\, Y
         => \A2DRead/un60_dataregu1ch0_219_0\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I82_Y\ : XOR2
      port map(A => \A2DRead/ADD_11x11_fast_I82_Y_0\, B => 
        \A2DRead/N208\, Y => \A2DRead/un60_dataregu1ch1[5]\);
    
    \A2DRead/un60_dataregu1ch0_0_1_CO3_2\ : NOR3C
      port map(A => \A2DRead/N_1738\, B => \A2DRead/CO3_0_0\, C
         => \A2DRead/N_1764\, Y => \A2DRead/CO3_2\);
    
    \iobank6Adebounce/PreviousPosition[1]\ : DFN1
      port map(D => \iobank6Adebounce/PreviousPosition_3[1]\, CLK
         => Clock03, Q => 
        \iobank6Adebounce/PreviousPosition[1]_net_1\);
    
    \A2DRead/DatHldRegU1Ch0[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch0_1_sqmuxa\, Q => 
        \ohold50[5]\);
    
    \ioBank68reader/cellindex_RNIO7RJ1[1]\ : NOR3C
      port map(A => \ioBank6Breader.parallelholdreg_0_sqmuxa_4\, 
        B => \ioBank68reader/parallelholdreg_0_sqmuxa_1\, C => 
        \ioBank6Breader.parallelholdreg_0_sqmuxa_3\, Y => 
        \ioBank68reader/parallelholdreg_0_sqmuxa_3\);
    
    \ioBank6Areader/parallelholdreg[2]\ : DFN1
      port map(D => \ioBank6Areader/parallelholdreg_RNO_11[2]\, 
        CLK => Clock01, Q => 
        \ioBank6Areader/parallelholdreg[2]_net_1\);
    
    \addresslatch/output_RNO_0[7]\ : MX2
      port map(A => \addresslatch/paralleldata[7]_net_1\, B => 
        \internaddr[7]\, S => Ale_c, Y => \addresslatch/N_58\);
    
    \inputs60_pad[3]/U0/U1\ : IOIN_IB
      port map(YIN => \inputs60_pad[3]/U0/NET1\, Y => 
        \inputs60_c[3]\);
    
    \A2DRead/AdCs1\ : DFN1E1
      port map(D => \A2DRead/AdCs1_2\, CLK => Clock04, E => 
        \A2DRead.AdClock_0_sqmuxa\, Q => AdCs1_c);
    
    \Watch_Dog_Reset/timercount_RNI754A1[8]\ : NOR3C
      port map(A => \Watch_Dog_Reset/timercount[7]_net_1\, B => 
        \Watch_Dog_Reset/timercount[8]_net_1\, C => 
        \Watch_Dog_Reset/timercount[2]_net_1\, Y => 
        \Watch_Dog_Reset/m8_m4_0_a2_3\);
    
    \A2DRead/DataRegU1Ch0d_RNIUJAG[4]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0c[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch0e[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch0d[4]_net_1\, Y => \A2DRead/N_1766\);
    
    \matrix_read03/ctrl_RNO[1]\ : OR3C
      port map(A => \matrix_read03/N_64\, B => 
        \matrix_read03/N_68\, C => \matrix_read03/N_26\, Y => 
        \matrix_read03/ctrl_RNO[1]_net_1\);
    
    \ioBank64reader/cellindex_RNIVOU8[1]\ : NOR2
      port map(A => \ioBank64reader/cellindex[1]_net_1\, B => 
        \ioBank64reader/cellindex[0]_net_1\, Y => 
        \ioBank64reader/_decfrac0\);
    
    \A2DRead/DataRegU1Ch0g_RNI78262_0[2]\ : MAJ3
      port map(A => \A2DRead/N_1723\, B => \A2DRead/N_1727\, C
         => \A2DRead/N_1725\, Y => \A2DRead/N_1753\);
    
    \A2DRead/DataRegU1Ch0f_RNI9EKQ1_0[4]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0f[4]_net_1\, B => 
        \A2DRead/N_1743\, C => \A2DRead/N_1741\, Y => 
        \A2DRead/N_1777\);
    
    \iobank60debounce/PreviousPosition[2]\ : DFN1
      port map(D => \iobank60debounce/PreviousPosition_3[2]\, CLK
         => Clock03, Q => 
        \iobank60debounce/PreviousPosition[2]_net_1\);
    
    \addresslatch/output_RNO[1]\ : NOR2A
      port map(A => \addresslatch/N_52\, B => LogicReset_c, Y => 
        \addresslatch/output_RNO[1]_net_1\);
    
    \A2DRead/DataRegU1Ch0p[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0o[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0p[9]_net_1\);
    
    \iobank6Adebounce/DebounceTimer_RNI71AS[2]\ : NOR2B
      port map(A => \iobank6Adebounce/DebounceTimer_c1\, B => 
        \iobank6Adebounce/DebounceTimer[2]_net_1\, Y => 
        \iobank6Adebounce/DebounceTimer_c2\);
    
    \A2DRead/DataRegU1Ch0g_RNINUKN1_0[11]\ : MAJ3
      port map(A => \A2DRead/N_1967\, B => \A2DRead/N_1971\, C
         => \A2DRead/N_1969\, Y => \A2DRead/N_2003\);
    
    \iobank67debounce/CurrentPosition[1]\ : DFN1
      port map(D => \dhold67_i[1]\, CLK => Clock03, Q => 
        \iobank67debounce/CurrentPosition[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1c[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1b[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1c[9]_net_1\);
    
    \ioBank66reader/parallelholdreg_RNO_1[1]\ : OR2
      port map(A => \ohold66[1]\, B => SerialLoad_c, Y => 
        \ioBank66reader/parallelholdreg_7[1]\);
    
    \iobank63debounce/DebounceTimer_RNO_0[8]\ : NOR3C
      port map(A => \iobank63debounce/un1_previousposition7\, B
         => \iobank63debounce/DebounceTimer[7]_net_1\, C => 
        \iobank63debounce/DebounceTimer_c6\, Y => 
        \iobank63debounce/N_48\);
    
    \iobank62debounce/IOOut[0]\ : DFN1E0
      port map(D => \iobank62debounce/IOOut_3[0]\, CLK => Clock03, 
        E => \iobank62debounce/IOOut_0_sqmuxa\, Q => \ohold62[0]\);
    
    \A2DRead/DataRegU1Ch0g_RNI2LLT2_0[12]\ : MAJ3
      port map(A => \A2DRead/N_1996\, B => \A2DRead/N_1973\, C
         => \A2DRead/N_1998\, Y => \A2DRead/N_2007\);
    
    \A2DRead/DataRegU1Ch1p_RNIERI4[6]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1b[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch1p[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch1a[6]_net_1\, Y => \A2DRead/N_1477\);
    
    \A2DRead/DataRegU1Ch0k_RNI0OHI[12]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0j[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch0l[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch0k[12]_net_1\, Y => \A2DRead/N_1996\);
    
    \ioBank6Breader/parallelholdreg_RNO[2]\ : OR2
      port map(A => \ioBank6Breader/N_25\, B => LogicReset_c, Y
         => \ioBank6Breader/parallelholdreg_RNO_12[2]\);
    
    \pwmdisable01latch/output[6]\ : DFN1
      port map(D => \pwmdisable01latch/output_RNO_2[6]\, CLK => 
        Clock01, Q => \pwmdisable01[6]\);
    
    \iobank61debounce/DebounceTimer[0]\ : DFN1E1
      port map(D => \iobank61debounce/N_69\, CLK => Clock03, E
         => \iobank61debounce/DebounceTimere\, Q => 
        \iobank61debounce/DebounceTimer[0]_net_1\);
    
    \SerialClock_pad/U0/U1\ : CLKIO
      port map(A => \SerialClock_pad/U0/NET1\, Y => SerialClock_c);
    
    \addresslatch/output_RNO[0]\ : NOR2A
      port map(A => \addresslatch/N_51\, B => LogicReset_c, Y => 
        \addresslatch/output_RNO[0]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I72_Y_1\ : OR2
      port map(A => \A2DRead/ADD_11x11_fast_I72_Y_0_0\, B => 
        \A2DRead/I72_un1_Y\, Y => 
        \A2DRead/ADD_11x11_fast_I72_Y_1\);
    
    \A2DRead/DataRegU1Ch0a[7]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[7]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch0a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0a[7]_net_1\);
    
    \A2DRead/DataRegU1Ch0d_RNIS29V7[9]\ : XOR3
      port map(A => \A2DRead/N_1918\, B => \A2DRead/N_1920\, C
         => \A2DRead/N_1895\, Y => \A2DRead/N_1926\);
    
    \A2DRead/DataRegU1Ch0d_RNI134V7_0[4]\ : MAJ3
      port map(A => \A2DRead/N_1778\, B => \A2DRead/N_1757\, C
         => \A2DRead/N_1780\, Y => \A2DRead/N_1787\);
    
    \discretedutycycle01/cellindex[3]\ : DFN1E0
      port map(D => \discretedutycycle01/cellindex_n3\, CLK => 
        SerialClock_c, E => 
        \discretedutycycle01/cellindex_1_sqmuxa_net_1\, Q => 
        \discretedutycycle01/cellindex[3]_net_1\);
    
    \iobank67debounce/DebounceTimer[4]\ : DFN1E1
      port map(D => \iobank67debounce/DebounceTimer_n4\, CLK => 
        Clock03, E => \iobank67debounce/DebounceTimere\, Q => 
        \iobank67debounce/DebounceTimer[4]_net_1\);
    
    \snkpout01/PWMOut_3_0_I_15\ : AO1C
      port map(A => \dutycycle01[9]\, B => 
        \snkpout01/counter[9]_net_1\, C => \snkpout01/N_14\, Y
         => \snkpout01/N_16\);
    
    \A2DRead/DataRegU1Ch0o_RNIKCLA2_0[10]\ : MAJ3
      port map(A => \A2DRead/N_1934\, B => \A2DRead/N_1938\, C
         => \A2DRead/N_1936\, Y => \A2DRead/N_1949\);
    
    \clock_master/counter_4_I_39\ : AND2
      port map(A => \clock_master/counter[4]_net_1\, B => 
        \clock_master/counter[5]_net_1\, Y => 
        \clock_master/DWACT_ADD_CI_0_pog_array_1_1[0]\);
    
    \matrix_read04/stage_RNI3V3_1[4]\ : NOR2A
      port map(A => \matrix_read04/stage[3]_net_1\, B => 
        \matrix_read04/stage[4]_net_1\, Y => \matrix_read04/N_63\);
    
    \A2DRead/DataRegU1Ch1f_RNIUJSP5_0[11]\ : MAJ3
      port map(A => \A2DRead/N_1625\, B => \A2DRead/N_1600\, C
         => \A2DRead/N_1602\, Y => \A2DRead/N_1634\);
    
    \iobank60debounce/DebounceTimer[0]\ : DFN1E1
      port map(D => \iobank60debounce/N_69\, CLK => Clock03, E
         => \iobank60debounce/DebounceTimere\, Q => 
        \iobank60debounce/DebounceTimer[0]_net_1\);
    
    \AN5PTTControl_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => \outputs01_c_c_c[3]\, E => \VCC\, DOUT => 
        \AN5PTTControl_pad/U0/NET1\, EOUT => 
        \AN5PTTControl_pad/U0/NET2\);
    
    \A2DRead/DataRegU1Ch0b[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0a[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0b[1]_net_1\);
    
    \inputs60_pad[0]/U0/U0\ : IOPAD_IN
      port map(PAD => inputs60(0), Y => \inputs60_pad[0]/U0/NET1\);
    
    \A2DRead/DataRegU1Ch1g_RNI2A0I1[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1h[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1g[1]_net_1\, C => 
        \A2DRead/un60_dataregu1ch1_29_2\, Y => 
        \A2DRead/un60_dataregu1ch1_29_4\);
    
    \ioBank62reader/cellindex_RNO[1]\ : NOR3A
      port map(A => \ioBank62reader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank62reader/un1_latch_1\, Y => 
        \ioBank62reader/cellindex_RNO[1]_net_1\);
    
    \matrix_read03/stage[2]\ : DFN1
      port map(D => \matrix_read03/N_19\, CLK => Clock03, Q => 
        \matrix_read03/stage[2]_net_1\);
    
    \inputs62_pad[2]/U0/U0\ : IOPAD_IN
      port map(PAD => inputs62(2), Y => \inputs62_pad[2]/U0/NET1\);
    
    \A2DRead/DataRegU1Ch0f[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0e[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0f[3]_net_1\);
    
    \bitcontrol01latch/paralleldata[6]\ : DFN1
      port map(D => 
        \bitcontrol01latch/paralleldata_RNO_1[6]_net_1\, CLK => 
        SerialClock_c, Q => 
        \bitcontrol01latch/paralleldata[6]_net_1\);
    
    \iobank61debounce/CurrentPosition_RNO[1]\ : INV
      port map(A => \inputs61_c[1]\, Y => 
        \iobank61debounce/inputs61_c_i[1]\);
    
    \A2DRead/DataRegU1Ch1j_RNIV8U31_0[7]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1l[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch1k[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch1j[7]_net_1\, Y => \A2DRead/N_1510\);
    
    \A2DRead/DataRegU1Ch0n[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0m[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0n[4]_net_1\);
    
    \A2DRead/DataRegU1Ch0a[12]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[12]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch0a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0a[12]_net_1\);
    
    \iobank61debounce/DebounceTimer_RNIM68S_0[8]\ : OR2B
      port map(A => \iobank61debounce/DebounceTimer[8]_net_1\, B
         => \iobank61debounce/un1_previousposition7\, Y => 
        \iobank61debounce/DebounceTimere\);
    
    \A2DRead/DataInReg_RNO_0[10]\ : NOR3C
      port map(A => \A2DRead/step[4]_net_1\, B => 
        \A2DRead/DataInReg_16_6_e_0[11]\, C => 
        \A2DRead/step[2]_net_1\, Y => \A2DRead/DataInReg_329_e_0\);
    
    \externenablelatch/CellIndexUpdate.un39_address\ : NOR2B
      port map(A => \externenablelatch/un39_address_3\, B => 
        \ioBank62reader.parallelholdreg_0_sqmuxa_4\, Y => 
        \externenablelatch/un39_address\);
    
    \iobank67debounce/PreviousPosition[2]\ : DFN1
      port map(D => \iobank67debounce/PreviousPosition_3[2]\, CLK
         => Clock03, Q => 
        \iobank67debounce/PreviousPosition[2]_net_1\);
    
    \A2DRead/DataRegU1Ch1i[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1h[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1i[1]_net_1\);
    
    \inputs62_pad[1]/U0/U0\ : IOPAD_IN
      port map(PAD => inputs62(1), Y => \inputs62_pad[1]/U0/NET1\);
    
    \A2DRead/DataRegU1Ch1l[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1k[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1l[3]_net_1\);
    
    \bitcontrol01latch/paralleldata_RNO_1[5]\ : NOR3C
      port map(A => \bitcontrol01latch/cellindex[2]_net_1\, B => 
        \bitcontrol01latch/output_0_sqmuxa_net_1\, C => 
        \bitcontrol01latch/un1_paralleldata_1[1]\, Y => 
        \bitcontrol01latch/N_99\);
    
    \clock_master/counter_6_I_7\ : XOR2
      port map(A => \counter[1]\, B => LogicReset_c, Y => 
        \clock_master/DWACT_ADD_CI_0_pog_array_0_0[0]\);
    
    \A2DRead/DataRegU1Ch1k[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1j[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1k[7]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNINBCS81[12]\ : XOR2
      port map(A => \A2DRead/N_2024\, B => \A2DRead/N_2026\, Y
         => \A2DRead/un60_dataregu1ch0_809_0\);
    
    \pwmdisable01latch/paralleldata_RNO[5]\ : NOR2A
      port map(A => \pwmdisable01latch/N_99_mux\, B => 
        LogicReset_c, Y => 
        \pwmdisable01latch/paralleldata_RNO_2[5]\);
    
    \heart_beat/counter[4]\ : DFN1
      port map(D => \heart_beat/m35\, CLK => Clock04, Q => 
        \heart_beat/counter[4]_net_1\);
    
    \snkpout01/counter_RNIPSLV[10]\ : NOR2
      port map(A => \snkpout01/counter[11]_net_1\, B => 
        \snkpout01/counter[10]_net_1\, Y => 
        \snkpout01/un1_counterlto11_2\);
    
    \ExternalHardwareEn_pad[0]/U0/U0\ : IOPAD_TRI
      port map(D => \ExternalHardwareEn_pad[0]/U0/NET1\, E => 
        \ExternalHardwareEn_pad[0]/U0/NET2\, PAD => 
        ExternalHardwareEn(0));
    
    \A2DRead/DataRegU1Ch1p_RNI3OU8[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1b[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1p[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch1e[1]_net_1\, Y => 
        \A2DRead/un60_dataregu1ch1_24_2\);
    
    \A2DRead/DataRegU1Ch1g_RNIMD2Q[7]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1g[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch1i[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch1h[7]_net_1\, Y => \A2DRead/N_1511\);
    
    \A2DRead/DataRegU1Ch1f_RNI35535_0[8]\ : MAJ3
      port map(A => \A2DRead/N_1541\, B => \A2DRead/N_1516\, C
         => \A2DRead/N_1518\, Y => \A2DRead/N_1550\);
    
    \Ale_pad/U0/U1\ : IOIN_IB
      port map(YIN => \Ale_pad/U0/NET1\, Y => Ale_c);
    
    \iobank61debounce/PreviousPosition_RNO[1]\ : MX2B
      port map(A => \iobank61debounce/CurrentPosition[1]_net_1\, 
        B => \inputs61_c[1]\, S => LogicReset_c, Y => 
        \iobank61debounce/PreviousPosition_3[1]\);
    
    \clock_master/counter_8_I_49\ : AND2
      port map(A => \clock_master/counter[4]_net_1\, B => 
        \clock_master/counter[5]_net_1\, Y => 
        \clock_master/DWACT_ADD_CI_0_pog_array_1_1_0[0]\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I50_un1_Y\ : 
        NOR3C
      port map(A => \A2DRead/N_2114\, B => \A2DRead/N154\, C => 
        \A2DRead/N157\, Y => \A2DRead/I50_un1_Y\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I22_Y\ : NOR2B
      port map(A => \A2DRead/N166\, B => \A2DRead/N169\, Y => 
        \A2DRead/N199_0\);
    
    \A2DRead/step_RNIJ8AT2[5]\ : OR2
      port map(A => \A2DRead/N_62\, B => \A2DRead/N_63\, Y => 
        \A2DRead/N_68\);
    
    \A2DRead/DataRegU1Ch0f_RNIF4DPE_0[4]\ : NOR2B
      port map(A => \A2DRead/N_1810\, B => \A2DRead/N_1785\, Y
         => \A2DRead/un60_dataregu1ch0_167\);
    
    \A2DRead/step_RNI2R6U1_0[6]\ : NOR3B
      port map(A => \A2DRead/step[6]_net_1\, B => \A2DRead/N_7_i\, 
        C => \A2DRead/step[2]_net_1\, Y => \A2DRead/m29_2\);
    
    \A2DRead/step_RNIR5LE1[1]\ : XA1
      port map(A => \A2DRead/step[6]_net_1\, B => 
        \A2DRead/step[5]_net_1\, C => \A2DRead/step[1]_net_1\, Y
         => \A2DRead/m50_0\);
    
    \matrix_read04/stage[2]\ : DFN1
      port map(D => \matrix_read04/N_19\, CLK => Clock03, Q => 
        \matrix_read04/stage[2]_net_1\);
    
    \addresslatch/output[5]\ : DFN1
      port map(D => \addresslatch/output_RNO[5]_net_1\, CLK => 
        Clock01, Q => \internaddr[5]\);
    
    \iobank69debounce/DebounceTimer[0]\ : DFN1E1
      port map(D => \iobank69debounce/N_67\, CLK => Clock03, E
         => \iobank69debounce/DebounceTimere\, Q => 
        \iobank69debounce/DebounceTimer[0]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNIB8QR2[5]\ : XOR3
      port map(A => \A2DRead/N_1456\, B => \A2DRead/N_1452\, C
         => \A2DRead/N_1454\, Y => \A2DRead/N_1487\);
    
    \A2DRead/DataRegU1Ch1j_RNIMVT31_0[4]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1l[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch1k[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch1j[4]_net_1\, Y => \A2DRead/N_1426\);
    
    \ioBank67reader/parallelholdreg_RNO_0[2]\ : MX2
      port map(A => \ioBank67reader/parallelholdreg_7[2]\, B => 
        \ioBank67reader/parallelholdreg[2]_net_1\, S => 
        \ioBank67reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank67reader/N_25\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I47_Y\ : AO1
      port map(A => \A2DRead/N206_0\, B => \A2DRead/N203\, C => 
        \A2DRead/N202_0\, Y => \A2DRead/N227\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I91_Y\ : XOR3
      port map(A => \A2DRead/N_1686\, B => \A2DRead/N_1684\, C
         => \A2DRead/N269\, Y => \A2DRead/un60_dataregu1ch1[14]\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I1_G0N\ : XA1
      port map(A => \A2DRead/N_1499\, B => 
        \A2DRead/un60_dataregu1ch1_359_0\, C => \A2DRead/N_1474\, 
        Y => \A2DRead/N156\);
    
    \iobank65debounce/CurrentPosition[0]\ : DFN1
      port map(D => \dhold65_i[0]\, CLK => Clock03, Q => 
        \iobank65debounce/CurrentPosition[0]_net_1\);
    
    \A2DRead/DataInReg_RNO[6]\ : NOR3C
      port map(A => \A2DRead/i8_mux_0\, B => \A2DRead/m50_0\, C
         => \A2DRead/DataInReg_325_e_0\, Y => \A2DRead/N_2179\);
    
    \A2DRead/DataRegU1Ch0g_RNI9SLT2[12]\ : XOR3
      port map(A => \A2DRead/N_1999\, B => \A2DRead/N_1997\, C
         => \A2DRead/N_2001\, Y => \A2DRead/N_2020\);
    
    \ioBank66reader/cellindex_RNITVC6[1]\ : NOR3A
      port map(A => \internaddr[1]\, B => 
        \ioBank66reader/cellindex[0]_net_1\, C => 
        \ioBank66reader/cellindex[1]_net_1\, Y => 
        \ioBank66reader/parallelholdreg_0_sqmuxa_0\);
    
    \iobank60debounce/Changing_RNIHUTC\ : NOR2
      port map(A => \iobank60debounce/Changing_net_1\, B => 
        LogicReset_c, Y => 
        \iobank60debounce/un1_previousposition7\);
    
    \clock_master/counter_6_I_5\ : AND2
      port map(A => \counter[1]\, B => LogicReset_c, Y => 
        \clock_master/DWACT_ADD_CI_0_g_array_0_1_0[0]\);
    
    \A2DRead/DataRegU1Ch0d_RNIB3HQ_0[12]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0e[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch0d[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch0c[12]_net_1\, Y => \A2DRead/N_1991\);
    
    \discretedutycycle01/CellIndexUpdate.address\ : NOR2B
      port map(A => \discretedutycycle01/address_3\, B => 
        \firmware.N_76\, Y => \discretedutycycle01/address\);
    
    \A2D00reader/parallelholdreg[2]\ : DFN1
      port map(D => \A2D00reader/parallelholdreg_RNO[2]_net_1\, 
        CLK => Clock01, Q => 
        \A2D00reader/parallelholdreg[2]_net_1\);
    
    \iobank65debounce/DebounceTimer_RNILQGS1[6]\ : NOR3C
      port map(A => \iobank65debounce/DebounceTimer_c1\, B => 
        \iobank65debounce/DebounceTimer_c4_out\, C => 
        \iobank65debounce/DebounceTimer_m2_0_a2_1\, Y => 
        \iobank65debounce/DebounceTimer_c6\);
    
    \A2DRead/step_RNIGC3V_0[1]\ : NOR2A
      port map(A => \A2DRead/step[5]_net_1\, B => 
        \A2DRead/step[1]_net_1\, Y => \A2DRead/N_4_0\);
    
    \snkpout01/counter_RNI1HNN2[2]\ : AOI1
      port map(A => \snkpout01/counter10_1\, B => 
        \snkpout01/un1_counter\, C => LogicReset_c, Y => 
        \snkpout01/counter_1_sqmuxa\);
    
    \A2DRead/DataRegU1Ch1j_RNIS5U31_0[6]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1l[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch1k[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch1j[6]_net_1\, Y => \A2DRead/N_1482\);
    
    \A2DRead/DataRegU1Ch0d_RNIQ7JP2_0[7]\ : MAJ3
      port map(A => \A2DRead/N_1850\, B => \A2DRead/N_1854\, C
         => \A2DRead/N_1852\, Y => \A2DRead/N_1865\);
    
    \iobank6Bdebounce/DebounceTimer_RNO_0[6]\ : NOR2B
      port map(A => \iobank6Bdebounce/DebounceTimer_c4\, B => 
        \iobank6Bdebounce/DebounceTimer[5]_net_1\, Y => 
        \iobank6Bdebounce/DebounceTimer_c5\);
    
    \iobank61debounce/IOOut_RNO[3]\ : MX2B
      port map(A => \iobank61debounce/PreviousPosition[3]_net_1\, 
        B => \inputs61_c[3]\, S => LogicReset_c, Y => 
        \iobank61debounce/IOOut_8[3]\);
    
    \A2DRead/DataRegU1Ch0o[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0n[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0o[11]_net_1\);
    
    \iobank62debounce/DebounceTimer_RNO[6]\ : XA1
      port map(A => \iobank62debounce/DebounceTimer_c5\, B => 
        \iobank62debounce/DebounceTimer[6]_net_1\, C => 
        \iobank62debounce/un1_previousposition7\, Y => 
        \iobank62debounce/DebounceTimer_n6\);
    
    \A2DRead/DataRegU1Ch0d[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0c[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0d[4]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I2_G0N\ : OA1
      port map(A => \A2DRead/un60_dataregu1ch0_217\, B => 
        \A2DRead/un60_dataregu1ch0_363_0\, C => \A2DRead/N_1876\, 
        Y => \A2DRead/N159_0\);
    
    \matrix_read03/dataOut04_RNI0DUB[1]\ : INV
      port map(A => \dhold66[1]\, Y => \dhold66_i[1]\);
    
    \A2D01reader/parallelholdreg[10]\ : DFN1
      port map(D => \A2D01reader/parallelholdreg_RNO_0[10]_net_1\, 
        CLK => Clock01, Q => 
        \A2D01reader/parallelholdreg[10]_net_1\);
    
    \snkpout01/counter[6]\ : DFN1
      port map(D => \snkpout01/counter_n6\, CLK => Clock04, Q => 
        \snkpout01/counter[6]_net_1\);
    
    \addresslatch/paralleldata_RNO_0[0]\ : MX2
      port map(A => \addresslatch/paralleldata[0]_net_1\, B => 
        SerialIn_c_0, S => \addresslatch/N_83\, Y => 
        \addresslatch/N_83_mux\);
    
    \A2D01reader/parallelholdreg_RNO[11]\ : OR2
      port map(A => \A2D01reader/N_102\, B => LogicReset_c, Y => 
        \A2D01reader/parallelholdreg_RNO_0[11]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNIPLPR2[3]\ : XOR3
      port map(A => \A2DRead/N_1402\, B => \A2DRead/N_1398\, C
         => \A2DRead/N_1400\, Y => \A2DRead/N_1431\);
    
    \pwmdisable01latch/paralleldata_RNO_1[6]\ : NOR3C
      port map(A => \pwmdisable01latch/cellindex[2]_net_1\, B => 
        \pwmdisable01latch/output_0_sqmuxa_net_1\, C => 
        \pwmdisable01latch/un1_paralleldata_1[2]\, Y => 
        \pwmdisable01latch/N_100\);
    
    \iobank68debounce/DebounceTimer_RNI7TLH[1]\ : NOR2B
      port map(A => \iobank68debounce/DebounceTimer[0]_net_1\, B
         => \iobank68debounce/DebounceTimer[1]_net_1\, Y => 
        \iobank68debounce/DebounceTimer_c1\);
    
    \A2DRead/DataRegU1Ch1j[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1i[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1j[12]_net_1\);
    
    \discretedutycycle01/paralleldata_RNO_0[6]\ : MX2
      port map(A => \discretedutycycle01/paralleldata[6]_net_1\, 
        B => SerialIn_c, S => \discretedutycycle01/N_133\, Y => 
        \discretedutycycle01/N_133_mux\);
    
    \heart_beat/un1_counter_1_m38\ : XOR3
      port map(A => \heart_beat/counter[3]_net_1\, B => uCReset_c, 
        C => \heart_beat/i3_mux\, Y => \heart_beat/N_39\);
    
    \clock_master/counter[2]\ : DFN1
      port map(D => \clock_master/counter_4_1_0[2]\, CLK => 
        XCLK_c, Q => \clock_master/counter_i[2]\);
    
    \A2D01reader/dataout_RNO_0\ : MX2
      port map(A => \A2D01reader/N_75\, B => \A2D01reader/N_78\, 
        S => \A2D01reader/cellindex[2]_net_1\, Y => 
        \A2D01reader/dataout_62\);
    
    \iobank68debounce/PreviousPosition_RNO[1]\ : MX2B
      port map(A => \iobank68debounce/CurrentPosition[1]_net_1\, 
        B => \dhold68[1]\, S => LogicReset_c, Y => 
        \iobank68debounce/PreviousPosition_3[1]\);
    
    \A2DRead/step_RNI3L2F4_1[1]\ : NOR3C
      port map(A => \A2DRead/N_114\, B => 
        \A2DRead/DataRegU1Ch0b_1_sqmuxa_0_a2_0\, C => 
        \A2DRead/N_119\, Y => \A2DRead/DataRegU1Ch0c_1_sqmuxa\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I9_P0N\ : OR2
      port map(A => \A2DRead/N_1682\, B => \A2DRead/N_1685\, Y
         => \A2DRead/N181\);
    
    \A2DRead/DataRegU1Ch0k[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0j[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0k[4]_net_1\);
    
    \iobank60debounce/CurrentPosition_RNO[3]\ : INV
      port map(A => \inputs60_c[3]\, Y => 
        \iobank60debounce/inputs60_c_i[3]\);
    
    \heart_beat/un1_counter_1_m22\ : XOR2
      port map(A => \heart_beat/N_22_i\, B => 
        \heart_beat/counter[17]_net_1\, Y => \heart_beat/m22\);
    
    \matrix_read04/dataOut01_RNITF39[0]\ : INV
      port map(A => \dhold68[0]\, Y => \dhold68_i[0]\);
    
    \ioBank60reader/cellindex[1]\ : DFN1
      port map(D => \ioBank60reader/cellindex_6[1]\, CLK => 
        SerialClock_c, Q => \ioBank60reader/cellindex[1]_net_1\);
    
    \iobank65debounce/IOOut[2]\ : DFN1E0
      port map(D => \iobank65debounce/IOOut_3[2]\, CLK => Clock03, 
        E => \iobank65debounce/IOOut_0_sqmuxa\, Q => \ohold65[2]\);
    
    \A2DRead/DataRegU1Ch0d_RNITAKV4[3]\ : NOR2B
      port map(A => \A2DRead/N_1755\, B => \A2DRead/N_1753\, Y
         => \A2DRead/un60_dataregu1ch0_119\);
    
    \matrix_read04/stage_RNI3V3_1[5]\ : NOR2
      port map(A => \matrix_read04/stage[5]_net_1\, B => 
        \matrix_read04/stage[2]_net_1\, Y => 
        \matrix_read04/ctrl9_0_a3_0\);
    
    \matrix_read04/dataOut00_RNITD08[1]\ : INV
      port map(A => \dhold67[1]\, Y => \dhold67_i[1]\);
    
    \iobank66debounce/DebounceTimer[1]\ : DFN1E1
      port map(D => \iobank66debounce/DebounceTimer_n1\, CLK => 
        Clock03, E => \iobank66debounce/DebounceTimere\, Q => 
        \iobank66debounce/DebounceTimer[1]_net_1\);
    
    \HrtBeat_pad/U0/U0\ : IOPAD_TRI
      port map(D => \HrtBeat_pad/U0/NET1\, E => 
        \HrtBeat_pad/U0/NET2\, PAD => HrtBeat);
    
    \A2DRead/DataRegU1Ch0m_RNIJ5711_0[1]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0n[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch0m[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch0o[1]_net_1\, Y => \A2DRead/N_1709\);
    
    \A2DRead/DataRegU1Ch0f_RNIDV7Q6_0[3]\ : MAJ3
      port map(A => \A2DRead/N_1750\, B => \A2DRead/N_1731\, C
         => \A2DRead/N_1733\, Y => \A2DRead/N_1759\);
    
    \A2DRead/DataRegU1Ch0e[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0d[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0e[2]_net_1\);
    
    \ioBank68reader/parallelholdreg_RNO_0[2]\ : MX2
      port map(A => \ioBank68reader/parallelholdreg_7[2]\, B => 
        \ioBank68reader/parallelholdreg[2]_net_1\, S => 
        \ioBank68reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank68reader/N_25\);
    
    \A2DRead/DataRegU1Ch0o_RNITLLA2_0[11]\ : MAJ3
      port map(A => \A2DRead/N_1962\, B => \A2DRead/N_1966\, C
         => \A2DRead/N_1964\, Y => \A2DRead/N_1977\);
    
    \iobank60debounce/IOOut[3]\ : DFN1E0
      port map(D => \iobank60debounce/IOOut_8[3]\, CLK => Clock03, 
        E => \iobank60debounce/IOOut_0_sqmuxa\, Q => \ohold60[3]\);
    
    \iobank60debounce/IOOut_RNO[0]\ : MX2B
      port map(A => \iobank60debounce/PreviousPosition[0]_net_1\, 
        B => \inputs60_c[0]\, S => LogicReset_c, Y => 
        \iobank60debounce/IOOut_8[0]\);
    
    \iobank63debounce/DebounceTimer_RNIQQIV_0[8]\ : OR2B
      port map(A => \iobank63debounce/DebounceTimer[8]_net_1\, B
         => \iobank63debounce/un1_previousposition7\, Y => 
        \iobank63debounce/DebounceTimere\);
    
    \A2DRead/DataRegU1Ch0d[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0c[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0d[5]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNI64135_0[3]\ : MAJ3
      port map(A => \A2DRead/N_1403\, B => \A2DRead/N_1384\, C
         => \A2DRead/N_1386\, Y => \A2DRead/N_1412\);
    
    \matrix_read04/dataOut03_RNI0N9B[1]\ : INV
      port map(A => \dhold6A[1]\, Y => \dhold6A_i[1]\);
    
    \A2D00reader/parallelholdreg_RNO_0[3]\ : MX2
      port map(A => \A2D00reader/parallelholdreg_7[3]\, B => 
        \A2D00reader/parallelholdreg[3]_net_1\, S => 
        \A2D00reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D00reader/N_94\);
    
    \addresslatch/cellindex[0]\ : DFN1
      port map(D => \addresslatch/cellindex_n0\, CLK => 
        SerialClock_c, Q => \addresslatch/cellindex[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0m[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0l[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0m[11]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNIPQ262[4]\ : XOR3
      port map(A => \A2DRead/N_1775\, B => \A2DRead/N_1771\, C
         => \A2DRead/N_1773\, Y => \A2DRead/N_1806\);
    
    \externenablelatch/paralleldata_RNO_0[4]\ : MX2
      port map(A => \externenablelatch/paralleldata[4]_net_1\, B
         => SerialIn_c_0, S => \externenablelatch/N_96\, Y => 
        \externenablelatch/N_96_mux\);
    
    \iobank68debounce/DebounceTimer_RNO[2]\ : XA1
      port map(A => \iobank68debounce/DebounceTimer[2]_net_1\, B
         => \iobank68debounce/DebounceTimer_c1\, C => 
        \iobank68debounce/un1_previousposition7\, Y => 
        \iobank68debounce/DebounceTimer_n2\);
    
    \iobank66debounce/PreviousPosition_RNO[1]\ : MX2B
      port map(A => \iobank66debounce/CurrentPosition[1]_net_1\, 
        B => \dhold66[1]\, S => LogicReset_c, Y => 
        \iobank66debounce/PreviousPosition_3[1]\);
    
    \A2DRead/DataRegU1Ch0g_RNIT83PU[10]\ : XOR3
      port map(A => \A2DRead/N_1983\, B => \A2DRead/N_2010\, C
         => \A2DRead/N_1985\, Y => \A2DRead/N_2014\);
    
    \A2DRead/DataRegU1Ch0d_RNIQ7JP2[7]\ : XOR3
      port map(A => \A2DRead/N_1852\, B => \A2DRead/N_1850\, C
         => \A2DRead/N_1854\, Y => \A2DRead/N_1864\);
    
    \ioBank61reader/parallelholdreg_RNO_0[3]\ : MX2
      port map(A => \ioBank61reader/parallelholdreg_7[3]\, B => 
        \ioBank61reader/parallelholdreg[3]_net_1\, S => 
        \ioBank61reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank61reader/N_41\);
    
    \A2DRead/DataRegU1Ch0j_RNIPPBN_0[6]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0l[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch0k[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch0j[6]_net_1\, Y => \A2DRead/N_1829\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I69_un1_Y_0\ : 
        NOR3C
      port map(A => \A2DRead/N197\, B => \A2DRead/N201\, C => 
        \A2DRead/N214_0\, Y => 
        \A2DRead/ADD_11x11_fast_I69_un1_Y_0_0\);
    
    \A2DRead/DataRegU1Ch1f_RNIVPUL2[2]\ : AO18
      port map(A => \A2DRead/N_1399\, B => \A2DRead/un60_N_1_i_0\, 
        C => \A2DRead/N_1401\, Y => \A2DRead/un60_i1_mux_0_0\);
    
    \A2DRead/DataRegU1Ch1f_RNI9V0QT_0[3]\ : XOR3
      port map(A => \A2DRead/un60_i3_mux_1\, B => 
        \A2DRead/un60_i3_mux\, C => \A2DRead/N_1467\, Y => 
        \A2DRead/N_1471\);
    
    \A2DRead/DataRegU1Ch0f_RNIEF8KG[7]\ : XOR3
      port map(A => \A2DRead/N_1894\, B => \A2DRead/N_1896\, C
         => \A2DRead/N_1869\, Y => \A2DRead/N_1900\);
    
    \addresslatch/output_RNO[6]\ : NOR2A
      port map(A => \addresslatch/N_57\, B => LogicReset_c, Y => 
        \addresslatch/output_RNO[6]_net_1\);
    
    \A2DRead/DataInReg[6]\ : DFN1E1
      port map(D => AdDout_c, CLK => Clock04, E => 
        \A2DRead/N_2179\, Q => \A2DRead/DataInReg[6]_net_1\);
    
    \A2DRead/DataRegU1Ch1[12]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch1[11]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch1_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1[12]_net_1\);
    
    \ioBank61reader/parallelholdreg[2]\ : DFN1
      port map(D => \ioBank61reader/parallelholdreg_RNO_2[2]\, 
        CLK => Clock01, Q => 
        \ioBank61reader/parallelholdreg[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0g[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0f[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0g[4]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNIH6BQ6[7]\ : XOR3
      port map(A => \A2DRead/N_1837\, B => \A2DRead/N_1860\, C
         => \A2DRead/N_1835\, Y => \A2DRead/N_1868\);
    
    \A2DRead/DataRegU1Ch1m[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1l[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1m[5]_net_1\);
    
    \iobank65debounce/IOOut_RNO[0]\ : MX2B
      port map(A => \iobank65debounce/PreviousPosition[0]_net_1\, 
        B => \dhold65[0]\, S => LogicReset_c, Y => 
        \iobank65debounce/IOOut_3[0]\);
    
    \A2DRead/step[7]\ : DFN1E0
      port map(D => \A2DRead/N_45\, CLK => Clock04, E => 
        \A2DRead/N_59\, Q => \A2DRead/step[7]_net_1\);
    
    \A2DRead/step_RNI3L2F4[3]\ : NOR3C
      port map(A => \A2DRead/step[3]_net_1\, B => \A2DRead/N_115\, 
        C => \A2DRead/N_123\, Y => 
        \A2DRead/DataRegU1Ch0h_1_sqmuxa\);
    
    \discretedutycycle01/paralleldata[6]\ : DFN1
      port map(D => \discretedutycycle01/paralleldata_RNO_3[6]\, 
        CLK => SerialClock_c, Q => 
        \discretedutycycle01/paralleldata[6]_net_1\);
    
    \externenablelatch/output_RNO_0[5]\ : MX2
      port map(A => \ExternalHardwareEn_c[5]\, B => 
        \externenablelatch/paralleldata[5]_net_1\, S => 
        \externenablelatch/output_0_sqmuxa_net_1\, Y => 
        \externenablelatch/N_51\);
    
    \matrix_read03/stage_RNIT0I12[2]\ : NOR3B
      port map(A => \matrix_read03/ctrl15_m1_e_0_1\, B => 
        \matrix_read03/ctrl15_m1_e_0_0\, C => 
        \matrix_read03/N_26\, Y => \matrix_read03/ctrl15\);
    
    \iobank65debounce/DebounceTimer_RNI179H[1]\ : NOR2B
      port map(A => \iobank65debounce/DebounceTimer[0]_net_1\, B
         => \iobank65debounce/DebounceTimer[1]_net_1\, Y => 
        \iobank65debounce/DebounceTimer_c1\);
    
    \A2D00reader/cellindex_RNO_0[3]\ : NOR3C
      port map(A => \A2D00reader/cellindex[2]_net_1\, B => 
        \ioBank60reader.cellindex_1_sqmuxa_1_1\, C => 
        \A2D00reader/cellindex_c1\, Y => \A2D00reader/N_89\);
    
    \iobank67debounce/DebounceTimer[6]\ : DFN1E1
      port map(D => \iobank67debounce/DebounceTimer_n6\, CLK => 
        Clock03, E => \iobank67debounce/DebounceTimere\, Q => 
        \iobank67debounce/DebounceTimer[6]_net_1\);
    
    \ioBank68reader/cellindex_RNO[0]\ : NOR3
      port map(A => \ioBank68reader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank68reader/un1_latch_1\, Y => 
        \ioBank68reader/cellindex_RNO_5[0]\);
    
    \A2DRead/steplde_i_a3_0\ : NOR2
      port map(A => uCReset_c, B => LogicReset_c, Y => 
        \A2DRead/N_110\);
    
    \snkpout01/PWMOut_3_0_I_25\ : AND3
      port map(A => \snkpout01/DWACT_BL_EQUAL_0_E[2]\, B => 
        \snkpout01/DWACT_BL_EQUAL_0_E[1]\, C => 
        \snkpout01/DWACT_BL_EQUAL_0_E[0]\, Y => 
        \snkpout01/DWACT_CMPLE_PO2_DWACT_COMP0_E[1]\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I21_Y\ : AO1
      port map(A => \A2DRead/N165_0\, B => \A2DRead/N169_0\, C
         => \A2DRead/N168_0\, Y => \A2DRead/N198_0\);
    
    \A2DRead/DataRegU1Ch0n[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0m[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0n[7]_net_1\);
    
    \A2DRead/DataInReg_RNO_0[7]\ : NOR3A
      port map(A => \A2DRead/N_2137\, B => 
        \A2DRead/step[4]_net_1\, C => \A2DRead/step[2]_net_1\, Y
         => \A2DRead/DataInReg_326_e_0\);
    
    \ioBank62reader/parallelholdreg_RNO_1[1]\ : OR2
      port map(A => \ohold62[1]\, B => SerialLoad_c, Y => 
        \ioBank62reader/parallelholdreg_7[1]\);
    
    \A2DRead/DataRegU1Ch1h[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1g[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1h[7]_net_1\);
    
    \matrix_read03/ctrl_RNO[4]\ : OR3C
      port map(A => \matrix_read03/N_64\, B => 
        \matrix_read03/stage[5]_net_1\, C => \matrix_read03/N_37\, 
        Y => \matrix_read03/ctrl_RNO[4]_net_1\);
    
    \discretedutycycle01/output_RNO_0[2]\ : MX2
      port map(A => \dutycycle01[2]\, B => 
        \discretedutycycle01/paralleldata[2]_net_1\, S => 
        \discretedutycycle01/output_0_sqmuxa_0_net_1\, Y => 
        \discretedutycycle01/N_62\);
    
    \A2DRead/DataRegU1Ch1c[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1b[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1c[2]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I17_Y\ : AO1
      port map(A => \A2DRead/N171\, B => \A2DRead/N175\, C => 
        \A2DRead/N174\, Y => \A2DRead/N194\);
    
    \inputs61_pad[0]/U0/U1\ : IOIN_IB
      port map(YIN => \inputs61_pad[0]/U0/NET1\, Y => 
        \inputs61_c[0]\);
    
    \bitcontrol01latch/paralleldata_RNO_0[5]\ : MX2
      port map(A => \bitcontrol01latch/paralleldata[5]_net_1\, B
         => SerialIn_c, S => \bitcontrol01latch/N_99\, Y => 
        \bitcontrol01latch/N_99_mux\);
    
    \iobank66debounce/Changing_RNIN4HM\ : NOR2
      port map(A => \iobank66debounce/Changing_net_1\, B => 
        LogicReset_c, Y => 
        \iobank66debounce/un1_previousposition7\);
    
    \Watch_Dog_Reset/timercount_RNO_0[7]\ : NOR3C
      port map(A => \Watch_Dog_Reset/m16_m2_0_a2_2\, B => 
        \Watch_Dog_Reset/m16_m2_0_a2_1\, C => 
        \Watch_Dog_Reset/N_2\, Y => \Watch_Dog_Reset/m16_N_6_mux\);
    
    \ioBank67reader/parallelholdreg_RNO_1[1]\ : OR2
      port map(A => \ohold67[1]\, B => SerialLoad_c, Y => 
        \ioBank67reader/parallelholdreg_7[1]\);
    
    \discretedutycycle01/paralleldata_RNO_1[9]\ : NOR3C
      port map(A => \discretedutycycle01/un1_paralleldata_1[9]\, 
        B => \discretedutycycle01/output_0_sqmuxa_net_1\, C => 
        \discretedutycycle01/un1_paralleldata_2[9]\, Y => 
        \discretedutycycle01/N_136\);
    
    \bitcontrol01latch/paralleldata_RNO_0[7]\ : MX2
      port map(A => \bitcontrol01latch/paralleldata[7]_net_1\, B
         => SerialIn_c, S => \bitcontrol01latch/N_101\, Y => 
        \bitcontrol01latch/N_101_mux\);
    
    \iobank63debounce/DebounceTimer[3]\ : DFN1E1
      port map(D => \iobank63debounce/DebounceTimer_n3\, CLK => 
        Clock03, E => \iobank63debounce/DebounceTimere\, Q => 
        \iobank63debounce/DebounceTimer[3]_net_1\);
    
    \iobank60debounce/DebounceTimer_RNO_0[6]\ : NOR2B
      port map(A => \iobank60debounce/DebounceTimer_c5_0\, B => 
        \iobank60debounce/DebounceTimer_c2\, Y => 
        \iobank60debounce/DebounceTimer_c5\);
    
    \heart_beat/counter[7]\ : DFN1
      port map(D => \heart_beat/m32\, CLK => Clock04, Q => 
        \heart_beat/counter[7]_net_1\);
    
    \externenablelatch/paralleldata_RNO[0]\ : NOR2A
      port map(A => \externenablelatch/N_92_mux\, B => 
        LogicReset_c, Y => 
        \externenablelatch/paralleldata_RNO_0[0]_net_1\);
    
    \iobank63debounce/DebounceTimer_RNO[2]\ : XA1
      port map(A => \iobank63debounce/DebounceTimer[2]_net_1\, B
         => \iobank63debounce/DebounceTimer_c1\, C => 
        \iobank63debounce/un1_previousposition7\, Y => 
        \iobank63debounce/DebounceTimer_n2\);
    
    \matrix_read03/data00[2]\ : DFN1E1
      port map(D => \inputs62_c[2]\, CLK => Clock03, E => 
        \matrix_read03/ctrl9\, Q => 
        \matrix_read03/data00[2]_net_1\);
    
    \iobank62debounce/DebounceTimer_RNO_0[8]\ : NOR3C
      port map(A => \iobank62debounce/un1_previousposition7\, B
         => \iobank62debounce/DebounceTimer[7]_net_1\, C => 
        \iobank62debounce/DebounceTimer_c6\, Y => 
        \iobank62debounce/N_48\);
    
    \ioBank62reader/dataout_RNO_0\ : NOR3A
      port map(A => \ioBank62reader/parallelholdreg[0]_net_1\, B
         => \ioBank62reader/cellindex[0]_net_1\, C => 
        \ioBank62reader/cellindex[1]_net_1\, Y => 
        \ioBank62reader/parallelholdreg_m[0]\);
    
    \A2DRead/DataRegU1Ch0g_RNIL555B2_0[12]\ : XOR3
      port map(A => \A2DRead/N_2030\, B => \A2DRead/N_2025\, C
         => \A2DRead/N_2027\, Y => \A2DRead/N_2032\);
    
    \iobank60debounce/DebounceTimer_RNO[1]\ : XA1
      port map(A => \iobank60debounce/DebounceTimer[1]_net_1\, B
         => \iobank60debounce/DebounceTimer[0]_net_1\, C => 
        \iobank60debounce/un1_previousposition7\, Y => 
        \iobank60debounce/DebounceTimer_n1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I33_un1_Y\ : 
        NOR3C
      port map(A => \A2DRead/N181\, B => \A2DRead/N184_0\, C => 
        \A2DRead/N192_0\, Y => \A2DRead/I33_un1_Y\);
    
    \A2DRead/DataRegU1Ch0g_RNIQLLBD2_0[12]\ : MAJ3
      port map(A => \A2DRead/N_2012\, B => \A2DRead/N_1987\, C
         => \A2DRead/N_2014\, Y => \A2DRead/N_2017\);
    
    \A2D01reader/parallelholdreg_RNO_1[3]\ : OR2
      port map(A => \ohold51[3]\, B => SerialLoad_c, Y => 
        \A2D01reader/parallelholdreg_7[3]\);
    
    \iobank6Bdebounce/DebounceTimer_RNO_0[3]\ : NOR2B
      port map(A => \iobank6Bdebounce/DebounceTimer_c1\, B => 
        \iobank6Bdebounce/DebounceTimer[2]_net_1\, Y => 
        \iobank6Bdebounce/DebounceTimer_c2\);
    
    \addresslatch/paralleldata_RNO[0]\ : NOR2A
      port map(A => \addresslatch/N_83_mux\, B => LogicReset_c, Y
         => \addresslatch/paralleldata_RNO[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNIUU162[1]\ : MAJ3
      port map(A => \A2DRead/N_1708\, B => \A2DRead/N_1712\, C
         => \A2DRead/N_1710\, Y => \A2DRead/N_1717\);
    
    \bitcontrol01latch/cellindex_RNIN4LO[1]\ : NOR2B
      port map(A => \bitcontrol01latch/cellindex[0]_net_1\, B => 
        \bitcontrol01latch/cellindex[1]_net_1\, Y => 
        \bitcontrol01latch/cellindex_c1\);
    
    \A2DRead/DataInReg_RNI3V404_2[13]\ : NOR3B
      port map(A => \A2DRead/N_55_mux\, B => \A2DRead/m23_2\, C
         => \A2DRead/DataInReg[13]_net_1\, Y => 
        \A2DRead/DatHldRegU1Ch0_1_sqmuxa\);
    
    \A2DRead/DataRegU1Ch1o_RNI163B4[4]\ : XOR3
      port map(A => \A2DRead/N_1423\, B => 
        \A2DRead/un60_dataregu1ch1_189_0\, C => \A2DRead/N_1431\, 
        Y => \A2DRead/un60_N_9\);
    
    \A2D01reader/parallelholdreg_RNO_0[9]\ : MX2
      port map(A => \A2D01reader/parallelholdreg_7[9]\, B => 
        \A2D01reader/parallelholdreg[9]_net_1\, S => 
        \A2D01reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D01reader/N_100\);
    
    \A2DRead/DataRegU1Ch0i[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0h[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0i[2]_net_1\);
    
    \firmware/parallelholdreg_RNO[0]\ : OR3B
      port map(A => \ioBank62reader.parallelholdreg_0_sqmuxa_4\, 
        B => \firmware/parallelholdreg_2_sqmuxa_i_i_a2_0\, C => 
        \firmware/un1_reset_0_o2_3_net_1\, Y => \firmware/N_58\);
    
    \A2DRead/DataRegU1Ch1[9]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch1[8]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch1_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1[9]_net_1\);
    
    \matrix_read03/stage_RNO[5]\ : XA1B
      port map(A => \matrix_read03/stage[5]_net_1\, B => 
        \matrix_read03/stage_N_3_mux\, C => LogicReset_c, Y => 
        \matrix_read03/N_13\);
    
    \ioBank65reader/dataout_RNO_1\ : NOR2B
      port map(A => \ioBank65reader/parallelholdreg[1]_net_1\, B
         => \ioBank65reader/cellindex[0]_net_1\, Y => 
        \ioBank65reader/parallelholdreg_m[1]\);
    
    \A2DRead/DataRegU1Ch1o_RNIPKPT[2]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1m[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch1o[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch1n[2]_net_1\, Y => \A2DRead/N_1375\);
    
    \A2DRead/DataRegU1Ch0f_RNI6P8Q6_0[4]\ : OA1
      port map(A => \A2DRead/N_1753\, B => \A2DRead/N_1755\, C
         => \A2DRead/N_1776\, Y => 
        \A2DRead/un60_dataregu1ch0_203_0\);
    
    \iobank64debounce/DebounceTimer_RNO[0]\ : NOR2A
      port map(A => \iobank64debounce/un1_previousposition7\, B
         => \iobank64debounce/DebounceTimer[0]_net_1\, Y => 
        \iobank64debounce/N_67\);
    
    \A2DRead/DataRegU1Ch0f_RNIM2F0G_0[2]\ : MAJ3
      port map(A => \A2DRead/N_1758\, B => \A2DRead/N_1737\, C
         => \A2DRead/N_1756\, Y => \A2DRead/N_1763\);
    
    \externenablelatch/CellIndexUpdate.un39_address_3_0\ : NOR3C
      port map(A => \externenablelatch/un39_address_0\, B => 
        \externenablelatch.CellIndexUpdate.un39_address_4\, C => 
        \externenablelatch/un39_address_1\, Y => 
        \externenablelatch/un39_address_3\);
    
    \A2DRead/DataRegU1Ch1l[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1k[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1l[11]_net_1\);
    
    \A2DRead/DataRegU1Ch0c[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0b[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0c[12]_net_1\);
    
    \clock_master/counter_6_I_14\ : XOR3
      port map(A => \clock_master/counter_i[2]\, B => 
        LogicReset_c, C => 
        \clock_master/DWACT_ADD_CI_0_g_array_1_0[0]\, Y => 
        \clock_master/counter_4_1_0[2]\);
    
    \A2D00reader/parallelholdreg_0_sqmuxa_9\ : NOR3A
      port map(A => \A2D01reader.parallelholdreg_0_sqmuxa_5\, B
         => \internaddr[7]\, C => \internaddr[5]\, Y => 
        \A2D01reader.parallelholdreg_0_sqmuxa_9\);
    
    \A2DRead/DataRegU1Ch0f_RNIQD842_0[10]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0f[10]_net_1\, B => 
        \A2DRead/N_1909\, C => \A2DRead/N_1907\, Y => 
        \A2DRead/N_1945\);
    
    \snkpout01/PWMOut_3_0_I_34\ : OR2A
      port map(A => \snkpout01/counter[2]_net_1\, B => 
        \dutycycle01[2]\, Y => \snkpout01/N_3\);
    
    \A2D00reader/parallelholdreg_RNO_0[7]\ : MX2
      port map(A => \A2D00reader/parallelholdreg_7[7]\, B => 
        \A2D00reader/parallelholdreg[7]_net_1\, S => 
        \A2D00reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D00reader/N_98\);
    
    \iobank6Adebounce/DebounceTimer[8]\ : DFN1
      port map(D => \iobank6Adebounce/DebounceTimer_RNO_7[8]\, 
        CLK => Clock03, Q => 
        \iobank6Adebounce/DebounceTimer[8]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I49_Y\ : AO1
      port map(A => \A2DRead/N205\, B => \A2DRead/N208\, C => 
        \A2DRead/N204_0\, Y => \A2DRead/N229_0\);
    
    \A2DRead/DataRegU1Ch0d[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0c[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0d[11]_net_1\);
    
    \A2DRead/DataRegU1Ch0d_RNIA0BG_0[8]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0e[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch0d[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch0c[8]_net_1\, Y => \A2DRead/N_1879\);
    
    \A2DRead/DataRegU1Ch1j[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1i[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1j[7]_net_1\);
    
    \iobank65debounce/PreviousPosition_RNO[0]\ : MX2B
      port map(A => \iobank65debounce/CurrentPosition[0]_net_1\, 
        B => \dhold65[0]\, S => LogicReset_c, Y => 
        \iobank65debounce/PreviousPosition_3[0]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I70_Y_1\ : AO1
      port map(A => \A2DRead/N191\, B => \A2DRead/N194\, C => 
        \A2DRead/ADD_11x11_fast_I70_Y_0\, Y => 
        \A2DRead/ADD_11x11_fast_I70_Y_1\);
    
    \iobank67debounce/DebounceTimer[2]\ : DFN1E1
      port map(D => \iobank67debounce/DebounceTimer_n2\, CLK => 
        Clock03, E => \iobank67debounce/DebounceTimere\, Q => 
        \iobank67debounce/DebounceTimer[2]_net_1\);
    
    \A2DRead/step_RNIKU912[2]\ : AOI1B
      port map(A => \A2DRead/step[2]_net_1\, B => 
        \A2DRead/step[4]_net_1\, C => \A2DRead/N_42\, Y => 
        \A2DRead/i6_mux\);
    
    \ioBank61reader/cellindex_RNO[1]\ : XA1
      port map(A => \ioBank61reader/cellindex[1]_net_1\, B => 
        \ioBank61reader/cellindex[0]_net_1\, C => 
        \ioBank60reader.cellindex_1_sqmuxa_1_1\, Y => 
        \ioBank61reader/cellindex_6[1]\);
    
    \iobank6Adebounce/PreviousPosition_RNO[1]\ : MX2B
      port map(A => \iobank6Adebounce/CurrentPosition[1]_net_1\, 
        B => \dhold6A[1]\, S => LogicReset_c, Y => 
        \iobank6Adebounce/PreviousPosition_3[1]\);
    
    \A2DRead/DataRegU1Ch0f_RNI6P8Q6[4]\ : XOR3
      port map(A => \A2DRead/N_1755\, B => \A2DRead/N_1776\, C
         => \A2DRead/N_1753\, Y => \A2DRead/N_1784\);
    
    \ioBank66reader/parallelholdreg[0]\ : DFN1
      port map(D => \ioBank66reader/parallelholdreg_RNO_7[0]\, 
        CLK => Clock01, Q => 
        \ioBank66reader/parallelholdreg[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0j[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0i[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0j[8]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNIPS55V[10]\ : XOR3
      port map(A => \A2DRead/N_1955\, B => \A2DRead/N_1982\, C
         => \A2DRead/N_1957\, Y => \A2DRead/N_1986\);
    
    \iobank6Adebounce/IOOut_RNO[2]\ : MX2B
      port map(A => \iobank6Adebounce/PreviousPosition[2]_net_1\, 
        B => \dhold6A[2]\, S => LogicReset_c, Y => 
        \iobank6Adebounce/IOOut_3[2]\);
    
    \A2D00reader/dataout_RNO\ : OR2
      port map(A => \A2D01reader.dataout_0_0\, B => 
        \A2D00reader/dataout_67\, Y => 
        \A2D00reader/dataout_RNO_0_net_1\);
    
    \discretedutycycle01/cellindex[0]\ : DFN1E0
      port map(D => \discretedutycycle01/N_112\, CLK => 
        SerialClock_c, E => 
        \discretedutycycle01/cellindex_1_sqmuxa_net_1\, Q => 
        \discretedutycycle01/cellindex[0]_net_1\);
    
    \XCLK_pad/U0/U0\ : IOPAD_IN
      port map(PAD => XCLK, Y => \XCLK_pad/U0/NET1\);
    
    \ioBank68reader/parallelholdreg[1]\ : DFN1
      port map(D => \ioBank68reader/parallelholdreg_RNO_9[1]\, 
        CLK => Clock01, Q => 
        \ioBank68reader/parallelholdreg[1]_net_1\);
    
    \firmware/parallelholdreg_13_i_a2_i_a2[1]\ : NOR2A
      port map(A => \internaddr[1]\, B => \internaddr[0]\, Y => 
        \firmware.N_70\);
    
    \firmware/dataout_RNO_0\ : MX2
      port map(A => \firmware/N_49\, B => \firmware/N_50\, S => 
        \firmware/cellindex[1]_net_1\, Y => \firmware/N_51\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I25_Y\ : AO1
      port map(A => \A2DRead/N159\, B => \A2DRead/N163\, C => 
        \A2DRead/N162_0\, Y => \A2DRead/N202\);
    
    \A2DRead/DataRegU1Ch0a[4]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[4]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch0a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0a[4]_net_1\);
    
    \bitcontrol01latch/paralleldata_RNO_1[2]\ : NOR3B
      port map(A => \bitcontrol01latch/output_0_sqmuxa_net_1\, B
         => \bitcontrol01latch/un1_paralleldata_1[2]\, C => 
        \bitcontrol01latch/cellindex[2]_net_1\, Y => 
        \bitcontrol01latch/N_96\);
    
    \ioBank64reader/parallelholdreg_RNO_0[1]\ : MX2
      port map(A => \ioBank64reader/parallelholdreg_7[1]\, B => 
        \ioBank64reader/parallelholdreg[1]_net_1\, S => 
        \ioBank64reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank64reader/N_24\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I84_Y_0\ : XOR3
      port map(A => \A2DRead/N_1875\, B => 
        \A2DRead/un60_dataregu1ch0_499_0\, C => \A2DRead/N_1877\, 
        Y => \A2DRead/ADD_11x11_fast_I84_Y_0\);
    
    \ioBank64reader/parallelholdreg_RNO[0]\ : OR2
      port map(A => \ioBank64reader/N_23\, B => LogicReset_c, Y
         => \ioBank64reader/parallelholdreg_RNO_5[0]\);
    
    \externenablelatch/paralleldata_RNO_1[1]\ : NOR3B
      port map(A => \externenablelatch/cellindex[0]_net_1\, B => 
        \externenablelatch/paralleldata_0_e_0[3]\, C => 
        \externenablelatch/cellindex[1]_net_1\, Y => 
        \externenablelatch/N_93\);
    
    \addresslatch/paralleldata[1]\ : DFN1
      port map(D => \addresslatch/paralleldata_RNO[1]_net_1\, CLK
         => SerialClock_c, Q => 
        \addresslatch/paralleldata[1]_net_1\);
    
    \A2DRead/step_RNI6P136[3]\ : AO1
      port map(A => \A2DRead/steplde_i_a3_2\, B => \A2DRead/N_72\, 
        C => \A2DRead/N_110\, Y => \A2DRead/N_59\);
    
    \discretedutycycle01/paralleldata_RNO[2]\ : NOR2A
      port map(A => \discretedutycycle01/N_129_mux\, B => 
        LogicReset_c, Y => 
        \discretedutycycle01/paralleldata_RNO_3[2]\);
    
    \externenablelatch/output[3]\ : DFN1
      port map(D => \externenablelatch/output_RNO_0[3]_net_1\, 
        CLK => Clock01, Q => \ExternalHardwareEn_c[3]\);
    
    \A2DRead/DataRegU1Ch0g_RNIUU162_0[1]\ : XOR3
      port map(A => \A2DRead/N_1713\, B => \A2DRead/N_1709\, C
         => \A2DRead/N_1711\, Y => \A2DRead/N_1730\);
    
    \ioBank65reader/dataout_RNO_2\ : AO1
      port map(A => \ioBank65reader/parallelholdreg[0]_net_1\, B
         => \ioBank65reader/_decfrac0\, C => 
        \A2D01reader.dataout_0_0\, Y => 
        \ioBank65reader/dataout_0_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I2_P0N\ : OR3
      port map(A => \A2DRead/un60_dataregu1ch0_217\, B => 
        \A2DRead/un60_dataregu1ch0_363_0\, C => \A2DRead/N_1876\, 
        Y => \A2DRead/N160_0\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I87_Y\ : AX1D
      port map(A => \A2DRead/N223_0\, B => \A2DRead/I62_un1_Y_0\, 
        C => \A2DRead/ADD_11x11_fast_I87_Y_0\, Y => 
        \A2DRead/un60_dataregu1ch1[10]\);
    
    \A2DRead/step_RNIR5LE1[3]\ : NOR2B
      port map(A => \A2DRead/step[3]_net_1\, B => \A2DRead/N_124\, 
        Y => \A2DRead/DataRegU1Ch0o_1_sqmuxa_0_a3_0\);
    
    \ioBank67reader/parallelholdreg_RNO_0[1]\ : MX2
      port map(A => \ioBank67reader/parallelholdreg_7[1]\, B => 
        \ioBank67reader/parallelholdreg[1]_net_1\, S => 
        \ioBank67reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank67reader/N_24\);
    
    \iobank62debounce/DebounceTimer_RNO[0]\ : NOR2A
      port map(A => \iobank62debounce/un1_previousposition7\, B
         => \iobank62debounce/DebounceTimer[0]_net_1\, Y => 
        \iobank62debounce/N_67\);
    
    \bitcontrol01latch/paralleldata_RNO[7]\ : OR2
      port map(A => \bitcontrol01latch/N_101_mux\, B => 
        LogicReset_c, Y => 
        \bitcontrol01latch/paralleldata_RNO_0[7]_net_1\);
    
    \addresslatch/paralleldata[5]\ : DFN1
      port map(D => \addresslatch/paralleldata_RNO[5]_net_1\, CLK
         => SerialClock_c, Q => 
        \addresslatch/paralleldata[5]_net_1\);
    
    \discretedutycycle01/cellindex_RNILCOL_0[3]\ : NOR2A
      port map(A => \discretedutycycle01/cellindex[2]_net_1\, B
         => \discretedutycycle01/cellindex[3]_net_1\, Y => 
        \discretedutycycle01/un1_paralleldata_2[7]\);
    
    \externenablelatch/paralleldata_RNO_1[2]\ : NOR3B
      port map(A => \externenablelatch/cellindex[1]_net_1\, B => 
        \externenablelatch/paralleldata_0_e_0[3]\, C => 
        \externenablelatch/cellindex[0]_net_1\, Y => 
        \externenablelatch/N_94\);
    
    \A2DRead/DataRegU1Ch0f_RNIDV7Q6[3]\ : XOR3
      port map(A => \A2DRead/N_1733\, B => \A2DRead/N_1750\, C
         => \A2DRead/N_1731\, Y => \A2DRead/N_1758\);
    
    \ioBank6Areader/cellindex[0]\ : DFN1
      port map(D => \ioBank6Areader/cellindex_RNO_7[0]\, CLK => 
        SerialClock_c, Q => \ioBank6Areader/cellindex[0]_net_1\);
    
    \snkpout01/PWMOut_3_0_I_1\ : XNOR2
      port map(A => \snkpout01/counter[8]_net_1\, B => 
        \dutycycle01[8]\, Y => 
        \snkpout01/DWACT_BL_EQUAL_0_E_0[0]\);
    
    \A2DRead/DataInReg_RNO_0[5]\ : NOR3A
      port map(A => \A2DRead/N_2136\, B => 
        \A2DRead/step[4]_net_1\, C => \A2DRead/step[2]_net_1\, Y
         => \A2DRead/DataInReg_324_e_0\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I70_Y\ : AO1
      port map(A => \A2DRead/ADD_11x11_fast_I70_un1_Y_0\, B => 
        \A2DRead/N231_0\, C => \A2DRead/ADD_11x11_fast_I70_Y_2_0\, 
        Y => \A2DRead/N269\);
    
    \A2DRead/DataRegU1Ch1c_RNIGFTC_0[9]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1e[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch1d[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch1c[9]_net_1\, Y => \A2DRead/N_1560\);
    
    \iobank6Bdebounce/PreviousPosition_RNO[0]\ : MX2B
      port map(A => \iobank6Bdebounce/CurrentPosition[0]_net_1\, 
        B => \dhold6B[0]\, S => LogicReset_c, Y => 
        \iobank6Bdebounce/PreviousPosition_3[0]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I1_G0N\ : NOR2B
      port map(A => \A2DRead/N_1821\, B => \A2DRead/N_1848\, Y
         => \A2DRead/N156_0\);
    
    \ioBank68reader/cellindex[0]\ : DFN1
      port map(D => \ioBank68reader/cellindex_RNO_5[0]\, CLK => 
        SerialClock_c, Q => \ioBank68reader/cellindex[0]_net_1\);
    
    \iobank66debounce/IOOut_RNO[0]\ : MX2B
      port map(A => \iobank66debounce/PreviousPosition[0]_net_1\, 
        B => \dhold66[0]\, S => LogicReset_c, Y => 
        \iobank66debounce/IOOut_3[0]\);
    
    \A2DRead/DataRegU1Ch0d[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0c[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0d[7]_net_1\);
    
    \LogicReset_pad/U0/U1\ : IOIN_IB
      port map(YIN => \LogicReset_pad/U0/NET1\, Y => 
        LogicReset_pad);
    
    \iobank60debounce/DebounceTimer[4]\ : DFN1E1
      port map(D => \iobank60debounce/DebounceTimer_n4\, CLK => 
        Clock03, E => \iobank60debounce/DebounceTimere\, Q => 
        \iobank60debounce/DebounceTimer[4]_net_1\);
    
    \addresslatch/paralleldata[2]\ : DFN1
      port map(D => \addresslatch/paralleldata_RNO[2]_net_1\, CLK
         => SerialClock_c, Q => 
        \addresslatch/paralleldata[2]_net_1\);
    
    \snkpout01/PWMOut_3_0_I_16\ : OA1A
      port map(A => \snkpout01/counter[11]_net_1\, B => 
        \dutycycle01[11]\, C => \snkpout01/N_13\, Y => 
        \snkpout01/N_17\);
    
    \A2DRead/DataRegU1Ch1f_RNIJBDN5[6]\ : OR3
      port map(A => \A2DRead/N_1545\, B => 
        \A2DRead/un60_dataregu1ch1_244\, C => 
        \A2DRead/un60_dataregu1ch1_408_0\, Y => 
        \A2DRead/un60_dataregu1ch1_488_0_tz\);
    
    \pwmdisable01latch/paralleldata[1]\ : DFN1
      port map(D => \pwmdisable01latch/paralleldata_RNO_2[1]\, 
        CLK => SerialClock_c, Q => 
        \pwmdisable01latch/paralleldata[1]_net_1\);
    
    \iobank63debounce/DebounceTimer[6]\ : DFN1E1
      port map(D => \iobank63debounce/DebounceTimer_n6\, CLK => 
        Clock03, E => \iobank63debounce/DebounceTimere\, Q => 
        \iobank63debounce/DebounceTimer[6]_net_1\);
    
    \snkpout01/counter_RNI3DI31[6]\ : NOR3C
      port map(A => \snkpout01/un1_counterlto11_1\, B => 
        \snkpout01/un1_counterlto11_0\, C => 
        \snkpout01/un1_counterlto11_2\, Y => 
        \snkpout01/un1_counterlto11_4\);
    
    \A2DRead/DataRegU1Ch0m_RNI2L711[6]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0m[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch0o[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch0n[6]_net_1\, Y => \A2DRead/N_1826\);
    
    \A2DRead/DataRegU1Ch1i_RNI7OKAA2_0[10]\ : XOR3
      port map(A => \A2DRead/N_1609\, B => \A2DRead/N_1611\, C
         => \A2DRead/N_1584\, Y => \A2DRead/N_1613\);
    
    \externenablelatch/cellindex_1_sqmuxa_1_0\ : NOR2A
      port map(A => \externenablelatch/output_0_sqmuxa_net_1\, B
         => LogicReset_c, Y => 
        \externenablelatch/cellindex_1_sqmuxa_1_0_net_1\);
    
    \ioBank61reader/parallelholdreg_RNO_1[3]\ : OR2
      port map(A => \ohold61[3]\, B => SerialLoad_c, Y => 
        \ioBank61reader/parallelholdreg_7[3]\);
    
    \A2DRead/DataInReg_RNO_0[9]\ : NOR3B
      port map(A => \A2DRead/step[4]_net_1\, B => 
        \A2DRead/DataInReg_16_6_e_0[9]\, C => 
        \A2DRead/step[2]_net_1\, Y => \A2DRead/DataInReg_328_e_0\);
    
    \matrix_read03/data00[0]\ : DFN1E1
      port map(D => \inputs62_c[0]\, CLK => Clock03, E => 
        \matrix_read03/ctrl9\, Q => 
        \matrix_read03/data00[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0m_RNI5O711[7]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0m[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch0o[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch0n[7]_net_1\, Y => \A2DRead/N_1854\);
    
    \ioBank66reader/dataout_RNO_2\ : NOR2B
      port map(A => \ioBank66reader/parallelholdreg[2]_net_1\, B
         => \ioBank66reader/cellindex[1]_net_1\, Y => 
        \ioBank66reader/parallelholdreg_m[2]\);
    
    \A2DRead/DataRegU1Ch0d_RNIB3HQ[12]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0c[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch0e[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch0d[12]_net_1\, Y => \A2DRead/N_1990\);
    
    \A2D00reader/parallelholdreg_0_sqmuxa_5\ : NOR2
      port map(A => \internaddr[3]\, B => \internaddr[2]\, Y => 
        \A2D01reader.parallelholdreg_0_sqmuxa_5\);
    
    \A2DRead/DataRegU1Ch0g_RNI1FFD_0[1]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0h[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch0i[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch0g[1]_net_1\, Y => \A2DRead/N_1713\);
    
    \A2DRead/DataRegU1Ch0g_RNIGH262_0[3]\ : MAJ3
      port map(A => \A2DRead/N_1745\, B => \A2DRead/N_1749\, C
         => \A2DRead/N_1747\, Y => \A2DRead/N_1779\);
    
    \snkpout01/counter[9]\ : DFN1
      port map(D => \snkpout01/counter_n9\, CLK => Clock04, Q => 
        \snkpout01/counter[9]_net_1\);
    
    \externenablelatch/output_RNO[0]\ : NOR2A
      port map(A => \externenablelatch/N_46\, B => LogicReset_c, 
        Y => \externenablelatch/output_RNO_0[0]_net_1\);
    
    \A2DRead/DataRegU1Ch1g_RNIPG2Q_0[8]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1i[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch1h[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch1g[8]_net_1\, Y => \A2DRead/N_1540\);
    
    \A2DRead/AdCs1_RNO_3\ : NOR3
      port map(A => \A2DRead/step[6]_net_1\, B => 
        \A2DRead/step[5]_net_1\, C => \A2DRead/step[4]_net_1\, Y
         => \A2DRead/AdCs1_2_0_0_a3_1\);
    
    \iobank65debounce/PreviousPosition[0]\ : DFN1
      port map(D => \iobank65debounce/PreviousPosition_3[0]\, CLK
         => Clock03, Q => 
        \iobank65debounce/PreviousPosition[0]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_423_RNI87FVJ_0\ : XOR3
      port map(A => \A2DRead/N_1898\, B => \A2DRead/N_1871\, C
         => \A2DRead/N_1873\, Y => \A2DRead/N_1902\);
    
    \EncLgtControl_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => EncLgtControl_c, E => \VCC\, DOUT => 
        \EncLgtControl_pad/U0/NET1\, EOUT => 
        \EncLgtControl_pad/U0/NET2\);
    
    \matrix_read03/stage[1]\ : DFN1
      port map(D => \matrix_read03/N_21\, CLK => Clock03, Q => 
        \matrix_read03/stage[1]_net_1\);
    
    \matrix_read03/stage[3]\ : DFN1
      port map(D => \matrix_read03/N_17\, CLK => Clock03, Q => 
        \matrix_read03/stage[3]_net_1\);
    
    \A2DRead/DataRegU1Ch0g[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0f[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0g[3]_net_1\);
    
    \iobank67debounce/DebounceTimer_RNO[5]\ : XA1
      port map(A => \iobank67debounce/DebounceTimer_c4\, B => 
        \iobank67debounce/DebounceTimer[5]_net_1\, C => 
        \iobank67debounce/un1_previousposition7\, Y => 
        \iobank67debounce/DebounceTimer_n5\);
    
    \A2D01reader/cellindex_RNIPV7E1[1]\ : NOR3C
      port map(A => \A2D01reader/parallelholdreg_0_sqmuxa_3\, B
         => \internaddr[0]\, C => 
        \A2D01reader.parallelholdreg_0_sqmuxa_4\, Y => 
        \A2D01reader/parallelholdreg_0_sqmuxa_5_0\);
    
    \iobank6Bdebounce/DebounceTimer_RNIRHLT[1]\ : NOR2B
      port map(A => \iobank6Bdebounce/DebounceTimer[0]_net_1\, B
         => \iobank6Bdebounce/DebounceTimer[1]_net_1\, Y => 
        \iobank6Bdebounce/DebounceTimer_c1\);
    
    \bitcontrol01latch/output_RNO_0[3]\ : MX2
      port map(A => \bitcontrol01latch/bitcontrol01[3]\, B => 
        \bitcontrol01latch/paralleldata[3]_net_1\, S => 
        \bitcontrol01latch/output_0_sqmuxa_net_1\, Y => 
        \bitcontrol01latch/N_47\);
    
    \A2DRead/DataRegU1Ch0f_RNI0CCS[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0p[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch0f[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch0a[1]_net_1\, Y => 
        \A2DRead/un60_dataregu1ch0_24_2\);
    
    \ioBank67reader/cellindex[1]\ : DFN1
      port map(D => \ioBank67reader/cellindex_RNO_4[1]\, CLK => 
        SerialClock_c, Q => \ioBank67reader/cellindex[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNI2SUN[2]\ : XOR3
      port map(A => \A2DRead/N_1360\, B => 
        \A2DRead/DataRegU1Ch1f[2]_net_1\, C => \A2DRead/N_1358\, 
        Y => \A2DRead/N_1381\);
    
    \A2DRead/DataRegU1Ch1f_RNIL0H8E_0[2]\ : AO18
      port map(A => \A2DRead/N_1411\, B => \A2DRead/un60_N_1_i\, 
        C => \A2DRead/N_1409\, Y => \A2DRead/un60_i1_mux_0\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I28_Y\ : NOR2B
      port map(A => \A2DRead/N157\, B => \A2DRead/N160\, Y => 
        \A2DRead/N205\);
    
    \heart_beat/un1_counter_1_m31\ : XOR2
      port map(A => \heart_beat/N_13_i\, B => 
        \heart_beat/counter[8]_net_1\, Y => \heart_beat/m31\);
    
    \A2D00reader/parallelholdreg[0]\ : DFN1
      port map(D => \A2D00reader/parallelholdreg_RNO[0]_net_1\, 
        CLK => Clock01, Q => 
        \A2D00reader/parallelholdreg[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNIPIBTQ3[3]\ : MAJ3
      port map(A => \A2DRead/N_1788\, B => \A2DRead/N_1790\, C
         => \A2DRead/N_1765\, Y => \A2DRead/N_1793\);
    
    \ioBank60reader/parallelholdreg_RNO[2]\ : OR2
      port map(A => \ioBank60reader/N_40\, B => LogicReset_c, Y
         => \ioBank60reader/parallelholdreg_RNO_1[2]_net_1\);
    
    \A2DRead/step_RNID93V_1[1]\ : NOR2A
      port map(A => \A2DRead/step[1]_net_1\, B => 
        \A2DRead/step[2]_net_1\, Y => \A2DRead/N_123\);
    
    \A2DRead/DataRegU1Ch1h[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1g[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1h[3]_net_1\);
    
    \ioBank6Breader/dataout_RNO\ : OR3
      port map(A => \ioBank6Breader/parallelholdreg_m[2]\, B => 
        \ioBank6Breader/parallelholdreg_m[1]\, C => 
        \ioBank6Breader/dataout_0_1\, Y => 
        \ioBank6Breader/dataout_RNO_13\);
    
    \ioBank65reader/parallelholdreg_RNO_0[0]\ : MX2
      port map(A => \ioBank65reader/parallelholdreg_7[0]\, B => 
        \ioBank65reader/parallelholdreg[0]_net_1\, S => 
        \ioBank65reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank65reader/N_23\);
    
    \ioBank63reader/cellindex_RNIL69R1[1]\ : AOI1
      port map(A => \ioBank63reader/parallelholdreg_0_sqmuxa_5\, 
        B => \ioBank62reader.parallelholdreg_0_sqmuxa_4\, C => 
        SerialLoad_c, Y => 
        \ioBank63reader/parallelholdreg_1_sqmuxa\);
    
    \A2DRead/DataRegU1Ch0p_RNI59081_0[4]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0b[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch0a[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch0p[4]_net_1\, Y => \A2DRead/N_1769\);
    
    \heart_beat/un1_counter_1_m40\ : XOR2
      port map(A => \heart_beat/N_44\, B => \heart_beat/N_3_i\, Y
         => \heart_beat/N_41_i\);
    
    \A2DRead/un60_dataregu1ch0_0_1_CO3\ : XA1
      port map(A => \A2DRead/N_1765\, B => 
        \A2DRead/un60_dataregu1ch0_219_0\, C => \A2DRead/CO3_2\, 
        Y => \A2DRead/N_2093\);
    
    \iobank6Bdebounce/DebounceTimer_RNO[1]\ : XA1
      port map(A => \iobank6Bdebounce/DebounceTimer[1]_net_1\, B
         => \iobank6Bdebounce/DebounceTimer[0]_net_1\, C => 
        \iobank6Bdebounce/un1_previousposition7\, Y => 
        \iobank6Bdebounce/DebounceTimer_n1\);
    
    \A2DRead/DataRegU1Ch0f_RNI3QCQ6_0[9]\ : MAJ3
      port map(A => \A2DRead/N_1916\, B => \A2DRead/N_1891\, C
         => \A2DRead/N_1893\, Y => \A2DRead/N_1925\);
    
    \A2DRead/un60_dataregu1ch0_277_RNIMEST44\ : OA1
      port map(A => \A2DRead/un60_dataregu1ch0_288_0\, B => 
        \A2DRead/un60_dataregu1ch0_363_0_tz_0\, C => 
        \A2DRead/N_1844\, Y => \A2DRead/un60_dataregu1ch0_363_0\);
    
    \A2DRead/DataRegU1Ch0o_RNIQBBG7_0[10]\ : MAJ3
      port map(A => \A2DRead/N_1946\, B => \A2DRead/N_1923\, C
         => \A2DRead/N_1948\, Y => \A2DRead/N_1955\);
    
    \A2D00reader/dataout_RNO_8\ : MX2
      port map(A => \A2D00reader/parallelholdreg[2]_net_1\, B => 
        \A2D00reader/parallelholdreg[10]_net_1\, S => 
        \A2D00reader/cellindex[3]_net_1\, Y => \A2D00reader/N_70\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I90_Y_0\ : XOR2
      port map(A => \A2DRead/N_1685\, B => \A2DRead/N_1682\, Y
         => \A2DRead/ADD_11x11_fast_I90_Y_0\);
    
    \A2DRead/DataRegU1Ch0j_RNIJJBN_0[4]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0l[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch0k[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch0j[4]_net_1\, Y => \A2DRead/N_1773\);
    
    \externenablelatch/output_RNO_0[0]\ : MX2
      port map(A => \ExternalHardwareEn_c[0]\, B => 
        \externenablelatch/paralleldata[0]_net_1\, S => 
        \externenablelatch/output_0_sqmuxa_net_1\, Y => 
        \externenablelatch/N_46\);
    
    \A2DRead/DataRegU1Ch0e[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0d[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0e[9]_net_1\);
    
    \A2DRead/DataRegU1Ch0a[1]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[1]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch0a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0a[1]_net_1\);
    
    \A2D00reader/parallelholdreg_RNO_0[11]\ : MX2
      port map(A => \A2D00reader/parallelholdreg_7[11]\, B => 
        \A2D00reader/parallelholdreg[11]_net_1\, S => 
        \A2D00reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D00reader/N_102\);
    
    \A2DRead/DataRegU1Ch1e[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1d[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1e[5]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIMI5QE[4]\ : AO1
      port map(A => \A2DRead/N_1463\, B => \A2DRead/N_1438\, C
         => \A2DRead/N_1495\, Y => 
        \A2DRead/un60_dataregu1ch1_358_0_tz_out\);
    
    \A2DRead/DataRegU1Ch0p[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0o[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0p[2]_net_1\);
    
    \firmware/parallelholdreg_RNO[7]\ : OR3A
      port map(A => \ioBank62reader.parallelholdreg_0_sqmuxa_4\, 
        B => \firmware/un1_reset_0_o2_3_net_1\, C => 
        \firmware/N_62\, Y => 
        \firmware/parallelholdreg_RNO[7]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNI2TBS6_0[10]\ : MAJ3
      port map(A => \A2DRead/N_1974\, B => \A2DRead/N_1951\, C
         => \A2DRead/N_1976\, Y => \A2DRead/N_1983\);
    
    \A2D00reader/parallelholdreg_RNO[1]\ : OR2
      port map(A => \A2D00reader/N_92\, B => LogicReset_c, Y => 
        \A2D00reader/parallelholdreg_RNO[1]_net_1\);
    
    \ioBank66reader/cellindex_RNO[0]\ : NOR3
      port map(A => \ioBank66reader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank66reader/un1_latch_1\, Y => 
        \ioBank66reader/cellindex_RNO_3[0]\);
    
    \firmware/parallelholdreg[0]\ : DFN1E1
      port map(D => \firmware/N_58\, CLK => Clock01, E => 
        \firmware/N_14\, Q => \firmware/parallelholdreg[0]_net_1\);
    
    \iobank69debounce/DebounceTimer_RNO[3]\ : XA1
      port map(A => \iobank69debounce/DebounceTimer_c2\, B => 
        \iobank69debounce/DebounceTimer[3]_net_1\, C => 
        \iobank69debounce/un1_previousposition7\, Y => 
        \iobank69debounce/DebounceTimer_n3\);
    
    \iobank68debounce/DebounceTimer_RNO[5]\ : XA1
      port map(A => \iobank68debounce/DebounceTimer_c4\, B => 
        \iobank68debounce/DebounceTimer[5]_net_1\, C => 
        \iobank68debounce/un1_previousposition7\, Y => 
        \iobank68debounce/DebounceTimer_n5\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I27_Y\ : AO1
      port map(A => \A2DRead/N156_0\, B => \A2DRead/N160_0\, C
         => \A2DRead/N159_0\, Y => \A2DRead/N204\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I89_Y_0\ : XOR3
      port map(A => \A2DRead/N_2015\, B => 
        \A2DRead/un60_dataregu1ch0_809_0\, C => \A2DRead/N_2017\, 
        Y => \A2DRead/ADD_11x11_fast_I89_Y_0\);
    
    \A2DRead/DataRegU1Ch1f_RNII8O7A1[2]\ : XOR3
      port map(A => \A2DRead/N_1415\, B => \A2DRead/N_1413\, C
         => \A2DRead/N_1392\, Y => \A2DRead/N_1417\);
    
    \A2DRead/DataRegU1Ch1p_RNI5II4[3]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1b[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch1p[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch1a[3]_net_1\, Y => \A2DRead/N_1395\);
    
    \A2DRead/DataRegU1Ch1e[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1d[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1e[1]_net_1\);
    
    \iobank64debounce/DebounceTimer_RNO_0[3]\ : NOR2B
      port map(A => \iobank64debounce/DebounceTimer_c1\, B => 
        \iobank64debounce/DebounceTimer[2]_net_1\, Y => 
        \iobank64debounce/DebounceTimer_c2\);
    
    \A2DRead/DataRegU1Ch1f_RNID59LK[5]\ : OR2
      port map(A => \A2DRead/un60_dataregu1ch1_353_0\, B => 
        \A2DRead/un60_dataregu1ch1_209\, Y => \A2DRead/N_1498\);
    
    \AN4NRMControl_pad/U0/U0\ : IOPAD_TRI
      port map(D => \AN4NRMControl_pad/U0/NET1\, E => 
        \AN4NRMControl_pad/U0/NET2\, PAD => AN4NRMControl);
    
    \iobank6Adebounce/IOOut[0]\ : DFN1E0
      port map(D => \iobank6Adebounce/IOOut_3[0]\, CLK => Clock03, 
        E => \iobank6Adebounce/IOOut_0_sqmuxa\, Q => \ohold6A[0]\);
    
    \discretedutycycle01/cellindex_RNO[0]\ : XA1A
      port map(A => \discretedutycycle01/cellindex[0]_net_1\, B
         => \discretedutycycle01/un6_address\, C => 
        \discretedutycycle01/cellindex_1_sqmuxa_1_0_net_1\, Y => 
        \discretedutycycle01/N_112\);
    
    \addresslatch/output_0_sqmuxa_1\ : NOR2
      port map(A => Ale_c, B => LogicReset_c, Y => 
        \addresslatch/output_0_sqmuxa_1_net_1\);
    
    \A2DRead/AdClock_RNO_1\ : AO18
      port map(A => \A2DRead/step[6]_net_1\, B => 
        \A2DRead/step[1]_net_1\, C => \A2DRead/step[5]_net_1\, Y
         => \A2DRead/N_6_0\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I69_Y\ : AO1
      port map(A => \A2DRead/ADD_11x11_fast_I69_un1_Y_0_0\, B => 
        \A2DRead/N229\, C => \A2DRead/ADD_11x11_fast_I69_Y_2_0\, 
        Y => \A2DRead/un60_dataregu1ch0[15]\);
    
    \bitcontrol01latch/paralleldata_RNO_0[3]\ : MX2
      port map(A => \bitcontrol01latch/paralleldata[3]_net_1\, B
         => SerialIn_c, S => \bitcontrol01latch/N_97\, Y => 
        \bitcontrol01latch/N_97_mux\);
    
    \A2DRead/DataInReg[13]\ : DFN1E1
      port map(D => AdDout_c, CLK => Clock04, E => 
        \A2DRead/N_2174\, Q => \A2DRead/DataInReg[13]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNIGLKQ1_0[5]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0f[5]_net_1\, B => 
        \A2DRead/N_1769\, C => \A2DRead/N_1767\, Y => 
        \A2DRead/N_1805\);
    
    \A2DRead/DataRegU1Ch1i_RNISOCRC_0[10]\ : MAJ3
      port map(A => \A2DRead/N_1605\, B => \A2DRead/N_1578\, C
         => \A2DRead/N_1603\, Y => \A2DRead/N_1610\);
    
    \matrix_read03/stage_RNIQRO01[0]\ : AXOI4
      port map(A => \matrix_read03/stage[0]_net_1\, B => 
        \matrix_read03/stage[2]_net_1\, C => 
        \matrix_read03/stage[1]_net_1\, Y => \matrix_read03/N_37\);
    
    \A2DRead/DataInReg[7]\ : DFN1E1
      port map(D => AdDout_c, CLK => Clock04, E => 
        \A2DRead/N_2180\, Q => \A2DRead/DataInReg[7]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I24_Y\ : NOR2B
      port map(A => \A2DRead/N166_0\, B => \A2DRead/N163\, Y => 
        \A2DRead/N201_0\);
    
    \A2DRead/DataRegU1Ch0g_RNIFUC0T[11]\ : XOR3
      port map(A => \A2DRead/N_2013\, B => \A2DRead/N_2022\, C
         => \A2DRead/N_2011\, Y => \A2DRead/N_2026\);
    
    \ioBank69reader/dataout\ : DFN1
      port map(D => \ioBank69reader/dataout_RNO_11\, CLK => 
        Clock01, Q => do69);
    
    \bitcontrol01latch/CellIndexUpdate.un26_address_0\ : NOR2B
      port map(A => \internaddr[4]\, B => \internaddr[7]\, Y => 
        \bitcontrol01latch/un26_address_0\);
    
    \A2DRead/DataInReg_RNO_0[6]\ : NOR3B
      port map(A => \A2DRead/N_2137\, B => 
        \A2DRead/step[2]_net_1\, C => \A2DRead/step[4]_net_1\, Y
         => \A2DRead/DataInReg_325_e_0\);
    
    \bitcontrol01latch/output_RNI9S2R[5]\ : OA1
      port map(A => PnlLgtControl_c, B => \pwmdisable01[5]\, C
         => \bitcontrol01latch/bitcontrol01[5]\, Y => 
        AN2DimControl_c);
    
    \A2DRead/DataRegU1Ch1n[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1m[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1n[11]_net_1\);
    
    \iobank68debounce/DebounceTimer_RNO[0]\ : NOR2A
      port map(A => \iobank68debounce/un1_previousposition7\, B
         => \iobank68debounce/DebounceTimer[0]_net_1\, Y => 
        \iobank68debounce/N_67\);
    
    \discretedutycycle01/cellindex_RNO[3]\ : NOR3B
      port map(A => 
        \discretedutycycle01/cellindex_1_sqmuxa_1_0_net_1\, B => 
        \discretedutycycle01/cellindex_n3_tz\, C => 
        \discretedutycycle01/un6_address\, Y => 
        \discretedutycycle01/cellindex_n3\);
    
    \A2DRead/DataRegU1Ch0b[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0a[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0b[6]_net_1\);
    
    \bitcontrol01latch/output[6]\ : DFN1
      port map(D => \bitcontrol01latch/output_RNO_1[6]\, CLK => 
        Clock01, Q => \bitcontrol01latch/bitcontrol01[6]\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I57_un1_Y\ : 
        NOR2B
      port map(A => \A2DRead/N218\, B => \A2DRead/N225_0\, Y => 
        \A2DRead/I57_un1_Y_0\);
    
    \iobank64debounce/DebounceTimer[1]\ : DFN1E1
      port map(D => \iobank64debounce/DebounceTimer_n1\, CLK => 
        Clock03, E => \iobank64debounce/DebounceTimere\, Q => 
        \iobank64debounce/DebounceTimer[1]_net_1\);
    
    \iobank6Bdebounce/DebounceTimer_RNO[5]\ : XA1
      port map(A => \iobank6Bdebounce/DebounceTimer_c4\, B => 
        \iobank6Bdebounce/DebounceTimer[5]_net_1\, C => 
        \iobank6Bdebounce/un1_previousposition7\, Y => 
        \iobank6Bdebounce/DebounceTimer_n5\);
    
    \ioBank66reader/cellindex_RNIELCQ[1]\ : NOR3C
      port map(A => \ioBank6Areader.parallelholdreg_0_sqmuxa_3\, 
        B => \ioBank66reader/parallelholdreg_0_sqmuxa_0\, C => 
        \ioBank66reader.parallelholdreg_0_sqmuxa_1\, Y => 
        \ioBank66reader/parallelholdreg_0_sqmuxa_3_net_1\);
    
    \A2DRead/DataRegU1Ch0e[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0d[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0e[11]_net_1\);
    
    \iobank67debounce/DebounceTimer_RNO[6]\ : XA1
      port map(A => \iobank67debounce/DebounceTimer_c5\, B => 
        \iobank67debounce/DebounceTimer[6]_net_1\, C => 
        \iobank67debounce/un1_previousposition7\, Y => 
        \iobank67debounce/DebounceTimer_n6\);
    
    \A2DRead/DataRegU1Ch0g_RNI4IFD[2]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0g[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch0i[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch0h[2]_net_1\, Y => \A2DRead/N_1726\);
    
    \A2DRead/DataRegU1Ch0d_RNI7TAG[7]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0c[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch0e[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch0d[7]_net_1\, Y => \A2DRead/N_1850\);
    
    \pwmdisable01latch/output_RNO[7]\ : NOR2A
      port map(A => \pwmdisable01latch/N_51\, B => LogicReset_c, 
        Y => \pwmdisable01latch/output_RNO_1[7]\);
    
    \AN1DimControl_pad/U0/U0\ : IOPAD_TRI
      port map(D => \AN1DimControl_pad/U0/NET1\, E => 
        \AN1DimControl_pad/U0/NET2\, PAD => AN1DimControl);
    
    \A2DRead/DataRegU1Ch1f_RNI500O[7]\ : XOR3
      port map(A => \A2DRead/N_1478\, B => 
        \A2DRead/DataRegU1Ch1f[7]_net_1\, C => \A2DRead/N_1476\, 
        Y => \A2DRead/N_1513\);
    
    \pwmdisable01latch/paralleldata_RNO_1[3]\ : NOR3B
      port map(A => \pwmdisable01latch/output_0_sqmuxa_net_1\, B
         => \pwmdisable01latch/cellindex_c1\, C => 
        \pwmdisable01latch/cellindex[2]_net_1\, Y => 
        \pwmdisable01latch/N_97\);
    
    \A2DRead/DataRegU1Ch1p_RNIVBI4[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1b[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1p[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch1a[1]_net_1\, Y => \A2DRead/N_1359\);
    
    \A2DRead/DataRegU1Ch0f_RNI0MHV2_0[8]\ : MAJ3
      port map(A => \A2DRead/N_1912\, B => \A2DRead/N_1889\, C
         => \A2DRead/N_1914\, Y => \A2DRead/N_1923\);
    
    \iobank64debounce/DebounceTimer_RNO_0[6]\ : NOR2B
      port map(A => \iobank64debounce/DebounceTimer_c4\, B => 
        \iobank64debounce/DebounceTimer[5]_net_1\, Y => 
        \iobank64debounce/DebounceTimer_c5\);
    
    \A2DRead/DataRegU1Ch1g_RNIMD2Q_0[7]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1i[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch1h[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch1g[7]_net_1\, Y => \A2DRead/N_1512\);
    
    \A2DRead/DataRegU1Ch0f[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0e[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0f[6]_net_1\);
    
    \iobank6Bdebounce/DebounceTimer[0]\ : DFN1E1
      port map(D => \iobank6Bdebounce/N_67\, CLK => Clock03, E
         => \iobank6Bdebounce/DebounceTimere\, Q => 
        \iobank6Bdebounce/DebounceTimer[0]_net_1\);
    
    \A2DRead/DataRegU1Ch1c[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1b[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1c[3]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I4_P0N_s\ : AO1
      port map(A => \A2DRead/N_1555\, B => \A2DRead/N_1528\, C
         => \A2DRead/N_1585\, Y => 
        \A2DRead/ADD_11x11_fast_I4_P0N_out\);
    
    \heart_beat/HeartBeatOut_RNO\ : OAI1
      port map(A => \heart_beat/un1_counterlt15\, B => 
        \heart_beat/un1_counterlto15_1\, C => 
        \heart_beat/un1_counterlto18_1\, Y => 
        \heart_beat/HeartBeatOut_RNO_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNI620M2[5]\ : XOR3
      port map(A => \A2DRead/N_1483\, B => \A2DRead/N_1481\, C
         => \A2DRead/N_1458\, Y => \A2DRead/N_1491\);
    
    \iobank62debounce/IOOut_RNO[0]\ : MX2B
      port map(A => \iobank62debounce/PreviousPosition[0]_net_1\, 
        B => \dhold62[0]\, S => LogicReset_c, Y => 
        \iobank62debounce/IOOut_3[0]\);
    
    \A2D00reader/parallelholdreg[5]\ : DFN1
      port map(D => \A2D00reader/parallelholdreg_RNO[5]_net_1\, 
        CLK => Clock01, Q => 
        \A2D00reader/parallelholdreg[5]_net_1\);
    
    \iobank6Adebounce/DebounceTimer[1]\ : DFN1E1
      port map(D => \iobank6Adebounce/DebounceTimer_n1\, CLK => 
        Clock03, E => \iobank6Adebounce/DebounceTimere\, Q => 
        \iobank6Adebounce/DebounceTimer[1]_net_1\);
    
    \addresslatch/cellindex_RNI8C3B[2]\ : NOR2A
      port map(A => \addresslatch/cellindex[2]_net_1\, B => Ale_c, 
        Y => \addresslatch/paralleldata_0_e_0[7]\);
    
    \A2DRead/DataRegU1Ch0m_RNIPB711[3]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0m[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch0o[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch0n[3]_net_1\, Y => \A2DRead/N_1744\);
    
    \ioBank63reader/parallelholdreg_RNO_1[1]\ : OR2
      port map(A => \ohold63[1]\, B => SerialLoad_c, Y => 
        \ioBank63reader/parallelholdreg_7[1]\);
    
    \A2DRead/step_RNI3L2F4_7[3]\ : NOR3C
      port map(A => \A2DRead/N_114\, B => 
        \A2DRead/DataRegU1Ch0b_1_sqmuxa_0_a2_0\, C => 
        \A2DRead/step_c1\, Y => \A2DRead/DataRegU1Ch0b_1_sqmuxa\);
    
    \A2DRead/DataRegU1Ch1j_RNIDMT31_0[1]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1l[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1j[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch1k[1]_net_1\, Y => \A2DRead/N_1364\);
    
    \A2D00reader/cellindex_RNILJPK1[1]\ : NOR3C
      port map(A => \A2D00reader/parallelholdreg_0_sqmuxa_3\, B
         => \internaddr[6]\, C => \firmware.N_76\, Y => 
        \A2D00reader/parallelholdreg_0_sqmuxa_5_net_1\);
    
    \matrix_read04/stage_RNITO3_0[0]\ : NOR2A
      port map(A => \matrix_read04/stage[0]_net_1\, B => 
        \matrix_read04/stage[1]_net_1\, Y => 
        \matrix_read04/ctrl18_1\);
    
    \ioBank61reader/cellindex_RNIHQQ12[0]\ : AOI1
      port map(A => 
        \ioBank61reader/parallelholdreg_0_sqmuxa_4_net_1\, B => 
        \ioBank61reader/parallelholdreg_0_sqmuxa_3\, C => 
        SerialLoad_c, Y => 
        \ioBank61reader/parallelholdreg_1_sqmuxa\);
    
    \iobank60debounce/DebounceTimer[8]\ : DFN1
      port map(D => \iobank60debounce/DebounceTimer_RNO[8]_net_1\, 
        CLK => Clock03, Q => 
        \iobank60debounce/DebounceTimer[8]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIL0H8E[2]\ : XOR3
      port map(A => \A2DRead/N_1411\, B => \A2DRead/N_1409\, C
         => \A2DRead/N_1390\, Y => \A2DRead/N_1415\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I59_un1_Y\ : 
        NOR3C
      port map(A => \A2DRead/N195_0\, B => \A2DRead/N199\, C => 
        \A2DRead/N227_0\, Y => \A2DRead/I59_un1_Y_0\);
    
    \A2DRead/DataRegU1Ch1f_RNIA5EMR[5]\ : OR3
      port map(A => \A2DRead/N_1523\, B => 
        \A2DRead/un60_dataregu1ch1_209\, C => 
        \A2DRead/un60_dataregu1ch1_353_0\, Y => 
        \A2DRead/un60_dataregu1ch1_428_0_tz\);
    
    \A2DRead/un60_dataregu1ch0_423_RNO\ : OA1
      port map(A => \A2DRead/un60_dataregu1ch0_343_0\, B => 
        \A2DRead/un60_dataregu1ch0_423_0_tz_out\, C => 
        \A2DRead/N_1868\, Y => \A2DRead/un60_dataregu1ch0_423_0\);
    
    \iobank63debounce/PreviousPosition_RNO[1]\ : MX2B
      port map(A => \iobank63debounce/CurrentPosition[1]_net_1\, 
        B => \dhold63[1]\, S => LogicReset_c, Y => 
        \iobank63debounce/PreviousPosition_3[1]\);
    
    \A2DRead/DataRegU1Ch0m_RNISE711_0[4]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0o[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch0n[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch0m[4]_net_1\, Y => \A2DRead/N_1771\);
    
    \A2DRead/DataRegU1Ch1f_RNISDT25[10]\ : XOR3
      port map(A => \A2DRead/N_1574\, B => \A2DRead/N_1597\, C
         => \A2DRead/N_1572\, Y => \A2DRead/N_1605\);
    
    \iobank65debounce/DebounceTimer[1]\ : DFN1E1
      port map(D => \iobank65debounce/DebounceTimer_n1\, CLK => 
        Clock03, E => \iobank65debounce/DebounceTimere\, Q => 
        \iobank65debounce/DebounceTimer[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1c_RNI76TC[6]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1c[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch1e[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch1d[6]_net_1\, Y => \A2DRead/N_1475\);
    
    \ioBank67reader/dataout_RNO_0\ : NOR2B
      port map(A => \ioBank67reader/parallelholdreg[2]_net_1\, B
         => \ioBank67reader/cellindex[1]_net_1\, Y => 
        \ioBank67reader/parallelholdreg_m[2]\);
    
    \bitcontrol01latch/output[2]\ : DFN1
      port map(D => \bitcontrol01latch/output_RNO_1[2]\, CLK => 
        Clock01, Q => \bitcontrol01latch/bitcontrol01[2]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I69_Y_1\ : AO1
      port map(A => \A2DRead/N189\, B => \A2DRead/N192\, C => 
        \A2DRead/ADD_11x11_fast_I69_Y_0\, Y => 
        \A2DRead/ADD_11x11_fast_I69_Y_1_0\);
    
    \A2DRead/DataRegU1Ch0o_RNI6VLA2[12]\ : XOR3
      port map(A => \A2DRead/N_1995\, B => \A2DRead/N_1991\, C
         => \A2DRead/N_1993\, Y => \A2DRead/N_2018\);
    
    \bitcontrol01latch/paralleldata_RNO_1[1]\ : NOR3B
      port map(A => \bitcontrol01latch/output_0_sqmuxa_net_1\, B
         => \bitcontrol01latch/un1_paralleldata_1[1]\, C => 
        \bitcontrol01latch/cellindex[2]_net_1\, Y => 
        \bitcontrol01latch/N_95\);
    
    \A2DRead/AdClock_RNO_0\ : MX2
      port map(A => \A2DRead/N_6_0\, B => \A2DRead/N_14\, S => 
        \A2DRead/step[4]_net_1\, Y => \A2DRead/N_15\);
    
    \ioBank68reader/parallelholdreg[2]\ : DFN1
      port map(D => \ioBank68reader/parallelholdreg_RNO_9[2]\, 
        CLK => Clock01, Q => 
        \ioBank68reader/parallelholdreg[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0f[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0e[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0f[1]_net_1\);
    
    \firmware/parallelholdreg_RNO_0[0]\ : NOR2A
      port map(A => \internaddr[0]\, B => \internaddr[1]\, Y => 
        \firmware/parallelholdreg_2_sqmuxa_i_i_a2_0\);
    
    \AN4NRMControl_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => AN4NRMControl_c, E => \VCC\, DOUT => 
        \AN4NRMControl_pad/U0/NET1\, EOUT => 
        \AN4NRMControl_pad/U0/NET2\);
    
    \A2DRead/DataRegU1Ch1l[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1k[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1l[4]_net_1\);
    
    \iobank67debounce/Changing_RNIOLPI\ : NOR2
      port map(A => \iobank67debounce/Changing_net_1\, B => 
        LogicReset_c, Y => 
        \iobank67debounce/un1_previousposition7\);
    
    \A2DRead/DataRegU1Ch0d_RNIDPHP2_0[2]\ : MAJ3
      port map(A => \A2DRead/N_1718\, B => \A2DRead/N_1722\, C
         => \A2DRead/N_1720\, Y => \A2DRead/N_1733\);
    
    \ioBank6Areader/parallelholdreg_RNO_1[1]\ : OR2
      port map(A => \ohold6A[1]\, B => SerialLoad_c, Y => 
        \ioBank6Areader/parallelholdreg_7[1]\);
    
    \A2DRead/DataRegU1Ch1p_RNIFCHN1[12]\ : XOR3
      port map(A => \A2DRead/N_1648\, B => \A2DRead/N_1644\, C
         => \A2DRead/N_1646\, Y => \A2DRead/N_1671\);
    
    \A2DRead/DataRegU1Ch0a[8]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[8]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch0a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0a[8]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIG2HF6_0[2]\ : MIN3
      port map(A => \A2DRead/N_1370\, B => \A2DRead/N_1383\, C
         => \A2DRead/N_1381\, Y => \A2DRead/un60_N_1_i\);
    
    \snkpout01/PWMOut_3_0_I_2\ : XNOR2
      port map(A => \snkpout01/counter[9]_net_1\, B => 
        \dutycycle01[9]\, Y => 
        \snkpout01/DWACT_BL_EQUAL_0_E_0[1]\);
    
    \addresslatch/paralleldata_RNO[6]\ : NOR2A
      port map(A => \addresslatch/N_89_mux\, B => LogicReset_c, Y
         => \addresslatch/paralleldata_RNO[6]_net_1\);
    
    \A2DRead/DataRegU1Ch1p_RNIF8Q6_0[10]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1b[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch1a[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch1p[10]_net_1\, Y => \A2DRead/N_1590\);
    
    \A2DRead/DataRegU1Ch1i[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1h[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1i[4]_net_1\);
    
    \addresslatch/paralleldata_RNO[3]\ : NOR2A
      port map(A => \addresslatch/N_86_mux\, B => LogicReset_c, Y
         => \addresslatch/paralleldata_RNO[3]_net_1\);
    
    \ioBank67reader/parallelholdreg[0]\ : DFN1
      port map(D => \ioBank67reader/parallelholdreg_RNO_8[0]\, 
        CLK => Clock01, Q => 
        \ioBank67reader/parallelholdreg[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNINJQC_0[12]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0i[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch0h[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch0g[12]_net_1\, Y => \A2DRead/N_1999\);
    
    \matrix_read04/stage_RNO[1]\ : NOR3A
      port map(A => \matrix_read04/N_26\, B => 
        \matrix_read04/N_66\, C => LogicReset_c, Y => 
        \matrix_read04/N_21\);
    
    \iobank60debounce/DebounceTimer[1]\ : DFN1E1
      port map(D => \iobank60debounce/DebounceTimer_n1\, CLK => 
        Clock03, E => \iobank60debounce/DebounceTimere\, Q => 
        \iobank60debounce/DebounceTimer[1]_net_1\);
    
    \A2D00reader/parallelholdreg_RNO[8]\ : OR2
      port map(A => \A2D00reader/N_99\, B => LogicReset_c, Y => 
        \A2D00reader/parallelholdreg_RNO[8]_net_1\);
    
    \pwmdisable01latch/paralleldata_RNO_1[2]\ : NOR3B
      port map(A => \pwmdisable01latch/output_0_sqmuxa_net_1\, B
         => \pwmdisable01latch/un1_paralleldata_1[2]\, C => 
        \pwmdisable01latch/cellindex[2]_net_1\, Y => 
        \pwmdisable01latch/N_96\);
    
    \externenablelatch/output_RNO_0[6]\ : MX2
      port map(A => \ExternalHardwareEn_c[6]\, B => 
        \externenablelatch/paralleldata[6]_net_1\, S => 
        \externenablelatch/output_0_sqmuxa_net_1\, Y => 
        \externenablelatch/N_52\);
    
    \iobank61debounce/CurrentPosition[3]\ : DFN1
      port map(D => \iobank61debounce/inputs61_c_i[3]\, CLK => 
        Clock03, Q => \iobank61debounce/CurrentPosition[3]_net_1\);
    
    \ioBank68reader/cellindex_RNIV4TA2[1]\ : AOI1
      port map(A => \ioBank68reader/parallelholdreg_0_sqmuxa_3\, 
        B => \firmware.N_76\, C => SerialLoad_c, Y => 
        \ioBank68reader/parallelholdreg_1_sqmuxa\);
    
    \snkpout01/PWMOut_3_0_I_26\ : NOR2A
      port map(A => \dutycycle01[5]\, B => 
        \snkpout01/counter[5]_net_1\, Y => 
        \snkpout01/ACT_LT3_E[0]\);
    
    \iobank60debounce/CurrentPosition_RNO[2]\ : INV
      port map(A => \inputs60_c[2]\, Y => 
        \iobank60debounce/inputs60_c_i[2]\);
    
    \A2DRead/step_RNIJF3V_1[6]\ : NOR2A
      port map(A => \A2DRead/step[3]_net_1\, B => 
        \A2DRead/step[6]_net_1\, Y => 
        \A2DRead/DataInReg_16_6_e_0[9]\);
    
    \Watch_Dog_Reset/timercount[9]\ : DFN1E0
      port map(D => \Watch_Dog_Reset/timercount_n9\, CLK => 
        \counter[1]\, E => \Watch_Dog_Reset/timercount_0_sqmuxa\, 
        Q => \Watch_Dog_Reset/timercount[9]_net_1\);
    
    \iobank66debounce/DebounceTimer_RNO[0]\ : NOR2A
      port map(A => \iobank66debounce/un1_previousposition7\, B
         => \iobank66debounce/DebounceTimer[0]_net_1\, Y => 
        \iobank66debounce/N_67\);
    
    \AdDout_pad/U0/U1\ : IOIN_IB
      port map(YIN => \AdDout_pad/U0/NET1\, Y => AdDout_c);
    
    \A2DRead/DatHldRegU1Ch1[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch1_1_sqmuxa\, Q => 
        \ohold51[4]\);
    
    \A2D01reader/parallelholdreg[2]\ : DFN1
      port map(D => \A2D01reader/parallelholdreg_RNO_0[2]_net_1\, 
        CLK => Clock01, Q => 
        \A2D01reader/parallelholdreg[2]_net_1\);
    
    \discretedutycycle01/output[0]\ : DFN1
      port map(D => \discretedutycycle01/output_RNO_3[0]\, CLK
         => Clock01, Q => \dutycycle01[0]\);
    
    \A2DRead/step_RNO[3]\ : XA1B
      port map(A => \A2DRead/step[3]_net_1\, B => 
        \A2DRead/step_c1\, C => LogicReset_c, Y => \A2DRead/N_53\);
    
    \A2DRead/DataRegU1Ch0g_RNIGUFD_0[6]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0i[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch0h[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch0g[6]_net_1\, Y => \A2DRead/N_1831\);
    
    \A2D01reader/parallelholdreg_RNO[8]\ : OR2
      port map(A => \A2D01reader/N_99\, B => LogicReset_c, Y => 
        \A2D01reader/parallelholdreg_RNO_0[8]_net_1\);
    
    \firmware/parallelholdreg_RNO[6]\ : OR3A
      port map(A => \ioBank62reader.parallelholdreg_0_sqmuxa_4\, 
        B => \firmware/un1_reset_0_o2_3_net_1\, C => 
        \firmware/N_79\, Y => 
        \firmware/parallelholdreg_RNO[6]_net_1\);
    
    \A2D01reader/dataout_RNO_8\ : MX2
      port map(A => \A2D01reader/parallelholdreg[2]_net_1\, B => 
        \A2D01reader/parallelholdreg[10]_net_1\, S => 
        \A2D01reader/cellindex[3]_net_1\, Y => \A2D01reader/N_70\);
    
    \A2DRead/un60_dataregu1ch0_277_RNI921KM1\ : MAJ3
      port map(A => \A2DRead/N_1815\, B => \A2DRead/N_1817\, C
         => \A2DRead/N_1842\, Y => \A2DRead/N_1847\);
    
    \iobank61debounce/DebounceTimer[8]\ : DFN1
      port map(D => 
        \iobank61debounce/DebounceTimer_RNO_0[8]_net_1\, CLK => 
        Clock03, Q => \iobank61debounce/DebounceTimer[8]_net_1\);
    
    \iobank67debounce/CurrentPosition[0]\ : DFN1
      port map(D => \dhold67_i[0]\, CLK => Clock03, Q => 
        \iobank67debounce/CurrentPosition[0]_net_1\);
    
    \ioBank63reader/cellindex_RNIJ26L[1]\ : OR2
      port map(A => \ioBank63reader/cellindex[1]_net_1\, B => 
        SerialLoad_c, Y => \ioBank63reader/un1_latch_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I69_Y_2\ : AO1
      port map(A => \A2DRead/N214_0\, B => \A2DRead/N221_0\, C
         => \A2DRead/ADD_11x11_fast_I69_Y_1_0\, Y => 
        \A2DRead/ADD_11x11_fast_I69_Y_2_0\);
    
    \A2DRead/DataRegU1Ch1a[3]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[3]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch1a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1a[3]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I4_G0N\ : NOR2B
      port map(A => \A2DRead/N_1932\, B => \A2DRead/N_1905\, Y
         => \A2DRead/N165\);
    
    \ioBank65reader/dataout_RNO_0\ : NOR2B
      port map(A => \ioBank65reader/parallelholdreg[2]_net_1\, B
         => \ioBank65reader/cellindex[1]_net_1\, Y => 
        \ioBank65reader/parallelholdreg_m[2]\);
    
    \iobank66debounce/PreviousPosition[1]\ : DFN1
      port map(D => \iobank66debounce/PreviousPosition_3[1]\, CLK
         => Clock03, Q => 
        \iobank66debounce/PreviousPosition[1]_net_1\);
    
    \iobank61debounce/PreviousPosition[0]\ : DFN1
      port map(D => \iobank61debounce/PreviousPosition_3[0]\, CLK
         => Clock03, Q => 
        \iobank61debounce/PreviousPosition[0]_net_1\);
    
    \heart_beat/un1_counter_1_m16\ : NOR3C
      port map(A => \heart_beat/counter[10]_net_1\, B => 
        \heart_beat/N_15_i\, C => \heart_beat/counter[11]_net_1\, 
        Y => \heart_beat/N_17_i\);
    
    \matrix_read03/stage_RNO[0]\ : NOR2
      port map(A => LogicReset_c, B => 
        \matrix_read03/stage[0]_net_1\, Y => \matrix_read03/N_58\);
    
    \ioBank67reader/cellindex_RNI5B4V[1]\ : NOR2
      port map(A => \ioBank67reader/cellindex[1]_net_1\, B => 
        \ioBank67reader/cellindex[0]_net_1\, Y => 
        \ioBank67reader/_decfrac0\);
    
    \matrix_read04/data01[1]\ : DFN1E1
      port map(D => \inputs67_c[1]\, CLK => Clock03, E => 
        \matrix_read04/ctrl12\, Q => 
        \matrix_read04/data01[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1f[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1e[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1f[9]_net_1\);
    
    \A2DRead/DataRegU1Ch1p_RNI8GTKR_0[12]\ : MAJ3
      port map(A => \A2DRead/N_1675\, B => \A2DRead/N_1666\, C
         => \A2DRead/N_1664\, Y => \A2DRead/N_1680\);
    
    \A2DRead/DataRegU1Ch0m_RNIVH711[5]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0m[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch0o[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch0n[5]_net_1\, Y => \A2DRead/N_1798\);
    
    \iobank64debounce/Changing_RNO\ : XOR2
      port map(A => \iobank64debounce/PreviousPosition[0]_net_1\, 
        B => \iobank64debounce/CurrentPosition[0]_net_1\, Y => 
        \iobank64debounce/Changing_0\);
    
    \A2DRead/DataRegU1Ch0m[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0l[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0m[6]_net_1\);
    
    \ExternalHardwareEn_pad[5]/U0/U0\ : IOPAD_TRI
      port map(D => \ExternalHardwareEn_pad[5]/U0/NET1\, E => 
        \ExternalHardwareEn_pad[5]/U0/NET2\, PAD => 
        ExternalHardwareEn(5));
    
    \A2DRead/DataRegU1Ch1g_RNISJ2Q[9]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1g[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch1i[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch1h[9]_net_1\, Y => \A2DRead/N_1567\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I5_P0N\ : OR2
      port map(A => \A2DRead/N_1960\, B => \A2DRead/N_1933\, Y
         => \A2DRead/N169\);
    
    \bitcontrol01latch/cellindex_RNIN4LO_1[1]\ : NOR2A
      port map(A => \bitcontrol01latch/cellindex[0]_net_1\, B => 
        \bitcontrol01latch/cellindex[1]_net_1\, Y => 
        \bitcontrol01latch/un1_paralleldata_1[1]\);
    
    \iobank61debounce/DebounceTimer_RNO_0[5]\ : NOR2B
      port map(A => \iobank61debounce/DebounceTimer_c3\, B => 
        \iobank61debounce/DebounceTimer[4]_net_1\, Y => 
        \iobank61debounce/DebounceTimer_c4\);
    
    \inputs60_pad[2]/U0/U1\ : IOIN_IB
      port map(YIN => \inputs60_pad[2]/U0/NET1\, Y => 
        \inputs60_c[2]\);
    
    \snkpout01/counter[11]\ : DFN1
      port map(D => \snkpout01/counter_n11\, CLK => Clock04, Q
         => \snkpout01/counter[11]_net_1\);
    
    \A2DRead/DataRegU1Ch1f[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1e[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1f[11]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNI0MHV2[8]\ : XOR3
      port map(A => \A2DRead/N_1914\, B => \A2DRead/N_1912\, C
         => \A2DRead/N_1889\, Y => \A2DRead/N_1922\);
    
    \discretedutycycle01/output_RNO[6]\ : NOR2A
      port map(A => \discretedutycycle01/N_66\, B => LogicReset_c, 
        Y => \discretedutycycle01/output_RNO_3[6]\);
    
    \A2DRead/DataRegU1Ch1f_RNIDA1M2_0[8]\ : MAJ3
      port map(A => \A2DRead/N_1565\, B => \A2DRead/N_1542\, C
         => \A2DRead/N_1567\, Y => \A2DRead/N_1576\);
    
    \iobank6Adebounce/DebounceTimer_RNO_0[5]\ : NOR2B
      port map(A => \iobank6Adebounce/DebounceTimer_c3\, B => 
        \iobank6Adebounce/DebounceTimer[4]_net_1\, Y => 
        \iobank6Adebounce/DebounceTimer_c4\);
    
    \clock_master/counter_4_I_5\ : AND2
      port map(A => Clock03, B => LogicReset_c, Y => 
        \clock_master/DWACT_ADD_CI_0_g_array_0_2[0]\);
    
    \A2DRead/DataRegU1Ch0o[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0n[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0o[9]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_259\ : XOR2
      port map(A => \A2DRead/N_1798\, B => 
        \A2DRead/un60_dataregu1ch0_259_0\, Y => \A2DRead/N_1808\);
    
    \A2DRead/DataRegU1Ch1o_RNIDTLUQ2[5]\ : OR2
      port map(A => \A2DRead/N_1555\, B => \A2DRead/N_1528\, Y
         => \A2DRead/un60_dataregu1ch1_503_0_tz\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I50_Y\ : OR2
      port map(A => \A2DRead/I50_un1_Y\, B => \A2DRead/N206\, Y
         => \A2DRead/N231_0\);
    
    \A2DRead/DataRegU1Ch0f_RNIGLKQ1[5]\ : XOR3
      port map(A => \A2DRead/N_1769\, B => 
        \A2DRead/DataRegU1Ch0f[5]_net_1\, C => \A2DRead/N_1767\, 
        Y => \A2DRead/N_1804\);
    
    \iobank6Bdebounce/DebounceTimer_RNO[3]\ : XA1
      port map(A => \iobank6Bdebounce/DebounceTimer_c2\, B => 
        \iobank6Bdebounce/DebounceTimer[3]_net_1\, C => 
        \iobank6Bdebounce/un1_previousposition7\, Y => 
        \iobank6Bdebounce/DebounceTimer_n3\);
    
    \A2DRead/DataRegU1Ch1p_RNI8LI4[4]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1b[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch1p[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch1a[4]_net_1\, Y => \A2DRead/N_1421\);
    
    \A2D00reader/cellindex_RNIK1DI[1]\ : NOR2
      port map(A => \A2D00reader/cellindex[3]_net_1\, B => 
        \A2D00reader/cellindex[1]_net_1\, Y => 
        \A2D00reader/parallelholdreg_0_sqmuxa_1\);
    
    \A2DRead/DataRegU1Ch1[7]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch1[6]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch1_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1[7]_net_1\);
    
    \A2D01reader/parallelholdreg_RNO_0[11]\ : MX2
      port map(A => \A2D01reader/parallelholdreg_7[11]\, B => 
        \A2D01reader/parallelholdreg[11]_net_1\, S => 
        \A2D01reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D01reader/N_102\);
    
    \ioBank6Breader/parallelholdreg_RNO_1[2]\ : OR2
      port map(A => \ohold6B[2]\, B => SerialLoad_c, Y => 
        \ioBank6Breader/parallelholdreg_7[2]\);
    
    \A2D00reader/parallelholdreg_RNO[4]\ : OR2
      port map(A => \A2D00reader/N_95\, B => LogicReset_c, Y => 
        \A2D00reader/parallelholdreg_RNO[4]_net_1\);
    
    \snkpout01/PWMOut_3_0_I_17\ : AO1C
      port map(A => \snkpout01/counter[10]_net_1\, B => 
        \dutycycle01[10]\, C => \snkpout01/N_12\, Y => 
        \snkpout01/N_18\);
    
    \iobank65debounce/DebounceTimer_RNIUET21_0[8]\ : OR2B
      port map(A => \iobank65debounce/DebounceTimer[8]_net_1\, B
         => \iobank65debounce/un1_previousposition7\, Y => 
        \iobank65debounce/DebounceTimere\);
    
    SerialLoad_pad_RNIK82F : CLKINT
      port map(A => SerialLoad_pad, Y => SerialLoad_c);
    
    \A2DRead/step_RNI2RRG2[4]\ : NOR3B
      port map(A => \A2DRead/step[4]_net_1\, B => \A2DRead/N_42\, 
        C => \A2DRead/N_62\, Y => \A2DRead/m36_0\);
    
    \iobank64debounce/DebounceTimer[8]\ : DFN1
      port map(D => \iobank64debounce/DebounceTimer_RNO_3[8]\, 
        CLK => Clock03, Q => 
        \iobank64debounce/DebounceTimer[8]_net_1\);
    
    \Watch_Dog_Reset/timercount_RNO[10]\ : XA1B
      port map(A => \Watch_Dog_Reset/timercount[10]_net_1\, B => 
        \Watch_Dog_Reset/N_10_0\, C => ResetIn_c, Y => 
        \Watch_Dog_Reset/timercount_n10\);
    
    \iobank62debounce/PreviousPosition_RNO[0]\ : MX2B
      port map(A => \iobank62debounce/CurrentPosition[0]_net_1\, 
        B => \dhold62[0]\, S => LogicReset_c, Y => 
        \iobank62debounce/PreviousPosition_3[0]\);
    
    \firmware/parallelholdreg[4]\ : DFN1E1
      port map(D => \firmware/N_59\, CLK => Clock01, E => 
        \firmware/N_14\, Q => \firmware/parallelholdreg[4]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNIENMJL[5]\ : XOR3
      port map(A => \A2DRead/N_1810\, B => \A2DRead/N_1812\, C
         => \A2DRead/N_1785\, Y => \A2DRead/N_1816\);
    
    \uCReset_pad/U0/U0\ : IOPAD_TRI
      port map(D => \uCReset_pad/U0/NET1\, E => 
        \uCReset_pad/U0/NET2\, PAD => uCReset);
    
    \iobank62debounce/DebounceTimer_RNIOGTT[8]\ : OA1C
      port map(A => \iobank62debounce/DebounceTimer[8]_net_1\, B
         => \iobank62debounce/Changing_net_1\, C => LogicReset_c, 
        Y => \iobank62debounce/IOOut_0_sqmuxa\);
    
    \iobank66debounce/DebounceTimer[6]\ : DFN1E1
      port map(D => \iobank66debounce/DebounceTimer_n6\, CLK => 
        Clock03, E => \iobank66debounce/DebounceTimere\, Q => 
        \iobank66debounce/DebounceTimer[6]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNICNQCO2_0[5]\ : XOR3
      port map(A => \A2DRead/N_1816\, B => \A2DRead/N_1818\, C
         => \A2DRead/N_1791\, Y => \A2DRead/N_1820\);
    
    \A2D01reader/dataout_RNO_1\ : MX2
      port map(A => \A2D01reader/N_71\, B => \A2D01reader/N_74\, 
        S => \A2D01reader/cellindex[0]_net_1\, Y => 
        \A2D01reader/N_75\);
    
    \A2D01reader/cellindex_RNIK54F[2]\ : NOR2
      port map(A => \A2D01reader/cellindex[2]_net_1\, B => 
        \A2D01reader/cellindex[0]_net_1\, Y => 
        \A2D01reader/parallelholdreg_0_sqmuxa_0\);
    
    \bitcontrol01latch/CellIndexUpdate.un26_address_2\ : NOR3C
      port map(A => \bitcontrol01latch/un26_address_0\, B => 
        \externenablelatch.CellIndexUpdate.un39_address_4\, C => 
        \A2D01reader.parallelholdreg_0_sqmuxa_5\, Y => 
        \bitcontrol01latch/un26_address_2\);
    
    \A2DRead/step[8]\ : DFN1E0
      port map(D => \A2DRead/N_43\, CLK => Clock04, E => 
        \A2DRead/N_59\, Q => \A2DRead/step[8]_net_1\);
    
    \ioBank64reader/parallelholdreg[1]\ : DFN1
      port map(D => \ioBank64reader/parallelholdreg_RNO_5[1]\, 
        CLK => Clock01, Q => 
        \ioBank64reader/parallelholdreg[1]_net_1\);
    
    \ioBank61reader/parallelholdreg_0_sqmuxa_4\ : NOR2B
      port map(A => \A2D01reader.parallelholdreg_0_sqmuxa_5\, B
         => \A2D01reader.parallelholdreg_0_sqmuxa_4\, Y => 
        \ioBank61reader/parallelholdreg_0_sqmuxa_4_net_1\);
    
    \A2DRead/DataRegU1Ch1o[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1n[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1o[6]_net_1\);
    
    \iobank62debounce/DebounceTimer_RNO_0[3]\ : NOR2B
      port map(A => \iobank62debounce/DebounceTimer_c1\, B => 
        \iobank62debounce/DebounceTimer[2]_net_1\, Y => 
        \iobank62debounce/DebounceTimer_c2\);
    
    \A2DRead/DataRegU1Ch0d_RNI80HQ_0[11]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0e[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch0d[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch0c[11]_net_1\, Y => \A2DRead/N_1963\);
    
    \snkpout01/counter_RNIV1U1[4]\ : OR2B
      port map(A => \snkpout01/counter[4]_net_1\, B => 
        \snkpout01/counter[5]_net_1\, Y => 
        \snkpout01/un1_counterlto5\);
    
    \iobank67debounce/IOOut_RNO[1]\ : MX2B
      port map(A => \iobank67debounce/PreviousPosition[1]_net_1\, 
        B => \dhold67[1]\, S => LogicReset_c, Y => 
        \iobank67debounce/IOOut_3[1]\);
    
    \heart_beat/un1_counter_1_m23\ : XOR2
      port map(A => \heart_beat/N_21_i\, B => 
        \heart_beat/counter[16]_net_1\, Y => \heart_beat/m23\);
    
    \ioBank61reader/cellindex[1]\ : DFN1
      port map(D => \ioBank61reader/cellindex_6[1]\, CLK => 
        SerialClock_c, Q => \ioBank61reader/cellindex[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1e_RNIEIFP_0[12]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1e[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch1c[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch1d[12]_net_1\, Y => \A2DRead/N_1644\);
    
    \iobank64debounce/PreviousPosition[0]\ : DFN1
      port map(D => \iobank64debounce/PreviousPosition_3[0]\, CLK
         => Clock03, Q => 
        \iobank64debounce/PreviousPosition[0]_net_1\);
    
    \matrix_read04/ctrl_RNO[3]\ : OR3C
      port map(A => \matrix_read04/N_65\, B => 
        \matrix_read04/N_63\, C => \matrix_read04/N_26\, Y => 
        \matrix_read04/ctrl_RNO_0[3]\);
    
    \A2DRead/DataRegU1Ch1j_RNIGPT31_0[2]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1l[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch1k[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch1j[2]_net_1\, Y => \A2DRead/N_1378\);
    
    \A2DRead/DataInReg[1]\ : DFN1E1
      port map(D => AdDout_c, CLK => Clock04, E => 
        \A2DRead/N_2175\, Q => \A2DRead/DataInReg[1]_net_1\);
    
    \ioBank60reader/dataout_RNO_1\ : MX2
      port map(A => \ioBank60reader/parallelholdreg[0]_net_1\, B
         => \ioBank60reader/parallelholdreg[2]_net_1\, S => 
        \ioBank60reader/cellindex[1]_net_1\, Y => 
        \ioBank60reader/N_33\);
    
    \A2DRead/DataRegU1Ch0j_RNIPPBN[6]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0j[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch0l[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch0k[6]_net_1\, Y => \A2DRead/N_1828\);
    
    \A2DRead/DataRegU1Ch1h[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1g[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1h[2]_net_1\);
    
    \ioBank69reader/parallelholdreg_RNO_1[0]\ : OR2
      port map(A => \ohold69[0]\, B => SerialLoad_c, Y => 
        \ioBank69reader/parallelholdreg_7[0]\);
    
    \A2DRead/DataRegU1Ch1l[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1k[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1l[6]_net_1\);
    
    \snkpout01/counter_RNI1OQ4[4]\ : NOR2B
      port map(A => \snkpout01/counter_c3\, B => 
        \snkpout01/counter[4]_net_1\, Y => \snkpout01/counter_c4\);
    
    \iobank6Bdebounce/PreviousPosition[2]\ : DFN1
      port map(D => \iobank6Bdebounce/PreviousPosition_3[2]\, CLK
         => Clock03, Q => 
        \iobank6Bdebounce/PreviousPosition[2]_net_1\);
    
    \iobank66debounce/DebounceTimer_RNI0PI41[8]\ : OA1C
      port map(A => \iobank66debounce/DebounceTimer[8]_net_1\, B
         => \iobank66debounce/Changing_net_1\, C => LogicReset_c, 
        Y => \iobank66debounce/IOOut_0_sqmuxa\);
    
    \iobank67debounce/DebounceTimer_RNO[7]\ : XA1
      port map(A => \iobank67debounce/DebounceTimer_c6\, B => 
        \iobank67debounce/DebounceTimer[7]_net_1\, C => 
        \iobank67debounce/un1_previousposition7\, Y => 
        \iobank67debounce/DebounceTimer_n7\);
    
    \A2DRead/DataRegU1Ch1[16]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch1[15]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch1_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1[16]_net_1\);
    
    \A2DRead/DataRegU1Ch0b[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0a[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0b[2]_net_1\);
    
    \matrix_read03/dataOut03_RNIV9RA[1]\ : INV
      port map(A => \dhold65[1]\, Y => \dhold65_i[1]\);
    
    \A2DRead/DataRegU1Ch0j[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0i[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0j[11]_net_1\);
    
    \iobank6Adebounce/DebounceTimer[4]\ : DFN1E1
      port map(D => \iobank6Adebounce/DebounceTimer_n4\, CLK => 
        Clock03, E => \iobank6Adebounce/DebounceTimere\, Q => 
        \iobank6Adebounce/DebounceTimer[4]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I86_Y\ : AX1D
      port map(A => \A2DRead/N225\, B => \A2DRead/I63_un1_Y_0\, C
         => \A2DRead/ADD_11x11_fast_I86_Y_0_0\, Y => 
        \A2DRead/un60_dataregu1ch0[9]\);
    
    \bitcontrol01latch/output_RNO[7]\ : OR2
      port map(A => \bitcontrol01latch/N_51\, B => LogicReset_c, 
        Y => \bitcontrol01latch/output_RNO_0[7]_net_1\);
    
    \A2DRead/DataRegU1Ch1[14]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch1[13]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch1_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1[14]_net_1\);
    
    \iobank66debounce/DebounceTimer_RNI3P2S[1]\ : NOR2B
      port map(A => \iobank66debounce/DebounceTimer[0]_net_1\, B
         => \iobank66debounce/DebounceTimer[1]_net_1\, Y => 
        \iobank66debounce/DebounceTimer_c1\);
    
    \clock_master/counter[1]\ : DFN1
      port map(D => \clock_master/counter_4_0_0[1]\, CLK => 
        XCLK_c, Q => \counter[1]\);
    
    \discretedutycycle01/paralleldata_RNO_0[9]\ : MX2
      port map(A => \discretedutycycle01/paralleldata[9]_net_1\, 
        B => SerialIn_c, S => \discretedutycycle01/N_136\, Y => 
        \discretedutycycle01/N_136_mux\);
    
    \A2DRead/DataRegU1Ch0d_RNI8LIP2[5]\ : MAJ3
      port map(A => \A2DRead/N_1794\, B => \A2DRead/N_1798\, C
         => \A2DRead/N_1796\, Y => \A2DRead/N_1809\);
    
    \iobank67debounce/DebounceTimer[1]\ : DFN1E1
      port map(D => \iobank67debounce/DebounceTimer_n1\, CLK => 
        Clock03, E => \iobank67debounce/DebounceTimere\, Q => 
        \iobank67debounce/DebounceTimer[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1p_RNI1IA17_0[11]\ : MAJ3
      port map(A => \A2DRead/N_1627\, B => \A2DRead/N_1604\, C
         => \A2DRead/N_1629\, Y => \A2DRead/N_1636\);
    
    \A2DRead/DataRegU1Ch0g_RNIKM362_0[7]\ : MAJ3
      port map(A => \A2DRead/N_1855\, B => \A2DRead/N_1859\, C
         => \A2DRead/N_1857\, Y => \A2DRead/N_1891\);
    
    \A2DRead/DataInReg_RNO[8]\ : NOR3C
      port map(A => \A2DRead/i8_mux_0\, B => \A2DRead/m50_0\, C
         => \A2DRead/DataInReg_327_e_0\, Y => \A2DRead/N_2181\);
    
    \matrix_read03/stage_RNI1DRL_0[5]\ : NOR2A
      port map(A => \matrix_read03/stage[5]_net_1\, B => 
        \matrix_read03/stage[2]_net_1\, Y => \matrix_read03/N_65\);
    
    \firmware/parallelholdreg_RNO[4]\ : OR3B
      port map(A => \ioBank62reader.parallelholdreg_0_sqmuxa_4\, 
        B => \firmware.N_75\, C => 
        \firmware/un1_reset_0_o2_3_net_1\, Y => \firmware/N_59\);
    
    \iobank69debounce/IOOut_RNO[1]\ : MX2B
      port map(A => \iobank69debounce/PreviousPosition[1]_net_1\, 
        B => \dhold69[1]\, S => LogicReset_c, Y => 
        \iobank69debounce/IOOut_3[1]\);
    
    \A2DRead/step_RNI3L2F4_0[1]\ : NOR3C
      port map(A => \A2DRead/N_114\, B => 
        \A2DRead/DataRegU1Ch0b_1_sqmuxa_0_a2_0\, C => 
        \A2DRead/N_54\, Y => \A2DRead/DataRegU1Ch0e_1_sqmuxa\);
    
    \ioBank62reader/cellindex_RNIM9GN[1]\ : NOR2A
      port map(A => \ioBank62reader/parallelholdreg_0_sqmuxa_0\, 
        B => \internaddr[7]\, Y => 
        \ioBank62reader/parallelholdreg_0_sqmuxa_2\);
    
    \A2DRead/DataRegU1Ch1o_RNIRV617_0[8]\ : MAJ3
      port map(A => \A2DRead/N_1571\, B => \A2DRead/N_1548\, C
         => \A2DRead/N_1573\, Y => \A2DRead/N_1580\);
    
    \A2DRead/DataRegU1Ch0g_RNIJQNMG[11]\ : XOR3
      port map(A => \A2DRead/N_1978\, B => \A2DRead/N_1980\, C
         => \A2DRead/N_1953\, Y => \A2DRead/N_1984\);
    
    \A2DRead/DataRegU1Ch1l[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1k[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1l[9]_net_1\);
    
    \iobank66debounce/DebounceTimer_RNIF6762[4]\ : NOR2B
      port map(A => \iobank66debounce/DebounceTimer_c2\, B => 
        \iobank66debounce/DebounceTimer_c4_out\, Y => 
        \iobank66debounce/DebounceTimer_c4\);
    
    \iobank62debounce/PreviousPosition[1]\ : DFN1
      port map(D => \iobank62debounce/PreviousPosition_3[1]\, CLK
         => Clock03, Q => 
        \iobank62debounce/PreviousPosition[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1b[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1a[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1b[11]_net_1\);
    
    \matrix_read04/dataOut01_RNIUG39[1]\ : INV
      port map(A => \dhold68[1]\, Y => \dhold68_i[1]\);
    
    \iobank69debounce/PreviousPosition_RNO[1]\ : MX2B
      port map(A => \iobank69debounce/CurrentPosition[1]_net_1\, 
        B => \dhold69[1]\, S => LogicReset_c, Y => 
        \iobank69debounce/PreviousPosition_3[1]\);
    
    \iobank65debounce/DebounceTimer[3]\ : DFN1E1
      port map(D => \iobank65debounce/DebounceTimer_n3\, CLK => 
        Clock03, E => \iobank65debounce/DebounceTimere\, Q => 
        \iobank65debounce/DebounceTimer[3]_net_1\);
    
    \bitcontrol01latch/paralleldata_RNO_1[0]\ : NOR3B
      port map(A => \bitcontrol01latch/output_0_sqmuxa_net_1\, B
         => \bitcontrol01latch/un1_paralleldata_1[0]\, C => 
        \bitcontrol01latch/cellindex[2]_net_1\, Y => 
        \bitcontrol01latch/N_94\);
    
    \A2DRead/DataRegU1Ch1f_RNIAB435[7]\ : XOR3
      port map(A => \A2DRead/N_1490\, B => \A2DRead/N_1513\, C
         => \A2DRead/N_1488\, Y => \A2DRead/N_1521\);
    
    \A2DRead/DataInReg_RNO[5]\ : NOR3C
      port map(A => \A2DRead/i8_mux_0\, B => \A2DRead/m50_0\, C
         => \A2DRead/DataInReg_324_e_0\, Y => \A2DRead/N_2178\);
    
    \A2D00reader/parallelholdreg_RNO_0[10]\ : MX2
      port map(A => \A2D00reader/parallelholdreg_7[10]\, B => 
        \A2D00reader/parallelholdreg[10]_net_1\, S => 
        \A2D00reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D00reader/N_101\);
    
    \discretedutycycle01/paralleldata_RNO_0[1]\ : MX2
      port map(A => \discretedutycycle01/paralleldata[1]_net_1\, 
        B => SerialIn_c_0, S => \discretedutycycle01/N_128\, Y
         => \discretedutycycle01/N_128_mux\);
    
    \A2DRead/DataRegU1Ch0[10]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch0[9]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0[10]_net_1\);
    
    \ioBank65reader/dataout\ : DFN1
      port map(D => \ioBank65reader/dataout_RNO_7\, CLK => 
        Clock01, Q => do65);
    
    \A2DRead/DataRegU1Ch1i[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1h[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1i[11]_net_1\);
    
    \A2DRead/DataRegU1Ch0p_RNIHL081[8]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0b[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch0p[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch0a[8]_net_1\, Y => \A2DRead/N_1880\);
    
    \iobank69debounce/DebounceTimer_RNO[8]\ : MX2A
      port map(A => \iobank69debounce/Changing_0\, B => 
        \iobank69debounce/N_48\, S => 
        \iobank69debounce/DebounceTimere\, Y => 
        \iobank69debounce/DebounceTimer_RNO_6[8]\);
    
    \A2DRead/DataInReg_RNI3V404_4[13]\ : NOR3B
      port map(A => \A2DRead/N_118\, B => \A2DRead/m36_0\, C => 
        \A2DRead/DataInReg[13]_net_1\, Y => 
        \A2DRead/DataRegU1Ch0a_1_sqmuxa\);
    
    \ioBank6Areader/parallelholdreg_RNO_0[2]\ : MX2
      port map(A => \ioBank6Areader/parallelholdreg_7[2]\, B => 
        \ioBank6Areader/parallelholdreg[2]_net_1\, S => 
        \ioBank6Areader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank6Areader/N_25\);
    
    \ioBank69reader/dataout_RNO_1\ : NOR2B
      port map(A => \ioBank69reader/parallelholdreg[1]_net_1\, B
         => \ioBank69reader/cellindex[0]_net_1\, Y => 
        \ioBank69reader/parallelholdreg_m[1]\);
    
    \addresslatch/output[2]\ : DFN1
      port map(D => \addresslatch/output_RNO[2]_net_1\, CLK => 
        Clock01, Q => \internaddr[2]\);
    
    \A2DRead/DataRegU1Ch0d_RNIVBIP2[4]\ : XOR3
      port map(A => \A2DRead/N_1768\, B => \A2DRead/N_1766\, C
         => \A2DRead/N_1770\, Y => \A2DRead/N_1780\);
    
    \A2DRead/DataRegU1Ch1o_RNIUV317_0[5]\ : MAJ3
      port map(A => \A2DRead/N_1487\, B => \A2DRead/N_1464\, C
         => \A2DRead/N_1489\, Y => \A2DRead/N_1496\);
    
    \clock_master/counter_4_I_29\ : AX1C
      port map(A => \clock_master/DWACT_ADD_CI_0_g_array_2[0]\, B
         => \clock_master/counter[4]_net_1\, C => 
        \clock_master/counter[5]_net_1\, Y => 
        \clock_master/counter_4[5]\);
    
    \matrix_read03/stage_RNIR6RL_0[0]\ : NOR2A
      port map(A => \matrix_read03/stage[0]_net_1\, B => 
        \matrix_read03/stage[1]_net_1\, Y => 
        \matrix_read03/ctrl18_1\);
    
    \discretedutycycle01/CellIndexUpdate.address_1\ : NOR2A
      port map(A => \internaddr[7]\, B => \internaddr[5]\, Y => 
        \discretedutycycle01/address_1\);
    
    \addresslatch/paralleldata_RNO_1[7]\ : NOR2B
      port map(A => \addresslatch/paralleldata_0_e_0[7]\, B => 
        \addresslatch/cellindex_c1\, Y => \addresslatch/N_90\);
    
    \A2DRead/DataRegU1Ch0m[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0l[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0m[1]_net_1\);
    
    \iobank65debounce/DebounceTimer_RNO[1]\ : XA1
      port map(A => \iobank65debounce/DebounceTimer[1]_net_1\, B
         => \iobank65debounce/DebounceTimer[0]_net_1\, C => 
        \iobank65debounce/un1_previousposition7\, Y => 
        \iobank65debounce/DebounceTimer_n1\);
    
    \A2DRead/DataRegU1Ch1o_RNILUAF1_0[9]\ : MAJ3
      port map(A => \A2DRead/N_1559\, B => \A2DRead/N_1563\, C
         => \A2DRead/N_1561\, Y => \A2DRead/N_1574\);
    
    \A2DRead/step_RNI4I621[8]\ : NOR2B
      port map(A => \A2DRead.AdClock_0_sqmuxa\, B => 
        \A2DRead/step[8]_net_1\, Y => \A2DRead/N_42\);
    
    \A2DRead/DataRegU1Ch0d_RNI93BO1[5]\ : XOR2
      port map(A => \A2DRead/N_1794\, B => \A2DRead/N_1796\, Y
         => \A2DRead/un60_dataregu1ch0_259_0\);
    
    \matrix_read03/dataOut02[2]\ : DFN1
      port map(D => \matrix_read03/data02[2]_net_1\, CLK => 
        Clock03, Q => \dhold64[2]\);
    
    \A2DRead/DataRegU1Ch0g_RNI69462[9]\ : XOR3
      port map(A => \A2DRead/N_1915\, B => \A2DRead/N_1911\, C
         => \A2DRead/N_1913\, Y => \A2DRead/N_1946\);
    
    \A2DRead/DataRegU1Ch0p_RNIBF081_0[6]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0b[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch0a[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch0p[6]_net_1\, Y => \A2DRead/N_1825\);
    
    \A2DRead/DataRegU1Ch0p[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0o[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0p[12]_net_1\);
    
    \SerialLoad_pad/U0/U1\ : IOIN_IB
      port map(YIN => \SerialLoad_pad/U0/NET1\, Y => 
        SerialLoad_pad);
    
    \inputs67_ctrl_pad[1]/U0/U0\ : IOPAD_TRI
      port map(D => \inputs67_ctrl_pad[1]/U0/NET1\, E => 
        \inputs67_ctrl_pad[1]/U0/NET2\, PAD => inputs67_ctrl(1));
    
    \ioBank63reader/dataout_RNO_0\ : NOR2B
      port map(A => \ioBank63reader/parallelholdreg[2]_net_1\, B
         => \ioBank63reader/cellindex[1]_net_1\, Y => 
        \ioBank63reader/parallelholdreg_m[2]\);
    
    \A2DRead/DataRegU1Ch1g_RNIPG2Q[8]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1g[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch1i[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch1h[8]_net_1\, Y => \A2DRead/N_1539\);
    
    \A2DRead/DatHldRegU1Ch1[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch1_1_sqmuxa\, Q => 
        \ohold51[7]\);
    
    \snkpout01/counter_RNO_0[6]\ : AX1C
      port map(A => \snkpout01/counter[5]_net_1\, B => 
        \snkpout01/counter_c4\, C => \snkpout01/counter[6]_net_1\, 
        Y => \snkpout01/counter_n6_tz\);
    
    \matrix_read04/stage_RNI514[4]\ : NOR2A
      port map(A => \matrix_read04/stage[4]_net_1\, B => 
        \matrix_read04/stage[5]_net_1\, Y => 
        \matrix_read04/ctrl15_m1_e_0_0\);
    
    \A2DRead/DataRegU1Ch1i_RNIGLB7P2[12]\ : XOR3
      port map(A => \A2DRead/N_1667\, B => \A2DRead/N_1665\, C
         => \A2DRead/N_1640\, Y => \A2DRead/N_1669\);
    
    \addresslatch/paralleldata_RNO[1]\ : NOR2A
      port map(A => \addresslatch/N_84_mux\, B => LogicReset_c, Y
         => \addresslatch/paralleldata_RNO[1]_net_1\);
    
    \ioBank6Areader/dataout_RNO_2\ : AO1
      port map(A => \ioBank6Areader/parallelholdreg[0]_net_1\, B
         => \ioBank6Areader/_decfrac0\, C => 
        \A2D01reader.dataout_0_0\, Y => 
        \ioBank6Areader/dataout_0_1\);
    
    \heart_beat/un1_counter_1_m14\ : NOR3C
      port map(A => \heart_beat/counter[8]_net_1\, B => 
        \heart_beat/N_13_i\, C => \heart_beat/counter[9]_net_1\, 
        Y => \heart_beat/N_15_i\);
    
    \A2DRead/DataRegU1Ch1f[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1e[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1f[8]_net_1\);
    
    \addresslatch/output_RNO_0[2]\ : MX2
      port map(A => \addresslatch/paralleldata[2]_net_1\, B => 
        \internaddr[2]\, S => Ale_c, Y => \addresslatch/N_53\);
    
    \A2DRead/DataRegU1Ch0p_RNIHL081_0[8]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0b[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch0a[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch0p[8]_net_1\, Y => \A2DRead/N_1881\);
    
    \snkpout01/counter_RNI4OS2[0]\ : NOR3C
      port map(A => \snkpout01/counter[0]_net_1\, B => 
        \snkpout01/counter[1]_net_1\, C => 
        \snkpout01/counter[2]_net_1\, Y => \snkpout01/counter_c2\);
    
    \ioBank69reader/parallelholdreg_RNO_1[1]\ : OR2
      port map(A => \ohold69[1]\, B => SerialLoad_c, Y => 
        \ioBank69reader/parallelholdreg_7[1]\);
    
    \iobank61debounce/IOOut[2]\ : DFN1E0
      port map(D => \iobank61debounce/IOOut_8[2]\, CLK => Clock03, 
        E => \iobank61debounce/IOOut_0_sqmuxa\, Q => \ohold61[2]\);
    
    \A2DRead/step_RNII5AR[8]\ : NOR2A
      port map(A => \A2DRead/step[8]_net_1\, B => LogicReset_c, Y
         => \A2DRead/N_111\);
    
    \A2DRead/DataRegU1Ch1f_RNIOIUL2[1]\ : XOR2
      port map(A => \A2DRead/un60_N_11\, B => \A2DRead/N_1368\, Y
         => \A2DRead/N_1387\);
    
    \A2DRead/DataRegU1Ch1i_RNI8D0V32_0[11]\ : MAJ3
      port map(A => \A2DRead/N_1637\, B => \A2DRead/N_1612\, C
         => \A2DRead/N_1639\, Y => \A2DRead/N_1642\);
    
    \A2DRead/DataRegU1Ch1c_RNIDCTC[8]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1c[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch1e[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch1d[8]_net_1\, Y => \A2DRead/N_1531\);
    
    \A2DRead/DataRegU1Ch1o[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1n[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1o[2]_net_1\);
    
    \ioBank69reader/dataout_RNO_2\ : AO1
      port map(A => \ioBank69reader/parallelholdreg[0]_net_1\, B
         => \ioBank69reader/_decfrac0\, C => 
        \A2D01reader.dataout_0_0\, Y => 
        \ioBank69reader/dataout_0_1\);
    
    \A2DRead/DataInReg_RNO[13]\ : NOR3C
      port map(A => \A2DRead/i8_mux_0\, B => \A2DRead/m50_0\, C
         => \A2DRead/DataInReg_332_e_0\, Y => \A2DRead/N_2174\);
    
    \A2D01reader/dataout_RNO_3\ : MX2
      port map(A => \A2D01reader/N_69\, B => \A2D01reader/N_70\, 
        S => \A2D01reader/cellindex[1]_net_1\, Y => 
        \A2D01reader/N_71\);
    
    \iobank65debounce/DebounceTimer_RNO[6]\ : XA1
      port map(A => \iobank65debounce/DebounceTimer_c5\, B => 
        \iobank65debounce/DebounceTimer[6]_net_1\, C => 
        \iobank65debounce/un1_previousposition7\, Y => 
        \iobank65debounce/DebounceTimer_n6\);
    
    \A2D00reader/parallelholdreg_RNO[2]\ : OR2
      port map(A => \A2D00reader/N_93\, B => LogicReset_c, Y => 
        \A2D00reader/parallelholdreg_RNO[2]_net_1\);
    
    \firmware/cellindex_RNI4NLC1[1]\ : OR3
      port map(A => \firmware/cellindex[0]_net_1\, B => 
        \firmware/cellindex[1]_net_1\, C => 
        \firmware/cellindex[2]_net_1\, Y => \firmware/N_42\);
    
    \A2DRead/DataRegU1Ch0g_RNIRVOJJ1[11]\ : AO1
      port map(A => \A2DRead/N_2011\, B => \A2DRead/N_2013\, C
         => \A2DRead/un60_dataregu1ch0_808_0\, Y => 
        \A2DRead/N_2027\);
    
    \A2DRead/DataRegU1Ch1f_RNICECSC[8]\ : XOR3
      port map(A => \A2DRead/N_1575\, B => \A2DRead/N_1577\, C
         => \A2DRead/N_1550\, Y => \A2DRead/N_1581\);
    
    \iobank6Bdebounce/DebounceTimer_RNIG0S73[6]\ : NOR2B
      port map(A => \iobank6Bdebounce/DebounceTimer_c3\, B => 
        \iobank6Bdebounce/DebounceTimer_c6_out_0\, Y => 
        \iobank6Bdebounce/DebounceTimer_c6\);
    
    \discretedutycycle01/cellindex[2]\ : DFN1E0
      port map(D => \discretedutycycle01/cellindex_n2\, CLK => 
        SerialClock_c, E => 
        \discretedutycycle01/cellindex_1_sqmuxa_net_1\, Q => 
        \discretedutycycle01/cellindex[2]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNIB7QT_0[8]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1o[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch1n[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch1m[8]_net_1\, Y => \A2DRead/N_1536\);
    
    \A2DRead/un60_dataregu1ch0_277\ : AOI1D
      port map(A => \A2DRead/un60_dataregu1ch0_118\, B => 
        \A2DRead/un60_dataregu1ch0_198_0\, C => \A2DRead/N_1808\, 
        Y => \A2DRead/un60_dataregu1ch0_166\);
    
    \A2DRead/DataRegU1Ch1l[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1k[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1l[8]_net_1\);
    
    \A2DRead/DataRegU1Ch1j_RNIGPT31[2]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1j[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch1l[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch1k[2]_net_1\, Y => \A2DRead/N_1377\);
    
    \A2DRead/DataRegU1Ch1g[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1f[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1g[10]_net_1\);
    
    \iobank62debounce/DebounceTimer[1]\ : DFN1E1
      port map(D => \iobank62debounce/DebounceTimer_n1\, CLK => 
        Clock03, E => \iobank62debounce/DebounceTimere\, Q => 
        \iobank62debounce/DebounceTimer[1]_net_1\);
    
    \A2D01reader/cellindex_RNO[0]\ : NOR2A
      port map(A => \A2D01reader/cellindex_1_sqmuxa_1\, B => 
        \A2D01reader/cellindex[0]_net_1\, Y => 
        \A2D01reader/cellindex_n0\);
    
    \A2DRead/DataRegU1Ch0f_RNI5BLQ1_0[8]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0f[8]_net_1\, B => 
        \A2DRead/N_1853\, C => \A2DRead/N_1851\, Y => 
        \A2DRead/N_1889\);
    
    \matrix_read04/ctrl_RNO[0]\ : OR3B
      port map(A => \matrix_read04/N_63\, B => 
        \matrix_read04/N_37\, C => \matrix_read04/stage[5]_net_1\, 
        Y => \matrix_read04/ctrl_RNO_0[0]\);
    
    \ioBank65reader/parallelholdreg_RNO[0]\ : OR2
      port map(A => \ioBank65reader/N_23\, B => LogicReset_c, Y
         => \ioBank65reader/parallelholdreg_RNO_6[0]\);
    
    \A2DRead/DataRegU1Ch0l[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0k[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0l[5]_net_1\);
    
    \snkpout01/PWMOut_3_0_I_7\ : XA1C
      port map(A => \snkpout01/counter[11]_net_1\, B => 
        \dutycycle01[11]\, C => \snkpout01/counter[12]_net_1\, Y
         => \snkpout01/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[1]\);
    
    \iobank69debounce/IOOut[2]\ : DFN1E0
      port map(D => \iobank69debounce/IOOut_3[2]\, CLK => Clock03, 
        E => \iobank69debounce/IOOut_0_sqmuxa\, Q => \ohold69[2]\);
    
    \A2DRead/DataRegU1Ch1c[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1b[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1c[6]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I42_Y\ : NOR2B
      port map(A => \A2DRead/N201_0\, B => \A2DRead/N197_0\, Y
         => \A2DRead/N222\);
    
    \inputs62_ctrl_pad[1]/U0/U0\ : IOPAD_TRI
      port map(D => \inputs62_ctrl_pad[1]/U0/NET1\, E => 
        \inputs62_ctrl_pad[1]/U0/NET2\, PAD => inputs62_ctrl(1));
    
    \A2D01reader/parallelholdreg[11]\ : DFN1
      port map(D => \A2D01reader/parallelholdreg_RNO_0[11]_net_1\, 
        CLK => Clock01, Q => 
        \A2D01reader/parallelholdreg[11]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNIHP9F1[5]\ : XOR3
      port map(A => \A2DRead/N_1449\, B => \A2DRead/N_1447\, C
         => \A2DRead/N_1451\, Y => \A2DRead/N_1461\);
    
    \A2DRead/DataRegU1Ch1g[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1f[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1g[7]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIFB6SC_0[6]\ : OA1
      port map(A => \A2DRead/N_1466\, B => \A2DRead/N_1491\, C
         => \A2DRead/N_1493\, Y => 
        \A2DRead/un60_dataregu1ch1_353_0\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I5_G0N\ : NOR2B
      port map(A => \A2DRead/N_1960\, B => \A2DRead/N_1933\, Y
         => \A2DRead/N168\);
    
    \externenablelatch/cellindex_RNIH1BG1_0[2]\ : NOR2A
      port map(A => \externenablelatch/output_0_sqmuxa_net_1\, B
         => \externenablelatch/cellindex[2]_net_1\, Y => 
        \externenablelatch/paralleldata_0_e_0[3]\);
    
    \A2DRead/DataRegU1Ch0d_RNIS29V7_0[9]\ : MAJ3
      port map(A => \A2DRead/N_1918\, B => \A2DRead/N_1895\, C
         => \A2DRead/N_1920\, Y => \A2DRead/N_1927\);
    
    \A2DRead/DataRegU1Ch0d_RNIM2IP2[3]\ : XOR3
      port map(A => \A2DRead/N_1742\, B => \A2DRead/N_1740\, C
         => \A2DRead/N_1744\, Y => \A2DRead/N_1754\);
    
    \matrix_read04/dataOut02_RNIUI6A[0]\ : INV
      port map(A => \dhold69[0]\, Y => \dhold69_i[0]\);
    
    \iobank6Bdebounce/IOOut[1]\ : DFN1E0
      port map(D => \iobank6Bdebounce/IOOut_3[1]\, CLK => Clock03, 
        E => \iobank6Bdebounce/IOOut_0_sqmuxa\, Q => \ohold6B[1]\);
    
    \A2DRead/DataRegU1Ch0g_RNIM4GD_0[8]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0i[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch0h[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch0g[8]_net_1\, Y => \A2DRead/N_1887\);
    
    \A2DRead/un60_dataregu1ch0_423_RNILQ0IK1\ : NOR2B
      port map(A => \A2DRead/N_1902\, B => \A2DRead/N_1875\, Y
         => \A2DRead/un60_dataregu1ch0_301\);
    
    \snkpout01/PWMOut_3_0_I_27\ : OR2A
      port map(A => \dutycycle01[6]\, B => 
        \snkpout01/counter[6]_net_1\, Y => 
        \snkpout01/ACT_LT3_E[1]\);
    
    \ioBank68reader/parallelholdreg_RNO_1[0]\ : OR2
      port map(A => \ohold68[0]\, B => SerialLoad_c, Y => 
        \ioBank68reader/parallelholdreg_7[0]\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I2_P0N_0\ : 
        MAJ3
      port map(A => \A2DRead/N_1472\, B => \A2DRead/N_1499\, C
         => \A2DRead/N_1497\, Y => 
        \A2DRead/ADD_11x11_fast_I2_P0N_0\);
    
    \heart_beat/HeartBeatOut_RNO_4\ : NOR3A
      port map(A => \heart_beat/un1_counterlto6\, B => 
        \heart_beat/counter[7]_net_1\, C => 
        \heart_beat/counter[8]_net_1\, Y => 
        \heart_beat/un1_counterlt9\);
    
    \A2D01reader/parallelholdreg_RNO[9]\ : OR2
      port map(A => \A2D01reader/N_100\, B => LogicReset_c, Y => 
        \A2D01reader/parallelholdreg_RNO_0[9]_net_1\);
    
    \iobank60debounce/PreviousPosition_RNO[1]\ : MX2B
      port map(A => \iobank60debounce/CurrentPosition[1]_net_1\, 
        B => \inputs60_c[1]\, S => LogicReset_c, Y => 
        \iobank60debounce/PreviousPosition_3[1]\);
    
    \AN5NRMControl_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => AN5NRMControl_c, E => \VCC\, DOUT => 
        \AN5NRMControl_pad/U0/NET1\, EOUT => 
        \AN5NRMControl_pad/U0/NET2\);
    
    \matrix_read03/dataOut01[2]\ : DFN1
      port map(D => \matrix_read03/data01[2]_net_1\, CLK => 
        Clock03, Q => \dhold63[2]\);
    
    \iobank61debounce/DebounceTimer_RNO[3]\ : XA1
      port map(A => \iobank61debounce/DebounceTimer_c2\, B => 
        \iobank61debounce/DebounceTimer[3]_net_1\, C => 
        \iobank61debounce/un1_previousposition7\, Y => 
        \iobank61debounce/DebounceTimer_n3\);
    
    \ioBank66reader/cellindex[1]\ : DFN1
      port map(D => \ioBank66reader/cellindex_RNO_3[1]\, CLK => 
        SerialClock_c, Q => \ioBank66reader/cellindex[1]_net_1\);
    
    \A2DRead/step_RNI3L2F4_6[3]\ : NOR2A
      port map(A => \A2DRead/N_115\, B => \A2DRead/N_61\, Y => 
        \A2DRead/DataRegU1Ch0f_1_sqmuxa\);
    
    \iobank65debounce/DebounceTimer_RNO[3]\ : XA1
      port map(A => \iobank65debounce/DebounceTimer_c2\, B => 
        \iobank65debounce/DebounceTimer[3]_net_1\, C => 
        \iobank65debounce/un1_previousposition7\, Y => 
        \iobank65debounce/DebounceTimer_n3\);
    
    \A2DRead/DataRegU1Ch1o_RNIVQPT_0[4]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1o[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch1n[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch1m[4]_net_1\, Y => \A2DRead/N_1424\);
    
    \iobank64debounce/DebounceTimer_RNO[2]\ : XA1
      port map(A => \iobank64debounce/DebounceTimer[2]_net_1\, B
         => \iobank64debounce/DebounceTimer_c1\, C => 
        \iobank64debounce/un1_previousposition7\, Y => 
        \iobank64debounce/DebounceTimer_n2\);
    
    \bitcontrol01latch/output_RNI3M2R[2]\ : OA1
      port map(A => PnlLgtControl_c, B => \pwmdisable01[2]\, C
         => \bitcontrol01latch/bitcontrol01[2]\, Y => 
        AN4NRMControl_c);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I16_Y\ : NOR2B
      port map(A => \A2DRead/N178_0\, B => \A2DRead/N175_0\, Y
         => \A2DRead/N193\);
    
    \A2DRead/DataRegU1Ch1c_RNI10TC[4]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1c[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch1e[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch1d[4]_net_1\, Y => \A2DRead/N_1419\);
    
    \ExternalHardwareEn_pad[0]/U0/U1\ : IOTRI_OB_EB
      port map(D => \ExternalHardwareEn_c[0]\, E => \VCC\, DOUT
         => \ExternalHardwareEn_pad[0]/U0/NET1\, EOUT => 
        \ExternalHardwareEn_pad[0]/U0/NET2\);
    
    \iobank69debounce/PreviousPosition[0]\ : DFN1
      port map(D => \iobank69debounce/PreviousPosition_3[0]\, CLK
         => Clock03, Q => 
        \iobank69debounce/PreviousPosition[0]_net_1\);
    
    \heart_beat/HeartBeatOut_RNO_2\ : NOR3
      port map(A => \heart_beat/counter[17]_net_1\, B => 
        \heart_beat/counter[18]_net_1\, C => 
        \heart_beat/counter[16]_net_1\, Y => 
        \heart_beat/un1_counterlto18_1\);
    
    \A2DRead/DataRegU1Ch0d_RNITUMLT1[4]\ : OR2
      port map(A => \A2DRead/un60_dataregu1ch0_288_0\, B => 
        \A2DRead/un60_dataregu1ch0_172\, Y => \A2DRead/N_1819\);
    
    \ioBank61reader/parallelholdreg_RNO_1[0]\ : OR2
      port map(A => \ohold61[0]\, B => SerialLoad_c, Y => 
        \ioBank61reader/parallelholdreg_7[0]\);
    
    \ioBank6Areader/parallelholdreg[0]\ : DFN1
      port map(D => \ioBank6Areader/parallelholdreg_RNO_11[0]\, 
        CLK => Clock01, Q => 
        \ioBank6Areader/parallelholdreg[0]_net_1\);
    
    \Watch_Dog_Reset/timercount[3]\ : DFN1E0
      port map(D => \Watch_Dog_Reset/timercount_n3\, CLK => 
        \counter[1]\, E => \Watch_Dog_Reset/timercount_0_sqmuxa\, 
        Q => \Watch_Dog_Reset/timercount[3]_net_1\);
    
    \snkpout01/counter_RNI2SO6[5]\ : NOR3C
      port map(A => \snkpout01/counter[5]_net_1\, B => 
        \snkpout01/counter_c4\, C => \snkpout01/counter[6]_net_1\, 
        Y => \snkpout01/counter_c6\);
    
    \A2DRead/DataRegU1Ch0k[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0j[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0k[6]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNI5AN482_0[5]\ : MAJ3
      port map(A => \A2DRead/N_1469\, B => \A2DRead/N_1471\, C
         => \A2DRead/N_1444\, Y => \A2DRead/N_1474\);
    
    \bitcontrol01latch/output_0_sqmuxa\ : NOR3B
      port map(A => \firmware.N_76\, B => 
        \bitcontrol01latch/un26_address_2\, C => SerialLoad_c, Y
         => \bitcontrol01latch/output_0_sqmuxa_net_1\);
    
    \A2DRead/DataRegU1Ch1b[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1a[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1b[3]_net_1\);
    
    \ioBank64reader/cellindex_RNINC0O1[1]\ : AOI1
      port map(A => 
        \ioBank64reader/parallelholdreg_0_sqmuxa_3_net_1\, B => 
        \ioBank64reader/parallelholdreg_0_sqmuxa_2\, C => 
        SerialLoad_c, Y => 
        \ioBank64reader/parallelholdreg_1_sqmuxa\);
    
    \discretedutycycle01/paralleldata_RNO[3]\ : NOR2A
      port map(A => \discretedutycycle01/N_130_mux\, B => 
        LogicReset_c, Y => 
        \discretedutycycle01/paralleldata_RNO_3[3]\);
    
    \A2DRead/DataRegU1Ch1o_RNIEAQT_0[9]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1o[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch1n[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch1m[9]_net_1\, Y => \A2DRead/N_1564\);
    
    \bitcontrol01latch/cellindex[2]\ : DFN1E0
      port map(D => \bitcontrol01latch/cellindex_n2\, CLK => 
        SerialClock_c, E => 
        \bitcontrol01latch/cellindex_1_sqmuxa_net_1\, Q => 
        \bitcontrol01latch/cellindex[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0j_RNIVVBN_0[8]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0l[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch0k[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch0j[8]_net_1\, Y => \A2DRead/N_1885\);
    
    \iobank65debounce/DebounceTimer[0]\ : DFN1E1
      port map(D => \iobank65debounce/N_67\, CLK => Clock03, E
         => \iobank65debounce/DebounceTimere\, Q => 
        \iobank65debounce/DebounceTimer[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0p_RNI26081[3]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0b[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch0p[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch0a[3]_net_1\, Y => \A2DRead/N_1742\);
    
    \iobank60debounce/DebounceTimer[2]\ : DFN1E1
      port map(D => \iobank60debounce/DebounceTimer_n2\, CLK => 
        Clock03, E => \iobank60debounce/DebounceTimere\, Q => 
        \iobank60debounce/DebounceTimer[2]_net_1\);
    
    \A2DRead/DatHldRegU1Ch0[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch0_1_sqmuxa\, Q => 
        \ohold50[7]\);
    
    \ioBank69reader/parallelholdreg_RNO_0[1]\ : MX2
      port map(A => \ioBank69reader/parallelholdreg_7[1]\, B => 
        \ioBank69reader/parallelholdreg[1]_net_1\, S => 
        \ioBank69reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank69reader/N_24\);
    
    \A2DRead/AdClock_RNO_3\ : MX2
      port map(A => \A2DRead/i3_mux\, B => \A2DRead/N_4_0\, S => 
        \A2DRead/N_18\, Y => \A2DRead/i2_mux\);
    
    \A2DRead/DataRegU1Ch1e_RNIEIFP[12]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1c[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch1e[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch1d[12]_net_1\, Y => \A2DRead/N_1643\);
    
    \iobank63debounce/DebounceTimer_RNO[0]\ : NOR2A
      port map(A => \iobank63debounce/un1_previousposition7\, B
         => \iobank63debounce/DebounceTimer[0]_net_1\, Y => 
        \iobank63debounce/N_67\);
    
    \A2DRead/DataInReg_RNO[7]\ : NOR3C
      port map(A => \A2DRead/i8_mux_0\, B => \A2DRead/m50_0\, C
         => \A2DRead/DataInReg_326_e_0\, Y => \A2DRead/N_2180\);
    
    \A2DRead/DataRegU1Ch0f_RNICNQCO2[5]\ : MAJ3
      port map(A => \A2DRead/N_1816\, B => \A2DRead/N_1818\, C
         => \A2DRead/N_1791\, Y => \A2DRead/N_1821\);
    
    \A2DRead/DataRegU1Ch0f_RNI38047_0[10]\ : MAJ3
      port map(A => \A2DRead/N_1944\, B => \A2DRead/N_1919\, C
         => \A2DRead/N_1921\, Y => \A2DRead/N_1953\);
    
    \A2D01reader/dataout_RNO_10\ : MX2
      port map(A => \A2D01reader/parallelholdreg[3]_net_1\, B => 
        \A2D01reader/parallelholdreg[11]_net_1\, S => 
        \A2D01reader/cellindex[3]_net_1\, Y => \A2D01reader/N_73\);
    
    \snkpout01/counter[7]\ : DFN1
      port map(D => \snkpout01/counter_n7\, CLK => Clock04, Q => 
        \snkpout01/counter[7]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNI3T0D6_0[11]\ : MAJ3
      port map(A => \A2DRead/N_2018\, B => \A2DRead/N_2003\, C
         => \A2DRead/N_2005\, Y => \A2DRead/N_2023\);
    
    \A2D00reader/parallelholdreg_RNO_1[1]\ : OR2
      port map(A => \ohold50[1]\, B => SerialLoad_c, Y => 
        \A2D00reader/parallelholdreg_7[1]\);
    
    \iobank61debounce/Changing\ : DFN1E0
      port map(D => \iobank61debounce/Changing_0\, CLK => Clock03, 
        E => LogicReset_c, Q => \iobank61debounce/Changing_net_1\);
    
    \matrix_read03/stage_RNIT0I12[4]\ : NOR3B
      port map(A => \matrix_read03/N_65\, B => 
        \matrix_read03/N_64\, C => \matrix_read03/N_26\, Y => 
        \matrix_read03/ctrl21\);
    
    \iobank67debounce/DebounceTimer_RNILUAA[6]\ : NOR3C
      port map(A => \iobank67debounce/DebounceTimer[4]_net_1\, B
         => \iobank67debounce/DebounceTimer[6]_net_1\, C => 
        \iobank67debounce/DebounceTimer[5]_net_1\, Y => 
        \iobank67debounce/DebounceTimer_m2_0_a2_2\);
    
    \iobank6Adebounce/DebounceTimer_RNIM3O51[3]\ : NOR2B
      port map(A => \iobank6Adebounce/DebounceTimer_c2\, B => 
        \iobank6Adebounce/DebounceTimer[3]_net_1\, Y => 
        \iobank6Adebounce/DebounceTimer_c3\);
    
    \discretedutycycle01/paralleldata_RNO_0[0]\ : MX2
      port map(A => \discretedutycycle01/paralleldata[0]_net_1\, 
        B => SerialIn_c_0, S => \discretedutycycle01/N_127\, Y
         => \discretedutycycle01/N_127_mux\);
    
    \ioBank61reader/dataout_RNO_2\ : MX2
      port map(A => \ioBank61reader/parallelholdreg[1]_net_1\, B
         => \ioBank61reader/parallelholdreg[3]_net_1\, S => 
        \ioBank61reader/cellindex[1]_net_1\, Y => 
        \ioBank61reader/N_34\);
    
    \iobank6Adebounce/DebounceTimer_RNO[1]\ : XA1
      port map(A => \iobank6Adebounce/DebounceTimer[1]_net_1\, B
         => \iobank6Adebounce/DebounceTimer[0]_net_1\, C => 
        \iobank6Adebounce/un1_previousposition7\, Y => 
        \iobank6Adebounce/DebounceTimer_n1\);
    
    \A2DRead/DataRegU1Ch1i[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1h[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1i[9]_net_1\);
    
    \A2DRead/DataRegU1Ch0f[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0e[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0f[7]_net_1\);
    
    \iobank66debounce/IOOut_RNO[2]\ : MX2B
      port map(A => \iobank66debounce/PreviousPosition[2]_net_1\, 
        B => \dhold66[2]\, S => LogicReset_c, Y => 
        \iobank66debounce/IOOut_3[2]\);
    
    \A2DRead/un60_dataregu1ch0_423_RNIFE3792_0\ : MAJ3
      port map(A => \A2DRead/N_1928\, B => \A2DRead/N_1903\, C
         => \A2DRead/N_1930\, Y => \A2DRead/N_1933\);
    
    \A2DRead/DataRegU1Ch0e[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0d[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0e[7]_net_1\);
    
    \matrix_read04/dataOut04_RNI2RCC[2]\ : INV
      port map(A => \dhold6B[2]\, Y => \dhold6B_i[2]\);
    
    \A2DRead/DataRegU1Ch0g_RNIC297A[4]\ : AOI1D
      port map(A => \A2DRead/un60_dataregu1ch0_278_0_tz_0\, B => 
        \A2DRead/un60_dataregu1ch0_198_0\, C => \A2DRead/N_1806\, 
        Y => \A2DRead/un60_dataregu1ch0_278_0\);
    
    \iobank66debounce/DebounceTimer_RNI9V2S[4]\ : NOR2B
      port map(A => \iobank66debounce/DebounceTimer[3]_net_1\, B
         => \iobank66debounce/DebounceTimer[4]_net_1\, Y => 
        \iobank66debounce/DebounceTimer_c4_out\);
    
    \A2DRead/AdClock\ : DFN1E1
      port map(D => \A2DRead/N_835\, CLK => Clock04, E => 
        \A2DRead.AdClock_0_sqmuxa\, Q => AdClock_c);
    
    \A2DRead/DataRegU1Ch1i_RNISOCRC[10]\ : XOR3
      port map(A => \A2DRead/N_1603\, B => \A2DRead/N_1605\, C
         => \A2DRead/N_1578\, Y => \A2DRead/N_1609\);
    
    \discretedutycycle01/paralleldata_RNO_0[2]\ : MX2
      port map(A => \discretedutycycle01/paralleldata[2]_net_1\, 
        B => SerialIn_c_0, S => \discretedutycycle01/N_129\, Y
         => \discretedutycycle01/N_129_mux\);
    
    \heart_beat/HeartBeatOut\ : DFN1
      port map(D => \heart_beat/HeartBeatOut_RNO_net_1\, CLK => 
        Clock04, Q => HrtBeat_c);
    
    \A2DRead/DataRegU1Ch1[5]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch1[4]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch1_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1[5]_net_1\);
    
    \heart_beat/counter[18]\ : DFN1
      port map(D => \heart_beat/ADD_19x19_fast_I121_Y\, CLK => 
        Clock04, Q => \heart_beat/counter[18]_net_1\);
    
    \A2DRead/DataRegU1Ch1h[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1g[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1h[10]_net_1\);
    
    \pwmdisable01latch/output[3]\ : DFN1
      port map(D => \pwmdisable01latch/output_RNO_2[3]\, CLK => 
        Clock01, Q => \pwmdisable01[3]\);
    
    \A2D01reader/parallelholdreg_RNO_0[10]\ : MX2
      port map(A => \A2D01reader/parallelholdreg_7[10]\, B => 
        \A2D01reader/parallelholdreg[10]_net_1\, S => 
        \A2D01reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D01reader/N_101\);
    
    \heart_beat/un1_counter_1_m29\ : XOR2
      port map(A => \heart_beat/N_15_i\, B => 
        \heart_beat/counter[10]_net_1\, Y => \heart_beat/m29\);
    
    \Watch_Dog_Reset/timercount_RNIL7AM5[10]\ : NOR2
      port map(A => \Watch_Dog_Reset/N_51_mux\, B => ResetIn_c, Y
         => \Watch_Dog_Reset/timercount_0_sqmuxa\);
    
    \matrix_read03/ctrl_RNO[2]\ : AOI1
      port map(A => \matrix_read03/ctrl_7_i_0_a3_1[2]\, B => 
        \matrix_read03/N_68\, C => \matrix_read03/N_60\, Y => 
        \matrix_read03/ctrl_RNO[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0d_RNI3VU301[9]\ : XOR3
      port map(A => \A2DRead/N_1927\, B => \A2DRead/N_1954\, C
         => \A2DRead/N_1929\, Y => \A2DRead/N_1958\);
    
    \Watch_Dog_Reset/timercount_RNO_1[7]\ : NOR2B
      port map(A => \Watch_Dog_Reset/timercount[4]_net_1\, B => 
        \Watch_Dog_Reset/m8_m4_0_a2_1\, Y => 
        \Watch_Dog_Reset/m16_m2_0_a2_2\);
    
    \A2DRead/DataRegU1Ch1f_RNI9PF863_0[7]\ : XOR3
      port map(A => \A2DRead/N_1525\, B => \A2DRead/N_1527\, C
         => \A2DRead/N_1500\, Y => \A2DRead/N_1529\);
    
    \snkpout01/PWMOut_3_0_I_41\ : AO1C
      port map(A => \snkpout01/counter[3]_net_1\, B => 
        \dutycycle01[3]\, C => \snkpout01/N_5\, Y => 
        \snkpout01/N_10\);
    
    \iobank64debounce/IOOut[1]\ : DFN1E0
      port map(D => \iobank64debounce/IOOut_3[1]\, CLK => Clock03, 
        E => \iobank64debounce/IOOut_0_sqmuxa\, Q => \ohold64[1]\);
    
    \iobank6Bdebounce/CurrentPosition[1]\ : DFN1
      port map(D => \dhold6B_i[1]\, CLK => Clock03, Q => 
        \iobank6Bdebounce/CurrentPosition[1]_net_1\);
    
    \Watch_Dog_Reset/timercount_RNIAJ2S[2]\ : NOR2
      port map(A => \Watch_Dog_Reset/timercount[2]_net_1\, B => 
        \Watch_Dog_Reset/timercount[4]_net_1\, Y => 
        \Watch_Dog_Reset/m40_e_4\);
    
    \bitcontrol01latch/output_RNO[1]\ : OR2
      port map(A => \bitcontrol01latch/N_45\, B => LogicReset_c, 
        Y => \bitcontrol01latch/output_RNO_1[1]\);
    
    \matrix_read04/dataOut03_RNI1O9B[2]\ : INV
      port map(A => \dhold6A[2]\, Y => \dhold6A_i[2]\);
    
    \A2DRead/DataRegU1Ch0n[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0m[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0n[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1g_RNIA12Q_0[3]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1i[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch1h[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch1g[3]_net_1\, Y => \A2DRead/N_1402\);
    
    \iobank65debounce/DebounceTimer_RNIA97B1[4]\ : NOR2B
      port map(A => \iobank65debounce/DebounceTimer_c2\, B => 
        \iobank65debounce/DebounceTimer_c4_out\, Y => 
        \iobank65debounce/DebounceTimer_c4\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I86_Y_0\ : XOR2
      port map(A => \A2DRead/N_1960\, B => \A2DRead/N_1933\, Y
         => \A2DRead/ADD_11x11_fast_I86_Y_0_0\);
    
    \bitcontrol01latch/output_RNO_0[6]\ : MX2
      port map(A => \bitcontrol01latch/bitcontrol01[6]\, B => 
        \bitcontrol01latch/paralleldata[6]_net_1\, S => 
        \bitcontrol01latch/output_0_sqmuxa_net_1\, Y => 
        \bitcontrol01latch/N_50\);
    
    \ioBank64reader/parallelholdreg_RNO_0[2]\ : MX2
      port map(A => \ioBank64reader/parallelholdreg_7[2]\, B => 
        \ioBank64reader/parallelholdreg[2]_net_1\, S => 
        \ioBank64reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank64reader/N_25\);
    
    \A2DRead/DataInReg_RNI3V404_3[13]\ : NOR3B
      port map(A => \A2DRead/N_55_mux\, B => \A2DRead/m29_2\, C
         => \A2DRead/DataInReg[13]_net_1\, Y => 
        \A2DRead/DataRegU1Ch0_1_sqmuxa\);
    
    \matrix_read03/dataOut02[1]\ : DFN1
      port map(D => \matrix_read03/data02[1]_net_1\, CLK => 
        Clock03, Q => \dhold64[1]\);
    
    \iobank6Adebounce/DebounceTimer_RNO_0[6]\ : NOR2B
      port map(A => \iobank6Adebounce/DebounceTimer_c3\, B => 
        \iobank6Adebounce/DebounceTimer_c5_out\, Y => 
        \iobank6Adebounce/DebounceTimer_c5\);
    
    \bitcontrol01latch/paralleldata_RNO_0[2]\ : MX2
      port map(A => \bitcontrol01latch/paralleldata[2]_net_1\, B
         => SerialIn_c, S => \bitcontrol01latch/N_96\, Y => 
        \bitcontrol01latch/N_96_mux\);
    
    \iobank67debounce/DebounceTimer_RNO_0[6]\ : NOR2B
      port map(A => \iobank67debounce/DebounceTimer_c4\, B => 
        \iobank67debounce/DebounceTimer[5]_net_1\, Y => 
        \iobank67debounce/DebounceTimer_c5\);
    
    \pwmdisable01latch/output_RNO[5]\ : NOR2A
      port map(A => \pwmdisable01latch/N_49\, B => LogicReset_c, 
        Y => \pwmdisable01latch/output_RNO_2[5]\);
    
    \Watch_Dog_Reset/timercount_RNI60CU3[1]\ : NOR2B
      port map(A => \Watch_Dog_Reset/m8_m4_0_a2_5\, B => 
        \Watch_Dog_Reset/N_2\, Y => \Watch_Dog_Reset/N_9_0\);
    
    \iobank61debounce/DebounceTimer_RNIVN49[6]\ : NOR3C
      port map(A => \iobank61debounce/DebounceTimer[3]_net_1\, B
         => \iobank61debounce/DebounceTimer[6]_net_1\, C => 
        \iobank61debounce/DebounceTimer[2]_net_1\, Y => 
        \iobank61debounce/DebounceTimer_m2_0_a2_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIJE0O_0[9]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1f[9]_net_1\, B => 
        \A2DRead/N_1534\, C => \A2DRead/N_1532\, Y => 
        \A2DRead/N_1570\);
    
    \A2DRead/DataRegU1Ch0g_RNIUU162_1[1]\ : MAJ3
      port map(A => \A2DRead/N_1709\, B => \A2DRead/N_1713\, C
         => \A2DRead/N_1711\, Y => \A2DRead/N_1731\);
    
    \heart_beat/un1_counter_1_m41\ : XOR2
      port map(A => \heart_beat/counter[0]_net_1\, B => 
        \A2DRead.AdClock_0_sqmuxa\, Y => \heart_beat/m41\);
    
    \A2DRead/DataRegU1Ch1o_RNIRV617[8]\ : XOR3
      port map(A => \A2DRead/N_1571\, B => \A2DRead/N_1573\, C
         => \A2DRead/N_1548\, Y => \A2DRead/N_1579\);
    
    \ResetIn_pad/U0/U0\ : IOPAD_IN
      port map(PAD => ResetIn, Y => \ResetIn_pad/U0/NET1\);
    
    \A2DRead/DataRegU1Ch1f_RNIGA4SC[5]\ : XOR3
      port map(A => \A2DRead/N_1463\, B => \A2DRead/N_1465\, C
         => \A2DRead/N_1438\, Y => \A2DRead/N_1469\);
    
    \ioBank68reader/parallelholdreg_RNO_0[1]\ : MX2
      port map(A => \ioBank68reader/parallelholdreg_7[1]\, B => 
        \ioBank68reader/parallelholdreg[1]_net_1\, S => 
        \ioBank68reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank68reader/N_24\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I88_Y_0\ : AX1D
      port map(A => \A2DRead/un60_dataregu1ch0_427\, B => 
        \A2DRead/un60_dataregu1ch0_713_0\, C => \A2DRead/N_2016\, 
        Y => \A2DRead/ADD_11x11_fast_I88_Y_0\);
    
    \A2DRead/DataRegU1Ch0p_RNI26081_0[3]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0b[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch0a[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch0p[3]_net_1\, Y => \A2DRead/N_1743\);
    
    \matrix_read04/stage_RNI3NB_0[0]\ : NOR3C
      port map(A => \matrix_read04/N_68\, B => 
        \matrix_read04/ctrl18_1\, C => \matrix_read04/N_64\, Y
         => \matrix_read04/ctrl12\);
    
    \iobank64debounce/DebounceTimer_RNIVKF6[1]\ : NOR2B
      port map(A => \iobank64debounce/DebounceTimer[0]_net_1\, B
         => \iobank64debounce/DebounceTimer[1]_net_1\, Y => 
        \iobank64debounce/DebounceTimer_c1\);
    
    \AdCs1_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => AdCs1_c, E => \VCC\, DOUT => 
        \AdCs1_pad/U0/NET1\, EOUT => \AdCs1_pad/U0/NET2\);
    
    \snkpout01/PWMOut_3_0_I_42\ : OA1A
      port map(A => \snkpout01/N_6\, B => \snkpout01/N_8\, C => 
        \snkpout01/N_7\, Y => \snkpout01/N_11\);
    
    \clock_master/counter[6]\ : DFN1
      port map(D => \clock_master/counter_4[6]\, CLK => XCLK_c, Q
         => \clock_master/counter[6]_net_1\);
    
    \matrix_read03/stage[0]\ : DFN1
      port map(D => \matrix_read03/N_58\, CLK => Clock03, Q => 
        \matrix_read03/stage[0]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_0_1_CO3_0\ : XA1
      port map(A => \A2DRead/un60_dataregu1ch0_29_3\, B => 
        \A2DRead/un60_dataregu1ch0_29_4\, C => \A2DRead/N_1714\, 
        Y => \A2DRead/CO3_0_0\);
    
    \A2DRead/DataRegU1Ch0e_RNIDP3F[1]\ : XOR2
      port map(A => \A2DRead/DataRegU1Ch0b[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch0e[1]_net_1\, Y => 
        \A2DRead/un60_dataregu1ch0_24_1\);
    
    \Watch_Dog_Reset/timercount_RNO[8]\ : XA1B
      port map(A => \Watch_Dog_Reset/m15_N_9_mux\, B => 
        \Watch_Dog_Reset/timercount[8]_net_1\, C => ResetIn_c, Y
         => \Watch_Dog_Reset/timercount_n8\);
    
    \Watch_Dog_Reset/timercount_RNIIOJD4[1]\ : NOR3C
      port map(A => \Watch_Dog_Reset/m40_e_5\, B => 
        \Watch_Dog_Reset/m40_e_4\, C => \Watch_Dog_Reset/m40_e_6\, 
        Y => \Watch_Dog_Reset/N_63\);
    
    \Watch_Dog_Reset/timercount_RNI7ESA5[10]\ : MX2C
      port map(A => \Watch_Dog_Reset/timercount[10]_net_1\, B => 
        \Watch_Dog_Reset/timercount[0]_net_1\, S => 
        \Watch_Dog_Reset/N_63\, Y => \Watch_Dog_Reset/N_51_mux\);
    
    \ioBank60reader/dataout_RNO_2\ : MX2
      port map(A => \ioBank60reader/parallelholdreg[1]_net_1\, B
         => \ioBank60reader/parallelholdreg[3]_net_1\, S => 
        \ioBank60reader/cellindex[1]_net_1\, Y => 
        \ioBank60reader/N_34\);
    
    \iobank6Bdebounce/DebounceTimer_RNIQ7BR1[3]\ : NOR3C
      port map(A => \iobank6Bdebounce/DebounceTimer[3]_net_1\, B
         => \iobank6Bdebounce/DebounceTimer[2]_net_1\, C => 
        \iobank6Bdebounce/DebounceTimer_c1\, Y => 
        \iobank6Bdebounce/DebounceTimer_c3\);
    
    \firmware/dataout_RNO\ : AO1A
      port map(A => \firmware/cellindex[0]_net_1\, B => 
        \firmware/N_51\, C => \firmware/dataout_0_0_2\, Y => 
        \firmware/dataout_RNO_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I91_Y_0\ : XOR2
      port map(A => \A2DRead/N_2031\, B => \A2DRead/N_2033\, Y
         => \A2DRead/ADD_11x11_fast_I91_Y_0\);
    
    \A2DRead/DataRegU1Ch0f_RNIFTH5D1[2]\ : XOR3
      port map(A => \A2DRead/N_1760\, B => \A2DRead/N_1762\, C
         => \A2DRead/N_1739\, Y => \A2DRead/N_1764\);
    
    \ioBank63reader/parallelholdreg_RNO[1]\ : OR2
      port map(A => \ioBank63reader/N_24\, B => LogicReset_c, Y
         => \ioBank63reader/parallelholdreg_RNO_4[1]\);
    
    \matrix_read04/dataOut02[2]\ : DFN1
      port map(D => \matrix_read04/data02[2]_net_1\, CLK => 
        Clock03, Q => \dhold69[2]\);
    
    \A2DRead/DataRegU1Ch1j_RNIDMT31[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1j[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1l[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch1k[1]_net_1\, Y => \A2DRead/N_1363\);
    
    \A2DRead/DataRegU1Ch1o_RNIV69F1_0[3]\ : MAJ3
      port map(A => \A2DRead/N_1393\, B => \A2DRead/N_1397\, C
         => \A2DRead/N_1395\, Y => \A2DRead/N_1408\);
    
    \A2D00reader/parallelholdreg_RNO_1[8]\ : OR2
      port map(A => \ohold50[8]\, B => SerialLoad_c, Y => 
        \A2D00reader/parallelholdreg_7[8]\);
    
    \discretedutycycle01/cellindex_RNO_0[3]\ : AX1C
      port map(A => \discretedutycycle01/cellindex_c1\, B => 
        \discretedutycycle01/cellindex[2]_net_1\, C => 
        \discretedutycycle01/cellindex[3]_net_1\, Y => 
        \discretedutycycle01/cellindex_n3_tz\);
    
    \iobank64debounce/DebounceTimer_RNO_0[8]\ : NOR3C
      port map(A => \iobank64debounce/un1_previousposition7\, B
         => \iobank64debounce/DebounceTimer[7]_net_1\, C => 
        \iobank64debounce/DebounceTimer_c6\, Y => 
        \iobank64debounce/N_48\);
    
    \A2DRead/DataRegU1Ch1p[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1o[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1p[9]_net_1\);
    
    \A2DRead/DataRegU1Ch0j[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0i[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0j[6]_net_1\);
    
    \A2DRead/DataRegU1Ch0e[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0d[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0e[3]_net_1\);
    
    \iobank6Bdebounce/IOOut[2]\ : DFN1E0
      port map(D => \iobank6Bdebounce/IOOut_3[2]\, CLK => Clock03, 
        E => \iobank6Bdebounce/IOOut_0_sqmuxa\, Q => \ohold6B[2]\);
    
    \A2DRead/DataRegU1Ch0o[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0n[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0o[12]_net_1\);
    
    \bitcontrol01latch/paralleldata_RNO[3]\ : OR2
      port map(A => \bitcontrol01latch/N_97_mux\, B => 
        LogicReset_c, Y => 
        \bitcontrol01latch/paralleldata_RNO_1[3]_net_1\);
    
    \inputs62_ctrl_pad[3]/U0/U1\ : IOTRI_OB_EB
      port map(D => \inputs62_ctrl_c[3]\, E => \VCC\, DOUT => 
        \inputs62_ctrl_pad[3]/U0/NET1\, EOUT => 
        \inputs62_ctrl_pad[3]/U0/NET2\);
    
    \matrix_read04/ctrl[2]\ : DFN1
      port map(D => \matrix_read04/ctrl_RNO_0[2]_net_1\, CLK => 
        Clock03, Q => \inputs67_ctrl_c[2]\);
    
    \A2DRead/DataRegU1Ch1a[7]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[7]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch1a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1a[7]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNISR49V1[10]\ : NOR2B
      port map(A => \A2DRead/N_1986\, B => \A2DRead/N_1959\, Y
         => \A2DRead/un60_dataregu1ch0_427\);
    
    \Watch_Dog_Reset/timercount_RNI9I2S[3]\ : NOR2B
      port map(A => \Watch_Dog_Reset/timercount[2]_net_1\, B => 
        \Watch_Dog_Reset/timercount[3]_net_1\, Y => 
        \Watch_Dog_Reset/m16_m2_0_a2_1\);
    
    \iobank61debounce/DebounceTimer[2]\ : DFN1E1
      port map(D => \iobank61debounce/DebounceTimer_n2\, CLK => 
        Clock03, E => \iobank61debounce/DebounceTimere\, Q => 
        \iobank61debounce/DebounceTimer[2]_net_1\);
    
    \pwmdisable01latch/paralleldata_RNO_1[4]\ : NOR3C
      port map(A => \pwmdisable01latch/cellindex[2]_net_1\, B => 
        \pwmdisable01latch/output_0_sqmuxa_net_1\, C => 
        \pwmdisable01latch/un1_paralleldata_1[0]\, Y => 
        \pwmdisable01latch/N_98\);
    
    \iobank61debounce/DebounceTimer_RNO[5]\ : XA1
      port map(A => \iobank61debounce/DebounceTimer_c4\, B => 
        \iobank61debounce/DebounceTimer[5]_net_1\, C => 
        \iobank61debounce/un1_previousposition7\, Y => 
        \iobank61debounce/DebounceTimer_n5\);
    
    \pwmdisable01latch/paralleldata_RNO_0[1]\ : MX2
      port map(A => \pwmdisable01latch/paralleldata[1]_net_1\, B
         => SerialIn_c, S => \pwmdisable01latch/N_95\, Y => 
        \pwmdisable01latch/N_95_mux\);
    
    \iobank65debounce/DebounceTimer[4]\ : DFN1E1
      port map(D => \iobank65debounce/DebounceTimer_n4\, CLK => 
        Clock03, E => \iobank65debounce/DebounceTimere\, Q => 
        \iobank65debounce/DebounceTimer[4]_net_1\);
    
    \iobank60debounce/CurrentPosition[3]\ : DFN1
      port map(D => \iobank60debounce/inputs60_c_i[3]\, CLK => 
        Clock03, Q => \iobank60debounce/CurrentPosition[3]_net_1\);
    
    \ioBank65reader/parallelholdreg_RNO_1[1]\ : OR2
      port map(A => \ohold65[1]\, B => SerialLoad_c, Y => 
        \ioBank65reader/parallelholdreg_7[1]\);
    
    \ioBank61reader/dataout_RNO\ : OR2
      port map(A => \A2D01reader.dataout_0_0\, B => 
        \ioBank61reader/dataout_52\, Y => 
        \ioBank61reader/dataout_RNO_3\);
    
    \A2DRead/DataRegU1Ch1f_RNIC70O[8]\ : XOR3
      port map(A => \A2DRead/N_1506\, B => 
        \A2DRead/DataRegU1Ch1f[8]_net_1\, C => \A2DRead/N_1504\, 
        Y => \A2DRead/N_1541\);
    
    \iobank67debounce/DebounceTimer_RNO[1]\ : XA1
      port map(A => \iobank67debounce/DebounceTimer[1]_net_1\, B
         => \iobank67debounce/DebounceTimer[0]_net_1\, C => 
        \iobank67debounce/un1_previousposition7\, Y => 
        \iobank67debounce/DebounceTimer_n1\);
    
    \heart_beat/un1_counter_1_m35\ : XNOR2
      port map(A => \heart_beat/counter[4]_net_1\, B => 
        \heart_beat/i5_mux\, Y => \heart_beat/m35\);
    
    \ioBank69reader/parallelholdreg_RNO_0[2]\ : MX2
      port map(A => \ioBank69reader/parallelholdreg_7[2]\, B => 
        \ioBank69reader/parallelholdreg[2]_net_1\, S => 
        \ioBank69reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank69reader/N_25\);
    
    \iobank63debounce/PreviousPosition[0]\ : DFN1
      port map(D => \iobank63debounce/PreviousPosition_3[0]\, CLK
         => Clock03, Q => 
        \iobank63debounce/PreviousPosition[0]_net_1\);
    
    \heart_beat/un1_counter_1_m26\ : AX1C
      port map(A => \heart_beat/counter[12]_net_1\, B => 
        \heart_beat/N_17_i\, C => \heart_beat/counter[13]_net_1\, 
        Y => \heart_beat/m26\);
    
    \iobank67debounce/DebounceTimer_RNI9IAA[2]\ : NOR2B
      port map(A => \iobank67debounce/DebounceTimer_c1\, B => 
        \iobank67debounce/DebounceTimer[2]_net_1\, Y => 
        \iobank67debounce/DebounceTimer_c2\);
    
    \A2DRead/DataRegU1Ch1f_RNIHH335_0[6]\ : MAJ3
      port map(A => \A2DRead/N_1485\, B => \A2DRead/N_1460\, C
         => \A2DRead/N_1462\, Y => \A2DRead/N_1494\);
    
    \iobank62debounce/DebounceTimer[5]\ : DFN1E1
      port map(D => \iobank62debounce/DebounceTimer_n5\, CLK => 
        Clock03, E => \iobank62debounce/DebounceTimere\, Q => 
        \iobank62debounce/DebounceTimer[5]_net_1\);
    
    \A2DRead/DataRegU1Ch1b[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1a[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1b[1]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I23_Y\ : AO1
      port map(A => \A2DRead/N162_0\, B => \A2DRead/N166_0\, C
         => \A2DRead/N165_0\, Y => \A2DRead/N200_0\);
    
    \A2DRead/DataRegU1Ch1f[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1e[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1f[3]_net_1\);
    
    \iobank69debounce/DebounceTimer_RNIM2VO1[3]\ : NOR3C
      port map(A => \iobank69debounce/DebounceTimer[3]_net_1\, B
         => \iobank69debounce/DebounceTimer[2]_net_1\, C => 
        \iobank69debounce/DebounceTimer_c1\, Y => 
        \iobank69debounce/DebounceTimer_c3\);
    
    \A2DRead/DataRegU1Ch1n[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1m[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1n[4]_net_1\);
    
    \externenablelatch/paralleldata_RNO_1[6]\ : NOR3B
      port map(A => \externenablelatch/cellindex[1]_net_1\, B => 
        \externenablelatch/paralleldata_0_e_0[5]\, C => 
        \externenablelatch/cellindex[0]_net_1\, Y => 
        \externenablelatch/N_98\);
    
    \A2D01reader/dataout_RNO_5\ : MX2
      port map(A => \A2D01reader/parallelholdreg[4]_net_1\, B => 
        \A2D01reader/parallelholdreg[6]_net_1\, S => 
        \A2D01reader/cellindex[1]_net_1\, Y => \A2D01reader/N_76\);
    
    \ioBank60reader/parallelholdreg_RNO_1[2]\ : OR2
      port map(A => \ohold60[2]\, B => SerialLoad_c, Y => 
        \ioBank60reader/parallelholdreg_7[2]\);
    
    \A2DRead/DataRegU1Ch0h[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0g[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0h[4]_net_1\);
    
    \A2DRead/DataRegU1Ch1p_RNIIBQ6[11]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1b[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch1p[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch1a[11]_net_1\, Y => \A2DRead/N_1617\);
    
    \iobank65debounce/DebounceTimer_RNIUET21[8]\ : OA1C
      port map(A => \iobank65debounce/DebounceTimer[8]_net_1\, B
         => \iobank65debounce/Changing_0\, C => LogicReset_c, Y
         => \iobank65debounce/IOOut_0_sqmuxa\);
    
    \A2DRead/DataRegU1Ch0m[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0l[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0m[12]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNI8G9F1[4]\ : MAJ3
      port map(A => \A2DRead/N_1419\, B => \A2DRead/N_1423\, C
         => \A2DRead/N_1421\, Y => \A2DRead/N_1434\);
    
    \A2DRead/DataRegU1Ch0f_RNIUD9RQ[3]\ : NOR2B
      port map(A => \A2DRead/N_1814\, B => \A2DRead/N_1789\, Y
         => \A2DRead/un60_dataregu1ch0_172\);
    
    \bitcontrol01latch/output_RNO[0]\ : OR2
      port map(A => \bitcontrol01latch/N_44\, B => LogicReset_c, 
        Y => \bitcontrol01latch/output_RNO_1[0]\);
    
    \A2DRead/DataRegU1Ch0d_RNI3HJP2[8]\ : XOR3
      port map(A => \A2DRead/N_1880\, B => \A2DRead/N_1878\, C
         => \A2DRead/N_1882\, Y => \A2DRead/N_1892\);
    
    \iobank63debounce/DebounceTimer[1]\ : DFN1E1
      port map(D => \iobank63debounce/DebounceTimer_n1\, CLK => 
        Clock03, E => \iobank63debounce/DebounceTimere\, Q => 
        \iobank63debounce/DebounceTimer[1]_net_1\);
    
    \ioBank68reader/cellindex_RNI3FR31[1]\ : NOR3B
      port map(A => \internaddr[3]\, B => 
        \ioBank68reader/_decfrac0\, C => \internaddr[7]\, Y => 
        \ioBank68reader/parallelholdreg_0_sqmuxa_1\);
    
    \ioBank64reader/dataout_RNO_1\ : AO1
      port map(A => \ioBank64reader/parallelholdreg[1]_net_1\, B
         => \ioBank64reader/cellindex[0]_net_1\, C => 
        \ioBank64reader/parallelholdreg_m[2]\, Y => 
        \ioBank64reader/dataout_0_2\);
    
    \iobank62debounce/DebounceTimer[4]\ : DFN1E1
      port map(D => \iobank62debounce/DebounceTimer_n4\, CLK => 
        Clock03, E => \iobank62debounce/DebounceTimere\, Q => 
        \iobank62debounce/DebounceTimer[4]_net_1\);
    
    \A2DRead/DataRegU1Ch1p_RNIN4J4_0[9]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1b[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch1a[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch1p[9]_net_1\, Y => \A2DRead/N_1562\);
    
    \A2D01reader/dataout_RNO_2\ : MX2
      port map(A => \A2D01reader/N_76\, B => \A2D01reader/N_77\, 
        S => \A2D01reader/cellindex[0]_net_1\, Y => 
        \A2D01reader/N_78\);
    
    \matrix_read03/data01[1]\ : DFN1E1
      port map(D => \inputs62_c[1]\, CLK => Clock03, E => 
        \matrix_read03/ctrl12\, Q => 
        \matrix_read03/data01[1]_net_1\);
    
    \bitcontrol01latch/paralleldata_RNO[1]\ : OR2
      port map(A => \bitcontrol01latch/N_95_mux\, B => 
        LogicReset_c, Y => 
        \bitcontrol01latch/paralleldata_RNO_1[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1c_RNIDCTC_0[8]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1e[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch1d[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch1c[8]_net_1\, Y => \A2DRead/N_1532\);
    
    \matrix_read04/dataOut03[1]\ : DFN1
      port map(D => \matrix_read04/data03[1]_net_1\, CLK => 
        Clock03, Q => \dhold6A[1]\);
    
    \externenablelatch/output_RNO[4]\ : OR2
      port map(A => \externenablelatch/N_50\, B => LogicReset_c, 
        Y => \externenablelatch/output_RNO_0[4]_net_1\);
    
    \externenablelatch/cellindex[1]\ : DFN1E0
      port map(D => \externenablelatch/cellindex_n1\, CLK => 
        SerialClock_c, E => 
        \externenablelatch/cellindex_1_sqmuxa_net_1\, Q => 
        \externenablelatch/cellindex[1]_net_1\);
    
    \addresslatch/paralleldata[0]\ : DFN1
      port map(D => \addresslatch/paralleldata_RNO[0]_net_1\, CLK
         => SerialClock_c, Q => 
        \addresslatch/paralleldata[0]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIDDASC_0[7]\ : MAJ3
      port map(A => \A2DRead/N_1549\, B => \A2DRead/N_1522\, C
         => \A2DRead/N_1547\, Y => \A2DRead/N_1554\);
    
    \A2DRead/DataRegU1Ch1k[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1j[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1k[11]_net_1\);
    
    \iobank6Adebounce/DebounceTimer_RNO[4]\ : XA1
      port map(A => \iobank6Adebounce/DebounceTimer_c3\, B => 
        \iobank6Adebounce/DebounceTimer[4]_net_1\, C => 
        \iobank6Adebounce/un1_previousposition7\, Y => 
        \iobank6Adebounce/DebounceTimer_n4\);
    
    \A2DRead/DataRegU1Ch1j_RNI37G11_0[12]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1l[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch1j[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch1k[12]_net_1\, Y => \A2DRead/N_1650\);
    
    \discretedutycycle01/paralleldata_RNO[4]\ : NOR2A
      port map(A => \discretedutycycle01/N_131_mux\, B => 
        LogicReset_c, Y => 
        \discretedutycycle01/paralleldata_RNO_3[4]\);
    
    \A2DRead/DataRegU1Ch0o[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0n[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0o[8]_net_1\);
    
    \A2D01reader/parallelholdreg[3]\ : DFN1
      port map(D => \A2D01reader/parallelholdreg_RNO_0[3]_net_1\, 
        CLK => Clock01, Q => 
        \A2D01reader/parallelholdreg[3]_net_1\);
    
    \ioBank62reader/parallelholdreg_RNO[0]\ : OR2
      port map(A => \ioBank62reader/N_23\, B => LogicReset_c, Y
         => \ioBank62reader/parallelholdreg_RNO_3[0]\);
    
    \externenablelatch/cellindex_RNO_1[1]\ : NOR2B
      port map(A => \externenablelatch/cellindex_c1\, B => 
        \externenablelatch/cellindex[2]_net_1\, Y => 
        \externenablelatch/un45_address\);
    
    \ioBank6Breader/cellindex_RNI2Q2J1[1]\ : NOR3C
      port map(A => 
        \ioBank6Breader/parallelholdreg_0_sqmuxa_2_net_1\, B => 
        \ioBank6Breader/parallelholdreg_0_sqmuxa_1\, C => 
        \ioBank6Breader.parallelholdreg_0_sqmuxa_4\, Y => 
        \ioBank6Breader/parallelholdreg_0_sqmuxa_4_0\);
    
    \ioBank61reader/parallelholdreg_RNO_0[2]\ : MX2
      port map(A => \ioBank61reader/parallelholdreg_7[2]\, B => 
        \ioBank61reader/parallelholdreg[2]_net_1\, S => 
        \ioBank61reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank61reader/N_40\);
    
    \inputs67_pad[2]/U0/U1\ : IOIN_IB
      port map(YIN => \inputs67_pad[2]/U0/NET1\, Y => 
        \inputs67_c[2]\);
    
    \firmware/parallelholdreg[7]\ : DFN1
      port map(D => \firmware/parallelholdreg_RNO[7]_net_1\, CLK
         => Clock01, Q => \firmware/parallelholdreg[7]_net_1\);
    
    \A2DRead/DataRegU1Ch1p_RNIHUI4_0[7]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1b[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch1a[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch1p[7]_net_1\, Y => \A2DRead/N_1506\);
    
    \inputs67_ctrl_pad[1]/U0/U1\ : IOTRI_OB_EB
      port map(D => \inputs67_ctrl_c[1]\, E => \VCC\, DOUT => 
        \inputs67_ctrl_pad[1]/U0/NET1\, EOUT => 
        \inputs67_ctrl_pad[1]/U0/NET2\);
    
    \discretedutycycle01/paralleldata_RNO_1[7]\ : NOR3C
      port map(A => \discretedutycycle01/cellindex_c1\, B => 
        \discretedutycycle01/output_0_sqmuxa_net_1\, C => 
        \discretedutycycle01/un1_paralleldata_2[7]\, Y => 
        \discretedutycycle01/N_134\);
    
    \A2DRead/DataRegU1Ch1i_RNINVOR[11]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1g[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch1i[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch1h[11]_net_1\, Y => \A2DRead/N_1623\);
    
    \A2D01reader/parallelholdreg_RNO_0[5]\ : MX2
      port map(A => \A2D01reader/parallelholdreg_7[5]\, B => 
        \A2D01reader/parallelholdreg[5]_net_1\, S => 
        \A2D01reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D01reader/N_96\);
    
    \matrix_read03/stage_RNO[3]\ : XA1C
      port map(A => \matrix_read03/stage[3]_net_1\, B => 
        \matrix_read03/N_36\, C => LogicReset_c, Y => 
        \matrix_read03/N_17\);
    
    \ioBank64reader/dataout\ : DFN1
      port map(D => \ioBank64reader/dataout_RNO_6\, CLK => 
        Clock01, Q => do64);
    
    \discretedutycycle01/paralleldata_RNO_1[10]\ : NOR3C
      port map(A => \discretedutycycle01/un1_paralleldata_1[6]\, 
        B => \discretedutycycle01/output_0_sqmuxa_0_net_1\, C => 
        \discretedutycycle01/un1_paralleldata_2[9]\, Y => 
        \discretedutycycle01/N_137\);
    
    \iobank66debounce/IOOut[2]\ : DFN1E0
      port map(D => \iobank66debounce/IOOut_3[2]\, CLK => Clock03, 
        E => \iobank66debounce/IOOut_0_sqmuxa\, Q => \ohold66[2]\);
    
    \A2DRead/DataRegU1Ch1p_RNIFCHN1_2[12]\ : MAJ3
      port map(A => \A2DRead/N_1643\, B => \A2DRead/N_1647\, C
         => \A2DRead/N_1645\, Y => \A2DRead/N_1658\);
    
    \externenablelatch/cellindex_1_sqmuxa\ : NOR2
      port map(A => \externenablelatch/un39_address\, B => 
        LogicReset_c, Y => 
        \externenablelatch/cellindex_1_sqmuxa_net_1\);
    
    \discretedutycycle01/output_RNO[4]\ : NOR2A
      port map(A => \discretedutycycle01/N_64\, B => LogicReset_c, 
        Y => \discretedutycycle01/output_RNO_3[4]\);
    
    \A2DRead/un60_dataregu1ch0_277_RNI7GAFH2\ : XO1
      port map(A => \A2DRead/N_1817\, B => 
        \A2DRead/un60_dataregu1ch0_354_0\, C => 
        \A2DRead/un60_dataregu1ch0_172\, Y => 
        \A2DRead/un60_dataregu1ch0_363_0_tz_0\);
    
    \A2DRead/un60_dataregu1ch1_0_1_CO3_1\ : XA1
      port map(A => \A2DRead/N_1389\, B => 
        \A2DRead/un60_dataregu1ch1_84_0\, C => \A2DRead/CO3_0\, Y
         => \A2DRead/CO3_1\);
    
    \iobank63debounce/DebounceTimer_RNO[8]\ : MX2A
      port map(A => \iobank63debounce/Changing_net_1\, B => 
        \iobank63debounce/N_48\, S => 
        \iobank63debounce/DebounceTimere\, Y => 
        \iobank63debounce/DebounceTimer_RNO_2[8]\);
    
    \A2DRead/DataRegU1Ch1o_RNI2UPT_0[5]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1o[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch1n[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch1m[5]_net_1\, Y => \A2DRead/N_1452\);
    
    \A2DRead/DataRegU1Ch0f_RNIPS007[6]\ : AO1
      port map(A => \A2DRead/N_1858\, B => \A2DRead/N_1833\, C
         => \A2DRead/un60_dataregu1ch0_408_0\, Y => 
        \A2DRead/N_1867\);
    
    \A2DRead/DataRegU1Ch0i_RNI845L[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0j[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch0l[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch0i[1]_net_1\, Y => 
        \A2DRead/un60_dataregu1ch0_29_2\);
    
    \A2DRead/DatHldRegU1Ch1[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch1_1_sqmuxa\, Q => 
        \ohold51[6]\);
    
    \ioBank60reader/dataout_RNO\ : OR2
      port map(A => \A2D01reader.dataout_0_0\, B => 
        \ioBank60reader/dataout_57\, Y => 
        \ioBank60reader/dataout_RNO_2_net_1\);
    
    \iobank61debounce/DebounceTimer_RNO[8]\ : MX2A
      port map(A => \iobank61debounce/Changing_net_1\, B => 
        \iobank61debounce/N_48\, S => 
        \iobank61debounce/DebounceTimere\, Y => 
        \iobank61debounce/DebounceTimer_RNO_0[8]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIH92SC[3]\ : AO18
      port map(A => \A2DRead/N_1437\, B => 
        \A2DRead/un60_i1_mux_0_1\, C => \A2DRead/N_1435\, Y => 
        \A2DRead/un60_i3_mux_1\);
    
    \A2DRead/DataRegU1Ch0l[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0k[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0l[2]_net_1\);
    
    SerialOut_pad_RNO_1 : NOR3C
      port map(A => do62, B => do61, C => SerialOut_4, Y => 
        SerialOut_9);
    
    \discretedutycycle01/output_RNO_0[8]\ : MX2
      port map(A => \dutycycle01[8]\, B => 
        \discretedutycycle01/paralleldata[8]_net_1\, S => 
        \discretedutycycle01/output_0_sqmuxa_0_net_1\, Y => 
        \discretedutycycle01/N_68\);
    
    \A2DRead/DataRegU1Ch0a[6]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[6]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch0a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0a[6]_net_1\);
    
    \firmware/parallelholdreg[6]\ : DFN1
      port map(D => \firmware/parallelholdreg_RNO[6]_net_1\, CLK
         => Clock01, Q => \firmware/parallelholdreg[6]_net_1\);
    
    \bitcontrol01latch/cellindex_RNO[1]\ : XA1
      port map(A => \bitcontrol01latch/cellindex[1]_net_1\, B => 
        \bitcontrol01latch/cellindex[0]_net_1\, C => 
        \ioBank60reader.cellindex_1_sqmuxa_1_1\, Y => 
        \bitcontrol01latch/cellindex_n1\);
    
    \A2D01reader/parallelholdreg_0_sqmuxa_4\ : NOR2A
      port map(A => \internaddr[6]\, B => \internaddr[1]\, Y => 
        \A2D01reader.parallelholdreg_0_sqmuxa_4\);
    
    \A2D00reader/dataout_RNO_4\ : MX2
      port map(A => \A2D00reader/N_72\, B => \A2D00reader/N_73\, 
        S => \A2D00reader/cellindex[1]_net_1\, Y => 
        \A2D00reader/N_74\);
    
    \iobank62debounce/DebounceTimer_RNO[7]\ : XA1
      port map(A => \iobank62debounce/DebounceTimer_c6\, B => 
        \iobank62debounce/DebounceTimer[7]_net_1\, C => 
        \iobank62debounce/un1_previousposition7\, Y => 
        \iobank62debounce/DebounceTimer_n7\);
    
    \A2DRead/DataRegU1Ch1d[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1c[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1d[4]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I91_Y\ : AX1D
      port map(A => \A2DRead/I70_un1_Y\, B => 
        \A2DRead/ADD_11x11_fast_I70_Y_2\, C => 
        \A2DRead/ADD_11x11_fast_I91_Y_0\, Y => 
        \A2DRead/un60_dataregu1ch0[14]\);
    
    \A2DRead/DataRegU1Ch0g_RNITV362_0[8]\ : MAJ3
      port map(A => \A2DRead/N_1883\, B => \A2DRead/N_1887\, C
         => \A2DRead/N_1885\, Y => \A2DRead/N_1919\);
    
    \A2DRead/DataRegU1Ch1f_RNI0T0M2_0[7]\ : MAJ3
      port map(A => \A2DRead/N_1537\, B => \A2DRead/N_1514\, C
         => \A2DRead/N_1539\, Y => \A2DRead/N_1548\);
    
    \discretedutycycle01/output_RNO_0[10]\ : MX2
      port map(A => \dutycycle01[10]\, B => 
        \discretedutycycle01/paralleldata[10]_net_1\, S => 
        \discretedutycycle01/output_0_sqmuxa_0_net_1\, Y => 
        \discretedutycycle01/N_70\);
    
    \AdClock_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => AdClock_c, E => \VCC\, DOUT => 
        \AdClock_pad/U0/NET1\, EOUT => \AdClock_pad/U0/NET2\);
    
    \A2DRead/DataRegU1Ch0g_RNI3T0D6[11]\ : XOR3
      port map(A => \A2DRead/N_2005\, B => \A2DRead/N_2018\, C
         => \A2DRead/N_2003\, Y => \A2DRead/N_2022\);
    
    \iobank69debounce/Changing_RNIQNAR\ : NOR2
      port map(A => \iobank69debounce/Changing_0\, B => 
        LogicReset_c, Y => 
        \iobank69debounce/un1_previousposition7\);
    
    \A2DRead/step_RNIELD03[4]\ : NOR2A
      port map(A => \A2DRead/N_114\, B => \A2DRead/step[4]_net_1\, 
        Y => \A2DRead/N_115\);
    
    \A2DRead/step_RNIAV9T2[3]\ : AO1A
      port map(A => \A2DRead/step[3]_net_1\, B => 
        \A2DRead/step_c1\, C => \A2DRead/N_118\, Y => 
        \A2DRead/N_72\);
    
    \ioBank64reader/cellindex[1]\ : DFN1
      port map(D => \ioBank64reader/cellindex_RNO_1[1]\, CLK => 
        SerialClock_c, Q => \ioBank64reader/cellindex[1]_net_1\);
    
    \ioBank65reader/parallelholdreg[0]\ : DFN1
      port map(D => \ioBank65reader/parallelholdreg_RNO_6[0]\, 
        CLK => Clock01, Q => 
        \ioBank65reader/parallelholdreg[0]_net_1\);
    
    \discretedutycycle01/paralleldata[8]\ : DFN1
      port map(D => 
        \discretedutycycle01/paralleldata_RNO[8]_net_1\, CLK => 
        SerialClock_c, Q => 
        \discretedutycycle01/paralleldata[8]_net_1\);
    
    \A2DRead/DataRegU1Ch1m_RNI657N[10]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1m[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch1o[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch1n[10]_net_1\, Y => \A2DRead/N_1591\);
    
    \A2D01reader/parallelholdreg_RNO[7]\ : OR2
      port map(A => \A2D01reader/N_98\, B => LogicReset_c, Y => 
        \A2D01reader/parallelholdreg_RNO_1[7]_net_1\);
    
    \iobank69debounce/DebounceTimer_RNI6NI91_0[8]\ : OR2B
      port map(A => \iobank69debounce/DebounceTimer[8]_net_1\, B
         => \iobank69debounce/un1_previousposition7\, Y => 
        \iobank69debounce/DebounceTimere\);
    
    \snkpout01/PWMOut_3_0_I_43\ : OA1
      port map(A => \snkpout01/N_11\, B => \snkpout01/N_10\, C
         => \snkpout01/N_9\, Y => 
        \snkpout01/DWACT_CMPLE_PO2_DWACT_COMP0_E[2]\);
    
    \pwmdisable01latch/output_RNO_0[0]\ : MX2
      port map(A => \pwmdisable01[0]\, B => 
        \pwmdisable01latch/paralleldata[0]_net_1\, S => 
        \pwmdisable01latch/output_0_sqmuxa_net_1\, Y => 
        \pwmdisable01latch/N_44\);
    
    \Watch_Dog_Reset/timercount[1]\ : DFN1E0
      port map(D => \Watch_Dog_Reset/timercount_n1\, CLK => 
        \counter[1]\, E => \Watch_Dog_Reset/timercount_0_sqmuxa\, 
        Q => \Watch_Dog_Reset/timercount[1]_net_1\);
    
    \A2DRead/DataRegU1Ch0b[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0a[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0b[5]_net_1\);
    
    \matrix_read04/stage_RNI1T3[2]\ : NOR2B
      port map(A => \matrix_read04/stage[3]_net_1\, B => 
        \matrix_read04/stage[2]_net_1\, Y => 
        \matrix_read04/ctrl15_m1_e_0_1\);
    
    \pwmdisable01latch/paralleldata_RNO_0[2]\ : MX2
      port map(A => \pwmdisable01latch/paralleldata[2]_net_1\, B
         => SerialIn_c, S => \pwmdisable01latch/N_96\, Y => 
        \pwmdisable01latch/N_96_mux\);
    
    \matrix_read03/dataOut03[1]\ : DFN1
      port map(D => \matrix_read03/data03[1]_net_1\, CLK => 
        Clock03, Q => \dhold65[1]\);
    
    \A2DRead/DataRegU1Ch1k[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1j[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1k[4]_net_1\);
    
    \externenablelatch/output_0_sqmuxa\ : NOR2A
      port map(A => \externenablelatch/un39_address\, B => 
        SerialLoad_c, Y => 
        \externenablelatch/output_0_sqmuxa_net_1\);
    
    \ioBank68reader/cellindex_RNO[1]\ : NOR3A
      port map(A => \ioBank68reader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank68reader/un1_latch_1\, Y => 
        \ioBank68reader/cellindex_RNO_5[1]\);
    
    \A2DRead/DataRegU1Ch1j_RNIMVT31[4]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1j[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch1l[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch1k[4]_net_1\, Y => \A2DRead/N_1425\);
    
    \iobank69debounce/IOOut_RNO[2]\ : MX2B
      port map(A => \iobank69debounce/PreviousPosition[2]_net_1\, 
        B => \dhold69[2]\, S => LogicReset_c, Y => 
        \iobank69debounce/IOOut_3[2]\);
    
    \externenablelatch/paralleldata_RNO_1[0]\ : NOR3A
      port map(A => \externenablelatch/paralleldata_0_e_0[3]\, B
         => \externenablelatch/cellindex[1]_net_1\, C => 
        \externenablelatch/cellindex[0]_net_1\, Y => 
        \externenablelatch/N_92\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I36_Y\ : NOR2B
      port map(A => \A2DRead/N191\, B => \A2DRead/N195\, Y => 
        \A2DRead/N216\);
    
    \A2DRead/DataRegU1Ch0f_RNI27KQ1_0[3]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0f[3]_net_1\, B => 
        \A2DRead/N_1721\, C => \A2DRead/N_1719\, Y => 
        \A2DRead/N_1751\);
    
    \A2DRead/DataRegU1Ch0f_RNI8OKAA2[2]\ : AO1
      port map(A => \A2DRead/N_1762\, B => 
        \A2DRead/un60_dataregu1ch0_153_0_tz\, C => 
        \A2DRead/un60_dataregu1ch0_89\, Y => \A2DRead/N_1765\);
    
    \A2DRead/DataRegU1Ch0p[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0o[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0p[3]_net_1\);
    
    \iobank65debounce/DebounceTimer_RNI3STP[2]\ : NOR2B
      port map(A => \iobank65debounce/DebounceTimer_c1\, B => 
        \iobank65debounce/DebounceTimer[2]_net_1\, Y => 
        \iobank65debounce/DebounceTimer_c2\);
    
    \A2DRead/DataInReg[11]\ : DFN1E1
      port map(D => AdDout_c, CLK => Clock04, E => 
        \A2DRead/N_2184\, Q => \A2DRead/DataInReg[11]_net_1\);
    
    \ioBank64reader/cellindex_RNIKLHJ[1]\ : OR2
      port map(A => \ioBank64reader/cellindex[1]_net_1\, B => 
        SerialLoad_c, Y => \ioBank64reader/un1_latch_1\);
    
    \A2DRead/DataRegU1Ch1e[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1d[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1e[2]_net_1\);
    
    \iobank62debounce/Changing_RNIJ0FL\ : NOR2
      port map(A => \iobank62debounce/Changing_net_1\, B => 
        LogicReset_c, Y => 
        \iobank62debounce/un1_previousposition7\);
    
    \A2DRead/DataRegU1Ch1d[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1c[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1d[5]_net_1\);
    
    \ioBank62reader/parallelholdreg_RNO_1[0]\ : OR2
      port map(A => \ohold62[0]\, B => SerialLoad_c, Y => 
        \ioBank62reader/parallelholdreg_7[0]\);
    
    \A2DRead/DataRegU1Ch1g_RNIG72Q_0[5]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1i[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch1h[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch1g[5]_net_1\, Y => \A2DRead/N_1456\);
    
    \A2DRead/DataRegU1Ch1f_RNICQJHG3_0[2]\ : MAJ3
      port map(A => \A2DRead/N_1441\, B => \A2DRead/N_1443\, C
         => \A2DRead/N_1418\, Y => \A2DRead/N_1446\);
    
    \iobank61debounce/IOOut[3]\ : DFN1E0
      port map(D => \iobank61debounce/IOOut_8[3]\, CLK => Clock03, 
        E => \iobank61debounce/IOOut_0_sqmuxa\, Q => \ohold61[3]\);
    
    \snkpout01/counter[3]\ : DFN1
      port map(D => \snkpout01/counter_n3\, CLK => Clock04, Q => 
        \snkpout01/counter[3]_net_1\);
    
    \iobank66debounce/Changing_RNO\ : XOR2
      port map(A => \iobank66debounce/CurrentPosition[0]_net_1\, 
        B => \iobank66debounce/PreviousPosition[0]_net_1\, Y => 
        \iobank66debounce/Changing_0\);
    
    \A2DRead/DataRegU1Ch1c_RNI43TC_0[5]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1e[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch1d[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch1c[5]_net_1\, Y => \A2DRead/N_1448\);
    
    \iobank60debounce/Changing_RNO\ : XOR2
      port map(A => \iobank60debounce/PreviousPosition[0]_net_1\, 
        B => \iobank60debounce/CurrentPosition[0]_net_1\, Y => 
        \iobank60debounce/Changing_0\);
    
    \matrix_read03/stage_RNIR6RL[0]\ : OR2B
      port map(A => \matrix_read03/stage[0]_net_1\, B => 
        \matrix_read03/stage[1]_net_1\, Y => \matrix_read03/N_26\);
    
    \A2DRead/DataRegU1Ch0d[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0c[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0d[12]_net_1\);
    
    \A2DRead/DataRegU1Ch0p[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0o[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0p[6]_net_1\);
    
    \matrix_read04/stage_RNO[4]\ : NOR3
      port map(A => \matrix_read04/stage_N_3_mux\, B => 
        LogicReset_c, C => \matrix_read04/N_55\, Y => 
        \matrix_read04/N_15\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I47_Y\ : AO1
      port map(A => \A2DRead/N206\, B => \A2DRead/N203_0\, C => 
        \A2DRead/N202\, Y => \A2DRead/N227_0\);
    
    \ioBank6Areader/cellindex[1]\ : DFN1
      port map(D => \ioBank6Areader/cellindex_RNO_7[1]\, CLK => 
        SerialClock_c, Q => \ioBank6Areader/cellindex[1]_net_1\);
    
    \iobank69debounce/DebounceTimer[5]\ : DFN1E1
      port map(D => \iobank69debounce/DebounceTimer_n5\, CLK => 
        Clock03, E => \iobank69debounce/DebounceTimere\, Q => 
        \iobank69debounce/DebounceTimer[5]_net_1\);
    
    \matrix_read04/dataOut01_RNIVH39[2]\ : INV
      port map(A => \dhold68[2]\, Y => \dhold68_i[2]\);
    
    \ioBank63reader/dataout_RNO_1\ : NOR2B
      port map(A => \ioBank63reader/parallelholdreg[1]_net_1\, B
         => \ioBank63reader/cellindex[0]_net_1\, Y => 
        \ioBank63reader/parallelholdreg_m[1]\);
    
    \A2DRead/DataRegU1Ch1o_RNICLAF1[8]\ : XOR3
      port map(A => \A2DRead/N_1533\, B => \A2DRead/N_1531\, C
         => \A2DRead/N_1535\, Y => \A2DRead/N_1545\);
    
    \A2DRead/DataRegU1Ch0g_RNI8DVRB_0[12]\ : MAJ3
      port map(A => \A2DRead/N_2007\, B => \A2DRead/N_2009\, C
         => \A2DRead/N_2020\, Y => \A2DRead/N_2025\);
    
    \externenablelatch/paralleldata_RNO_1[5]\ : NOR3B
      port map(A => \externenablelatch/cellindex[0]_net_1\, B => 
        \externenablelatch/paralleldata_0_e_0[5]\, C => 
        \externenablelatch/cellindex[1]_net_1\, Y => 
        \externenablelatch/N_97\);
    
    \A2DRead/DataRegU1Ch1g[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1f[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1g[4]_net_1\);
    
    \A2DRead/DataRegU1Ch0g[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0f[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0g[10]_net_1\);
    
    \iobank67debounce/IOOut[0]\ : DFN1E0
      port map(D => \iobank67debounce/IOOut_3[0]\, CLK => Clock03, 
        E => \iobank67debounce/IOOut_0_sqmuxa\, Q => \ohold67[0]\);
    
    \iobank67debounce/DebounceTimer_RNO_0[8]\ : NOR3C
      port map(A => \iobank67debounce/un1_previousposition7\, B
         => \iobank67debounce/DebounceTimer[7]_net_1\, C => 
        \iobank67debounce/DebounceTimer_c6\, Y => 
        \iobank67debounce/N_48\);
    
    \A2D00reader/parallelholdreg_RNO_1[4]\ : OR2
      port map(A => \ohold50[4]\, B => SerialLoad_c, Y => 
        \A2D00reader/parallelholdreg_7[4]\);
    
    \A2DRead/DataRegU1Ch0d_RNI4QAG[6]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0c[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch0e[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch0d[6]_net_1\, Y => \A2DRead/N_1822\);
    
    \iobank66debounce/CurrentPosition[2]\ : DFN1
      port map(D => \dhold66_i[2]\, CLK => Clock03, Q => 
        \iobank66debounce/CurrentPosition[2]_net_1\);
    
    \A2DRead/DataInReg_RNO_0[3]\ : NOR3B
      port map(A => \A2DRead/step[4]_net_1\, B => 
        \A2DRead/N_2137\, C => \A2DRead/step[2]_net_1\, Y => 
        \A2DRead/DataInReg_322_e_1\);
    
    \AdDout_pad/U0/U0\ : IOPAD_IN
      port map(PAD => AdDout, Y => \AdDout_pad/U0/NET1\);
    
    \A2DRead/DataRegU1Ch0p_RNICPRN_0[10]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0b[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch0a[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch0p[10]_net_1\, Y => \A2DRead/N_1937\);
    
    \A2D01reader/parallelholdreg_RNO_0[0]\ : MX2
      port map(A => \A2D01reader/parallelholdreg_7[0]\, B => 
        \A2D01reader/parallelholdreg[0]_net_1\, S => 
        \A2D01reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D01reader/N_91\);
    
    \A2DRead/DataRegU1Ch1c_RNIOMSC[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1c[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1d[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch1e[1]_net_1\, Y => \A2DRead/N_1357\);
    
    \ioBank66reader/parallelholdreg_RNO[1]\ : OR2
      port map(A => \ioBank66reader/N_24\, B => LogicReset_c, Y
         => \ioBank66reader/parallelholdreg_RNO_7[1]\);
    
    \heart_beat/un1_counter_1_m24\ : AX1C
      port map(A => \heart_beat/counter[14]_net_1\, B => 
        \heart_beat/N_19_i\, C => \heart_beat/counter[15]_net_1\, 
        Y => \heart_beat/m24\);
    
    \iobank65debounce/DebounceTimer_RNO_0[4]\ : NOR2B
      port map(A => \iobank65debounce/DebounceTimer_c2\, B => 
        \iobank65debounce/DebounceTimer[3]_net_1\, Y => 
        \iobank65debounce/DebounceTimer_c3\);
    
    \A2DRead/DataRegU1Ch1f_RNINHVN[5]\ : XOR3
      port map(A => \A2DRead/N_1422\, B => 
        \A2DRead/DataRegU1Ch1f[5]_net_1\, C => \A2DRead/N_1420\, 
        Y => \A2DRead/N_1457\);
    
    \matrix_read03/dataOut03_RNIU8RA[0]\ : INV
      port map(A => \dhold65[0]\, Y => \dhold65_i[0]\);
    
    \iobank60debounce/IOOut_RNO[3]\ : MX2B
      port map(A => \iobank60debounce/PreviousPosition[3]_net_1\, 
        B => \inputs60_c[3]\, S => LogicReset_c, Y => 
        \iobank60debounce/IOOut_8[3]\);
    
    \A2DRead/DataRegU1Ch0[15]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch0[14]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0[15]_net_1\);
    
    \iobank66debounce/DebounceTimer_RNO[4]\ : XA1
      port map(A => \iobank66debounce/DebounceTimer_c3\, B => 
        \iobank66debounce/DebounceTimer[4]_net_1\, C => 
        \iobank66debounce/un1_previousposition7\, Y => 
        \iobank66debounce/DebounceTimer_n4\);
    
    \Watch_Dog_Reset/timercount_RNI1I923[8]\ : NOR3C
      port map(A => \Watch_Dog_Reset/m8_m4_0_a2_2\, B => 
        \Watch_Dog_Reset/m8_m4_0_a2_1\, C => 
        \Watch_Dog_Reset/m8_m4_0_a2_3\, Y => 
        \Watch_Dog_Reset/m8_m4_0_a2_5\);
    
    \iobank64debounce/DebounceTimer[3]\ : DFN1E1
      port map(D => \iobank64debounce/DebounceTimer_n3\, CLK => 
        Clock03, E => \iobank64debounce/DebounceTimere\, Q => 
        \iobank64debounce/DebounceTimer[3]_net_1\);
    
    \pwmdisable01latch/output_RNO[0]\ : NOR2A
      port map(A => \pwmdisable01latch/N_44\, B => LogicReset_c, 
        Y => \pwmdisable01latch/output_RNO_2[0]\);
    
    \A2DRead/DataRegU1Ch1n[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1m[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1n[7]_net_1\);
    
    \ioBank67reader/parallelholdreg_RNO_1[0]\ : OR2
      port map(A => \ohold67[0]\, B => SerialLoad_c, Y => 
        \ioBank67reader/parallelholdreg_7[0]\);
    
    \A2DRead/DatHldRegU1Ch1[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1[14]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch1_1_sqmuxa\, Q => 
        \ohold51[9]\);
    
    \iobank63debounce/DebounceTimer_RNI9IH91[6]\ : NOR3C
      port map(A => \iobank63debounce/DebounceTimer[4]_net_1\, B
         => \iobank63debounce/DebounceTimer[6]_net_1\, C => 
        \iobank63debounce/DebounceTimer[5]_net_1\, Y => 
        \iobank63debounce/DebounceTimer_m2_0_a2_2\);
    
    \A2DRead/AdClock_RNO_4\ : XA1A
      port map(A => \A2DRead/step[5]_net_1\, B => \A2DRead/N_17\, 
        C => \A2DRead/step[1]_net_1\, Y => \A2DRead/N_17_mux\);
    
    \addresslatch/output[1]\ : DFN1
      port map(D => \addresslatch/output_RNO[1]_net_1\, CLK => 
        Clock01, Q => \internaddr[1]\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I72_un1_Y_0\ : 
        NOR2B
      port map(A => \A2DRead/N_2114\, B => \A2DRead/N228\, Y => 
        \A2DRead/ADD_11x11_fast_I72_un1_Y_0_0\);
    
    \bitcontrol01latch/paralleldata[3]\ : DFN1
      port map(D => 
        \bitcontrol01latch/paralleldata_RNO_1[3]_net_1\, CLK => 
        SerialClock_c, Q => 
        \bitcontrol01latch/paralleldata[3]_net_1\);
    
    \ExternalHardwareEn_pad[6]/U0/U0\ : IOPAD_TRI
      port map(D => \ExternalHardwareEn_pad[6]/U0/NET1\, E => 
        \ExternalHardwareEn_pad[6]/U0/NET2\, PAD => 
        ExternalHardwareEn(6));
    
    \bitcontrol01latch/CellIndexUpdate.un26_address_4\ : NOR2
      port map(A => \internaddr[6]\, B => \internaddr[5]\, Y => 
        \externenablelatch.CellIndexUpdate.un39_address_4\);
    
    \A2DRead/DataRegU1Ch0a[9]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[9]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch0a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0a[9]_net_1\);
    
    \iobank67debounce/DebounceTimer_RNO[4]\ : XA1
      port map(A => \iobank67debounce/DebounceTimer_c3\, B => 
        \iobank67debounce/DebounceTimer[4]_net_1\, C => 
        \iobank67debounce/un1_previousposition7\, Y => 
        \iobank67debounce/DebounceTimer_n4\);
    
    \A2DRead/DataRegU1Ch0d_RNIG4OVB_0[8]\ : XOR3
      port map(A => \A2DRead/N_1892\, B => \A2DRead/N_1890\, C
         => \A2DRead/N_1867\, Y => \A2DRead/N_1898\);
    
    \heart_beat/un1_counter_1_m32\ : AX1C
      port map(A => \heart_beat/counter[6]_net_1\, B => 
        \heart_beat/N_11_i\, C => \heart_beat/counter[7]_net_1\, 
        Y => \heart_beat/m32\);
    
    \iobank68debounce/PreviousPosition[2]\ : DFN1
      port map(D => \iobank68debounce/PreviousPosition_3[2]\, CLK
         => Clock03, Q => 
        \iobank68debounce/PreviousPosition[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0i[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0h[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0i[6]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_277_RNI61O9K3\ : XA1
      port map(A => \A2DRead/N_1817\, B => 
        \A2DRead/un60_dataregu1ch0_354_0\, C => \A2DRead/N_1819\, 
        Y => \A2DRead/un60_dataregu1ch0_217\);
    
    \AdCs1_pad/U0/U0\ : IOPAD_TRI
      port map(D => \AdCs1_pad/U0/NET1\, E => \AdCs1_pad/U0/NET2\, 
        PAD => AdCs1);
    
    \A2DRead/DataRegU1Ch1i_RNIT7A332_0[12]\ : MAJ3
      port map(A => \A2DRead/N_1677\, B => \A2DRead/N_1668\, C
         => \A2DRead/N_1679\, Y => \A2DRead/N_1682\);
    
    \A2DRead/step_RNO[7]\ : XA1C
      port map(A => \A2DRead/step[7]_net_1\, B => \A2DRead/N_68\, 
        C => LogicReset_c, Y => \A2DRead/N_45\);
    
    \bitcontrol01latch/paralleldata_RNO_1[3]\ : NOR3B
      port map(A => \bitcontrol01latch/output_0_sqmuxa_net_1\, B
         => \bitcontrol01latch/cellindex_c1\, C => 
        \bitcontrol01latch/cellindex[2]_net_1\, Y => 
        \bitcontrol01latch/N_97\);
    
    \A2DRead/step_RNO[8]\ : XA1C
      port map(A => \A2DRead/step[8]_net_1\, B => \A2DRead/N_71\, 
        C => LogicReset_c, Y => \A2DRead/N_43\);
    
    \A2DRead/DataInReg_RNO[11]\ : NOR3C
      port map(A => \A2DRead/i8_mux_0\, B => \A2DRead/m50_0\, C
         => \A2DRead/DataInReg_330_e_0\, Y => \A2DRead/N_2184\);
    
    \iobank60debounce/CurrentPosition_RNO[1]\ : INV
      port map(A => \inputs60_c[1]\, Y => 
        \iobank60debounce/inputs60_c_i[1]\);
    
    \A2DRead/DataRegU1Ch0f_RNIGD4KG[5]\ : XOR3
      port map(A => \A2DRead/N_1838\, B => \A2DRead/N_1840\, C
         => \A2DRead/N_1813\, Y => \A2DRead/N_1844\);
    
    \pwmdisable01latch/cellindex_RNO[0]\ : NOR2A
      port map(A => \ioBank60reader.cellindex_1_sqmuxa_1_1\, B
         => \pwmdisable01latch/cellindex[0]_net_1\, Y => 
        \pwmdisable01latch/N_79\);
    
    \snkpout01/PWMOut_RNO\ : NOR2A
      port map(A => \snkpout01/PWMOut_3\, B => LogicReset_c, Y
         => \snkpout01/PWMOut_RNO_net_1\);
    
    \matrix_read04/dataOut02[1]\ : DFN1
      port map(D => \matrix_read04/data02[1]_net_1\, CLK => 
        Clock03, Q => \dhold69[1]\);
    
    \addresslatch/paralleldata_RNO[5]\ : NOR2A
      port map(A => \addresslatch/N_88_mux\, B => LogicReset_c, Y
         => \addresslatch/paralleldata_RNO[5]_net_1\);
    
    \iobank62debounce/Changing_RNO\ : XOR2
      port map(A => \iobank62debounce/CurrentPosition[0]_net_1\, 
        B => \iobank62debounce/PreviousPosition[0]_net_1\, Y => 
        \iobank62debounce/Changing_0\);
    
    \A2DRead/DataRegU1Ch1f_RNIK62I1[6]\ : NOR2B
      port map(A => \A2DRead/N_1511\, B => \A2DRead/N_1486\, Y
         => \A2DRead/un60_dataregu1ch1_244\);
    
    \A2DRead/DataRegU1Ch0o[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0n[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0o[1]_net_1\);
    
    \A2DRead/DataInReg_RNO[4]\ : NOR3C
      port map(A => \A2DRead/i8_mux_0\, B => \A2DRead/m50_0\, C
         => \A2DRead/DataInReg_323_e_0\, Y => \A2DRead/N_2177\);
    
    \iobank62debounce/Changing\ : DFN1E0
      port map(D => \iobank62debounce/Changing_0\, CLK => Clock03, 
        E => LogicReset_c, Q => \iobank62debounce/Changing_net_1\);
    
    \discretedutycycle01/output[4]\ : DFN1
      port map(D => \discretedutycycle01/output_RNO_3[4]\, CLK
         => Clock01, Q => \dutycycle01[4]\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I90_Y\ : AX1D
      port map(A => \A2DRead/I57_un1_Y_0\, B => 
        \A2DRead/ADD_11x11_fast_I71_Y_1\, C => 
        \A2DRead/ADD_11x11_fast_I90_Y_0\, Y => 
        \A2DRead/un60_dataregu1ch1[13]\);
    
    \A2DRead/DataRegU1Ch1i_RNI348GE[12]\ : XOR3
      port map(A => \A2DRead/N_1659\, B => \A2DRead/N_1661\, C
         => \A2DRead/N_1634\, Y => \A2DRead/N_1665\);
    
    \iobank6Adebounce/DebounceTimer_RNO[5]\ : XA1
      port map(A => \iobank6Adebounce/DebounceTimer_c4\, B => 
        \iobank6Adebounce/DebounceTimer[5]_net_1\, C => 
        \iobank6Adebounce/un1_previousposition7\, Y => 
        \iobank6Adebounce/DebounceTimer_n5\);
    
    \discretedutycycle01/paralleldata_RNO_1[3]\ : NOR3C
      port map(A => \discretedutycycle01/cellindex_c1\, B => 
        \discretedutycycle01/output_0_sqmuxa_net_1\, C => 
        \discretedutycycle01/un1_paralleldata_2[3]\, Y => 
        \discretedutycycle01/N_130\);
    
    \A2DRead/DataRegU1Ch0f[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0e[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0f[4]_net_1\);
    
    \A2DRead/DataRegU1Ch1i[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1h[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1i[2]_net_1\);
    
    \A2D00reader/dataout_RNO_2\ : MX2
      port map(A => \A2D00reader/N_76_0\, B => \A2D00reader/N_77\, 
        S => \A2D00reader/cellindex[0]_net_1\, Y => 
        \A2D00reader/N_78\);
    
    \externenablelatch/cellindex[2]\ : DFN1E0
      port map(D => \externenablelatch/cellindex_n2\, CLK => 
        SerialClock_c, E => 
        \externenablelatch/cellindex_1_sqmuxa_net_1\, Q => 
        \externenablelatch/cellindex[2]_net_1\);
    
    \A2DRead/step_RNI3L2F4_1[3]\ : NOR3B
      port map(A => \A2DRead/N_115\, B => \A2DRead/N_54\, C => 
        \A2DRead/step[3]_net_1\, Y => 
        \A2DRead/DataRegU1Ch0m_1_sqmuxa\);
    
    \ioBank66reader/parallelholdreg_RNO_0[2]\ : MX2
      port map(A => \ioBank66reader/parallelholdreg_7[2]\, B => 
        \ioBank66reader/parallelholdreg[2]_net_1\, S => 
        \ioBank66reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank66reader/N_25\);
    
    \iobank64debounce/DebounceTimer[6]\ : DFN1E1
      port map(D => \iobank64debounce/DebounceTimer_n6\, CLK => 
        Clock03, E => \iobank64debounce/DebounceTimere\, Q => 
        \iobank64debounce/DebounceTimer[6]_net_1\);
    
    \A2DRead/DataRegU1Ch0p_RNIBF081[6]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0b[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch0p[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch0a[6]_net_1\, Y => \A2DRead/N_1824\);
    
    \iobank61debounce/DebounceTimer_RNO[2]\ : XA1
      port map(A => \iobank61debounce/DebounceTimer[2]_net_1\, B
         => \iobank61debounce/DebounceTimer_c1\, C => 
        \iobank61debounce/un1_previousposition7\, Y => 
        \iobank61debounce/DebounceTimer_n2\);
    
    \A2DRead/DataRegU1Ch1g_RNIG72Q[5]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1g[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch1i[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch1h[5]_net_1\, Y => \A2DRead/N_1455\);
    
    \matrix_read04/data03[0]\ : DFN1E1
      port map(D => \inputs67_c[0]\, CLK => Clock03, E => 
        \matrix_read04/ctrl18\, Q => 
        \matrix_read04/data03[0]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I9_G0N\ : NOR2B
      port map(A => \A2DRead/N_2032\, B => \A2DRead/N_2029\, Y
         => \A2DRead/N180\);
    
    \iobank66debounce/CurrentPosition[1]\ : DFN1
      port map(D => \dhold66_i[1]\, CLK => Clock03, Q => 
        \iobank66debounce/CurrentPosition[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNI64135[3]\ : XOR3
      port map(A => \A2DRead/N_1403\, B => \A2DRead/N_1386\, C
         => \A2DRead/N_1384\, Y => \A2DRead/N_1411\);
    
    \A2D01reader/parallelholdreg_RNO_1[5]\ : OR2
      port map(A => \ohold51[5]\, B => SerialLoad_c, Y => 
        \A2D01reader/parallelholdreg_7[5]\);
    
    \ioBank63reader/cellindex_RNITI7C[1]\ : NOR2
      port map(A => \ioBank63reader/cellindex[1]_net_1\, B => 
        \ioBank63reader/cellindex[0]_net_1\, Y => 
        \ioBank63reader/_decfrac0\);
    
    \bitcontrol01latch/cellindex[0]\ : DFN1E0
      port map(D => \bitcontrol01latch/N_79\, CLK => 
        SerialClock_c, E => 
        \bitcontrol01latch/cellindex_1_sqmuxa_net_1\, Q => 
        \bitcontrol01latch/cellindex[0]_net_1\);
    
    \A2DRead/DatHldRegU1Ch0[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0[16]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch0_1_sqmuxa\, Q => 
        \ohold50[11]\);
    
    \A2DRead/DataRegU1Ch1f_RNIH92SC_0[3]\ : XOR3
      port map(A => \A2DRead/N_1437\, B => \A2DRead/N_1435\, C
         => \A2DRead/N_1412\, Y => \A2DRead/N_1441\);
    
    \A2DRead/DataRegU1Ch0f_RNIQD842[10]\ : XOR3
      port map(A => \A2DRead/N_1909\, B => 
        \A2DRead/DataRegU1Ch0f[10]_net_1\, C => \A2DRead/N_1907\, 
        Y => \A2DRead/N_1944\);
    
    \A2DRead/DataRegU1Ch0p_RNI59081[4]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0b[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch0p[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch0a[4]_net_1\, Y => \A2DRead/N_1768\);
    
    \iobank68debounce/IOOut[0]\ : DFN1E0
      port map(D => \iobank68debounce/IOOut_3[0]\, CLK => Clock03, 
        E => \iobank68debounce/IOOut_0_sqmuxa\, Q => \ohold68[0]\);
    
    \A2DRead/AdCs1_RNO_0\ : NOR3A
      port map(A => \A2DRead/AdCs1_2_0_0_a3_1\, B => 
        \A2DRead/step[3]_net_1\, C => \A2DRead/step_c1\, Y => 
        \A2DRead/N_102\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I81_Y\ : XOR3
      port map(A => \A2DRead/N_2093\, B => \A2DRead/N_1820\, C
         => \A2DRead/N_1793\, Y => \A2DRead/un60_dataregu1ch0[4]\);
    
    \A2DRead/DataRegU1Ch0o[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0n[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0o[7]_net_1\);
    
    \snkpout01/counter_RNO[2]\ : NOR2B
      port map(A => \snkpout01/counter_1_sqmuxa\, B => 
        \snkpout01/counter_n2_tz\, Y => \snkpout01/counter_n2\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I71_Y_0\ : AO1
      port map(A => \A2DRead/N196\, B => \A2DRead/N193\, C => 
        \A2DRead/N192_0\, Y => \A2DRead/ADD_11x11_fast_I71_Y_0\);
    
    \iobank68debounce/IOOut_RNO[1]\ : MX2B
      port map(A => \iobank68debounce/PreviousPosition[1]_net_1\, 
        B => \dhold68[1]\, S => LogicReset_c, Y => 
        \iobank68debounce/IOOut_3[1]\);
    
    \ioBank65reader/cellindex[1]\ : DFN1
      port map(D => \ioBank65reader/cellindex_RNO_2[1]\, CLK => 
        SerialClock_c, Q => \ioBank65reader/cellindex[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1j[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1i[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1j[8]_net_1\);
    
    \iobank68debounce/DebounceTimer[7]\ : DFN1E1
      port map(D => \iobank68debounce/DebounceTimer_n7\, CLK => 
        Clock03, E => \iobank68debounce/DebounceTimere\, Q => 
        \iobank68debounce/DebounceTimer[7]_net_1\);
    
    \A2DRead/DataRegU1Ch0h[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0g[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0h[10]_net_1\);
    
    \A2D01reader/parallelholdreg_RNO[6]\ : OR2
      port map(A => \A2D01reader/N_97\, B => LogicReset_c, Y => 
        \A2D01reader/parallelholdreg_RNO_1[6]_net_1\);
    
    \A2DRead/DatHldRegU1Ch0[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0[13]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch0_1_sqmuxa\, Q => 
        \ohold50[8]\);
    
    \A2DRead/DataRegU1Ch1a[4]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[4]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch1a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1a[4]_net_1\);
    
    \iobank61debounce/DebounceTimer[1]\ : DFN1E1
      port map(D => \iobank61debounce/DebounceTimer_n1\, CLK => 
        Clock03, E => \iobank61debounce/DebounceTimere\, Q => 
        \iobank61debounce/DebounceTimer[1]_net_1\);
    
    \A2DRead/step_RNID93V_2[1]\ : NOR2
      port map(A => \A2DRead/step[1]_net_1\, B => 
        \A2DRead/step[2]_net_1\, Y => \A2DRead/N_54\);
    
    \A2DRead/DatHldRegU1Ch1[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1[13]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch1_1_sqmuxa\, Q => 
        \ohold51[8]\);
    
    \ioBank69reader/parallelholdreg_RNO[2]\ : OR2
      port map(A => \ioBank69reader/N_25\, B => LogicReset_c, Y
         => \ioBank69reader/parallelholdreg_RNO_10[2]\);
    
    \A2DRead/DataRegU1Ch0p[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0o[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0p[4]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIC0IET[2]\ : XNOR3
      port map(A => \A2DRead/N_1410\, B => 
        \A2DRead/un60_dataregu1ch1_214_0_out\, C => 
        \A2DRead/un60_i1_mux_0\, Y => \A2DRead/N_1443\);
    
    \SerialLoad_pad/U0/U0\ : IOPAD_IN
      port map(PAD => SerialLoad, Y => \SerialLoad_pad/U0/NET1\);
    
    \A2DRead/DataRegU1Ch0d[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0c[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0d[6]_net_1\);
    
    \A2DRead/step_RNI3L2F4_8[3]\ : NOR2B
      port map(A => \A2DRead/N_118\, B => \A2DRead/N_115\, Y => 
        \A2DRead/DataRegU1Ch0i_1_sqmuxa\);
    
    \iobank60debounce/PreviousPosition[0]\ : DFN1
      port map(D => \iobank60debounce/PreviousPosition_3[0]\, CLK
         => Clock03, Q => 
        \iobank60debounce/PreviousPosition[0]_net_1\);
    
    \iobank62debounce/IOOut[1]\ : DFN1E0
      port map(D => \iobank62debounce/IOOut_3[1]\, CLK => Clock03, 
        E => \iobank62debounce/IOOut_0_sqmuxa\, Q => \ohold62[1]\);
    
    \A2DRead/DataRegU1Ch1a[11]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[11]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch1a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1a[11]_net_1\);
    
    \iobank6Adebounce/DebounceTimer_RNIM7TM[8]\ : OA1C
      port map(A => \iobank6Adebounce/DebounceTimer[8]_net_1\, B
         => \iobank6Adebounce/Changing_0\, C => LogicReset_c, Y
         => \iobank6Adebounce/IOOut_0_sqmuxa\);
    
    \ioBank6Areader/dataout_RNO_1\ : NOR2B
      port map(A => \ioBank6Areader/parallelholdreg[1]_net_1\, B
         => \ioBank6Areader/cellindex[0]_net_1\, Y => 
        \ioBank6Areader/parallelholdreg_m[1]\);
    
    \discretedutycycle01/output_RNO_0[4]\ : MX2
      port map(A => \dutycycle01[4]\, B => 
        \discretedutycycle01/paralleldata[4]_net_1\, S => 
        \discretedutycycle01/output_0_sqmuxa_0_net_1\, Y => 
        \discretedutycycle01/N_64\);
    
    \ioBank6Areader/dataout_RNO\ : OR3
      port map(A => \ioBank6Areader/parallelholdreg_m[2]\, B => 
        \ioBank6Areader/parallelholdreg_m[1]\, C => 
        \ioBank6Areader/dataout_0_1\, Y => 
        \ioBank6Areader/dataout_RNO_12\);
    
    \A2D01reader/cellindex_RNIM74F[1]\ : NOR2
      port map(A => \A2D01reader/cellindex[3]_net_1\, B => 
        \A2D01reader/cellindex[1]_net_1\, Y => 
        \A2D01reader/parallelholdreg_0_sqmuxa_1\);
    
    \ioBank68reader/parallelholdreg_0_sqmuxa_4\ : NOR2
      port map(A => \internaddr[2]\, B => \internaddr[4]\, Y => 
        \ioBank6Breader.parallelholdreg_0_sqmuxa_4\);
    
    \iobank69debounce/DebounceTimer_RNI6NI91[8]\ : OA1C
      port map(A => \iobank69debounce/DebounceTimer[8]_net_1\, B
         => \iobank69debounce/Changing_0\, C => LogicReset_c, Y
         => \iobank69debounce/IOOut_0_sqmuxa\);
    
    \iobank67debounce/PreviousPosition_RNO[2]\ : MX2B
      port map(A => \iobank67debounce/CurrentPosition[2]_net_1\, 
        B => \dhold67[2]\, S => LogicReset_c, Y => 
        \iobank67debounce/PreviousPosition_3[2]\);
    
    \iobank63debounce/DebounceTimer_RNO_0[3]\ : NOR2B
      port map(A => \iobank63debounce/DebounceTimer_c1\, B => 
        \iobank63debounce/DebounceTimer[2]_net_1\, Y => 
        \iobank63debounce/DebounceTimer_c2\);
    
    \A2DRead/DataRegU1Ch1p_RNIF8Q6[10]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1b[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch1p[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch1a[10]_net_1\, Y => \A2DRead/N_1589\);
    
    \A2DRead/DataRegU1Ch1d[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1c[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1d[7]_net_1\);
    
    \A2DRead/DataRegU1Ch0d_RNIRGAG[3]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0c[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch0e[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch0d[3]_net_1\, Y => \A2DRead/N_1740\);
    
    \A2DRead/DataRegU1Ch0g_RNIJ1GD[7]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0g[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch0i[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch0h[7]_net_1\, Y => \A2DRead/N_1858\);
    
    \matrix_read03/stage_RNIT0I12[5]\ : NOR3B
      port map(A => \matrix_read03/N_63\, B => 
        \matrix_read03/ctrl9_0_a3_0\, C => \matrix_read03/N_26\, 
        Y => \matrix_read03/ctrl9\);
    
    \heart_beat/counter[0]\ : DFN1
      port map(D => \heart_beat/m41\, CLK => Clock04, Q => 
        \heart_beat/counter[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0e[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0d[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0e[12]_net_1\);
    
    \LogicReset_pad/U0/U0\ : IOPAD_IN
      port map(PAD => LogicReset, Y => \LogicReset_pad/U0/NET1\);
    
    \A2DRead/DataRegU1Ch0d_RNI893V7_0[3]\ : MAJ3
      port map(A => \A2DRead/N_1752\, B => \A2DRead/N_1735\, C
         => \A2DRead/N_1754\, Y => \A2DRead/N_1761\);
    
    \A2DRead/step_RNI3L2F4_4[3]\ : NOR3B
      port map(A => \A2DRead/N_115\, B => \A2DRead/N_123\, C => 
        \A2DRead/step[3]_net_1\, Y => 
        \A2DRead/DataRegU1Ch0l_1_sqmuxa\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I3_P0N\ : XO1
      port map(A => \A2DRead/N_1875\, B => 
        \A2DRead/un60_dataregu1ch0_499_0\, C => \A2DRead/N_1877\, 
        Y => \A2DRead/N163_0\);
    
    \iobank68debounce/Changing_RNO\ : XOR2
      port map(A => \iobank68debounce/CurrentPosition[0]_net_1\, 
        B => \iobank68debounce/PreviousPosition[0]_net_1\, Y => 
        \iobank68debounce/Changing_0\);
    
    \ExternalHardwareEn_pad[5]/U0/U1\ : IOTRI_OB_EB
      port map(D => \ExternalHardwareEn_c[5]\, E => \VCC\, DOUT
         => \ExternalHardwareEn_pad[5]/U0/NET1\, EOUT => 
        \ExternalHardwareEn_pad[5]/U0/NET2\);
    
    \A2DRead/DataRegU1Ch0d_RNIQM9J41_0[8]\ : MAJ3
      port map(A => \A2DRead/N_1899\, B => \A2DRead/N_1901\, C
         => \A2DRead/N_1926\, Y => \A2DRead/N_1931\);
    
    \pwmdisable01latch/CellIndexUpdate.un13_address_1\ : NOR2B
      port map(A => \internaddr[5]\, B => \internaddr[7]\, Y => 
        \pwmdisable01latch/un13_address_1\);
    
    \iobank63debounce/DebounceTimer[4]\ : DFN1E1
      port map(D => \iobank63debounce/DebounceTimer_n4\, CLK => 
        Clock03, E => \iobank63debounce/DebounceTimere\, Q => 
        \iobank63debounce/DebounceTimer[4]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I20_Y\ : NOR2B
      port map(A => \A2DRead/N172_0\, B => \A2DRead/N169_0\, Y
         => \A2DRead/N197_0\);
    
    \A2DRead/DataRegU1Ch1p_RNI1IA17[11]\ : XOR3
      port map(A => \A2DRead/N_1627\, B => \A2DRead/N_1629\, C
         => \A2DRead/N_1604\, Y => \A2DRead/N_1635\);
    
    \discretedutycycle01/paralleldata[10]\ : DFN1
      port map(D => 
        \discretedutycycle01/paralleldata_RNO[10]_net_1\, CLK => 
        SerialClock_c, Q => 
        \discretedutycycle01/paralleldata[10]_net_1\);
    
    \A2DRead/DataRegU1Ch1g[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1f[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1g[12]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIPLRS9[2]\ : MX2A
      port map(A => \A2DRead/N_1431\, B => 
        \A2DRead/un60_i1_mux_0_0\, S => \A2DRead/un60_N_9\, Y => 
        \A2DRead/un60_i3_mux\);
    
    \iobank60debounce/DebounceTimer_RNINC9R[1]\ : NOR2B
      port map(A => \iobank60debounce/DebounceTimer[0]_net_1\, B
         => \iobank60debounce/DebounceTimer[1]_net_1\, Y => 
        \iobank60debounce/DebounceTimer_c1\);
    
    \A2DRead/step[6]\ : DFN1E0
      port map(D => \A2DRead/N_47\, CLK => Clock04, E => 
        \A2DRead/N_59\, Q => \A2DRead/step[6]_net_1\);
    
    \A2DRead/DataRegU1Ch0j_RNI23CN[9]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0j[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch0l[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch0k[9]_net_1\, Y => \A2DRead/N_1912\);
    
    \discretedutycycle01/output[6]\ : DFN1
      port map(D => \discretedutycycle01/output_RNO_3[6]\, CLK
         => Clock01, Q => \dutycycle01[6]\);
    
    \A2DRead/DataRegU1Ch1g[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1f[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1g[3]_net_1\);
    
    \pwmdisable01latch/paralleldata_RNO_0[4]\ : MX2
      port map(A => \pwmdisable01latch/paralleldata[4]_net_1\, B
         => SerialIn_c, S => \pwmdisable01latch/N_98\, Y => 
        \pwmdisable01latch/N_98_mux\);
    
    \bitcontrol01latch/output_RNO_0[7]\ : MX2
      port map(A => \bitcontrol01[7]\, B => 
        \bitcontrol01latch/paralleldata[7]_net_1\, S => 
        \bitcontrol01latch/output_0_sqmuxa_net_1\, Y => 
        \bitcontrol01latch/N_51\);
    
    \A2DRead/DataRegU1Ch1p_RNIHUI4[7]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1b[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch1p[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch1a[7]_net_1\, Y => \A2DRead/N_1505\);
    
    \ioBank67reader/cellindex_RNITU5E2[1]\ : AOI1
      port map(A => \ioBank67reader/parallelholdreg_0_sqmuxa_4\, 
        B => \ioBank62reader.parallelholdreg_0_sqmuxa_4\, C => 
        SerialLoad_c, Y => 
        \ioBank67reader/parallelholdreg_1_sqmuxa\);
    
    \iobank61debounce/CurrentPosition[0]\ : DFN1
      port map(D => \iobank61debounce/inputs61_c_i[0]\, CLK => 
        Clock03, Q => \iobank61debounce/CurrentPosition[0]_net_1\);
    
    \A2D01reader/dataout_RNO_7\ : MX2
      port map(A => \A2D01reader/parallelholdreg[0]_net_1\, B => 
        \A2D01reader/parallelholdreg[8]_net_1\, S => 
        \A2D01reader/cellindex[3]_net_1\, Y => \A2D01reader/N_69\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I64_un1_Y\ : 
        NOR3C
      port map(A => \A2DRead/N203\, B => \A2DRead/N207\, C => 
        \A2DRead/N_2093\, Y => \A2DRead/I64_un1_Y\);
    
    \A2DRead/DataRegU1Ch1f_RNION235_0[5]\ : MAJ3
      port map(A => \A2DRead/N_1457\, B => \A2DRead/N_1432\, C
         => \A2DRead/N_1434\, Y => \A2DRead/N_1466\);
    
    \iobank67debounce/PreviousPosition[0]\ : DFN1
      port map(D => \iobank67debounce/PreviousPosition_3[0]\, CLK
         => Clock03, Q => 
        \iobank67debounce/PreviousPosition[0]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_423_RNIO4AOP3\ : OR2
      port map(A => \A2DRead/un60_dataregu1ch0_503_0\, B => 
        \A2DRead/un60_dataregu1ch0_301\, Y => \A2DRead/N_1905\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I85_Y\ : AX1D
      port map(A => \A2DRead/N227\, B => \A2DRead/I64_un1_Y\, C
         => \A2DRead/ADD_11x11_fast_I85_Y_0_0\, Y => 
        \A2DRead/un60_dataregu1ch0[8]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I8_P0N\ : XO1
      port map(A => \A2DRead/N_2015\, B => 
        \A2DRead/un60_dataregu1ch0_809_0\, C => \A2DRead/N_2017\, 
        Y => \A2DRead/N178\);
    
    \A2DRead/DataRegU1Ch0g_RNIBJK33_0[11]\ : MAJ3
      port map(A => \A2DRead/N_1968\, B => \A2DRead/N_1945\, C
         => \A2DRead/N_1970\, Y => \A2DRead/N_1979\);
    
    \ioBank6Areader/cellindex_RNIHRDD2[1]\ : AOI1
      port map(A => \ioBank6Areader/parallelholdreg_0_sqmuxa_3_0\, 
        B => \ioBank6Areader/parallelholdreg_0_sqmuxa_2_0\, C => 
        SerialLoad_c, Y => 
        \ioBank6Areader/parallelholdreg_1_sqmuxa\);
    
    \snkpout01/counter_RNIR9M9[9]\ : NOR2B
      port map(A => \snkpout01/counter_c8\, B => 
        \snkpout01/counter[9]_net_1\, Y => \snkpout01/counter_c9\);
    
    \iobank63debounce/Changing\ : DFN1E0
      port map(D => \iobank63debounce/Changing_0\, CLK => Clock03, 
        E => LogicReset_c, Q => \iobank63debounce/Changing_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNINTN66[2]\ : MAJ3
      port map(A => \A2DRead/N_1717\, B => \A2DRead/N_1730\, C
         => \A2DRead/N_1728\, Y => \A2DRead/N_1737\);
    
    \A2DRead/DataRegU1Ch0g[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0f[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0g[8]_net_1\);
    
    \ioBank67reader/cellindex_RNI08471[1]\ : NOR3B
      port map(A => \internaddr[2]\, B => 
        \ioBank67reader/_decfrac0\, C => \internaddr[7]\, Y => 
        \ioBank67reader/parallelholdreg_0_sqmuxa_2\);
    
    \ioBank69reader/cellindex_RNI1BK72[1]\ : AOI1
      port map(A => 
        \ioBank69reader/parallelholdreg_0_sqmuxa_3_net_1\, B => 
        \ioBank69reader/parallelholdreg_0_sqmuxa_2\, C => 
        SerialLoad_c, Y => 
        \ioBank69reader/parallelholdreg_1_sqmuxa\);
    
    \A2DRead/DataRegU1Ch0o_RNI6VLA2_0[12]\ : MAJ3
      port map(A => \A2DRead/N_1991\, B => \A2DRead/N_1995\, C
         => \A2DRead/N_1993\, Y => \A2DRead/N_2019\);
    
    \A2DRead/DataRegU1Ch0g[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0f[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0g[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1p_RNIK1J4[8]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1b[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch1p[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch1a[8]_net_1\, Y => \A2DRead/N_1533\);
    
    \A2DRead/step_RNO_0[8]\ : OR2A
      port map(A => \A2DRead/step[7]_net_1\, B => \A2DRead/N_68\, 
        Y => \A2DRead/N_71\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I71_Y_0\ : AO1
      port map(A => \A2DRead/N196_0\, B => \A2DRead/N193_0\, C
         => \A2DRead/N192\, Y => 
        \A2DRead/ADD_11x11_fast_I71_Y_0_0\);
    
    \snkpout01/PWMOut_3_0_I_11\ : OR2A
      port map(A => \dutycycle01[9]\, B => 
        \snkpout01/counter[9]_net_1\, Y => \snkpout01/N_12\);
    
    \addresslatch/paralleldata_RNO[4]\ : NOR2A
      port map(A => \addresslatch/N_87_mux\, B => LogicReset_c, Y
         => \addresslatch/paralleldata_RNO[4]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNILUAF1[9]\ : XOR3
      port map(A => \A2DRead/N_1561\, B => \A2DRead/N_1559\, C
         => \A2DRead/N_1563\, Y => \A2DRead/N_1573\);
    
    \matrix_read04/data04[0]\ : DFN1E1
      port map(D => \inputs67_c[0]\, CLK => Clock03, E => 
        \matrix_read04/ctrl21\, Q => 
        \matrix_read04/data04[0]_net_1\);
    
    \bitcontrol01latch/output[4]\ : DFN1
      port map(D => \bitcontrol01latch/output_RNO_1[4]\, CLK => 
        Clock01, Q => \bitcontrol01latch/bitcontrol01[4]\);
    
    \A2DRead/DataRegU1Ch0d_RNI134V7[4]\ : XOR3
      port map(A => \A2DRead/N_1778\, B => \A2DRead/N_1780\, C
         => \A2DRead/N_1757\, Y => \A2DRead/N_1786\);
    
    \A2DRead/DataRegU1Ch1e[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1d[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1e[9]_net_1\);
    
    \A2DRead/DataRegU1Ch1a[1]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[1]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch1a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1a[1]_net_1\);
    
    \ioBank66reader/parallelholdreg_RNO_0[0]\ : MX2
      port map(A => \ioBank66reader/parallelholdreg_7[0]\, B => 
        \ioBank66reader/parallelholdreg[0]_net_1\, S => 
        \ioBank66reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank66reader/N_23\);
    
    \discretedutycycle01/output_RNO[1]\ : NOR2A
      port map(A => \discretedutycycle01/N_61\, B => LogicReset_c, 
        Y => \discretedutycycle01/output_RNO_3[1]\);
    
    \A2DRead/DataRegU1Ch1p[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1o[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1p[2]_net_1\);
    
    \Watch_Dog_Reset/timercount_RNO_2[8]\ : NOR2B
      port map(A => \Watch_Dog_Reset/timercount[5]_net_1\, B => 
        \Watch_Dog_Reset/timercount[4]_net_1\, Y => 
        \Watch_Dog_Reset/m15_m3_0_a2_1\);
    
    \A2D01reader/parallelholdreg[7]\ : DFN1
      port map(D => \A2D01reader/parallelholdreg_RNO_1[7]_net_1\, 
        CLK => Clock01, Q => 
        \A2D01reader/parallelholdreg[7]_net_1\);
    
    \ioBank66reader/cellindex[0]\ : DFN1
      port map(D => \ioBank66reader/cellindex_RNO_3[0]\, CLK => 
        SerialClock_c, Q => \ioBank66reader/cellindex[0]_net_1\);
    
    \externenablelatch/cellindex_RNIH1BG1[2]\ : NOR2B
      port map(A => \externenablelatch/output_0_sqmuxa_net_1\, B
         => \externenablelatch/cellindex[2]_net_1\, Y => 
        \externenablelatch/paralleldata_0_e_0[5]\);
    
    \A2DRead/DataRegU1Ch0k[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0j[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0k[8]_net_1\);
    
    \A2DRead/DataRegU1Ch0j_RNIDDBN_0[2]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0l[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch0k[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch0j[2]_net_1\, Y => \A2DRead/N_1725\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I69_un1_Y_0\ : 
        NOR2B
      port map(A => \A2DRead/N222\, B => \A2DRead/N214\, Y => 
        \A2DRead/ADD_11x11_fast_I69_un1_Y_0\);
    
    \A2DRead/DataRegU1Ch0m_RNI19091[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0m[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch0n[1]_net_1\, C => 
        \A2DRead/un60_dataregu1ch0_29_1\, Y => 
        \A2DRead/un60_dataregu1ch0_29_3\);
    
    \A2DRead/DataRegU1Ch1o_RNITQQR2[7]\ : XOR3
      port map(A => \A2DRead/N_1512\, B => \A2DRead/N_1508\, C
         => \A2DRead/N_1510\, Y => \A2DRead/N_1543\);
    
    \A2DRead/DataRegU1Ch1i_RNIRD5QB[12]\ : XOR3
      port map(A => \A2DRead/N_1660\, B => \A2DRead/N_1673\, C
         => \A2DRead/N_1662\, Y => \A2DRead/N_1677\);
    
    \ioBank68reader/dataout_RNO_0\ : NOR2B
      port map(A => \ioBank68reader/parallelholdreg[2]_net_1\, B
         => \ioBank68reader/cellindex[1]_net_1\, Y => 
        \ioBank68reader/parallelholdreg_m[2]\);
    
    \ioBank60reader/parallelholdreg_RNO_0[3]\ : MX2
      port map(A => \ioBank60reader/parallelholdreg_7[3]\, B => 
        \ioBank60reader/parallelholdreg[3]_net_1\, S => 
        \ioBank60reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank60reader/N_41\);
    
    \heart_beat/counter[14]\ : DFN1
      port map(D => \heart_beat/m25\, CLK => Clock04, Q => 
        \heart_beat/counter[14]_net_1\);
    
    \A2DRead/DataRegU1Ch0k_RNIQHHI[10]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0j[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch0l[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch0k[10]_net_1\, Y => \A2DRead/N_1940\);
    
    \snkpout01/PWMOut_3_0_I_12\ : OR2A
      port map(A => \snkpout01/counter[10]_net_1\, B => 
        \dutycycle01[10]\, Y => \snkpout01/N_13\);
    
    \A2DRead/un60_dataregu1ch0_423\ : AO1
      port map(A => \A2DRead/N_1841\, B => \A2DRead/N_1866\, C
         => \A2DRead/un60_dataregu1ch0_423_0\, Y => 
        \A2DRead/N_1873\);
    
    \Watch_Dog_Reset/timercount_RNO[9]\ : XA1B
      port map(A => \Watch_Dog_Reset/timercount[9]_net_1\, B => 
        \Watch_Dog_Reset/N_9_0\, C => ResetIn_c, Y => 
        \Watch_Dog_Reset/timercount_n9\);
    
    \iobank6Bdebounce/Changing_RNO\ : XOR2
      port map(A => \iobank6Bdebounce/PreviousPosition[0]_net_1\, 
        B => \iobank6Bdebounce/CurrentPosition[0]_net_1\, Y => 
        \iobank6Bdebounce/Changing_net_1\);
    
    \A2D01reader/parallelholdreg_RNO_0[7]\ : MX2
      port map(A => \A2D01reader/parallelholdreg_7[7]\, B => 
        \A2D01reader/parallelholdreg[7]_net_1\, S => 
        \A2D01reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D01reader/N_98\);
    
    SerialOut_pad_RNO_3 : NOR2B
      port map(A => do67, B => do68, Y => SerialOut_6);
    
    \Watch_Dog_Reset/timercount_RNO[7]\ : XA1B
      port map(A => \Watch_Dog_Reset/m16_N_6_mux\, B => 
        \Watch_Dog_Reset/timercount[7]_net_1\, C => ResetIn_c, Y
         => \Watch_Dog_Reset/timercount_n7\);
    
    \ioBank61reader/parallelholdreg[0]\ : DFN1
      port map(D => \ioBank61reader/parallelholdreg_RNO_2[0]\, 
        CLK => Clock01, Q => 
        \ioBank61reader/parallelholdreg[0]_net_1\);
    
    \pwmdisable01latch/output[1]\ : DFN1
      port map(D => \pwmdisable01latch/output_RNO_2[1]\, CLK => 
        Clock01, Q => \pwmdisable01[1]\);
    
    \discretedutycycle01/paralleldata_RNO_1[11]\ : NOR3C
      port map(A => \discretedutycycle01/cellindex_c1\, B => 
        \discretedutycycle01/output_0_sqmuxa_net_1\, C => 
        \discretedutycycle01/un1_paralleldata_2[9]\, Y => 
        \discretedutycycle01/N_138\);
    
    \iobank66debounce/DebounceTimer[8]\ : DFN1
      port map(D => \iobank66debounce/DebounceTimer_RNO_4[8]\, 
        CLK => Clock03, Q => 
        \iobank66debounce/DebounceTimer[8]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I7_P0N\ : OR3
      port map(A => \A2DRead/N_2016\, B => 
        \A2DRead/un60_dataregu1ch0_427\, C => 
        \A2DRead/un60_dataregu1ch0_713_0\, Y => \A2DRead/N175\);
    
    \A2DRead/DataRegU1Ch1b[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1a[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1b[6]_net_1\);
    
    \A2DRead/DataRegU1Ch0o[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0n[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0o[5]_net_1\);
    
    \iobank67debounce/DebounceTimer[8]\ : DFN1
      port map(D => \iobank67debounce/DebounceTimer_RNO_5[8]\, 
        CLK => Clock03, Q => 
        \iobank67debounce/DebounceTimer[8]_net_1\);
    
    \snkpout01/counter[8]\ : DFN1
      port map(D => \snkpout01/counter_n8\, CLK => Clock04, Q => 
        \snkpout01/counter[8]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I1_P0N\ : XO1
      port map(A => \A2DRead/N_1499\, B => 
        \A2DRead/un60_dataregu1ch1_359_0\, C => \A2DRead/N_1474\, 
        Y => \A2DRead/N157\);
    
    \A2D00reader/cellindex_RNIHUCI[0]\ : NOR2B
      port map(A => \A2D00reader/cellindex[0]_net_1\, B => 
        \A2D00reader/cellindex[1]_net_1\, Y => 
        \A2D00reader/cellindex_c1\);
    
    \iobank63debounce/DebounceTimer_RNIU9CN1[3]\ : NOR3C
      port map(A => \iobank63debounce/DebounceTimer[2]_net_1\, B
         => \iobank63debounce/DebounceTimer[3]_net_1\, C => 
        \iobank63debounce/DebounceTimer_c1\, Y => 
        \iobank63debounce/DebounceTimer_c3\);
    
    \iobank60debounce/DebounceTimer_RNO_0[4]\ : NOR2B
      port map(A => \iobank60debounce/DebounceTimer_c2\, B => 
        \iobank60debounce/DebounceTimer[3]_net_1\, Y => 
        \iobank60debounce/DebounceTimer_c3\);
    
    \discretedutycycle01/paralleldata_RNO[0]\ : NOR2A
      port map(A => \discretedutycycle01/N_127_mux\, B => 
        LogicReset_c, Y => 
        \discretedutycycle01/paralleldata_RNO_3[0]\);
    
    \ioBank65reader/parallelholdreg_0_sqmuxa_1\ : NOR3B
      port map(A => \internaddr[5]\, B => \internaddr[2]\, C => 
        \internaddr[7]\, Y => 
        \ioBank66reader.parallelholdreg_0_sqmuxa_1\);
    
    \externenablelatch/paralleldata_RNO_0[6]\ : MX2
      port map(A => \externenablelatch/paralleldata[6]_net_1\, B
         => SerialIn_c_0, S => \externenablelatch/N_98\, Y => 
        \externenablelatch/N_98_mux\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I88_Y\ : AX1D
      port map(A => \A2DRead/N221_0\, B => \A2DRead/I61_un1_Y\, C
         => \A2DRead/ADD_11x11_fast_I88_Y_0\, Y => 
        \A2DRead/un60_dataregu1ch0[11]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I1_P0N\ : OR2
      port map(A => \A2DRead/N_1821\, B => \A2DRead/N_1848\, Y
         => \A2DRead/N157_0\);
    
    \pwmdisable01latch/paralleldata_RNO[7]\ : NOR2A
      port map(A => \pwmdisable01latch/N_101_mux\, B => 
        LogicReset_c, Y => 
        \pwmdisable01latch/paralleldata_RNO_1[7]_net_1\);
    
    \iobank62debounce/DebounceTimer[0]\ : DFN1E1
      port map(D => \iobank62debounce/N_67\, CLK => Clock03, E
         => \iobank62debounce/DebounceTimere\, Q => 
        \iobank62debounce/DebounceTimer[0]_net_1\);
    
    INT_ULSICC_INSTANCE_0 : ULSICC_INT
      port map(USTDBY => \GND\, LPENA => \GND\);
    
    \iobank63debounce/DebounceTimer_RNO_0[6]\ : NOR2B
      port map(A => \iobank63debounce/DebounceTimer_c4\, B => 
        \iobank63debounce/DebounceTimer[5]_net_1\, Y => 
        \iobank63debounce/DebounceTimer_c5\);
    
    \iobank62debounce/DebounceTimer[6]\ : DFN1E1
      port map(D => \iobank62debounce/DebounceTimer_n6\, CLK => 
        Clock03, E => \iobank62debounce/DebounceTimere\, Q => 
        \iobank62debounce/DebounceTimer[6]_net_1\);
    
    \bitcontrol01latch/output[3]\ : DFN1
      port map(D => \bitcontrol01latch/output_RNO_1[3]\, CLK => 
        Clock01, Q => \bitcontrol01latch/bitcontrol01[3]\);
    
    \A2DRead/DataRegU1Ch1f[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1e[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1f[6]_net_1\);
    
    \bitcontrol01latch/paralleldata_RNO_0[4]\ : MX2
      port map(A => \bitcontrol01latch/paralleldata[4]_net_1\, B
         => SerialIn_c, S => \bitcontrol01latch/N_98\, Y => 
        \bitcontrol01latch/N_98_mux\);
    
    \matrix_read04/stage[4]\ : DFN1
      port map(D => \matrix_read04/N_15\, CLK => Clock03, Q => 
        \matrix_read04/stage[4]_net_1\);
    
    \externenablelatch/cellindex_RNO_0[1]\ : XOR2
      port map(A => \externenablelatch/cellindex[1]_net_1\, B => 
        \externenablelatch/cellindex[0]_net_1\, Y => 
        \externenablelatch/cellindex_n1_tz\);
    
    \A2DRead/step_RNI7SJ24[2]\ : MX2
      port map(A => \A2DRead/N_42\, B => \A2DRead/i6_mux\, S => 
        \A2DRead/N_18\, Y => \A2DRead/i5_mux\);
    
    \A2DRead/DataRegU1Ch1h[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1g[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1h[12]_net_1\);
    
    \A2DRead/step_RNIJF3V_0[6]\ : NOR2A
      port map(A => \A2DRead/step[6]_net_1\, B => 
        \A2DRead/step[3]_net_1\, Y => \A2DRead/N_2137\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I36_Y\ : NOR2B
      port map(A => \A2DRead/N191_0\, B => \A2DRead/N195_0\, Y
         => \A2DRead/N216_0\);
    
    \A2DRead/DataRegU1Ch0d_RNI3HJP2_0[8]\ : MAJ3
      port map(A => \A2DRead/N_1878\, B => \A2DRead/N_1882\, C
         => \A2DRead/N_1880\, Y => \A2DRead/N_1893\);
    
    \iobank69debounce/DebounceTimer[7]\ : DFN1E1
      port map(D => \iobank69debounce/DebounceTimer_n7\, CLK => 
        Clock03, E => \iobank69debounce/DebounceTimere\, Q => 
        \iobank69debounce/DebounceTimer[7]_net_1\);
    
    \iobank65debounce/DebounceTimer_RNO[7]\ : XA1
      port map(A => \iobank65debounce/DebounceTimer_c6\, B => 
        \iobank65debounce/DebounceTimer[7]_net_1\, C => 
        \iobank65debounce/un1_previousposition7\, Y => 
        \iobank65debounce/DebounceTimer_n7\);
    
    \ioBank66reader/parallelholdreg[1]\ : DFN1
      port map(D => \ioBank66reader/parallelholdreg_RNO_7[1]\, 
        CLK => Clock01, Q => 
        \ioBank66reader/parallelholdreg[1]_net_1\);
    
    \matrix_read04/data02[1]\ : DFN1E1
      port map(D => \inputs67_c[1]\, CLK => Clock03, E => 
        \matrix_read04/ctrl15\, Q => 
        \matrix_read04/data02[1]_net_1\);
    
    \externenablelatch/output_RNO_0[3]\ : MX2
      port map(A => \ExternalHardwareEn_c[3]\, B => 
        \externenablelatch/paralleldata[3]_net_1\, S => 
        \externenablelatch/output_0_sqmuxa_net_1\, Y => 
        \externenablelatch/N_49\);
    
    \A2DRead/DataRegU1Ch0k_RNIQHHI_0[10]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0l[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch0k[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch0j[10]_net_1\, Y => \A2DRead/N_1941\);
    
    \iobank68debounce/DebounceTimer[6]\ : DFN1E1
      port map(D => \iobank68debounce/DebounceTimer_n6\, CLK => 
        Clock03, E => \iobank68debounce/DebounceTimere\, Q => 
        \iobank68debounce/DebounceTimer[6]_net_1\);
    
    \bitcontrol01latch/output_RNO_0[4]\ : MX2
      port map(A => \bitcontrol01latch/bitcontrol01[4]\, B => 
        \bitcontrol01latch/paralleldata[4]_net_1\, S => 
        \bitcontrol01latch/output_0_sqmuxa_net_1\, Y => 
        \bitcontrol01latch/N_48\);
    
    \A2DRead/DataRegU1Ch1o_RNIRILGS[6]\ : XOR3
      port map(A => \A2DRead/N_1524\, B => \A2DRead/N_1551\, C
         => \A2DRead/N_1526\, Y => \A2DRead/N_1555\);
    
    \pwmdisable01latch/output_RNO_0[3]\ : MX2
      port map(A => \pwmdisable01[3]\, B => 
        \pwmdisable01latch/paralleldata[3]_net_1\, S => 
        \pwmdisable01latch/output_0_sqmuxa_net_1\, Y => 
        \pwmdisable01latch/N_47\);
    
    \externenablelatch/cellindex_RNO[0]\ : NOR2A
      port map(A => 
        \externenablelatch/cellindex_1_sqmuxa_1_0_net_1\, B => 
        \externenablelatch/cellindex[0]_net_1\, Y => 
        \externenablelatch/N_77_i\);
    
    SerialOut_pad_RNO_5 : NOR2B
      port map(A => do51, B => do60, Y => SerialOut_2);
    
    \ioBank6Areader/dataout_RNO_0\ : NOR2B
      port map(A => \ioBank6Areader/parallelholdreg[2]_net_1\, B
         => \ioBank6Areader/cellindex[1]_net_1\, Y => 
        \ioBank6Areader/parallelholdreg_m[2]\);
    
    \externenablelatch/paralleldata[5]\ : DFN1
      port map(D => 
        \externenablelatch/paralleldata_RNO_0[5]_net_1\, CLK => 
        SerialClock_c, Q => 
        \externenablelatch/paralleldata[5]_net_1\);
    
    \iobank63debounce/IOOut[1]\ : DFN1E0
      port map(D => \iobank63debounce/IOOut_3[1]\, CLK => Clock03, 
        E => \iobank63debounce/IOOut_0_sqmuxa\, Q => \ohold63[1]\);
    
    \A2DRead/DataRegU1Ch0d_RNIFLOVB[2]\ : OA1
      port map(A => \A2DRead/N_1736\, B => \A2DRead/N_1734\, C
         => \A2DRead/N_1732\, Y => 
        \A2DRead/un60_dataregu1ch0_88_0\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I0_P0N\ : OR2
      port map(A => \A2DRead/N_1446\, B => \A2DRead/N_1473\, Y
         => \A2DRead/N154\);
    
    \snkpout01/PWMOut_3_0_I_30\ : OR2A
      port map(A => \dutycycle01[7]\, B => 
        \snkpout01/counter[7]_net_1\, Y => 
        \snkpout01/ACT_LT3_E[4]\);
    
    \iobank63debounce/DebounceTimer[8]\ : DFN1
      port map(D => \iobank63debounce/DebounceTimer_RNO_2[8]\, 
        CLK => Clock03, Q => 
        \iobank63debounce/DebounceTimer[8]_net_1\);
    
    \A2DRead/DataRegU1Ch1f[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1e[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1f[1]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I4_P0N\ : OR3
      port map(A => \A2DRead/N_1932\, B => 
        \A2DRead/un60_dataregu1ch0_301\, C => 
        \A2DRead/un60_dataregu1ch0_503_0\, Y => \A2DRead/N166\);
    
    \clock_master/counter_8_I_36\ : AO1
      port map(A => \clock_master/DWACT_ADD_CI_0_pog_array_0[0]\, 
        B => Clock01, C => 
        \clock_master/DWACT_ADD_CI_0_g_array_0_1[0]\, Y => 
        \clock_master/DWACT_ADD_CI_0_g_array_1[0]\);
    
    \discretedutycycle01/output[1]\ : DFN1
      port map(D => \discretedutycycle01/output_RNO_3[1]\, CLK
         => Clock01, Q => \dutycycle01[1]\);
    
    \iobank6Bdebounce/DebounceTimer_RNIMOGC1[6]\ : NOR3C
      port map(A => \iobank6Bdebounce/DebounceTimer[6]_net_1\, B
         => \iobank6Bdebounce/DebounceTimer[5]_net_1\, C => 
        \iobank6Bdebounce/DebounceTimer[4]_net_1\, Y => 
        \iobank6Bdebounce/DebounceTimer_c6_out_0\);
    
    \A2DRead/DataRegU1Ch1a[8]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[8]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch1a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1a[8]_net_1\);
    
    \A2DRead/step_RNILH3V[5]\ : OR2B
      port map(A => \A2DRead/step[5]_net_1\, B => 
        \A2DRead/step[6]_net_1\, Y => \A2DRead/N_62\);
    
    \A2D00reader/cellindex[1]\ : DFN1
      port map(D => \A2D00reader/cellindex_n1\, CLK => 
        SerialClock_c, Q => \A2D00reader/cellindex[1]_net_1\);
    
    \iobank6Bdebounce/CurrentPosition[0]\ : DFN1
      port map(D => \dhold6B_i[0]\, CLK => Clock03, Q => 
        \iobank6Bdebounce/CurrentPosition[0]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I15_Y\ : AO1
      port map(A => \A2DRead/N174_0\, B => \A2DRead/N178_0\, C
         => \A2DRead/N177_0\, Y => \A2DRead/N192_0\);
    
    \A2DRead/DataRegU1Ch1l[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1k[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1l[10]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I84_Y\ : XOR2
      port map(A => \A2DRead/ADD_11x11_fast_I84_Y_0\, B => 
        \A2DRead/N229\, Y => \A2DRead/un60_dataregu1ch0[7]\);
    
    \A2DRead/DataRegU1Ch0k[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0j[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0k[1]_net_1\);
    
    \ioBank66reader/parallelholdreg_0_sqmuxa_3\ : NOR2A
      port map(A => \internaddr[6]\, B => \internaddr[0]\, Y => 
        \ioBank6Areader.parallelholdreg_0_sqmuxa_3\);
    
    \A2DRead/AdCs1_RNO\ : OR3
      port map(A => \A2DRead/N_102\, B => \A2DRead/AdCs1_2_0_0_0\, 
        C => \A2DRead/N_103\, Y => \A2DRead/AdCs1_2\);
    
    \A2DRead/DataRegU1Ch0f_RNIU3LQ1_0[7]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0f[7]_net_1\, B => 
        \A2DRead/N_1825\, C => \A2DRead/N_1823\, Y => 
        \A2DRead/N_1861\);
    
    \A2DRead/DataRegU1Ch0o_RNIQBBG7[10]\ : XOR3
      port map(A => \A2DRead/N_1946\, B => \A2DRead/N_1948\, C
         => \A2DRead/N_1923\, Y => \A2DRead/N_1954\);
    
    \A2DRead/DataRegU1Ch0j[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0i[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0j[12]_net_1\);
    
    \ioBank65reader/cellindex_RNIL8TH[1]\ : OR2
      port map(A => \ioBank65reader/cellindex[1]_net_1\, B => 
        SerialLoad_c, Y => \ioBank65reader/un1_latch_1\);
    
    \ioBank62reader/dataout_RNO\ : OR3
      port map(A => \ioBank62reader/parallelholdreg_m[0]\, B => 
        \A2D01reader.dataout_0_0\, C => 
        \ioBank62reader/dataout_0_2\, Y => 
        \ioBank62reader/dataout_RNO_4\);
    
    \A2D01reader/parallelholdreg[9]\ : DFN1
      port map(D => \A2D01reader/parallelholdreg_RNO_0[9]_net_1\, 
        CLK => Clock01, Q => 
        \A2D01reader/parallelholdreg[9]_net_1\);
    
    \iobank62debounce/CurrentPosition[0]\ : DFN1
      port map(D => \dhold62_i[0]\, CLK => Clock03, Q => 
        \iobank62debounce/CurrentPosition[0]_net_1\);
    
    \bitcontrol01latch/paralleldata_RNO_1[6]\ : NOR3C
      port map(A => \bitcontrol01latch/cellindex[2]_net_1\, B => 
        \bitcontrol01latch/output_0_sqmuxa_net_1\, C => 
        \bitcontrol01latch/un1_paralleldata_1[2]\, Y => 
        \bitcontrol01latch/N_100\);
    
    \addresslatch/paralleldata[6]\ : DFN1
      port map(D => \addresslatch/paralleldata_RNO[6]_net_1\, CLK
         => SerialClock_c, Q => 
        \addresslatch/paralleldata[6]_net_1\);
    
    \matrix_read04/stage_RNI3NB[2]\ : NOR3B
      port map(A => \matrix_read04/ctrl15_m1_e_0_1\, B => 
        \matrix_read04/ctrl15_m1_e_0_0\, C => 
        \matrix_read04/N_26\, Y => \matrix_read04/ctrl15\);
    
    \A2DRead/DataRegU1Ch1i_RNIIGQHD[11]\ : XOR3
      port map(A => \A2DRead/N_1631\, B => \A2DRead/N_1633\, C
         => \A2DRead/N_1606\, Y => \A2DRead/N_1637\);
    
    \A2DRead/DataRegU1Ch1c[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1b[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1c[11]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNI73PR2_0[1]\ : XOR3
      port map(A => \A2DRead/N_1366\, B => \A2DRead/N_1362\, C
         => \A2DRead/N_1364\, Y => \A2DRead/N_1383\);
    
    \iobank68debounce/DebounceTimer_RNO_0[5]\ : NOR2B
      port map(A => \iobank68debounce/DebounceTimer_c3\, B => 
        \iobank68debounce/DebounceTimer[4]_net_1\, Y => 
        \iobank68debounce/DebounceTimer_c4\);
    
    \A2D01reader/cellindex_RNIJ44F[0]\ : NOR2B
      port map(A => \A2D01reader/cellindex[0]_net_1\, B => 
        \A2D01reader/cellindex[1]_net_1\, Y => 
        \A2D01reader/cellindex_c1\);
    
    \iobank6Bdebounce/DebounceTimer[4]\ : DFN1E1
      port map(D => \iobank6Bdebounce/DebounceTimer_n4\, CLK => 
        Clock03, E => \iobank6Bdebounce/DebounceTimere\, Q => 
        \iobank6Bdebounce/DebounceTimer[4]_net_1\);
    
    \inputs61_pad[2]/U0/U1\ : IOIN_IB
      port map(YIN => \inputs61_pad[2]/U0/NET1\, Y => 
        \inputs61_c[2]\);
    
    \A2DRead/DataRegU1Ch0j_RNIGGBN[3]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0j[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch0l[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch0k[3]_net_1\, Y => \A2DRead/N_1746\);
    
    \A2DRead/DataRegU1Ch0g_RNIP7GD[9]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0g[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch0i[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch0h[9]_net_1\, Y => \A2DRead/N_1914\);
    
    \A2DRead/un60_dataregu1ch0_419_RNILK27N2\ : XOR3
      port map(A => \A2DRead/N_1874\, B => \A2DRead/N_1872\, C
         => \A2DRead/N_1847\, Y => \A2DRead/N_1876\);
    
    \iobank61debounce/PreviousPosition_RNO[3]\ : MX2B
      port map(A => \iobank61debounce/CurrentPosition[3]_net_1\, 
        B => \inputs61_c[3]\, S => LogicReset_c, Y => 
        \iobank61debounce/PreviousPosition_3[3]\);
    
    \ioBank62reader/cellindex_RNO[0]\ : NOR3
      port map(A => \ioBank62reader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank62reader/un1_latch_1\, Y => 
        \ioBank62reader/cellindex_RNO[0]_net_1\);
    
    \discretedutycycle01/output_RNO_0[7]\ : MX2
      port map(A => \dutycycle01[7]\, B => 
        \discretedutycycle01/paralleldata[7]_net_1\, S => 
        \discretedutycycle01/output_0_sqmuxa_0_net_1\, Y => 
        \discretedutycycle01/N_67\);
    
    \A2DRead/DataRegU1Ch0f_RNIIB0KG_0[3]\ : MAJ3
      port map(A => \A2DRead/N_1784\, B => \A2DRead/N_1759\, C
         => \A2DRead/N_1782\, Y => \A2DRead/N_1789\);
    
    \A2DRead/DataRegU1Ch0d_RNIHHV5L[2]\ : OR2
      port map(A => \A2DRead/un60_dataregu1ch0_88_0\, B => 
        \A2DRead/un60_dataregu1ch0_52\, Y => \A2DRead/N_1739\);
    
    \snkpout01/counter_RNO[12]\ : AX1C
      port map(A => \snkpout01/counter_c10\, B => 
        \snkpout01/counter_25_0\, C => \snkpout01/N_59\, Y => 
        \snkpout01/counter_n12\);
    
    \A2DRead/DataRegU1Ch1m[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1l[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1m[6]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNIT83PU_0[10]\ : MAJ3
      port map(A => \A2DRead/N_1983\, B => \A2DRead/N_1985\, C
         => \A2DRead/N_2010\, Y => \A2DRead/N_2015\);
    
    \A2DRead/DataRegU1Ch1o_RNI64RR2[8]\ : XOR3
      port map(A => \A2DRead/N_1540\, B => \A2DRead/N_1536\, C
         => \A2DRead/N_1538\, Y => \A2DRead/N_1571\);
    
    \iobank60debounce/DebounceTimer_RNO[6]\ : XA1
      port map(A => \iobank60debounce/DebounceTimer_c5\, B => 
        \iobank60debounce/DebounceTimer[6]_net_1\, C => 
        \iobank60debounce/un1_previousposition7\, Y => 
        \iobank60debounce/DebounceTimer_n6\);
    
    \bitcontrol01latch/output_RNO[6]\ : OR2
      port map(A => \bitcontrol01latch/N_50\, B => LogicReset_c, 
        Y => \bitcontrol01latch/output_RNO_1[6]\);
    
    \A2DRead/DataRegU1Ch0d_RNI893V7[3]\ : XOR3
      port map(A => \A2DRead/N_1752\, B => \A2DRead/N_1754\, C
         => \A2DRead/N_1735\, Y => \A2DRead/N_1760\);
    
    \A2DRead/DataInReg_RNO_0[13]\ : NOR3
      port map(A => \A2DRead/step[4]_net_1\, B => 
        \A2DRead/step[6]_net_1\, C => \A2DRead/step[2]_net_1\, Y
         => \A2DRead/DataInReg_332_e_0\);
    
    \iobank64debounce/CurrentPosition[1]\ : DFN1
      port map(D => \dhold64_i[1]\, CLK => Clock03, Q => 
        \iobank64debounce/CurrentPosition[1]_net_1\);
    
    \clock_master/counter[4]\ : DFN1
      port map(D => \clock_master/counter_4[4]\, CLK => XCLK_c, Q
         => \clock_master/counter[4]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I6_P0N\ : OR2
      port map(A => \A2DRead/N_1641\, B => \A2DRead/N_1614\, Y
         => \A2DRead/N172_0\);
    
    \bitcontrol01latch/cellindex_RNIN4LO_0[1]\ : NOR2A
      port map(A => \bitcontrol01latch/cellindex[1]_net_1\, B => 
        \bitcontrol01latch/cellindex[0]_net_1\, Y => 
        \bitcontrol01latch/un1_paralleldata_1[2]\);
    
    \iobank6Bdebounce/DebounceTimer_RNO[7]\ : XA1
      port map(A => \iobank6Bdebounce/DebounceTimer_c6\, B => 
        \iobank6Bdebounce/DebounceTimer[7]_net_1\, C => 
        \iobank6Bdebounce/un1_previousposition7\, Y => 
        \iobank6Bdebounce/DebounceTimer_n7\);
    
    \bitcontrol01latch/cellindex_RNO[0]\ : NOR2A
      port map(A => \ioBank60reader.cellindex_1_sqmuxa_1_1\, B
         => \bitcontrol01latch/cellindex[0]_net_1\, Y => 
        \bitcontrol01latch/N_79\);
    
    \ExternalHardwareEn_pad[3]/U0/U0\ : IOPAD_TRI
      port map(D => \ExternalHardwareEn_pad[3]/U0/NET1\, E => 
        \ExternalHardwareEn_pad[3]/U0/NET2\, PAD => 
        ExternalHardwareEn(3));
    
    \A2DRead/DatHldRegU1Ch1[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch1_1_sqmuxa\, Q => 
        \ohold51[2]\);
    
    \A2D01reader/cellindex_RNIN84F[2]\ : NOR2A
      port map(A => \A2D01reader/cellindex[3]_net_1\, B => 
        \A2D01reader/cellindex[2]_net_1\, Y => 
        \A2D01reader/un170_dataout_11_0\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I87_Y_0\ : XOR2
      port map(A => \A2DRead/N_1988\, B => \A2DRead/N_1961\, Y
         => \A2DRead/ADD_11x11_fast_I87_Y_0_0\);
    
    \addresslatch/output_RNO_0[3]\ : MX2
      port map(A => \addresslatch/paralleldata[3]_net_1\, B => 
        \internaddr[3]\, S => Ale_c, Y => \addresslatch/N_54\);
    
    \A2DRead/DataRegU1Ch1o[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1n[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1o[9]_net_1\);
    
    \inputs67_pad[1]/U0/U0\ : IOPAD_IN
      port map(PAD => inputs67(1), Y => \inputs67_pad[1]/U0/NET1\);
    
    \iobank68debounce/DebounceTimer_RNO[1]\ : XA1
      port map(A => \iobank68debounce/DebounceTimer[1]_net_1\, B
         => \iobank68debounce/DebounceTimer[0]_net_1\, C => 
        \iobank68debounce/un1_previousposition7\, Y => 
        \iobank68debounce/DebounceTimer_n1\);
    
    \snkpout01/PWMOut_3_0_I_21\ : OA1B
      port map(A => \snkpout01/N_20\, B => \snkpout01/N_21\, C
         => \snkpout01/counter[12]_net_1\, Y => 
        \snkpout01/DWACT_COMP0_E[0]\);
    
    \matrix_read04/dataOut02_RNIVJ6A[1]\ : INV
      port map(A => \dhold69[1]\, Y => \dhold69_i[1]\);
    
    \matrix_read04/stage[5]\ : DFN1
      port map(D => \matrix_read04/N_13\, CLK => Clock03, Q => 
        \matrix_read04/stage[5]_net_1\);
    
    \ioBank62reader/parallelholdreg_RNO_0[2]\ : MX2
      port map(A => \ioBank62reader/parallelholdreg_7[2]\, B => 
        \ioBank62reader/parallelholdreg[2]_net_1\, S => 
        \ioBank62reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank62reader/N_25\);
    
    \snkpout01/PWMOut_3_0_I_13\ : NOR2A
      port map(A => \dutycycle01[8]\, B => 
        \snkpout01/counter[8]_net_1\, Y => \snkpout01/N_14\);
    
    \ioBank69reader/cellindex_RNIPKBR[1]\ : OR2
      port map(A => \ioBank69reader/cellindex[1]_net_1\, B => 
        SerialLoad_c, Y => \ioBank69reader/un1_latch_1\);
    
    \A2DRead/DataRegU1Ch0m_RNIM8711_0[2]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0o[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch0n[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch0m[2]_net_1\, Y => \A2DRead/N_1723\);
    
    \A2DRead/DataRegU1Ch0f_RNINTN66_0[2]\ : XOR3
      port map(A => \A2DRead/N_1717\, B => \A2DRead/N_1730\, C
         => \A2DRead/N_1728\, Y => \A2DRead/N_1736\);
    
    \matrix_read03/dataOut00[2]\ : DFN1
      port map(D => \matrix_read03/data00[2]_net_1\, CLK => 
        Clock03, Q => \dhold62[2]\);
    
    \A2DRead/DataRegU1Ch0d_RNID3BG_0[9]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0e[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch0d[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch0c[9]_net_1\, Y => \A2DRead/N_1907\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I18_Y\ : NOR2B
      port map(A => \A2DRead/N175_0\, B => \A2DRead/N172_0\, Y
         => \A2DRead/N195_0\);
    
    \discretedutycycle01/paralleldata_RNO_1[4]\ : NOR3C
      port map(A => \discretedutycycle01/un6_address_2\, B => 
        \discretedutycycle01/output_0_sqmuxa_net_1\, C => 
        \discretedutycycle01/un1_paralleldata_2[7]\, Y => 
        \discretedutycycle01/N_131\);
    
    \A2DRead/DataRegU1Ch1o_RNIKHQR2_0[6]\ : MAJ3
      port map(A => \A2DRead/N_1480\, B => \A2DRead/N_1484\, C
         => \A2DRead/N_1482\, Y => \A2DRead/N_1516\);
    
    \A2DRead/DataRegU1Ch1i_RNIFMP33[12]\ : XOR3
      port map(A => \A2DRead/N_1651\, B => \A2DRead/N_1649\, C
         => \A2DRead/N_1626\, Y => \A2DRead/N_1659\);
    
    \A2DRead/DataRegU1Ch1p_RNIFCHN1_1[12]\ : XOR3
      port map(A => \A2DRead/N_1645\, B => \A2DRead/N_1643\, C
         => \A2DRead/N_1647\, Y => \A2DRead/N_1657\);
    
    \pwmdisable01latch/cellindex_1_sqmuxa\ : AOI1
      port map(A => \pwmdisable01latch/un13_address_3\, B => 
        \firmware.N_76\, C => LogicReset_c, Y => 
        \pwmdisable01latch/cellindex_1_sqmuxa_net_1\);
    
    \iobank67debounce/IOOut[2]\ : DFN1E0
      port map(D => \iobank67debounce/IOOut_3[2]\, CLK => Clock03, 
        E => \iobank67debounce/IOOut_0_sqmuxa\, Q => \ohold67[2]\);
    
    \A2DRead/DataRegU1Ch0d_RNIDP3F[1]\ : XOR2
      port map(A => \A2DRead/DataRegU1Ch0d[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch0c[1]_net_1\, Y => \A2DRead/N_1704_1\);
    
    \externenablelatch/output_RNO_0[1]\ : MX2
      port map(A => \ExternalHardwareEn_c[1]\, B => 
        \externenablelatch/paralleldata[1]_net_1\, S => 
        \externenablelatch/output_0_sqmuxa_net_1\, Y => 
        \externenablelatch/N_47\);
    
    \discretedutycycle01/cellindex_RNO[2]\ : NOR3B
      port map(A => 
        \discretedutycycle01/cellindex_1_sqmuxa_1_0_net_1\, B => 
        \discretedutycycle01/cellindex_n2_tz\, C => 
        \discretedutycycle01/un6_address\, Y => 
        \discretedutycycle01/cellindex_n2\);
    
    \ioBank68reader/cellindex_RNI7HRR[1]\ : NOR2
      port map(A => \ioBank68reader/cellindex[1]_net_1\, B => 
        \ioBank68reader/cellindex[0]_net_1\, Y => 
        \ioBank68reader/_decfrac0\);
    
    \firmware/cellindex[0]\ : DFN1
      port map(D => \firmware/cellindex_n0\, CLK => SerialClock_c, 
        Q => \firmware/cellindex[0]_net_1\);
    
    \A2D00reader/parallelholdreg[7]\ : DFN1
      port map(D => \A2D00reader/parallelholdreg_RNO_0[7]_net_1\, 
        CLK => Clock01, Q => 
        \A2D00reader/parallelholdreg[7]_net_1\);
    
    \A2DRead/DataRegU1Ch1p_RNIU4J36_0[12]\ : MAJ3
      port map(A => \A2DRead/N_1671\, B => \A2DRead/N_1656\, C
         => \A2DRead/N_1658\, Y => \A2DRead/N_1676\);
    
    \A2DRead/DataRegU1Ch1i_RNIN2GK2[10]\ : XOR3
      port map(A => \A2DRead/N_1596\, B => \A2DRead/N_1592\, C
         => \A2DRead/N_1594\, Y => \A2DRead/N_1627\);
    
    \matrix_read03/ctrl[2]\ : DFN1
      port map(D => \matrix_read03/ctrl_RNO[2]_net_1\, CLK => 
        Clock03, Q => \inputs62_ctrl_c[2]\);
    
    \snkpout01/counter[2]\ : DFN1
      port map(D => \snkpout01/counter_n2\, CLK => Clock04, Q => 
        \snkpout01/counter[2]_net_1\);
    
    \matrix_read04/dataOut02_RNI0L6A[2]\ : INV
      port map(A => \dhold69[2]\, Y => \dhold69_i[2]\);
    
    \heart_beat/un1_counter_1_ADD_19x19_fast_I121_Y\ : AX1C
      port map(A => \heart_beat/counter[17]_net_1\, B => 
        \heart_beat/N_22_i\, C => \heart_beat/counter[18]_net_1\, 
        Y => \heart_beat/ADD_19x19_fast_I121_Y\);
    
    \bitcontrol01latch/output_RNO[3]\ : OR2
      port map(A => \bitcontrol01latch/N_47\, B => LogicReset_c, 
        Y => \bitcontrol01latch/output_RNO_1[3]\);
    
    \snkpout01/PWMOut_3_0_I_22\ : XNOR2
      port map(A => \snkpout01/counter[7]_net_1\, B => 
        \dutycycle01[7]\, Y => \snkpout01/DWACT_BL_EQUAL_0_E[2]\);
    
    \ioBank61reader/parallelholdreg_RNO_1[1]\ : OR2
      port map(A => \ohold61[1]\, B => SerialLoad_c, Y => 
        \ioBank61reader/parallelholdreg_7[1]\);
    
    \iobank66debounce/DebounceTimer[5]\ : DFN1E1
      port map(D => \iobank66debounce/DebounceTimer_n5\, CLK => 
        Clock03, E => \iobank66debounce/DebounceTimere\, Q => 
        \iobank66debounce/DebounceTimer[5]_net_1\);
    
    \A2D00reader/cellindex_RNO[1]\ : XA1
      port map(A => \A2D00reader/cellindex[1]_net_1\, B => 
        \A2D00reader/cellindex[0]_net_1\, C => 
        \A2D00reader/cellindex_1_sqmuxa_1\, Y => 
        \A2D00reader/cellindex_n1\);
    
    \iobank66debounce/DebounceTimer_RNO[3]\ : XA1
      port map(A => \iobank66debounce/DebounceTimer_c2\, B => 
        \iobank66debounce/DebounceTimer[3]_net_1\, C => 
        \iobank66debounce/un1_previousposition7\, Y => 
        \iobank66debounce/DebounceTimer_n3\);
    
    \ioBank63reader/dataout\ : DFN1
      port map(D => \ioBank63reader/dataout_RNO_5\, CLK => 
        Clock01, Q => do63);
    
    \matrix_read04/dataOut00[0]\ : DFN1
      port map(D => \matrix_read04/data00[0]_net_1\, CLK => 
        Clock03, Q => \dhold67[0]\);
    
    \clock_master/counter_RNID9O8[0]\ : CLKINT
      port map(A => \clock_master/counter_i[0]\, Y => Clock01);
    
    \ioBank60reader/cellindex_RNO[1]\ : XA1
      port map(A => \ioBank60reader/cellindex[0]_net_1\, B => 
        \ioBank60reader/cellindex[1]_net_1\, C => 
        \ioBank60reader.cellindex_1_sqmuxa_1_1\, Y => 
        \ioBank60reader/cellindex_6[1]\);
    
    \addresslatch/paralleldata_RNO_1[6]\ : NOR3B
      port map(A => \addresslatch/cellindex[1]_net_1\, B => 
        \addresslatch/paralleldata_0_e_0[7]\, C => 
        \addresslatch/cellindex[0]_net_1\, Y => 
        \addresslatch/N_89\);
    
    \firmware/dataout_RNO_4\ : NOR3C
      port map(A => \firmware/cellindex[2]_net_1\, B => 
        \firmware/cellindex[0]_net_1\, C => \firmware/N_43\, Y
         => \firmware/N_63\);
    
    \A2D01reader/cellindex_RNI21AD2[1]\ : AOI1
      port map(A => \A2D01reader/parallelholdreg_0_sqmuxa_5_0\, B
         => \A2D01reader.parallelholdreg_0_sqmuxa_9\, C => 
        SerialLoad_c, Y => \A2D01reader/parallelholdreg_1_sqmuxa\);
    
    SerialOut_pad_RNO : NOR3C
      port map(A => SerialOut_10, B => SerialOut_9, C => 
        SerialOut_11, Y => SerialOut_c);
    
    \iobank66debounce/DebounceTimer[0]\ : DFN1E1
      port map(D => \iobank66debounce/N_67\, CLK => Clock03, E
         => \iobank66debounce/DebounceTimere\, Q => 
        \iobank66debounce/DebounceTimer[0]_net_1\);
    
    \ioBank69reader/parallelholdreg_RNO[0]\ : OR2
      port map(A => \ioBank69reader/N_23\, B => LogicReset_c, Y
         => \ioBank69reader/parallelholdreg_RNO_10[0]\);
    
    \A2DRead/DataRegU1Ch1p_RNIQ97KR[11]\ : XOR3
      port map(A => \A2DRead/N_1636\, B => \A2DRead/N_1663\, C
         => \A2DRead/N_1638\, Y => \A2DRead/N_1667\);
    
    \A2DRead/DataRegU1Ch0m[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0l[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0m[8]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIEC8SC[7]\ : XOR3
      port map(A => \A2DRead/N_1519\, B => \A2DRead/N_1521\, C
         => \A2DRead/N_1494\, Y => \A2DRead/N_1525\);
    
    SerialOut_pad_RNO_6 : NOR2B
      port map(A => do6B, B => do50, Y => SerialOut_1);
    
    \pwmdisable01latch/output_RNO_0[4]\ : MX2
      port map(A => \pwmdisable01[4]\, B => 
        \pwmdisable01latch/paralleldata[4]_net_1\, S => 
        \pwmdisable01latch/output_0_sqmuxa_net_1\, Y => 
        \pwmdisable01latch/N_48\);
    
    \matrix_read04/stage_RNI3V3_0[5]\ : NOR2A
      port map(A => \matrix_read04/stage[5]_net_1\, B => 
        \matrix_read04/stage[2]_net_1\, Y => \matrix_read04/N_65\);
    
    \A2DRead/DataRegU1Ch1g_RNIJA2Q_0[6]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1i[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch1h[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch1g[6]_net_1\, Y => \A2DRead/N_1484\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I29_Y\ : OR2
      port map(A => \A2DRead/I29_un1_Y\, B => \A2DRead/N156\, Y
         => \A2DRead/N206\);
    
    SerialOut_pad_RNO_4 : NOR2B
      port map(A => do63, B => do64, Y => SerialOut_4);
    
    \iobank6Bdebounce/Changing_RNIOHI81\ : OA1C
      port map(A => \iobank6Bdebounce/DebounceTimer[8]_net_1\, B
         => \iobank6Bdebounce/Changing_0\, C => LogicReset_c, Y
         => \iobank6Bdebounce/IOOut_0_sqmuxa\);
    
    \externenablelatch/CellIndexUpdate.un39_address_1\ : NOR2A
      port map(A => \internaddr[7]\, B => \internaddr[0]\, Y => 
        \externenablelatch/un39_address_1\);
    
    \A2DRead/DataRegU1Ch1b[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1a[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1b[2]_net_1\);
    
    \iobank66debounce/IOOut[1]\ : DFN1E0
      port map(D => \iobank66debounce/IOOut_3[1]\, CLK => Clock03, 
        E => \iobank66debounce/IOOut_0_sqmuxa\, Q => \ohold66[1]\);
    
    \ioBank61reader/parallelholdreg[3]\ : DFN1
      port map(D => \ioBank61reader/parallelholdreg_RNO_2[3]\, 
        CLK => Clock01, Q => 
        \ioBank61reader/parallelholdreg[3]_net_1\);
    
    \ioBank64reader/parallelholdreg_0_sqmuxa_3\ : NOR2B
      port map(A => \ioBank62reader.parallelholdreg_0_sqmuxa_4\, 
        B => \firmware.N_76\, Y => 
        \ioBank64reader/parallelholdreg_0_sqmuxa_3_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIPJG61[12]\ : XOR3
      port map(A => \A2DRead/N_1618\, B => 
        \A2DRead/DataRegU1Ch1f[12]_net_1\, C => \A2DRead/N_1616\, 
        Y => \A2DRead/N_1653\);
    
    \Watch_Dog_Reset/timercount[4]\ : DFN1E0
      port map(D => \Watch_Dog_Reset/timercount_n4\, CLK => 
        \counter[1]\, E => \Watch_Dog_Reset/timercount_0_sqmuxa\, 
        Q => \Watch_Dog_Reset/timercount[4]_net_1\);
    
    \A2DRead/DataRegU1Ch0n[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0m[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0n[6]_net_1\);
    
    \A2DRead/DataRegU1Ch0d_RNI3VU301_0[9]\ : MAJ3
      port map(A => \A2DRead/N_1927\, B => \A2DRead/N_1929\, C
         => \A2DRead/N_1954\, Y => \A2DRead/N_1959\);
    
    \A2D00reader/parallelholdreg_RNO[6]\ : OR2
      port map(A => \A2D00reader/N_97\, B => LogicReset_c, Y => 
        \A2D00reader/parallelholdreg_RNO_0[6]_net_1\);
    
    \ioBank61reader/dataout\ : DFN1
      port map(D => \ioBank61reader/dataout_RNO_3\, CLK => 
        Clock01, Q => do61);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I69_Y_1\ : OR3
      port map(A => \A2DRead/I11_un1_Y\, B => \A2DRead/N183\, C
         => \A2DRead/I33_un1_Y\, Y => 
        \A2DRead/ADD_11x11_fast_I69_Y_1\);
    
    \discretedutycycle01/output_RNO_0[3]\ : MX2
      port map(A => \dutycycle01[3]\, B => 
        \discretedutycycle01/paralleldata[3]_net_1\, S => 
        \discretedutycycle01/output_0_sqmuxa_0_net_1\, Y => 
        \discretedutycycle01/N_63\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I14_Y\ : NOR2B
      port map(A => \A2DRead/N178_0\, B => \A2DRead/N181\, Y => 
        \A2DRead/N191_0\);
    
    \iobank62debounce/IOOut[2]\ : DFN1E0
      port map(D => \iobank62debounce/IOOut_3[2]\, CLK => Clock03, 
        E => \iobank62debounce/IOOut_0_sqmuxa\, Q => \ohold62[2]\);
    
    \A2DRead/DataRegU1Ch0h[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0g[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0h[1]_net_1\);
    
    \externenablelatch/output_RNO_0[4]\ : MX2
      port map(A => \ExternalHardwareEn_c[4]\, B => 
        \externenablelatch/paralleldata[4]_net_1\, S => 
        \externenablelatch/output_0_sqmuxa_net_1\, Y => 
        \externenablelatch/N_50\);
    
    \externenablelatch/CellIndexUpdate.un39_address_0\ : NOR2
      port map(A => \internaddr[2]\, B => \internaddr[1]\, Y => 
        \externenablelatch/un39_address_0\);
    
    \ioBank60reader/cellindex_RNIFK352[0]\ : AOI1
      port map(A => \ioBank60reader/parallelholdreg_0_sqmuxa_3\, 
        B => \ioBank60reader/parallelholdreg_0_sqmuxa_2_net_1\, C
         => SerialLoad_c, Y => 
        \ioBank60reader/parallelholdreg_1_sqmuxa\);
    
    \iobank60debounce/CurrentPosition[0]\ : DFN1
      port map(D => \iobank60debounce/inputs60_c_i[0]\, CLK => 
        Clock03, Q => \iobank60debounce/CurrentPosition[0]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I70_Y_2\ : OR3
      port map(A => \A2DRead/I35_un1_Y\, B => 
        \A2DRead/ADD_11x11_fast_I70_Y_0_0\, C => 
        \A2DRead/I55_un1_Y\, Y => 
        \A2DRead/ADD_11x11_fast_I70_Y_2_0\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I46_Y\ : NOR3C
      port map(A => \A2DRead/N160_0\, B => \A2DRead/N157_0\, C
         => \A2DRead/N201\, Y => \A2DRead/N226\);
    
    \ioBank68reader/dataout_RNO_1\ : NOR2B
      port map(A => \ioBank68reader/parallelholdreg[1]_net_1\, B
         => \ioBank68reader/cellindex[0]_net_1\, Y => 
        \ioBank68reader/parallelholdreg_m[1]\);
    
    \A2DRead/DataRegU1Ch0g_RNIJQNMG_0[11]\ : MAJ3
      port map(A => \A2DRead/N_1980\, B => \A2DRead/N_1953\, C
         => \A2DRead/N_1978\, Y => \A2DRead/N_1985\);
    
    \A2DRead/DataRegU1Ch1f_RNIMPHI5_0[12]\ : MAJ3
      port map(A => \A2DRead/N_1653\, B => \A2DRead/N_1628\, C
         => \A2DRead/N_1630\, Y => \A2DRead/N_1662\);
    
    \A2D00reader/dataout_RNO_9\ : MX2
      port map(A => \A2D00reader/parallelholdreg[1]_net_1\, B => 
        \A2D00reader/parallelholdreg[9]_net_1\, S => 
        \A2D00reader/cellindex[3]_net_1\, Y => \A2D00reader/N_72\);
    
    \iobank64debounce/PreviousPosition_RNO[1]\ : MX2B
      port map(A => \iobank64debounce/CurrentPosition[1]_net_1\, 
        B => \dhold64[1]\, S => LogicReset_c, Y => 
        \iobank64debounce/PreviousPosition_3[1]\);
    
    \A2DRead/AdCs1_RNO_1\ : OR2B
      port map(A => \A2DRead/step[8]_net_1\, B => \A2DRead/N_62\, 
        Y => \A2DRead/AdCs1_2_0_0_0\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I72_un1_Y_0\ : 
        NOR3C
      port map(A => \A2DRead/N_2093\, B => \A2DRead/N207\, C => 
        \A2DRead/N203\, Y => \A2DRead/ADD_11x11_fast_I72_un1_Y_0\);
    
    \iobank60debounce/Changing\ : DFN1E0
      port map(D => \iobank60debounce/Changing_0\, CLK => Clock03, 
        E => LogicReset_c, Q => \iobank60debounce/Changing_net_1\);
    
    \ioBank6Breader/dataout_RNO_2\ : AO1
      port map(A => \ioBank6Breader/parallelholdreg[0]_net_1\, B
         => \ioBank6Breader/_decfrac0\, C => 
        \A2D01reader.dataout_0_0\, Y => 
        \ioBank6Breader/dataout_0_1\);
    
    \iobank65debounce/DebounceTimer_RNO[0]\ : NOR2A
      port map(A => \iobank65debounce/un1_previousposition7\, B
         => \iobank65debounce/DebounceTimer[0]_net_1\, Y => 
        \iobank65debounce/N_67\);
    
    \A2DRead/DataRegU1Ch0p_RNIV2081[2]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0b[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch0p[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch0a[2]_net_1\, Y => \A2DRead/N_1720\);
    
    \Watch_Dog_Reset/timercount_RNO_1[6]\ : NOR2B
      port map(A => \Watch_Dog_Reset/timercount[5]_net_1\, B => 
        \Watch_Dog_Reset/timercount[2]_net_1\, Y => 
        \Watch_Dog_Reset/m19_m1_0_a2_0\);
    
    \heart_beat/counter[15]\ : DFN1
      port map(D => \heart_beat/m24\, CLK => Clock04, Q => 
        \heart_beat/counter[15]_net_1\);
    
    \Watch_Dog_Reset/timercount[2]\ : DFN1E0
      port map(D => \Watch_Dog_Reset/timercount_n2\, CLK => 
        \counter[1]\, E => \Watch_Dog_Reset/timercount_0_sqmuxa\, 
        Q => \Watch_Dog_Reset/timercount[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0j_RNIVVBN[8]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0j[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch0l[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch0k[8]_net_1\, Y => \A2DRead/N_1884\);
    
    \A2D00reader/cellindex_RNO[3]\ : AX1C
      port map(A => \A2D00reader/cellindex_1_sqmuxa_1\, B => 
        \A2D00reader/cellindex[3]_net_1\, C => \A2D00reader/N_89\, 
        Y => \A2D00reader/cellindex_n3\);
    
    \A2DRead/DataRegU1Ch1o_RNI84QT[7]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1m[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch1o[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch1n[7]_net_1\, Y => \A2DRead/N_1507\);
    
    \pwmdisable01latch/cellindex_RNI7TE4[1]\ : NOR2B
      port map(A => \pwmdisable01latch/cellindex[0]_net_1\, B => 
        \pwmdisable01latch/cellindex[1]_net_1\, Y => 
        \pwmdisable01latch/cellindex_c1\);
    
    \A2DRead/DataRegU1Ch1n[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1m[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1n[10]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I70_un1_Y_0\ : 
        NOR2B
      port map(A => \A2DRead/N224\, B => \A2DRead/N216_0\, Y => 
        \A2DRead/ADD_11x11_fast_I70_un1_Y_0\);
    
    \iobank68debounce/DebounceTimer[0]\ : DFN1E1
      port map(D => \iobank68debounce/N_67\, CLK => Clock03, E
         => \iobank68debounce/DebounceTimere\, Q => 
        \iobank68debounce/DebounceTimer[0]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNIMT8F1[2]\ : XOR3
      port map(A => \A2DRead/N_1373\, B => \A2DRead/N_1371\, C
         => \A2DRead/N_1375\, Y => \A2DRead/N_1385\);
    
    \A2DRead/DataRegU1Ch1m[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1l[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1m[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1j_RNIJST31[3]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1j[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch1l[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch1k[3]_net_1\, Y => \A2DRead/N_1399\);
    
    \matrix_read03/ctrl_RNO[3]\ : OR3C
      port map(A => \matrix_read03/N_65\, B => 
        \matrix_read03/N_63\, C => \matrix_read03/N_26\, Y => 
        \matrix_read03/ctrl_RNO[3]_net_1\);
    
    \iobank69debounce/DebounceTimer_RNO_0[3]\ : NOR2B
      port map(A => \iobank69debounce/DebounceTimer_c1\, B => 
        \iobank69debounce/DebounceTimer[2]_net_1\, Y => 
        \iobank69debounce/DebounceTimer_c2\);
    
    \A2DRead/DataRegU1Ch0[12]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch0[11]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0[12]_net_1\);
    
    \iobank6Adebounce/PreviousPosition[2]\ : DFN1
      port map(D => \iobank6Adebounce/PreviousPosition_3[2]\, CLK
         => Clock03, Q => 
        \iobank6Adebounce/PreviousPosition[2]_net_1\);
    
    \iobank69debounce/DebounceTimer[4]\ : DFN1E1
      port map(D => \iobank69debounce/DebounceTimer_n4\, CLK => 
        Clock03, E => \iobank69debounce/DebounceTimere\, Q => 
        \iobank69debounce/DebounceTimer[4]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I69_Y_2\ : AO1
      port map(A => \A2DRead/N214\, B => \A2DRead/N221\, C => 
        \A2DRead/ADD_11x11_fast_I69_Y_1\, Y => 
        \A2DRead/ADD_11x11_fast_I69_Y_2\);
    
    \heart_beat/un1_counter_1_m33\ : XOR2
      port map(A => \heart_beat/N_11_i\, B => 
        \heart_beat/counter[6]_net_1\, Y => \heart_beat/m33\);
    
    \matrix_read03/data03[0]\ : DFN1E1
      port map(D => \inputs62_c[0]\, CLK => Clock03, E => 
        \matrix_read03/ctrl18\, Q => 
        \matrix_read03/data03[0]_net_1\);
    
    \A2DRead/DataRegU1Ch1j_RNIT0G11_0[10]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1l[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch1k[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch1j[10]_net_1\, Y => \A2DRead/N_1594\);
    
    \iobank64debounce/DebounceTimer_RNO[3]\ : XA1
      port map(A => \iobank64debounce/DebounceTimer_c2\, B => 
        \iobank64debounce/DebounceTimer[3]_net_1\, C => 
        \iobank64debounce/un1_previousposition7\, Y => 
        \iobank64debounce/DebounceTimer_n3\);
    
    \A2D01reader/parallelholdreg[6]\ : DFN1
      port map(D => \A2D01reader/parallelholdreg_RNO_1[6]_net_1\, 
        CLK => Clock01, Q => 
        \A2D01reader/parallelholdreg[6]_net_1\);
    
    \pwmdisable01latch/output_0_sqmuxa\ : NOR3B
      port map(A => \firmware.N_76\, B => 
        \pwmdisable01latch/un13_address_3\, C => SerialLoad_c, Y
         => \pwmdisable01latch/output_0_sqmuxa_net_1\);
    
    \discretedutycycle01/paralleldata_RNO[10]\ : NOR2A
      port map(A => \discretedutycycle01/N_137_mux\, B => 
        LogicReset_c, Y => 
        \discretedutycycle01/paralleldata_RNO[10]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIA5EMR_0[5]\ : NOR2B
      port map(A => \A2DRead/N_1523\, B => \A2DRead/N_1498\, Y
         => \A2DRead/un60_dataregu1ch1_256\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I31_Y\ : MAJ3
      port map(A => \A2DRead/N_2093\, B => \A2DRead/N_1820\, C
         => \A2DRead/N_1793\, Y => \A2DRead/N208_0\);
    
    \ioBank61reader/dataout_RNO_0\ : MX2
      port map(A => \ioBank61reader/N_33\, B => 
        \ioBank61reader/N_34\, S => 
        \ioBank61reader/cellindex[0]_net_1\, Y => 
        \ioBank61reader/dataout_52\);
    
    \A2DRead/DataRegU1Ch1i_RNI0CGK2[11]\ : XOR3
      port map(A => \A2DRead/N_1624\, B => \A2DRead/N_1620\, C
         => \A2DRead/N_1622\, Y => \A2DRead/N_1655\);
    
    \pwmdisable01latch/paralleldata_RNO_0[3]\ : MX2
      port map(A => \pwmdisable01latch/paralleldata[3]_net_1\, B
         => SerialIn_c, S => \pwmdisable01latch/N_97\, Y => 
        \pwmdisable01latch/N_97_mux\);
    
    \ioBank67reader/parallelholdreg[1]\ : DFN1
      port map(D => \ioBank67reader/parallelholdreg_RNO_8[1]\, 
        CLK => Clock01, Q => 
        \ioBank67reader/parallelholdreg[1]_net_1\);
    
    \ioBank66reader/cellindex_RNIMR8G[1]\ : OR2
      port map(A => \ioBank66reader/cellindex[1]_net_1\, B => 
        SerialLoad_c, Y => \ioBank66reader/un1_latch_1\);
    
    \discretedutycycle01/output_RNO_0[5]\ : MX2
      port map(A => \dutycycle01[5]\, B => 
        \discretedutycycle01/paralleldata[5]_net_1\, S => 
        \discretedutycycle01/output_0_sqmuxa_0_net_1\, Y => 
        \discretedutycycle01/N_65\);
    
    \matrix_read04/dataOut03[2]\ : DFN1
      port map(D => \matrix_read04/data03[2]_net_1\, CLK => 
        Clock03, Q => \dhold6A[2]\);
    
    \iobank69debounce/Changing\ : DFN1E0
      port map(D => \iobank69debounce/Changing_net_1\, CLK => 
        Clock03, E => LogicReset_c, Q => 
        \iobank69debounce/Changing_0\);
    
    \iobank61debounce/DebounceTimer[3]\ : DFN1E1
      port map(D => \iobank61debounce/DebounceTimer_n3\, CLK => 
        Clock03, E => \iobank61debounce/DebounceTimere\, Q => 
        \iobank61debounce/DebounceTimer[3]_net_1\);
    
    \A2DRead/DataRegU1Ch0e[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0d[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0e[4]_net_1\);
    
    \inputs61_pad[1]/U0/U1\ : IOIN_IB
      port map(YIN => \inputs61_pad[1]/U0/NET1\, Y => 
        \inputs61_c[1]\);
    
    \discretedutycycle01/output_RNO[2]\ : NOR2A
      port map(A => \discretedutycycle01/N_62\, B => LogicReset_c, 
        Y => \discretedutycycle01/output_RNO_3[2]\);
    
    \ioBank6Breader/cellindex[0]\ : DFN1
      port map(D => \ioBank6Breader/cellindex_RNO_8[0]\, CLK => 
        SerialClock_c, Q => \ioBank6Breader/cellindex[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNIGH262[3]\ : XOR3
      port map(A => \A2DRead/N_1749\, B => \A2DRead/N_1745\, C
         => \A2DRead/N_1747\, Y => \A2DRead/N_1778\);
    
    \snkpout01/counter_RNO[8]\ : XA1
      port map(A => \snkpout01/counter[8]_net_1\, B => 
        \snkpout01/counter_c7\, C => \snkpout01/counter_1_sqmuxa\, 
        Y => \snkpout01/counter_n8\);
    
    \snkpout01/counter[5]\ : DFN1
      port map(D => \snkpout01/counter_n5\, CLK => Clock04, Q => 
        \snkpout01/counter[5]_net_1\);
    
    \iobank61debounce/DebounceTimer[7]\ : DFN1E1
      port map(D => \iobank61debounce/DebounceTimer_n7\, CLK => 
        Clock03, E => \iobank61debounce/DebounceTimere\, Q => 
        \iobank61debounce/DebounceTimer[7]_net_1\);
    
    \iobank67debounce/Changing\ : DFN1E0
      port map(D => \iobank67debounce/Changing_0\, CLK => Clock03, 
        E => LogicReset_c, Q => \iobank67debounce/Changing_net_1\);
    
    \iobank68debounce/DebounceTimer[5]\ : DFN1E1
      port map(D => \iobank68debounce/DebounceTimer_n5\, CLK => 
        Clock03, E => \iobank68debounce/DebounceTimere\, Q => 
        \iobank68debounce/DebounceTimer[5]_net_1\);
    
    \A2DRead/DataRegU1Ch1i_RNIOE0L2_0[11]\ : MAJ3
      port map(A => \A2DRead/N_1621\, B => \A2DRead/N_1598\, C
         => \A2DRead/N_1623\, Y => \A2DRead/N_1632\);
    
    \A2D00reader/dataout_RNO_1\ : MX2
      port map(A => \A2D00reader/N_71\, B => \A2D00reader/N_74\, 
        S => \A2D00reader/cellindex[0]_net_1\, Y => 
        \A2D00reader/N_75\);
    
    \ioBank68reader/cellindex_RNIO10T[1]\ : OR2
      port map(A => \ioBank68reader/cellindex[1]_net_1\, B => 
        SerialLoad_c, Y => \ioBank68reader/un1_latch_1\);
    
    \iobank68debounce/DebounceTimer_RNIA8TT1[6]\ : NOR3C
      port map(A => \iobank68debounce/DebounceTimer_c5_out\, B
         => \iobank68debounce/DebounceTimer[6]_net_1\, C => 
        \iobank68debounce/DebounceTimer_c3\, Y => 
        \iobank68debounce/DebounceTimer_c6\);
    
    \A2D00reader/cellindex_RNI3VP81[1]\ : NOR3C
      port map(A => \A2D00reader/parallelholdreg_0_sqmuxa_1\, B
         => \A2D00reader/parallelholdreg_0_sqmuxa_0\, C => 
        \internaddr[4]\, Y => 
        \A2D00reader/parallelholdreg_0_sqmuxa_3\);
    
    \heart_beat/counter[5]\ : DFN1
      port map(D => \heart_beat/m34\, CLK => Clock04, Q => 
        \heart_beat/counter[5]_net_1\);
    
    \A2DRead/DataRegU1Ch1i_RNI7OKAA2[10]\ : MAJ3
      port map(A => \A2DRead/N_1609\, B => \A2DRead/N_1584\, C
         => \A2DRead/N_1611\, Y => \A2DRead/N_1614\);
    
    \A2DRead/DataRegU1Ch1l[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1k[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1l[5]_net_1\);
    
    \snkpout01/counter_RNO_0[12]\ : NOR2B
      port map(A => \snkpout01/counter[11]_net_1\, B => 
        \snkpout01/counter_1_sqmuxa\, Y => 
        \snkpout01/counter_25_0\);
    
    \A2DRead/DataRegU1Ch1f_RNIC7VL2_0[3]\ : MAJ3
      port map(A => \A2DRead/N_1425\, B => \A2DRead/N_1404\, C
         => \A2DRead/N_1427\, Y => \A2DRead/N_1436\);
    
    \A2DRead/DataInReg_RNO[9]\ : NOR3C
      port map(A => \A2DRead/i8_mux_0\, B => \A2DRead/m50_0\, C
         => \A2DRead/DataInReg_328_e_0\, Y => \A2DRead/N_2182\);
    
    \ioBank67reader/cellindex_RNO[0]\ : NOR3
      port map(A => \ioBank67reader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank67reader/un1_latch_1\, Y => 
        \ioBank67reader/cellindex_RNO_4[0]\);
    
    \A2DRead/DataRegU1Ch1f_RNIHH335[6]\ : XOR3
      port map(A => \A2DRead/N_1462\, B => \A2DRead/N_1485\, C
         => \A2DRead/N_1460\, Y => \A2DRead/N_1493\);
    
    \A2DRead/DataRegU1Ch1c_RNIUSSC[3]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1c[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch1e[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch1d[3]_net_1\, Y => \A2DRead/N_1393\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I11_un1_Y\ : 
        NOR3C
      port map(A => \A2DRead/N_1685\, B => \A2DRead/N_1682\, C
         => \A2DRead/N184_0\, Y => \A2DRead/I11_un1_Y\);
    
    \A2D01reader/parallelholdreg_RNO_0[8]\ : MX2
      port map(A => \A2D01reader/parallelholdreg_7[8]\, B => 
        \A2D01reader/parallelholdreg[8]_net_1\, S => 
        \A2D01reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D01reader/N_99\);
    
    \iobank65debounce/PreviousPosition[1]\ : DFN1
      port map(D => \iobank65debounce/PreviousPosition_3[1]\, CLK
         => Clock03, Q => 
        \iobank65debounce/PreviousPosition[1]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I70_Y_2\ : AO1
      port map(A => \A2DRead/N216\, B => \A2DRead/N223\, C => 
        \A2DRead/ADD_11x11_fast_I70_Y_1\, Y => 
        \A2DRead/ADD_11x11_fast_I70_Y_2\);
    
    \A2DRead/DataRegU1Ch0b[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0a[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0b[9]_net_1\);
    
    \ioBank65reader/dataout_RNO\ : OR3
      port map(A => \ioBank65reader/parallelholdreg_m[2]\, B => 
        \ioBank65reader/parallelholdreg_m[1]\, C => 
        \ioBank65reader/dataout_0_1\, Y => 
        \ioBank65reader/dataout_RNO_7\);
    
    \externenablelatch/paralleldata_RNO_0[1]\ : MX2
      port map(A => \externenablelatch/paralleldata[1]_net_1\, B
         => SerialIn_c_0, S => \externenablelatch/N_93\, Y => 
        \externenablelatch/N_93_mux\);
    
    \A2DRead/DataRegU1Ch0m_RNISE711[4]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0m[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch0o[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch0n[4]_net_1\, Y => \A2DRead/N_1770\);
    
    \iobank65debounce/IOOut_RNO[2]\ : MX2B
      port map(A => \iobank65debounce/PreviousPosition[2]_net_1\, 
        B => \dhold65[2]\, S => LogicReset_c, Y => 
        \iobank65debounce/IOOut_3[2]\);
    
    \iobank61debounce/DebounceTimer_RNO_0[6]\ : NOR2B
      port map(A => \iobank61debounce/DebounceTimer_c3\, B => 
        \iobank61debounce/DebounceTimer_c5_out\, Y => 
        \iobank61debounce/DebounceTimer_c5\);
    
    \snkpout01/PWMOut_3_0_I_23\ : XNOR2
      port map(A => \snkpout01/counter[6]_net_1\, B => 
        \dutycycle01[6]\, Y => \snkpout01/DWACT_BL_EQUAL_0_E[1]\);
    
    \matrix_read04/data03[1]\ : DFN1E1
      port map(D => \inputs67_c[1]\, CLK => Clock03, E => 
        \matrix_read04/ctrl18\, Q => 
        \matrix_read04/data03[1]_net_1\);
    
    \matrix_read03/dataOut00_RNIRVH7[0]\ : INV
      port map(A => \dhold62[0]\, Y => \dhold62_i[0]\);
    
    \discretedutycycle01/paralleldata_RNO_0[8]\ : MX2
      port map(A => \discretedutycycle01/paralleldata[8]_net_1\, 
        B => SerialIn_c, S => \discretedutycycle01/N_135\, Y => 
        \discretedutycycle01/N_135_mux\);
    
    \A2DRead/DataRegU1Ch1f_RNI93VN_0[3]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1f[3]_net_1\, B => 
        \A2DRead/N_1374\, C => \A2DRead/N_1372\, Y => 
        \A2DRead/N_1404\);
    
    \inputs67_pad[0]/U0/U1\ : IOIN_IB
      port map(YIN => \inputs67_pad[0]/U0/NET1\, Y => 
        \inputs67_c[0]\);
    
    \discretedutycycle01/paralleldata_RNO_1[6]\ : NOR3C
      port map(A => \discretedutycycle01/un1_paralleldata_1[6]\, 
        B => \discretedutycycle01/output_0_sqmuxa_net_1\, C => 
        \discretedutycycle01/un1_paralleldata_2[7]\, Y => 
        \discretedutycycle01/N_133\);
    
    \firmware/dataout_RNO_8\ : NOR2A
      port map(A => \firmware/cellindex[0]_net_1\, B => 
        \firmware/cellindex[1]_net_1\, Y => 
        \firmware/dataout_0_0_a2_1_0\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I16_Y\ : NOR2B
      port map(A => \A2DRead/N178\, B => \A2DRead/N175\, Y => 
        \A2DRead/N193_0\);
    
    \pwmdisable01latch/paralleldata_RNO_0[7]\ : MX2
      port map(A => \pwmdisable01latch/paralleldata[7]_net_1\, B
         => SerialIn_c, S => \pwmdisable01latch/N_101\, Y => 
        \pwmdisable01latch/N_101_mux\);
    
    \iobank69debounce/DebounceTimer_RNO[1]\ : XA1
      port map(A => \iobank69debounce/DebounceTimer[1]_net_1\, B
         => \iobank69debounce/DebounceTimer[0]_net_1\, C => 
        \iobank69debounce/un1_previousposition7\, Y => 
        \iobank69debounce/DebounceTimer_n1\);
    
    \iobank62debounce/DebounceTimer[3]\ : DFN1E1
      port map(D => \iobank62debounce/DebounceTimer_n3\, CLK => 
        Clock03, E => \iobank62debounce/DebounceTimere\, Q => 
        \iobank62debounce/DebounceTimer[3]_net_1\);
    
    \iobank64debounce/DebounceTimer_RNO[5]\ : XA1
      port map(A => \iobank64debounce/DebounceTimer_c4\, B => 
        \iobank64debounce/DebounceTimer[5]_net_1\, C => 
        \iobank64debounce/un1_previousposition7\, Y => 
        \iobank64debounce/DebounceTimer_n5\);
    
    \bitcontrol01latch/output[1]\ : DFN1
      port map(D => \bitcontrol01latch/output_RNO_1[1]\, CLK => 
        Clock01, Q => \bitcontrol01latch/bitcontrol01[1]\);
    
    \pwmdisable01latch/cellindex_RNI7TE4_1[1]\ : NOR2A
      port map(A => \pwmdisable01latch/cellindex[0]_net_1\, B => 
        \pwmdisable01latch/cellindex[1]_net_1\, Y => 
        \pwmdisable01latch/un1_paralleldata_1[5]\);
    
    \clock_master/counter_4_I_31\ : AO1
      port map(A => 
        \clock_master/DWACT_ADD_CI_0_pog_array_0_1_0[0]\, B => 
        \clock_master/DWACT_ADD_CI_0_g_array_1_2[0]\, C => 
        \clock_master/DWACT_ADD_CI_0_g_array_0_2[0]\, Y => 
        \clock_master/DWACT_ADD_CI_0_g_array_12[0]\);
    
    \A2DRead/DataRegU1Ch0c[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0b[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0c[1]_net_1\);
    
    \A2D01reader/parallelholdreg_RNO_1[11]\ : OR2
      port map(A => \ohold51[11]\, B => SerialLoad_c, Y => 
        \A2D01reader/parallelholdreg_7[11]\);
    
    \discretedutycycle01/cellindex_RNIH8OL_1[1]\ : NOR2A
      port map(A => \discretedutycycle01/cellindex[0]_net_1\, B
         => \discretedutycycle01/cellindex[1]_net_1\, Y => 
        \discretedutycycle01/un1_paralleldata_1[9]\);
    
    \A2DRead/DataRegU1Ch0g_RNIKKFL72[12]\ : MAJ3
      port map(A => \A2DRead/N_2024\, B => \A2DRead/N_2015\, C
         => \A2DRead/N_2026\, Y => \A2DRead/N_2029\);
    
    \A2DRead/DataRegU1Ch1k[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1j[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1k[6]_net_1\);
    
    \A2DRead/DataRegU1Ch0o[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0n[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0o[3]_net_1\);
    
    \A2DRead/DataRegU1Ch0m[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0l[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0m[3]_net_1\);
    
    \iobank64debounce/CurrentPosition[0]\ : DFN1
      port map(D => \dhold64_i[0]\, CLK => Clock03, Q => 
        \iobank64debounce/CurrentPosition[0]_net_1\);
    
    \bitcontrol01latch/cellindex_RNO[2]\ : XA1
      port map(A => \bitcontrol01latch/cellindex[2]_net_1\, B => 
        \bitcontrol01latch/cellindex_c1\, C => 
        \ioBank60reader.cellindex_1_sqmuxa_1_1\, Y => 
        \bitcontrol01latch/cellindex_n2\);
    
    \inputs60_pad[1]/U0/U1\ : IOIN_IB
      port map(YIN => \inputs60_pad[1]/U0/NET1\, Y => 
        \inputs60_c[1]\);
    
    \A2DRead/DataRegU1Ch1i_RNIFMP33_0[12]\ : MAJ3
      port map(A => \A2DRead/N_1649\, B => \A2DRead/N_1626\, C
         => \A2DRead/N_1651\, Y => \A2DRead/N_1660\);
    
    \pwmdisable01latch/paralleldata_RNO[4]\ : NOR2A
      port map(A => \pwmdisable01latch/N_98_mux\, B => 
        LogicReset_c, Y => 
        \pwmdisable01latch/paralleldata_RNO_2[4]\);
    
    \A2DRead/DataRegU1Ch0g_RNIKGQC[11]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0g[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch0i[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch0h[11]_net_1\, Y => \A2DRead/N_1970\);
    
    \A2DRead/DataRegU1Ch1f_RNIVPUL2_0[2]\ : XOR3
      port map(A => \A2DRead/N_1399\, B => \A2DRead/N_1401\, C
         => \A2DRead/N_1382\, Y => \A2DRead/N_1409\);
    
    \A2DRead/DataRegU1Ch0g_RNI7LFD_0[3]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0i[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch0h[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch0g[3]_net_1\, Y => \A2DRead/N_1749\);
    
    \iobank69debounce/DebounceTimer_RNO_0[6]\ : NOR2B
      port map(A => \iobank69debounce/DebounceTimer_c3\, B => 
        \iobank69debounce/DebounceTimer_c5_out\, Y => 
        \iobank69debounce/DebounceTimer_c5\);
    
    \A2DRead/DatHldRegU1Ch0[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch0_1_sqmuxa\, Q => 
        \ohold50[3]\);
    
    \bitcontrol01latch/paralleldata_RNO_0[6]\ : MX2
      port map(A => \bitcontrol01latch/paralleldata[6]_net_1\, B
         => SerialIn_c, S => \bitcontrol01latch/N_100\, Y => 
        \bitcontrol01latch/N_100_mux\);
    
    \A2DRead/DataRegU1Ch1f[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1e[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1f[10]_net_1\);
    
    \iobank63debounce/DebounceTimer[7]\ : DFN1E1
      port map(D => \iobank63debounce/DebounceTimer_n7\, CLK => 
        Clock03, E => \iobank63debounce/DebounceTimere\, Q => 
        \iobank63debounce/DebounceTimer[7]_net_1\);
    
    \ioBank6Breader/parallelholdreg_0_sqmuxa_2\ : NOR2A
      port map(A => \internaddr[0]\, B => \internaddr[7]\, Y => 
        \ioBank6Breader/parallelholdreg_0_sqmuxa_2_net_1\);
    
    \bitcontrol01latch/paralleldata[2]\ : DFN1
      port map(D => 
        \bitcontrol01latch/paralleldata_RNO_1[2]_net_1\, CLK => 
        SerialClock_c, Q => 
        \bitcontrol01latch/paralleldata[2]_net_1\);
    
    \matrix_read04/ctrl[1]\ : DFN1
      port map(D => \matrix_read04/ctrl_RNO_0[1]\, CLK => Clock03, 
        Q => \inputs67_ctrl_c[1]\);
    
    \matrix_read03/ctrl_RNO[0]\ : OR3B
      port map(A => \matrix_read03/N_63\, B => 
        \matrix_read03/N_37\, C => \matrix_read03/stage[5]_net_1\, 
        Y => \matrix_read03/ctrl_RNO[0]_net_1\);
    
    \iobank62debounce/DebounceTimer[8]\ : DFN1
      port map(D => \iobank62debounce/DebounceTimer_RNO_1[8]\, 
        CLK => Clock03, Q => 
        \iobank62debounce/DebounceTimer[8]_net_1\);
    
    \ioBank60reader/parallelholdreg_RNO_1[3]\ : OR2
      port map(A => \ohold60[3]\, B => SerialLoad_c, Y => 
        \ioBank60reader/parallelholdreg_7[3]\);
    
    \A2DRead/DataRegU1Ch1m_RNI987N_0[11]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1o[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch1m[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch1n[11]_net_1\, Y => \A2DRead/N_1620\);
    
    \iobank65debounce/DebounceTimer_RNO[5]\ : XA1
      port map(A => \iobank65debounce/DebounceTimer_c4\, B => 
        \iobank65debounce/DebounceTimer[5]_net_1\, C => 
        \iobank65debounce/un1_previousposition7\, Y => 
        \iobank65debounce/DebounceTimer_n5\);
    
    \A2DRead/step_RNI2R6U1[6]\ : NOR3C
      port map(A => \A2DRead/step[2]_net_1\, B => 
        \A2DRead/step[6]_net_1\, C => \A2DRead/N_4_0\, Y => 
        \A2DRead/m23_2\);
    
    \A2DRead/DataRegU1Ch1i_RNIOE0L2[11]\ : XOR3
      port map(A => \A2DRead/N_1623\, B => \A2DRead/N_1621\, C
         => \A2DRead/N_1598\, Y => \A2DRead/N_1631\);
    
    \iobank6Adebounce/DebounceTimer_RNO[3]\ : XA1
      port map(A => \iobank6Adebounce/DebounceTimer_c2\, B => 
        \iobank6Adebounce/DebounceTimer[3]_net_1\, C => 
        \iobank6Adebounce/un1_previousposition7\, Y => 
        \iobank6Adebounce/DebounceTimer_n3\);
    
    \A2D00reader/parallelholdreg_RNO_0[2]\ : MX2
      port map(A => \A2D00reader/parallelholdreg_7[2]\, B => 
        \A2D00reader/parallelholdreg[2]_net_1\, S => 
        \A2D00reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D00reader/N_93\);
    
    \iobank61debounce/DebounceTimer_RNO[1]\ : XA1
      port map(A => \iobank61debounce/DebounceTimer[1]_net_1\, B
         => \iobank61debounce/DebounceTimer[0]_net_1\, C => 
        \iobank61debounce/un1_previousposition7\, Y => 
        \iobank61debounce/DebounceTimer_n1\);
    
    \matrix_read03/data04[0]\ : DFN1E1
      port map(D => \inputs62_c[0]\, CLK => Clock03, E => 
        \matrix_read03/ctrl21\, Q => 
        \matrix_read03/data04[0]_net_1\);
    
    \A2DRead/DataRegU1Ch1c_RNIA9TC_0[7]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1e[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch1d[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch1c[7]_net_1\, Y => \A2DRead/N_1504\);
    
    \pwmdisable01latch/output[2]\ : DFN1
      port map(D => \pwmdisable01latch/output_RNO_2[2]\, CLK => 
        Clock01, Q => \pwmdisable01[2]\);
    
    \ioBank66reader/dataout_RNO_1\ : AO1
      port map(A => \ioBank66reader/parallelholdreg[1]_net_1\, B
         => \ioBank66reader/cellindex[0]_net_1\, C => 
        \ioBank66reader/parallelholdreg_m[2]\, Y => 
        \ioBank66reader/dataout_0_2\);
    
    \iobank66debounce/DebounceTimer_RNO[5]\ : XA1
      port map(A => \iobank66debounce/DebounceTimer_c4\, B => 
        \iobank66debounce/DebounceTimer[5]_net_1\, C => 
        \iobank66debounce/un1_previousposition7\, Y => 
        \iobank66debounce/DebounceTimer_n5\);
    
    \A2DRead/DataRegU1Ch1f[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1e[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1f[7]_net_1\);
    
    \discretedutycycle01/cellindex_RNO_0[2]\ : XOR2
      port map(A => \discretedutycycle01/cellindex[2]_net_1\, B
         => \discretedutycycle01/cellindex_c1\, Y => 
        \discretedutycycle01/cellindex_n2_tz\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I29_un1_Y\ : 
        NOR3C
      port map(A => \A2DRead/N_1473\, B => \A2DRead/N_1446\, C
         => \A2DRead/N157\, Y => \A2DRead/I29_un1_Y\);
    
    \A2DRead/DataRegU1Ch1e[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1d[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1e[7]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNIOCAQ6_0[6]\ : MAJ3
      port map(A => \A2DRead/N_1832\, B => \A2DRead/N_1807\, C
         => \A2DRead/N_1809\, Y => \A2DRead/N_1841\);
    
    \discretedutycycle01/paralleldata_RNO[8]\ : NOR2A
      port map(A => \discretedutycycle01/N_135_mux\, B => 
        LogicReset_c, Y => 
        \discretedutycycle01/paralleldata_RNO[8]_net_1\);
    
    \A2DRead/DataInReg_RNO[10]\ : NOR3C
      port map(A => \A2DRead/i8_mux_0\, B => \A2DRead/m50_0\, C
         => \A2DRead/DataInReg_329_e_0\, Y => \A2DRead/N_2183\);
    
    \ioBank69reader/parallelholdreg_RNO_0[0]\ : MX2
      port map(A => \ioBank69reader/parallelholdreg_7[0]\, B => 
        \ioBank69reader/parallelholdreg[0]_net_1\, S => 
        \ioBank69reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank69reader/N_23\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I8_G0N\ : NOR2B
      port map(A => \A2DRead/N_1681\, B => \A2DRead/N_1670\, Y
         => \A2DRead/N177_0\);
    
    \A2DRead/un60_dataregu1ch1_0_1_CO3\ : NOR3C
      port map(A => \A2DRead/N_1417\, B => \A2DRead/CO3_1\, C => 
        \A2DRead/N_1445\, Y => \A2DRead/N_2114\);
    
    \A2DRead/DataRegU1Ch1[13]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch1[12]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch1_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1[13]_net_1\);
    
    \iobank68debounce/Changing_RNI4DTN\ : OA1C
      port map(A => \iobank68debounce/DebounceTimer[8]_net_1\, B
         => \iobank68debounce/Changing_net_1\, C => LogicReset_c, 
        Y => \iobank68debounce/IOOut_0_sqmuxa\);
    
    \A2DRead/DataRegU1Ch1f_RNIG2HF6[2]\ : XOR3
      port map(A => \A2DRead/N_1370\, B => 
        \A2DRead/un60_dataregu1ch1_79_1\, C => \A2DRead/N_1383\, 
        Y => \A2DRead/N_1389\);
    
    \ioBank69reader/cellindex_RNO[1]\ : NOR3A
      port map(A => \ioBank69reader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank69reader/un1_latch_1\, Y => 
        \ioBank69reader/cellindex_RNO_6[1]\);
    
    \A2DRead/DataRegU1Ch1c_RNI10TC_0[4]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1e[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch1d[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch1c[4]_net_1\, Y => \A2DRead/N_1420\);
    
    \clock_master/counter_4_I_15\ : XOR2
      port map(A => Clock03, B => LogicReset_c, Y => 
        \clock_master/DWACT_ADD_CI_0_pog_array_0_1_0[0]\);
    
    \iobank63debounce/DebounceTimer_RNO[4]\ : XA1
      port map(A => \iobank63debounce/DebounceTimer_c3\, B => 
        \iobank63debounce/DebounceTimer[4]_net_1\, C => 
        \iobank63debounce/un1_previousposition7\, Y => 
        \iobank63debounce/DebounceTimer_n4\);
    
    \A2DRead/DatHldRegU1Ch0[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch0_1_sqmuxa\, Q => 
        \ohold50[6]\);
    
    \iobank6Adebounce/DebounceTimer_RNI18SI[5]\ : NOR2B
      port map(A => \iobank6Adebounce/DebounceTimer[4]_net_1\, B
         => \iobank6Adebounce/DebounceTimer[5]_net_1\, Y => 
        \iobank6Adebounce/DebounceTimer_c5_out\);
    
    \firmware/parallelholdreg[1]\ : DFN1E1
      port map(D => \firmware/N_26\, CLK => Clock01, E => 
        \firmware/N_14\, Q => \firmware/parallelholdreg[1]_net_1\);
    
    \pwmdisable01latch/paralleldata[6]\ : DFN1
      port map(D => \pwmdisable01latch/paralleldata_RNO_2[6]\, 
        CLK => SerialClock_c, Q => 
        \pwmdisable01latch/paralleldata[6]_net_1\);
    
    \iobank69debounce/DebounceTimer[8]\ : DFN1
      port map(D => \iobank69debounce/DebounceTimer_RNO_6[8]\, 
        CLK => Clock03, Q => 
        \iobank69debounce/DebounceTimer[8]_net_1\);
    
    \discretedutycycle01/paralleldata_RNO_1[2]\ : NOR3C
      port map(A => \discretedutycycle01/un1_paralleldata_1[6]\, 
        B => \discretedutycycle01/output_0_sqmuxa_net_1\, C => 
        \discretedutycycle01/un1_paralleldata_2[3]\, Y => 
        \discretedutycycle01/N_129\);
    
    \discretedutycycle01/paralleldata_RNO_0[10]\ : MX2
      port map(A => \discretedutycycle01/paralleldata[10]_net_1\, 
        B => SerialIn_c_0, S => \discretedutycycle01/N_137\, Y
         => \discretedutycycle01/N_137_mux\);
    
    \ioBank63reader/parallelholdreg_RNO[2]\ : OR2
      port map(A => \ioBank63reader/N_25\, B => LogicReset_c, Y
         => \ioBank63reader/parallelholdreg_RNO_4[2]\);
    
    \A2DRead/DataRegU1Ch0d[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0c[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0d[8]_net_1\);
    
    \A2DRead/DataRegU1Ch1i_RNI4C9L2[10]\ : XOR3
      port map(A => \A2DRead/N_1595\, B => \A2DRead/N_1593\, C
         => \A2DRead/N_1570\, Y => \A2DRead/N_1603\);
    
    \A2DRead/DataRegU1Ch0g[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0f[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0g[11]_net_1\);
    
    \Watch_Dog_Reset/timercount_RNILU2S[8]\ : NOR2
      port map(A => \Watch_Dog_Reset/timercount[9]_net_1\, B => 
        \Watch_Dog_Reset/timercount[8]_net_1\, Y => 
        \Watch_Dog_Reset/m40_e_1\);
    
    \A2DRead/DataRegU1Ch1n[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1m[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1n[1]_net_1\);
    
    \discretedutycycle01/output_RNO_0[11]\ : MX2
      port map(A => \dutycycle01[11]\, B => 
        \discretedutycycle01/paralleldata[11]_net_1\, S => 
        \discretedutycycle01/output_0_sqmuxa_0_net_1\, Y => 
        \discretedutycycle01/N_71\);
    
    \A2DRead/DataRegU1Ch1p_RNIBOI4[5]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1b[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch1p[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch1a[5]_net_1\, Y => \A2DRead/N_1449\);
    
    \A2DRead/DataRegU1Ch0l[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0k[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0l[10]_net_1\);
    
    \addresslatch/output[7]\ : DFN1
      port map(D => \addresslatch/output_RNO[7]_net_1\, CLK => 
        Clock01, Q => \internaddr[7]\);
    
    \iobank63debounce/IOOut[0]\ : DFN1E0
      port map(D => \iobank63debounce/IOOut_3[0]\, CLK => Clock03, 
        E => \iobank63debounce/IOOut_0_sqmuxa\, Q => \ohold63[0]\);
    
    \A2DRead/DataRegU1Ch0b[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0a[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0b[8]_net_1\);
    
    \matrix_read03/stage_RNIQRO01[2]\ : OR2A
      port map(A => \matrix_read03/stage[2]_net_1\, B => 
        \matrix_read03/N_26\, Y => \matrix_read03/N_36\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I61_Y\ : AO1
      port map(A => \A2DRead/N222\, B => \A2DRead/N229_0\, C => 
        \A2DRead/N221\, Y => \A2DRead/N275\);
    
    \iobank6Adebounce/DebounceTimer_RNIPVRI[1]\ : NOR2B
      port map(A => \iobank6Adebounce/DebounceTimer[0]_net_1\, B
         => \iobank6Adebounce/DebounceTimer[1]_net_1\, Y => 
        \iobank6Adebounce/DebounceTimer_c1\);
    
    \iobank62debounce/IOOut_RNO[2]\ : MX2B
      port map(A => \iobank62debounce/PreviousPosition[2]_net_1\, 
        B => \dhold62[2]\, S => LogicReset_c, Y => 
        \iobank62debounce/IOOut_3[2]\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I86_Y\ : AX1D
      port map(A => \A2DRead/N225_0\, B => \A2DRead/I63_un1_Y\, C
         => \A2DRead/ADD_11x11_fast_I86_Y_0\, Y => 
        \A2DRead/un60_dataregu1ch1[9]\);
    
    \matrix_read03/stage_RNI3FRL[4]\ : NOR2A
      port map(A => \matrix_read03/stage[4]_net_1\, B => 
        \matrix_read03/stage[5]_net_1\, Y => 
        \matrix_read03/ctrl15_m1_e_0_0\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I38_Y\ : NOR2B
      port map(A => \A2DRead/N193_0\, B => \A2DRead/N197\, Y => 
        \A2DRead/N218_0\);
    
    \A2DRead/DataRegU1Ch0m_RNIM8711[2]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0m[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch0o[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch0n[2]_net_1\, Y => \A2DRead/N_1722\);
    
    \A2DRead/step[2]\ : DFN1E0
      port map(D => \A2DRead/N_55\, CLK => Clock04, E => 
        \A2DRead/N_59\, Q => \A2DRead/step[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0m_RNIKKM15[5]\ : XO1
      port map(A => \A2DRead/N_1798\, B => 
        \A2DRead/un60_dataregu1ch0_259_0\, C => 
        \A2DRead/un60_dataregu1ch0_118\, Y => 
        \A2DRead/un60_dataregu1ch0_278_0_tz_0\);
    
    \A2DRead/DataRegU1Ch1o_RNIB7QT[8]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1m[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch1o[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch1n[8]_net_1\, Y => \A2DRead/N_1535\);
    
    \iobank6Bdebounce/DebounceTimer_RNO[6]\ : XA1
      port map(A => \iobank6Bdebounce/DebounceTimer_c5\, B => 
        \iobank6Bdebounce/DebounceTimer[6]_net_1\, C => 
        \iobank6Bdebounce/un1_previousposition7\, Y => 
        \iobank6Bdebounce/DebounceTimer_n6\);
    
    \A2DRead/DataRegU1Ch0f_RNIBUEV2[1]\ : MAJ3
      port map(A => \A2DRead/N_1724\, B => \A2DRead/N_1715\, C
         => \A2DRead/N_1726\, Y => \A2DRead/N_1735\);
    
    \iobank67debounce/DebounceTimer_RNO[2]\ : XA1
      port map(A => \iobank67debounce/DebounceTimer[2]_net_1\, B
         => \iobank67debounce/DebounceTimer_c1\, C => 
        \iobank67debounce/un1_previousposition7\, Y => 
        \iobank67debounce/DebounceTimer_n2\);
    
    \iobank60debounce/DebounceTimer_RNO[5]\ : XA1
      port map(A => \iobank60debounce/DebounceTimer_c4\, B => 
        \iobank60debounce/DebounceTimer[5]_net_1\, C => 
        \iobank60debounce/un1_previousposition7\, Y => 
        \iobank60debounce/DebounceTimer_n5\);
    
    \firmware/dataout_RNO_3\ : MX2
      port map(A => \firmware/parallelholdreg[2]_net_1\, B => 
        \firmware/parallelholdreg[6]_net_1\, S => 
        \firmware/cellindex[2]_net_1\, Y => \firmware/N_50\);
    
    \ioBank65reader/cellindex_RNIJKLL[1]\ : NOR3C
      port map(A => \internaddr[0]\, B => 
        \ioBank65reader/_decfrac0\, C => 
        \ioBank66reader.parallelholdreg_0_sqmuxa_1\, Y => 
        \ioBank65reader/parallelholdreg_0_sqmuxa_2\);
    
    \externenablelatch/paralleldata_RNO_0[3]\ : MX2
      port map(A => \externenablelatch/paralleldata[3]_net_1\, B
         => SerialIn_c_0, S => \externenablelatch/N_95\, Y => 
        \externenablelatch/N_95_mux\);
    
    \bitcontrol01latch/paralleldata_RNO_0[1]\ : MX2
      port map(A => \bitcontrol01latch/paralleldata[1]_net_1\, B
         => SerialIn_c, S => \bitcontrol01latch/N_95\, Y => 
        \bitcontrol01latch/N_95_mux\);
    
    \A2DRead/DataRegU1Ch0p[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0o[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0p[5]_net_1\);
    
    \pwmdisable01latch/paralleldata[7]\ : DFN1
      port map(D => 
        \pwmdisable01latch/paralleldata_RNO_1[7]_net_1\, CLK => 
        SerialClock_c, Q => 
        \pwmdisable01latch/paralleldata[7]_net_1\);
    
    \A2DRead/step_RNID93V[1]\ : NOR2B
      port map(A => \A2DRead/step[1]_net_1\, B => 
        \A2DRead/step[2]_net_1\, Y => \A2DRead/step_c1\);
    
    \A2DRead/DataRegU1Ch1p_RNI77217[12]\ : XOR3
      port map(A => \A2DRead/N_1655\, B => \A2DRead/N_1657\, C
         => \A2DRead/N_1632\, Y => \A2DRead/N_1663\);
    
    \A2DRead/DataRegU1Ch1f_RNIC0IET_0[2]\ : AO13
      port map(A => \A2DRead/N_1439\, B => \A2DRead/N_1414\, C
         => \A2DRead/un60_i1_mux_0\, Y => \A2DRead/N_1444\);
    
    \matrix_read03/stage_RNIR6RL_1[0]\ : NOR2
      port map(A => \matrix_read03/stage[0]_net_1\, B => 
        \matrix_read03/stage[1]_net_1\, Y => \matrix_read03/N_66\);
    
    \A2DRead/DataRegU1Ch0f_RNIC0GV2[4]\ : XOR3
      port map(A => \A2DRead/N_1802\, B => \A2DRead/N_1800\, C
         => \A2DRead/N_1777\, Y => \A2DRead/N_1810\);
    
    \iobank6Bdebounce/DebounceTimer[1]\ : DFN1E1
      port map(D => \iobank6Bdebounce/DebounceTimer_n1\, CLK => 
        Clock03, E => \iobank6Bdebounce/DebounceTimere\, Q => 
        \iobank6Bdebounce/DebounceTimer[1]_net_1\);
    
    \heart_beat/counter[17]\ : DFN1
      port map(D => \heart_beat/m22\, CLK => Clock04, Q => 
        \heart_beat/counter[17]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNIV69F1[3]\ : XOR3
      port map(A => \A2DRead/N_1395\, B => \A2DRead/N_1393\, C
         => \A2DRead/N_1397\, Y => \A2DRead/N_1407\);
    
    \A2DRead/DataRegU1Ch1i_RNINVOR_0[11]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1i[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch1g[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch1h[11]_net_1\, Y => \A2DRead/N_1624\);
    
    \iobank66debounce/DebounceTimer_RNO[2]\ : XA1
      port map(A => \iobank66debounce/DebounceTimer[2]_net_1\, B
         => \iobank66debounce/DebounceTimer_c1\, C => 
        \iobank66debounce/un1_previousposition7\, Y => 
        \iobank66debounce/DebounceTimer_n2\);
    
    \ioBank65reader/parallelholdreg[2]\ : DFN1
      port map(D => \ioBank65reader/parallelholdreg_RNO_6[2]\, 
        CLK => Clock01, Q => 
        \ioBank65reader/parallelholdreg[2]_net_1\);
    
    \matrix_read03/data02[1]\ : DFN1E1
      port map(D => \inputs62_c[1]\, CLK => Clock03, E => 
        \matrix_read03/ctrl15\, Q => 
        \matrix_read03/data02[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1i_RNI4C9L2_0[10]\ : MAJ3
      port map(A => \A2DRead/N_1593\, B => \A2DRead/N_1570\, C
         => \A2DRead/N_1595\, Y => \A2DRead/N_1604\);
    
    \A2DRead/DataRegU1Ch0g_RNI4GCDF[12]\ : XOR3
      port map(A => \A2DRead/N_2006\, B => \A2DRead/N_2008\, C
         => \A2DRead/N_1981\, Y => \A2DRead/N_2012\);
    
    \uCReset_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => uCReset_c, E => \VCC\, DOUT => 
        \uCReset_pad/U0/NET1\, EOUT => \uCReset_pad/U0/NET2\);
    
    \A2DRead/DataRegU1Ch1b[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1a[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1b[10]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNI73PR2_2[1]\ : MAJ3
      port map(A => \A2DRead/N_1362\, B => \A2DRead/N_1366\, C
         => \A2DRead/N_1364\, Y => \A2DRead/N_1384\);
    
    \externenablelatch/output[6]\ : DFN1
      port map(D => \externenablelatch/output_RNO_0[6]_net_1\, 
        CLK => Clock01, Q => \ExternalHardwareEn_c[6]\);
    
    \externenablelatch/cellindex_RNO[2]\ : XA1
      port map(A => \externenablelatch/cellindex[2]_net_1\, B => 
        \externenablelatch/cellindex_c1\, C => 
        \externenablelatch/cellindex_1_sqmuxa_1_0_net_1\, Y => 
        \externenablelatch/cellindex_n2\);
    
    \iobank6Bdebounce/DebounceTimer_RNO[0]\ : NOR2A
      port map(A => \iobank6Bdebounce/un1_previousposition7\, B
         => \iobank6Bdebounce/DebounceTimer[0]_net_1\, Y => 
        \iobank6Bdebounce/N_67\);
    
    \A2DRead/DataRegU1Ch1f_RNI2SUN_1[2]\ : MIN3
      port map(A => \A2DRead/DataRegU1Ch1f[2]_net_1\, B => 
        \A2DRead/N_1360\, C => \A2DRead/N_1358\, Y => 
        \A2DRead/un60_N_1_i_0\);
    
    \A2DRead/DataRegU1Ch0f_RNIIG9U1[12]\ : XOR3
      port map(A => \A2DRead/N_1965\, B => 
        \A2DRead/DataRegU1Ch0f[12]_net_1\, C => \A2DRead/N_1963\, 
        Y => \A2DRead/N_2000\);
    
    \A2DRead/DatHldRegU1Ch0[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch0_1_sqmuxa\, Q => 
        \ohold50[4]\);
    
    \A2DRead/DataRegU1Ch1j[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1i[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1j[6]_net_1\);
    
    \ioBank60reader/parallelholdreg[3]\ : DFN1
      port map(D => 
        \ioBank60reader/parallelholdreg_RNO_1[3]_net_1\, CLK => 
        Clock01, Q => \ioBank60reader/parallelholdreg[3]_net_1\);
    
    \iobank66debounce/DebounceTimer_RNO[6]\ : XA1
      port map(A => \iobank66debounce/DebounceTimer_c5\, B => 
        \iobank66debounce/DebounceTimer[6]_net_1\, C => 
        \iobank66debounce/un1_previousposition7\, Y => 
        \iobank66debounce/DebounceTimer_n6\);
    
    \A2DRead/DataRegU1Ch1e[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1d[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1e[3]_net_1\);
    
    \A2DRead/DataInReg[2]\ : DFN1E1
      port map(D => AdDout_c, CLK => Clock04, E => 
        \A2DRead/N_2172\, Q => \A2DRead/DataInReg[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0d_RNIVEMUV[3]\ : XOR3
      port map(A => \A2DRead/N_1786\, B => \A2DRead/N_1761\, C
         => \A2DRead/N_1763\, Y => \A2DRead/N_1790\);
    
    \iobank63debounce/DebounceTimer[0]\ : DFN1E1
      port map(D => \iobank63debounce/N_67\, CLK => Clock03, E
         => \iobank63debounce/DebounceTimere\, Q => 
        \iobank63debounce/DebounceTimer[0]_net_1\);
    
    \A2DRead/DataRegU1Ch1i[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1h[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1i[10]_net_1\);
    
    \ioBank62reader/parallelholdreg_RNO[2]\ : OR2
      port map(A => \ioBank62reader/N_25\, B => LogicReset_c, Y
         => \ioBank62reader/parallelholdreg_RNO_3[2]\);
    
    \inputs60_pad[0]/U0/U1\ : IOIN_IB
      port map(YIN => \inputs60_pad[0]/U0/NET1\, Y => 
        \inputs60_c[0]\);
    
    \A2DRead/DataRegU1Ch0g[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0f[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0g[6]_net_1\);
    
    \A2DRead/step_RNO[1]\ : NOR2
      port map(A => \A2DRead/step[1]_net_1\, B => LogicReset_c, Y
         => \A2DRead/N_108\);
    
    \ExternalHardwareEn_pad[6]/U0/U1\ : IOTRI_OB_EB
      port map(D => \ExternalHardwareEn_c[6]\, E => \VCC\, DOUT
         => \ExternalHardwareEn_pad[6]/U0/NET1\, EOUT => 
        \ExternalHardwareEn_pad[6]/U0/NET2\);
    
    \inputs62_pad[2]/U0/U1\ : IOIN_IB
      port map(YIN => \inputs62_pad[2]/U0/NET1\, Y => 
        \inputs62_c[2]\);
    
    \A2DRead/DataRegU1Ch0l[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0k[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0l[7]_net_1\);
    
    \pwmdisable01latch/cellindex_RNI7TE4_2[1]\ : NOR2
      port map(A => \pwmdisable01latch/cellindex[0]_net_1\, B => 
        \pwmdisable01latch/cellindex[1]_net_1\, Y => 
        \pwmdisable01latch/un1_paralleldata_1[0]\);
    
    \heart_beat/un1_counter_1_m1\ : NOR2B
      port map(A => \heart_beat/counter[0]_net_1\, B => 
        \A2DRead.AdClock_0_sqmuxa\, Y => \heart_beat/N_2_i\);
    
    \A2DRead/DataRegU1Ch1f_RNI9V0QT[3]\ : AO13
      port map(A => \A2DRead/un60_i1_mux_1\, B => 
        \A2DRead/un60_i3_mux\, C => \A2DRead/N_1467\, Y => 
        \A2DRead/un60_i3_mux_0\);
    
    \A2DRead/DataRegU1Ch0f_RNI5V2F6[11]\ : XOR3
      port map(A => \A2DRead/N_1949\, B => \A2DRead/N_1972\, C
         => \A2DRead/N_1947\, Y => \A2DRead/N_1980\);
    
    \matrix_read03/ctrl_RNO_2[2]\ : NOR2
      port map(A => \matrix_read03/stage[4]_net_1\, B => 
        \matrix_read03/stage[3]_net_1\, Y => 
        \matrix_read03/ctrl_7_i_0_a3_0_0[2]\);
    
    \iobank6Adebounce/DebounceTimer_RNIF9AS[6]\ : NOR3C
      port map(A => \iobank6Adebounce/DebounceTimer[3]_net_1\, B
         => \iobank6Adebounce/DebounceTimer[6]_net_1\, C => 
        \iobank6Adebounce/DebounceTimer[2]_net_1\, Y => 
        \iobank6Adebounce/DebounceTimer_m2_0_a2_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I34_Y\ : NOR2B
      port map(A => \A2DRead/N189\, B => \A2DRead/N193_0\, Y => 
        \A2DRead/N214_0\);
    
    \A2D00reader/cellindex_RNIVJKV1[2]\ : AOI1B
      port map(A => \A2D00reader/un193_dataout_11_0\, B => 
        \A2D00reader/cellindex_c1\, C => 
        \ioBank60reader.cellindex_1_sqmuxa_1_1\, Y => 
        \A2D00reader/cellindex_1_sqmuxa_1\);
    
    \ioBank6Breader/parallelholdreg_RNO_1[0]\ : OR2
      port map(A => \ohold6B[0]\, B => SerialLoad_c, Y => 
        \ioBank6Breader/parallelholdreg_7[0]\);
    
    \A2DRead/DataRegU1Ch1f_RNIGA4SC_0[5]\ : OA1
      port map(A => \A2DRead/N_1438\, B => \A2DRead/N_1463\, C
         => \A2DRead/N_1465\, Y => 
        \A2DRead/un60_dataregu1ch1_283_0\);
    
    \iobank67debounce/DebounceTimer_RNI238M[8]\ : OA1C
      port map(A => \iobank67debounce/DebounceTimer[8]_net_1\, B
         => \iobank67debounce/Changing_net_1\, C => LogicReset_c, 
        Y => \iobank67debounce/IOOut_0_sqmuxa\);
    
    \A2DRead/DataRegU1Ch1i_RNIQ2PR[12]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1g[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch1i[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch1h[12]_net_1\, Y => \A2DRead/N_1651\);
    
    \addresslatch/paralleldata_RNO_1[4]\ : NOR3A
      port map(A => \addresslatch/paralleldata_0_e_0[7]\, B => 
        \addresslatch/cellindex[1]_net_1\, C => 
        \addresslatch/cellindex[0]_net_1\, Y => 
        \addresslatch/N_87\);
    
    \inputs62_pad[1]/U0/U1\ : IOIN_IB
      port map(YIN => \inputs62_pad[1]/U0/NET1\, Y => 
        \inputs62_c[1]\);
    
    \A2DRead/DataRegU1Ch1f_RNIG2HF6_1[2]\ : MAJ3
      port map(A => \A2DRead/N_1370\, B => \A2DRead/N_1381\, C
         => \A2DRead/N_1383\, Y => \A2DRead/N_1390\);
    
    \A2DRead/DataRegU1Ch0d_RNIPQ25T[3]\ : NOR2B
      port map(A => \A2DRead/N_1760\, B => \A2DRead/N_1739\, Y
         => \A2DRead/un60_dataregu1ch0_89\);
    
    \iobank61debounce/PreviousPosition[1]\ : DFN1
      port map(D => \iobank61debounce/PreviousPosition_3[1]\, CLK
         => Clock03, Q => 
        \iobank61debounce/PreviousPosition[1]_net_1\);
    
    \addresslatch/paralleldata_RNO_1[5]\ : NOR3B
      port map(A => \addresslatch/cellindex[0]_net_1\, B => 
        \addresslatch/paralleldata_0_e_0[7]\, C => 
        \addresslatch/cellindex[1]_net_1\, Y => 
        \addresslatch/N_88\);
    
    \iobank6Bdebounce/PreviousPosition[0]\ : DFN1
      port map(D => \iobank6Bdebounce/PreviousPosition_3[0]\, CLK
         => Clock03, Q => 
        \iobank6Bdebounce/PreviousPosition[0]_net_1\);
    
    \A2D00reader/dataout_RNO_10\ : MX2
      port map(A => \A2D00reader/parallelholdreg[3]_net_1\, B => 
        \A2D00reader/parallelholdreg[11]_net_1\, S => 
        \A2D00reader/cellindex[3]_net_1\, Y => \A2D00reader/N_73\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I55_un1_Y\ : 
        NOR2B
      port map(A => \A2DRead/N216_0\, B => \A2DRead/N223_0\, Y
         => \A2DRead/I55_un1_Y\);
    
    \iobank6Bdebounce/DebounceTimer_RNO[8]\ : NOR3C
      port map(A => \iobank6Bdebounce/un1_previousposition7\, B
         => \iobank6Bdebounce/DebounceTimer[7]_net_1\, C => 
        \iobank6Bdebounce/DebounceTimer_c6\, Y => 
        \iobank6Bdebounce/N_48\);
    
    \iobank69debounce/DebounceTimer_RNO[0]\ : NOR2A
      port map(A => \iobank69debounce/un1_previousposition7\, B
         => \iobank69debounce/DebounceTimer[0]_net_1\, Y => 
        \iobank69debounce/N_67\);
    
    \iobank61debounce/PreviousPosition_RNO[2]\ : MX2B
      port map(A => \iobank61debounce/CurrentPosition[2]_net_1\, 
        B => \inputs61_c[2]\, S => LogicReset_c, Y => 
        \iobank61debounce/PreviousPosition_3[2]\);
    
    \A2DRead/DataInReg_RNI3V404[13]\ : NOR3C
      port map(A => \A2DRead/N_55_mux\, B => \A2DRead/m23_2\, C
         => \A2DRead/DataInReg[13]_net_1\, Y => 
        \A2DRead/DatHldRegU1Ch1_1_sqmuxa\);
    
    \A2DRead/DataRegU1Ch0h[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0g[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0h[5]_net_1\);
    
    \ioBank65reader/parallelholdreg_RNO[2]\ : OR2
      port map(A => \ioBank65reader/N_25\, B => LogicReset_c, Y
         => \ioBank65reader/parallelholdreg_RNO_6[2]\);
    
    \inputs67_ctrl_pad[3]/U0/U0\ : IOPAD_TRI
      port map(D => \inputs67_ctrl_pad[3]/U0/NET1\, E => 
        \inputs67_ctrl_pad[3]/U0/NET2\, PAD => inputs67_ctrl(3));
    
    \A2D01reader/cellindex[0]\ : DFN1
      port map(D => \A2D01reader/cellindex_n0\, CLK => 
        SerialClock_c, Q => \A2D01reader/cellindex[0]_net_1\);
    
    \ioBank60reader/parallelholdreg_RNO[0]\ : OR2
      port map(A => \ioBank60reader/N_38\, B => LogicReset_c, Y
         => \ioBank60reader/parallelholdreg_RNO_1[0]_net_1\);
    
    \iobank60debounce/DebounceTimer_RNO[7]\ : XA1
      port map(A => \iobank60debounce/DebounceTimer_c6\, B => 
        \iobank60debounce/DebounceTimer[7]_net_1\, C => 
        \iobank60debounce/un1_previousposition7\, Y => 
        \iobank60debounce/DebounceTimer_n7\);
    
    \discretedutycycle01/paralleldata_RNO_0[3]\ : MX2
      port map(A => \discretedutycycle01/paralleldata[3]_net_1\, 
        B => SerialIn_c_0, S => \discretedutycycle01/N_130\, Y
         => \discretedutycycle01/N_130_mux\);
    
    \iobank64debounce/DebounceTimer_RNO[1]\ : XA1
      port map(A => \iobank64debounce/DebounceTimer[1]_net_1\, B
         => \iobank64debounce/DebounceTimer[0]_net_1\, C => 
        \iobank64debounce/un1_previousposition7\, Y => 
        \iobank64debounce/DebounceTimer_n1\);
    
    \A2DRead/step_RNO[6]\ : NOR3A
      port map(A => \A2DRead/N_68\, B => LogicReset_c, C => 
        \A2DRead/N_105\, Y => \A2DRead/N_47\);
    
    \snkpout01/counter_RNO[3]\ : XA1
      port map(A => \snkpout01/counter[3]_net_1\, B => 
        \snkpout01/counter_c2\, C => \snkpout01/counter_1_sqmuxa\, 
        Y => \snkpout01/counter_n3\);
    
    \A2DRead/DataRegU1Ch1h[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1g[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1h[4]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNIQ2AF1[6]\ : XOR3
      port map(A => \A2DRead/N_1477\, B => \A2DRead/N_1475\, C
         => \A2DRead/N_1479\, Y => \A2DRead/N_1489\);
    
    \A2DRead/DataRegU1Ch0h[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0g[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0h[11]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNIHDQC_0[10]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0i[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch0h[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch0g[10]_net_1\, Y => \A2DRead/N_1943\);
    
    \A2DRead/DatHldRegU1Ch1[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch1_1_sqmuxa\, Q => 
        \ohold51[5]\);
    
    \ioBank60reader/parallelholdreg[2]\ : DFN1
      port map(D => 
        \ioBank60reader/parallelholdreg_RNO_1[2]_net_1\, CLK => 
        Clock01, Q => \ioBank60reader/parallelholdreg[2]_net_1\);
    
    \A2DRead/DataRegU1Ch1p[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1o[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1p[11]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNIFDRR2[9]\ : XOR3
      port map(A => \A2DRead/N_1568\, B => \A2DRead/N_1564\, C
         => \A2DRead/N_1566\, Y => \A2DRead/N_1599\);
    
    \ioBank61reader/parallelholdreg_RNO_1[2]\ : OR2
      port map(A => \ohold61[2]\, B => SerialLoad_c, Y => 
        \ioBank61reader/parallelholdreg_7[2]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I26_Y\ : NOR2B
      port map(A => \A2DRead/N160_0\, B => \A2DRead/N163_0\, Y
         => \A2DRead/N203\);
    
    \ioBank62reader/parallelholdreg_RNO_0[0]\ : MX2
      port map(A => \ioBank62reader/parallelholdreg_7[0]\, B => 
        \ioBank62reader/parallelholdreg[0]_net_1\, S => 
        \ioBank62reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank62reader/N_23\);
    
    \snkpout01/PWMOut_3_0_I_35\ : NOR2A
      port map(A => \dutycycle01[0]\, B => 
        \snkpout01/counter[0]_net_1\, Y => \snkpout01/N_4\);
    
    \iobank62debounce/DebounceTimer_RNO[3]\ : XA1
      port map(A => \iobank62debounce/DebounceTimer_c2\, B => 
        \iobank62debounce/DebounceTimer[3]_net_1\, C => 
        \iobank62debounce/un1_previousposition7\, Y => 
        \iobank62debounce/DebounceTimer_n3\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I71_un1_Y_1\ : 
        NOR3C
      port map(A => \A2DRead/N208\, B => \A2DRead/N205\, C => 
        \A2DRead/N201_0\, Y => \A2DRead/I63_un1_Y\);
    
    \A2DRead/DataRegU1Ch0d_RNILAAG_0[1]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0c[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch0e[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch0d[1]_net_1\, Y => \A2DRead/N_1705\);
    
    \Watch_Dog_Reset/timercount_RNO_0[10]\ : NOR2B
      port map(A => \Watch_Dog_Reset/N_9_0\, B => 
        \Watch_Dog_Reset/timercount[9]_net_1\, Y => 
        \Watch_Dog_Reset/N_10_0\);
    
    \A2D01reader/cellindex[2]\ : DFN1
      port map(D => \A2D01reader/cellindex_n2\, CLK => 
        SerialClock_c, Q => \A2D01reader/cellindex[2]_net_1\);
    
    \iobank69debounce/CurrentPosition[0]\ : DFN1
      port map(D => \dhold69_i[0]\, CLK => Clock03, Q => 
        \iobank69debounce/CurrentPosition[0]_net_1\);
    
    \iobank60debounce/DebounceTimer_RNIIEHV2[6]\ : NOR3C
      port map(A => \iobank60debounce/DebounceTimer[6]_net_1\, B
         => \iobank60debounce/DebounceTimer_c5_0\, C => 
        \iobank60debounce/DebounceTimer_c2\, Y => 
        \iobank60debounce/DebounceTimer_c6\);
    
    \externenablelatch/output[4]\ : DFN1
      port map(D => \externenablelatch/output_RNO_0[4]_net_1\, 
        CLK => Clock01, Q => \ExternalHardwareEn_c[4]\);
    
    \iobank64debounce/IOOut_RNO[2]\ : MX2B
      port map(A => \iobank64debounce/PreviousPosition[2]_net_1\, 
        B => \dhold64[2]\, S => LogicReset_c, Y => 
        \iobank64debounce/IOOut_3[2]\);
    
    \pwmdisable01latch/output_RNO[3]\ : NOR2A
      port map(A => \pwmdisable01latch/N_47\, B => LogicReset_c, 
        Y => \pwmdisable01latch/output_RNO_2[3]\);
    
    \discretedutycycle01/cellindex[1]\ : DFN1E0
      port map(D => \discretedutycycle01/cellindex_n1\, CLK => 
        SerialClock_c, E => 
        \discretedutycycle01/cellindex_1_sqmuxa_net_1\, Q => 
        \discretedutycycle01/cellindex[1]_net_1\);
    
    \A2DRead/step_RNI3L2F4[5]\ : NOR3A
      port map(A => \A2DRead/N_128\, B => \A2DRead/step[5]_net_1\, 
        C => \A2DRead/N_63\, Y => 
        \A2DRead/DataRegU1Ch0n_1_sqmuxa\);
    
    \discretedutycycle01/cellindex_RNILCOL_1[3]\ : NOR2
      port map(A => \discretedutycycle01/cellindex[3]_net_1\, B
         => \discretedutycycle01/cellindex[2]_net_1\, Y => 
        \discretedutycycle01/un1_paralleldata_2[3]\);
    
    \A2DRead/DataRegU1Ch1o[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1n[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1o[8]_net_1\);
    
    \A2DRead/DataInReg_RNO[1]\ : NOR3C
      port map(A => \A2DRead/i8_mux_0\, B => \A2DRead/m50_0\, C
         => \A2DRead/DataInReg_320_e_1\, Y => \A2DRead/N_2175\);
    
    \ioBank64reader/parallelholdreg[2]\ : DFN1
      port map(D => \ioBank64reader/parallelholdreg_RNO_5[2]\, 
        CLK => Clock01, Q => 
        \ioBank64reader/parallelholdreg[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0k[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0j[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0k[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0d_RNIQUJQ1[1]\ : XOR3
      port map(A => \A2DRead/N_1704_1\, B => 
        \A2DRead/un60_dataregu1ch0_24_1\, C => 
        \A2DRead/un60_dataregu1ch0_24_2\, Y => \A2DRead/N_1714\);
    
    \A2D01reader/parallelholdreg_RNO_1[8]\ : OR2
      port map(A => \ohold51[8]\, B => SerialLoad_c, Y => 
        \A2D01reader/parallelholdreg_7[8]\);
    
    \A2DRead/DataRegU1Ch1f_RNIUJSP5[11]\ : XOR3
      port map(A => \A2DRead/N_1602\, B => \A2DRead/N_1625\, C
         => \A2DRead/N_1600\, Y => \A2DRead/N_1633\);
    
    \Watch_Dog_Reset/timercount_RNO[0]\ : NOR2
      port map(A => \Watch_Dog_Reset/timercount[0]_net_1\, B => 
        ResetIn_c, Y => \Watch_Dog_Reset/N_61_i\);
    
    \clock_master/counter_6_I_15\ : AO1
      port map(A => 
        \clock_master/DWACT_ADD_CI_0_pog_array_0_0[0]\, B => 
        Clock01, C => 
        \clock_master/DWACT_ADD_CI_0_g_array_0_1_0[0]\, Y => 
        \clock_master/DWACT_ADD_CI_0_g_array_1_0[0]\);
    
    \A2DRead/DataRegU1Ch0g_RNIELKN1_0[10]\ : MAJ3
      port map(A => \A2DRead/N_1939\, B => \A2DRead/N_1943\, C
         => \A2DRead/N_1941\, Y => \A2DRead/N_1975\);
    
    \A2DRead/DataRegU1Ch1i_RNIN2GK2_0[10]\ : MAJ3
      port map(A => \A2DRead/N_1592\, B => \A2DRead/N_1596\, C
         => \A2DRead/N_1594\, Y => \A2DRead/N_1628\);
    
    \ioBank6Breader/cellindex_RNI20KS[1]\ : OR2
      port map(A => \ioBank6Breader/cellindex[1]_net_1\, B => 
        SerialLoad_c, Y => \ioBank6Breader/un1_latch_1\);
    
    \A2DRead/DataRegU1Ch0m_RNIC297A[5]\ : AX1D
      port map(A => \A2DRead/un60_dataregu1ch0_118\, B => 
        \A2DRead/un60_dataregu1ch0_198_0\, C => 
        \A2DRead/un60_dataregu1ch0_274_0\, Y => \A2DRead/N_1814\);
    
    \iobank65debounce/DebounceTimer_RNID6UP[6]\ : NOR3C
      port map(A => \iobank65debounce/DebounceTimer[5]_net_1\, B
         => \iobank65debounce/DebounceTimer[6]_net_1\, C => 
        \iobank65debounce/DebounceTimer[2]_net_1\, Y => 
        \iobank65debounce/DebounceTimer_m2_0_a2_1\);
    
    \inputs62_ctrl_pad[3]/U0/U0\ : IOPAD_TRI
      port map(D => \inputs62_ctrl_pad[3]/U0/NET1\, E => 
        \inputs62_ctrl_pad[3]/U0/NET2\, PAD => inputs62_ctrl(3));
    
    \matrix_read04/ctrl_RNO_2[2]\ : NOR2
      port map(A => \matrix_read04/stage[4]_net_1\, B => 
        \matrix_read04/stage[3]_net_1\, Y => 
        \matrix_read04/ctrl_7_i_0_a3_0_0[2]\);
    
    \A2DRead/DataRegU1Ch0d[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0c[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0d[3]_net_1\);
    
    \iobank6Adebounce/DebounceTimer_RNO[8]\ : MX2A
      port map(A => \iobank6Adebounce/Changing_0\, B => 
        \iobank6Adebounce/N_48\, S => 
        \iobank6Adebounce/DebounceTimere\, Y => 
        \iobank6Adebounce/DebounceTimer_RNO_7[8]\);
    
    \snkpout01/counter_RNI7AU1[8]\ : NOR2
      port map(A => \snkpout01/counter[8]_net_1\, B => 
        \snkpout01/counter[9]_net_1\, Y => 
        \snkpout01/un1_counterlto11_0\);
    
    \iobank61debounce/DebounceTimer_RNO[4]\ : XA1
      port map(A => \iobank61debounce/DebounceTimer_c3\, B => 
        \iobank61debounce/DebounceTimer[4]_net_1\, C => 
        \iobank61debounce/un1_previousposition7\, Y => 
        \iobank61debounce/DebounceTimer_n4\);
    
    \A2DRead/DataRegU1Ch1f_RNINHVN_0[5]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1f[5]_net_1\, B => 
        \A2DRead/N_1422\, C => \A2DRead/N_1420\, Y => 
        \A2DRead/N_1458\);
    
    \matrix_read04/stage_RNI3NB[4]\ : NOR3B
      port map(A => \matrix_read04/N_65\, B => 
        \matrix_read04/N_64\, C => \matrix_read04/N_26\, Y => 
        \matrix_read04/ctrl21\);
    
    \A2D01reader/parallelholdreg_RNO[2]\ : OR2
      port map(A => \A2D01reader/N_93\, B => LogicReset_c, Y => 
        \A2D01reader/parallelholdreg_RNO_0[2]_net_1\);
    
    \externenablelatch/cellindex_RNO[1]\ : NOR3B
      port map(A => 
        \externenablelatch/cellindex_1_sqmuxa_1_0_net_1\, B => 
        \externenablelatch/cellindex_n1_tz\, C => 
        \externenablelatch/un45_address\, Y => 
        \externenablelatch/cellindex_n1\);
    
    \addresslatch/paralleldata_RNO_1[1]\ : NOR3B
      port map(A => \addresslatch/cellindex[0]_net_1\, B => 
        \addresslatch/paralleldata_0_e_0[1]\, C => 
        \addresslatch/cellindex[1]_net_1\, Y => 
        \addresslatch/N_84\);
    
    \A2D00reader/parallelholdreg_RNO_1[9]\ : OR2
      port map(A => \ohold50[9]\, B => SerialLoad_c, Y => 
        \A2D00reader/parallelholdreg_7[9]\);
    
    \iobank68debounce/PreviousPosition_RNO[2]\ : MX2B
      port map(A => \iobank68debounce/CurrentPosition[2]_net_1\, 
        B => \dhold68[2]\, S => LogicReset_c, Y => 
        \iobank68debounce/PreviousPosition_3[2]\);
    
    \iobank67debounce/PreviousPosition_RNO[0]\ : MX2B
      port map(A => \iobank67debounce/CurrentPosition[0]_net_1\, 
        B => \dhold67[0]\, S => LogicReset_c, Y => 
        \iobank67debounce/PreviousPosition_3[0]\);
    
    \pwmdisable01latch/output_RNO[4]\ : NOR2A
      port map(A => \pwmdisable01latch/N_48\, B => LogicReset_c, 
        Y => \pwmdisable01latch/output_RNO_2[4]\);
    
    \heart_beat/HeartBeatOut_RNO_5\ : OR2B
      port map(A => \heart_beat/counter[5]_net_1\, B => 
        \heart_beat/counter[6]_net_1\, Y => 
        \heart_beat/un1_counterlto6\);
    
    \iobank64debounce/PreviousPosition[1]\ : DFN1
      port map(D => \iobank64debounce/PreviousPosition_3[1]\, CLK
         => Clock03, Q => 
        \iobank64debounce/PreviousPosition[1]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNIIG9U1_0[12]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0f[12]_net_1\, B => 
        \A2DRead/N_1965\, C => \A2DRead/N_1963\, Y => 
        \A2DRead/N_2001\);
    
    \heart_beat/un1_counter_1_m36\ : XOR2
      port map(A => \heart_beat/counter[1]_net_1\, B => 
        \heart_beat/N_2_i\, Y => \heart_beat/m36\);
    
    \A2DRead/DataInReg[10]\ : DFN1E1
      port map(D => AdDout_c, CLK => Clock04, E => 
        \A2DRead/N_2183\, Q => \A2DRead/DataInReg[10]_net_1\);
    
    \addresslatch/output[6]\ : DFN1
      port map(D => \addresslatch/output_RNO[6]_net_1\, CLK => 
        Clock01, Q => \internaddr[6]\);
    
    \matrix_read03/dataOut01_RNIU4L8[2]\ : INV
      port map(A => \dhold63[2]\, Y => \dhold63_i[2]\);
    
    \discretedutycycle01/output_RNO[0]\ : NOR2A
      port map(A => \discretedutycycle01/N_60\, B => LogicReset_c, 
        Y => \discretedutycycle01/output_RNO_3[0]\);
    
    \iobank64debounce/IOOut[0]\ : DFN1E0
      port map(D => \iobank64debounce/IOOut_3[0]\, CLK => Clock03, 
        E => \iobank64debounce/IOOut_0_sqmuxa\, Q => \ohold64[0]\);
    
    \ioBank60reader/cellindex_RNI7K161[0]\ : NOR3C
      port map(A => \ioBank61reader.parallelholdreg_0_sqmuxa_5\, 
        B => \ioBank60reader/parallelholdreg_0_sqmuxa_0\, C => 
        \firmware.N_76\, Y => 
        \ioBank60reader/parallelholdreg_0_sqmuxa_3\);
    
    \A2DRead/DataRegU1Ch1[11]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch1[10]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch1_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1[11]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNI1BNN_0[10]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1f[10]_net_1\, B => 
        \A2DRead/N_1562\, C => \A2DRead/N_1560\, Y => 
        \A2DRead/N_1598\);
    
    \A2DRead/DataRegU1Ch1p_RNI1RUN[1]\ : XOR3
      port map(A => \A2DRead/un60_dataregu1ch1_24_2\, B => 
        \A2DRead/un60_dataregu1ch1_24_1\, C => \A2DRead/N_1357_1\, 
        Y => \A2DRead/N_1367\);
    
    \A2DRead/DataRegU1Ch0j[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0i[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0j[9]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I31_Y\ : MAJ3
      port map(A => \A2DRead/N_2114\, B => \A2DRead/N_1473\, C
         => \A2DRead/N_1446\, Y => \A2DRead/N208\);
    
    \A2DRead/DataRegU1Ch1o_RNIO52GC[4]\ : XOR2
      port map(A => \A2DRead/un60_N_9\, B => \A2DRead/N_1414\, Y
         => \A2DRead/un60_dataregu1ch1_214_0_out\);
    
    \A2DRead/DataRegU1Ch1l[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1k[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1l[2]_net_1\);
    
    \A2DRead/DataRegU1Ch1a[6]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[6]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch1a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1a[6]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I83_Y\ : XOR2
      port map(A => \A2DRead/ADD_11x11_fast_I83_Y_0_0\, B => 
        \A2DRead/N231\, Y => \A2DRead/un60_dataregu1ch0[6]\);
    
    \A2DRead/DataRegU1Ch1o_RNIT77VR_0[2]\ : NOR2B
      port map(A => \A2DRead/N_1413\, B => \A2DRead/N_1392\, Y
         => \A2DRead/un60_dataregu1ch1_89\);
    
    \A2DRead/DataRegU1Ch1j_RNI2CU31_0[8]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1l[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch1k[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch1j[8]_net_1\, Y => \A2DRead/N_1538\);
    
    \addresslatch/output_RNO[7]\ : NOR2A
      port map(A => \addresslatch/N_58\, B => LogicReset_c, Y => 
        \addresslatch/output_RNO[7]_net_1\);
    
    \ioBank6Breader/cellindex_RNIJ15A2[1]\ : AOI1
      port map(A => \ioBank6Breader/parallelholdreg_0_sqmuxa_4_0\, 
        B => \ioBank6Breader.parallelholdreg_0_sqmuxa_3\, C => 
        SerialLoad_c, Y => 
        \ioBank6Breader/parallelholdreg_1_sqmuxa\);
    
    \ioBank6Areader/cellindex_RNO[1]\ : NOR3A
      port map(A => \ioBank6Areader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank6Areader/un1_latch_1\, Y => 
        \ioBank6Areader/cellindex_RNO_7[1]\);
    
    \A2DRead/DataRegU1Ch1l[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1k[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1l[12]_net_1\);
    
    \A2DRead/DataRegU1Ch0n[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0m[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0n[10]_net_1\);
    
    \discretedutycycle01/output[9]\ : DFN1
      port map(D => \discretedutycycle01/output_RNO[9]_net_1\, 
        CLK => Clock01, Q => \dutycycle01[9]\);
    
    \ioBank64reader/cellindex_RNIQKUC[1]\ : NOR2B
      port map(A => \ioBank64reader/_decfrac0\, B => 
        \internaddr[2]\, Y => 
        \ioBank64reader/parallelholdreg_0_sqmuxa_0\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I3_P0N\ : OR2
      port map(A => \A2DRead/N_1530\, B => \A2DRead/N_1557\, Y
         => \A2DRead/N163\);
    
    \A2DRead/DataRegU1Ch1p_RNIFCHN1_0[12]\ : MAJ3
      port map(A => \A2DRead/N_1644\, B => \A2DRead/N_1648\, C
         => \A2DRead/N_1646\, Y => \A2DRead/N_1672\);
    
    \iobank66debounce/PreviousPosition_RNO[2]\ : MX2B
      port map(A => \iobank66debounce/CurrentPosition[2]_net_1\, 
        B => \dhold66[2]\, S => LogicReset_c, Y => 
        \iobank66debounce/PreviousPosition_3[2]\);
    
    \A2DRead/DataRegU1Ch0f_RNI5BLQ1[8]\ : XOR3
      port map(A => \A2DRead/N_1853\, B => 
        \A2DRead/DataRegU1Ch0f[8]_net_1\, C => \A2DRead/N_1851\, 
        Y => \A2DRead/N_1888\);
    
    \matrix_read04/data01[2]\ : DFN1E1
      port map(D => \inputs67_c[2]\, CLK => Clock03, E => 
        \matrix_read04/ctrl12\, Q => 
        \matrix_read04/data01[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNINSKQ1_0[6]\ : OA1
      port map(A => \A2DRead/N_1795\, B => \A2DRead/N_1797\, C
         => \A2DRead/DataRegU1Ch0f[6]_net_1\, Y => 
        \A2DRead/un60_dataregu1ch0_323_0\);
    
    \ioBank65reader/parallelholdreg[1]\ : DFN1
      port map(D => \ioBank65reader/parallelholdreg_RNO_6[1]\, 
        CLK => Clock01, Q => 
        \ioBank65reader/parallelholdreg[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1b[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1a[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1b[5]_net_1\);
    
    \matrix_read03/dataOut01_RNIT3L8[1]\ : INV
      port map(A => \dhold63[1]\, Y => \dhold63_i[1]\);
    
    \A2DRead/DataRegU1Ch0f_RNITRJ06_0[12]\ : MAJ3
      port map(A => \A2DRead/N_2000\, B => \A2DRead/N_1975\, C
         => \A2DRead/N_1977\, Y => \A2DRead/N_2009\);
    
    \Ale_pad/U0/U0\ : IOPAD_IN
      port map(PAD => Ale, Y => \Ale_pad/U0/NET1\);
    
    \A2D01reader/parallelholdreg_RNO_1[10]\ : OR2
      port map(A => \ohold51[10]\, B => SerialLoad_c, Y => 
        \A2D01reader/parallelholdreg_7[10]\);
    
    \ioBank6Breader/parallelholdreg_RNO_0[1]\ : MX2
      port map(A => \ioBank6Breader/parallelholdreg_7[1]\, B => 
        \ioBank6Breader/parallelholdreg[1]_net_1\, S => 
        \ioBank6Breader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank6Breader/N_24\);
    
    \ioBank66reader/parallelholdreg_RNO_1[2]\ : OR2
      port map(A => \ohold66[2]\, B => SerialLoad_c, Y => 
        \ioBank66reader/parallelholdreg_7[2]\);
    
    \iobank68debounce/DebounceTimer[1]\ : DFN1E1
      port map(D => \iobank68debounce/DebounceTimer_n1\, CLK => 
        Clock03, E => \iobank68debounce/DebounceTimere\, Q => 
        \iobank68debounce/DebounceTimer[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1p[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1o[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1p[3]_net_1\);
    
    \iobank65debounce/PreviousPosition_RNO[1]\ : MX2B
      port map(A => \iobank65debounce/CurrentPosition[1]_net_1\, 
        B => \dhold65[1]\, S => LogicReset_c, Y => 
        \iobank65debounce/PreviousPosition_3[1]\);
    
    \A2DRead/DataRegU1Ch0h[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0g[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0h[8]_net_1\);
    
    \snkpout01/counter_RNIINR3[3]\ : NOR2B
      port map(A => \snkpout01/counter_c2\, B => 
        \snkpout01/counter[3]_net_1\, Y => \snkpout01/counter_c3\);
    
    \ioBank69reader/cellindex[0]\ : DFN1
      port map(D => \ioBank69reader/cellindex_RNO_6[0]\, CLK => 
        SerialClock_c, Q => \ioBank69reader/cellindex[0]_net_1\);
    
    \A2D00reader/parallelholdreg_RNO[7]\ : OR2
      port map(A => \A2D00reader/N_98\, B => LogicReset_c, Y => 
        \A2D00reader/parallelholdreg_RNO_0[7]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I72_Y_0\ : AO1
      port map(A => \A2DRead/N198_0\, B => \A2DRead/N195_0\, C
         => \A2DRead/N194_0\, Y => 
        \A2DRead/ADD_11x11_fast_I72_Y_0_0\);
    
    \A2D01reader/parallelholdreg_RNO[4]\ : OR2
      port map(A => \A2D01reader/N_95\, B => LogicReset_c, Y => 
        \A2D01reader/parallelholdreg_RNO_0[4]_net_1\);
    
    \A2DRead/DataRegU1Ch1g_RNID42Q[4]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1g[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch1i[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch1h[4]_net_1\, Y => \A2DRead/N_1427\);
    
    \firmware/cellindex_RNO[1]\ : XA1
      port map(A => \firmware/cellindex[0]_net_1\, B => 
        \firmware/cellindex[1]_net_1\, C => 
        \ioBank60reader.cellindex_1_sqmuxa_1_1\, Y => 
        \firmware/N_18\);
    
    \iobank64debounce/DebounceTimer_RNIS48H[8]\ : OA1C
      port map(A => \iobank64debounce/DebounceTimer[8]_net_1\, B
         => \iobank64debounce/Changing_net_1\, C => LogicReset_c, 
        Y => \iobank64debounce/IOOut_0_sqmuxa\);
    
    \clock_master/counter_8_I_34\ : XOR2
      port map(A => \clock_master/counter_i[7]\, B => 
        \clock_master/DWACT_ADD_CI_0_g_array_12_2[0]\, Y => 
        \clock_master/counter_4_3_0[7]\);
    
    \A2DRead/un60_dataregu1ch0_277_RNIPF5872\ : XOR3
      port map(A => \A2DRead/N_1817\, B => 
        \A2DRead/un60_dataregu1ch0_354_0\, C => \A2DRead/N_1844\, 
        Y => \A2DRead/un60_dataregu1ch0_359_0\);
    
    \matrix_read04/dataOut01[2]\ : DFN1
      port map(D => \matrix_read04/data01[2]_net_1\, CLK => 
        Clock03, Q => \dhold68[2]\);
    
    \ioBank60reader/cellindex_RNO[0]\ : NOR2A
      port map(A => \ioBank60reader.cellindex_1_sqmuxa_1_1\, B
         => \ioBank60reader/cellindex[0]_net_1\, Y => 
        \ioBank60reader/cellindex_6[0]\);
    
    \matrix_read03/stage_RNO[4]\ : NOR3
      port map(A => \matrix_read03/stage_N_3_mux\, B => 
        LogicReset_c, C => \matrix_read03/N_55\, Y => 
        \matrix_read03/N_15\);
    
    \inputs61_pad[3]/U0/U0\ : IOPAD_IN
      port map(PAD => inputs61(3), Y => \inputs61_pad[3]/U0/NET1\);
    
    \SerialIn_pad/U0/U1\ : IOIN_IB
      port map(YIN => \SerialIn_pad/U0/NET1\, Y => SerialIn_c);
    
    \A2DRead/DataRegU1Ch0h[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0g[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0h[9]_net_1\);
    
    \A2DRead/DataRegU1Ch1p_RNI8GTKR[12]\ : XOR3
      port map(A => \A2DRead/N_1666\, B => \A2DRead/N_1675\, C
         => \A2DRead/N_1664\, Y => \A2DRead/N_1679\);
    
    \A2DRead/DataRegU1Ch0d_RNIPQ25T[2]\ : OR3
      port map(A => \A2DRead/N_1760\, B => 
        \A2DRead/un60_dataregu1ch0_52\, C => 
        \A2DRead/un60_dataregu1ch0_88_0\, Y => 
        \A2DRead/un60_dataregu1ch0_153_0_tz\);
    
    \A2DRead/DataRegU1Ch1i_RNIMTP33_0[12]\ : MAJ3
      port map(A => \A2DRead/N_1650\, B => \A2DRead/N_1654\, C
         => \A2DRead/N_1652\, Y => \A2DRead/N_1674\);
    
    \A2DRead/DataRegU1Ch1p[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1o[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1p[6]_net_1\);
    
    \A2DRead/DataRegU1Ch0j_RNIJJBN[4]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0j[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch0l[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch0k[4]_net_1\, Y => \A2DRead/N_1772\);
    
    \iobank60debounce/DebounceTimer_RNO[8]\ : MX2A
      port map(A => \iobank60debounce/Changing_net_1\, B => 
        \iobank60debounce/N_48\, S => 
        \iobank60debounce/DebounceTimere\, Y => 
        \iobank60debounce/DebounceTimer_RNO[8]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I22_Y\ : NOR2B
      port map(A => \A2DRead/N166_0\, B => \A2DRead/N169_0\, Y
         => \A2DRead/N199\);
    
    \iobank66debounce/DebounceTimer_RNO[7]\ : XA1
      port map(A => \iobank66debounce/DebounceTimer_c6\, B => 
        \iobank66debounce/DebounceTimer[7]_net_1\, C => 
        \iobank66debounce/un1_previousposition7\, Y => 
        \iobank66debounce/DebounceTimer_n7\);
    
    \iobank61debounce/DebounceTimer[5]\ : DFN1E1
      port map(D => \iobank61debounce/DebounceTimer_n5\, CLK => 
        Clock03, E => \iobank61debounce/DebounceTimere\, Q => 
        \iobank61debounce/DebounceTimer[5]_net_1\);
    
    \discretedutycycle01/cellindex_RNILCOL[3]\ : NOR2A
      port map(A => \discretedutycycle01/cellindex[3]_net_1\, B
         => \discretedutycycle01/cellindex[2]_net_1\, Y => 
        \discretedutycycle01/un1_paralleldata_2[9]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I62_un1_Y\ : 
        NOR2B
      port map(A => \A2DRead/N224_0\, B => \A2DRead/N231\, Y => 
        \A2DRead/I62_un1_Y\);
    
    \A2DRead/DataRegU1Ch0g_RNITJEOG_0[10]\ : MAJ3
      port map(A => \A2DRead/N_1952\, B => \A2DRead/N_1925\, C
         => \A2DRead/N_1950\, Y => \A2DRead/N_1957\);
    
    \heart_beat/counter[2]\ : DFN1
      port map(D => \heart_beat/N_41_i\, CLK => Clock04, Q => 
        \heart_beat/counter[2]_net_1\);
    
    \iobank6Bdebounce/PreviousPosition_RNO[1]\ : MX2B
      port map(A => \iobank6Bdebounce/CurrentPosition[1]_net_1\, 
        B => \dhold6B[1]\, S => LogicReset_c, Y => 
        \iobank6Bdebounce/PreviousPosition_3[1]\);
    
    \ResetIn_pad/U0/U1\ : IOIN_IB
      port map(YIN => \ResetIn_pad/U0/NET1\, Y => ResetIn_c);
    
    \ioBank61reader/cellindex[0]\ : DFN1
      port map(D => \ioBank61reader/cellindex_6[0]\, CLK => 
        SerialClock_c, Q => \ioBank61reader/cellindex[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNIH6BQ6_0[7]\ : MAJ3
      port map(A => \A2DRead/N_1860\, B => \A2DRead/N_1835\, C
         => \A2DRead/N_1837\, Y => \A2DRead/N_1869\);
    
    \A2DRead/step_RNIHD3V[3]\ : NOR2A
      port map(A => \A2DRead/step[4]_net_1\, B => 
        \A2DRead/step[3]_net_1\, Y => 
        \A2DRead/DataRegU1Ch0b_1_sqmuxa_0_a2_0\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I50_Y\ : AO1
      port map(A => \A2DRead/N207\, B => \A2DRead/N_2093\, C => 
        \A2DRead/N206_0\, Y => \A2DRead/N231\);
    
    \A2DRead/DataRegU1Ch0g_RNIBJK33[11]\ : XOR3
      port map(A => \A2DRead/N_1970\, B => \A2DRead/N_1968\, C
         => \A2DRead/N_1945\, Y => \A2DRead/N_1978\);
    
    \A2D01reader/cellindex_RNO_0[3]\ : NOR3C
      port map(A => \A2D01reader/cellindex[2]_net_1\, B => 
        \ioBank60reader.cellindex_1_sqmuxa_1_1\, C => 
        \A2D01reader/cellindex_c1\, Y => \A2D01reader/N_89\);
    
    \matrix_read03/dataOut01_RNIS2L8[0]\ : INV
      port map(A => \dhold63[0]\, Y => \dhold63_i[0]\);
    
    \iobank61debounce/DebounceTimer_RNINF49[2]\ : NOR2B
      port map(A => \iobank61debounce/DebounceTimer_c1\, B => 
        \iobank61debounce/DebounceTimer[2]_net_1\, Y => 
        \iobank61debounce/DebounceTimer_c2\);
    
    \A2DRead/DataRegU1Ch1j_RNIJF0M2_0[7]\ : OA1
      port map(A => \A2DRead/N_1486\, B => \A2DRead/N_1511\, C
         => \A2DRead/N_1509\, Y => 
        \A2DRead/un60_dataregu1ch1_408_0\);
    
    \A2D01reader/parallelholdreg_RNO_0[3]\ : MX2
      port map(A => \A2D01reader/parallelholdreg_7[3]\, B => 
        \A2D01reader/parallelholdreg[3]_net_1\, S => 
        \A2D01reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D01reader/N_94\);
    
    \externenablelatch/paralleldata_RNO[4]\ : OR2
      port map(A => \externenablelatch/N_96_mux\, B => 
        LogicReset_c, Y => 
        \externenablelatch/paralleldata_RNO_0[4]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNIPQ262_0[4]\ : MAJ3
      port map(A => \A2DRead/N_1771\, B => \A2DRead/N_1775\, C
         => \A2DRead/N_1773\, Y => \A2DRead/N_1807\);
    
    \SerialOut_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => SerialOut_c, E => \VCC\, DOUT => 
        \SerialOut_pad/U0/NET1\, EOUT => \SerialOut_pad/U0/NET2\);
    
    \clock_master/counter_4_I_13\ : XOR2
      port map(A => \counter[1]\, B => LogicReset_c, Y => 
        \clock_master/DWACT_ADD_CI_0_pog_array_0_2[0]\);
    
    \A2DRead/DataRegU1Ch1o_RNI3CAF1_0[7]\ : MAJ3
      port map(A => \A2DRead/N_1503\, B => \A2DRead/N_1507\, C
         => \A2DRead/N_1505\, Y => \A2DRead/N_1518\);
    
    \A2DRead/DataRegU1Ch1o_RNI51QT_0[6]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1o[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch1n[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch1m[6]_net_1\, Y => \A2DRead/N_1480\);
    
    \A2DRead/DataRegU1Ch1f_RNI00217[2]\ : XOR2
      port map(A => \A2DRead/un60_N_9\, B => \A2DRead/N_1410\, Y
         => \A2DRead/N_1439\);
    
    \A2DRead/DataRegU1Ch1a[9]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[9]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch1a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1a[9]_net_1\);
    
    \discretedutycycle01/paralleldata_RNO_0[5]\ : MX2
      port map(A => \discretedutycycle01/paralleldata[5]_net_1\, 
        B => SerialIn_c, S => \discretedutycycle01/N_132\, Y => 
        \discretedutycycle01/N_132_mux\);
    
    \A2DRead/DataRegU1Ch1i[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1h[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1i[6]_net_1\);
    
    \A2D00reader/dataout_RNO_0\ : MX2
      port map(A => \A2D00reader/N_75\, B => \A2D00reader/N_78\, 
        S => \A2D00reader/cellindex[2]_net_1\, Y => 
        \A2D00reader/dataout_67\);
    
    \ioBank64reader/parallelholdreg_RNO[2]\ : OR2
      port map(A => \ioBank64reader/N_25\, B => LogicReset_c, Y
         => \ioBank64reader/parallelholdreg_RNO_5[2]\);
    
    \A2DRead/DataRegU1Ch1o_RNI3ILAE[7]\ : AO1
      port map(A => \A2DRead/N_1543\, B => 
        \A2DRead/un60_dataregu1ch1_488_0_tz\, C => 
        \A2DRead/un60_dataregu1ch1_292\, Y => \A2DRead/N_1552\);
    
    \Watch_Dog_Reset/timercount_RNI5E2S[1]\ : NOR2B
      port map(A => \Watch_Dog_Reset/timercount[1]_net_1\, B => 
        \Watch_Dog_Reset/timercount[0]_net_1\, Y => 
        \Watch_Dog_Reset/N_2\);
    
    \A2DRead/DataRegU1Ch0p_RNIKO081[9]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0b[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch0p[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch0a[9]_net_1\, Y => \A2DRead/N_1908\);
    
    \A2DRead/DataRegU1Ch0[16]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch0[15]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0[16]_net_1\);
    
    \iobank65debounce/Changing_RNO\ : XOR2
      port map(A => \iobank65debounce/PreviousPosition[0]_net_1\, 
        B => \iobank65debounce/CurrentPosition[0]_net_1\, Y => 
        \iobank65debounce/Changing_net_1\);
    
    \iobank64debounce/DebounceTimer_RNO[6]\ : XA1
      port map(A => \iobank64debounce/DebounceTimer_c5\, B => 
        \iobank64debounce/DebounceTimer[6]_net_1\, C => 
        \iobank64debounce/un1_previousposition7\, Y => 
        \iobank64debounce/DebounceTimer_n6\);
    
    \snkpout01/PWMOut_3_0_I_28\ : AND2A
      port map(A => \dutycycle01[6]\, B => 
        \snkpout01/counter[6]_net_1\, Y => 
        \snkpout01/ACT_LT3_E[2]\);
    
    \iobank69debounce/CurrentPosition[2]\ : DFN1
      port map(D => \dhold69_i[2]\, CLK => Clock03, Q => 
        \iobank69debounce/CurrentPosition[2]_net_1\);
    
    \iobank62debounce/DebounceTimer[7]\ : DFN1E1
      port map(D => \iobank62debounce/DebounceTimer_n7\, CLK => 
        Clock03, E => \iobank62debounce/DebounceTimere\, Q => 
        \iobank62debounce/DebounceTimer[7]_net_1\);
    
    \iobank6Bdebounce/DebounceTimer[5]\ : DFN1E1
      port map(D => \iobank6Bdebounce/DebounceTimer_n5\, CLK => 
        Clock03, E => \iobank6Bdebounce/DebounceTimere\, Q => 
        \iobank6Bdebounce/DebounceTimer[5]_net_1\);
    
    \firmware/cellindex[1]\ : DFN1
      port map(D => \firmware/N_18\, CLK => SerialClock_c, Q => 
        \firmware/cellindex[1]_net_1\);
    
    \A2DRead/DataRegU1Ch0[14]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch0[13]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0[14]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I5_P0N\ : OR2
      port map(A => \A2DRead/N_1613\, B => \A2DRead/N_1586\, Y
         => \A2DRead/N169_0\);
    
    \ioBank67reader/parallelholdreg_RNO[2]\ : OR2
      port map(A => \ioBank67reader/N_25\, B => LogicReset_c, Y
         => \ioBank67reader/parallelholdreg_RNO_8[2]\);
    
    \A2DRead/DataRegU1Ch1o[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1n[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1o[1]_net_1\);
    
    \iobank60debounce/IOOut[0]\ : DFN1E0
      port map(D => \iobank60debounce/IOOut_8[0]\, CLK => Clock03, 
        E => \iobank60debounce/IOOut_0_sqmuxa\, Q => \ohold60[0]\);
    
    \A2D00reader/parallelholdreg_RNO_1[6]\ : OR2
      port map(A => \ohold50[6]\, B => SerialLoad_c, Y => 
        \A2D00reader/parallelholdreg_7[6]\);
    
    \A2DRead/DataRegU1Ch1f_RNIVT135[4]\ : XOR3
      port map(A => \A2DRead/N_1408\, B => \A2DRead/N_1429\, C
         => \A2DRead/N_1406\, Y => \A2DRead/N_1437\);
    
    \A2DRead/DataRegU1Ch1f[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1e[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1f[4]_net_1\);
    
    \snkpout01/counter_RNO_1[12]\ : NOR2B
      port map(A => \snkpout01/counter[12]_net_1\, B => 
        \snkpout01/counter_1_sqmuxa\, Y => \snkpout01/N_59\);
    
    \A2DRead/DataRegU1Ch1f_RNIVT135_0[4]\ : MAJ3
      port map(A => \A2DRead/N_1429\, B => \A2DRead/N_1406\, C
         => \A2DRead/N_1408\, Y => \A2DRead/N_1438\);
    
    \iobank62debounce/DebounceTimer_RNO[8]\ : MX2A
      port map(A => \iobank62debounce/Changing_net_1\, B => 
        \iobank62debounce/N_48\, S => 
        \iobank62debounce/DebounceTimere\, Y => 
        \iobank62debounce/DebounceTimer_RNO_1[8]\);
    
    \A2DRead/DataRegU1Ch0f[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0e[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0f[10]_net_1\);
    
    \iobank6Adebounce/PreviousPosition_RNO[2]\ : MX2B
      port map(A => \iobank6Adebounce/CurrentPosition[2]_net_1\, 
        B => \dhold6A[2]\, S => LogicReset_c, Y => 
        \iobank6Adebounce/PreviousPosition_3[2]\);
    
    \discretedutycycle01/paralleldata_RNO_1[0]\ : NOR3C
      port map(A => \discretedutycycle01/un6_address_2\, B => 
        \discretedutycycle01/output_0_sqmuxa_net_1\, C => 
        \discretedutycycle01/un1_paralleldata_2[3]\, Y => 
        \discretedutycycle01/N_127\);
    
    \A2DRead/DataRegU1Ch1o_RNIT77VR[2]\ : OR3
      port map(A => \A2DRead/un60_dataregu1ch1_52\, B => 
        \A2DRead/N_1413\, C => \A2DRead/un60_dataregu1ch1_88_0\, 
        Y => \A2DRead/un60_dataregu1ch1_153_0_tz\);
    
    \bitcontrol01latch/paralleldata[0]\ : DFN1
      port map(D => 
        \bitcontrol01latch/paralleldata_RNO_1[0]_net_1\, CLK => 
        SerialClock_c, Q => 
        \bitcontrol01latch/paralleldata[0]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I72_Y_s\ : AO1
      port map(A => \A2DRead/ADD_11x11_fast_I72_un1_Y_0\, B => 
        \A2DRead/N220\, C => \A2DRead/ADD_11x11_fast_I72_Y_0\, Y
         => \A2DRead/ADD_11x11_fast_I72_Y_out\);
    
    \A2DRead/DataRegU1Ch0g_RNIFMSVF2[11]\ : XOR3
      port map(A => \A2DRead/N_1986\, B => \A2DRead/N_1984\, C
         => \A2DRead/N_1959\, Y => \A2DRead/N_1988\);
    
    \iobank6Adebounce/DebounceTimer_RNIM7TM_0[8]\ : OR2B
      port map(A => \iobank6Adebounce/DebounceTimer[8]_net_1\, B
         => \iobank6Adebounce/un1_previousposition7\, Y => 
        \iobank6Adebounce/DebounceTimere\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I72_Y_0\ : AO1
      port map(A => \A2DRead/N198\, B => \A2DRead/N195\, C => 
        \A2DRead/N194\, Y => \A2DRead/ADD_11x11_fast_I72_Y_0\);
    
    \ioBank65reader/parallelholdreg_RNO[1]\ : OR2
      port map(A => \ioBank65reader/N_24\, B => LogicReset_c, Y
         => \ioBank65reader/parallelholdreg_RNO_6[1]\);
    
    \heart_beat/un1_counter_1_m5\ : MX2C
      port map(A => \heart_beat/counter[2]_net_1\, B => 
        \heart_beat/N_3_i\, S => \heart_beat/N_44\, Y => 
        \heart_beat/i3_mux\);
    
    \ioBank67reader/parallelholdreg[2]\ : DFN1
      port map(D => \ioBank67reader/parallelholdreg_RNO_8[2]\, 
        CLK => Clock01, Q => 
        \ioBank67reader/parallelholdreg[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0i[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0h[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0i[3]_net_1\);
    
    \A2DRead/DataRegU1Ch0p[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0o[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0p[7]_net_1\);
    
    \A2D01reader/parallelholdreg_RNO_0[2]\ : MX2
      port map(A => \A2D01reader/parallelholdreg_7[2]\, B => 
        \A2D01reader/parallelholdreg[2]_net_1\, S => 
        \A2D01reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D01reader/N_93\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I90_Y\ : XOR3
      port map(A => \A2DRead/N_2029\, B => \A2DRead/N_2032\, C
         => \A2DRead/N271\, Y => \A2DRead/un60_dataregu1ch0[13]\);
    
    \iobank69debounce/PreviousPosition[1]\ : DFN1
      port map(D => \iobank69debounce/PreviousPosition_3[1]\, CLK
         => Clock03, Q => 
        \iobank69debounce/PreviousPosition[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1c_RNIGFTC[9]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1c[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch1e[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch1d[9]_net_1\, Y => \A2DRead/N_1559\);
    
    \heart_beat/un1_counter_1_m34\ : AX1
      port map(A => \heart_beat/i5_mux\, B => 
        \heart_beat/counter[4]_net_1\, C => 
        \heart_beat/counter[5]_net_1\, Y => \heart_beat/m34\);
    
    \iobank65debounce/CurrentPosition[2]\ : DFN1
      port map(D => \dhold65_i[2]\, CLK => Clock03, Q => 
        \iobank65debounce/CurrentPosition[2]_net_1\);
    
    \matrix_read03/data03[1]\ : DFN1E1
      port map(D => \inputs62_c[1]\, CLK => Clock03, E => 
        \matrix_read03/ctrl18\, Q => 
        \matrix_read03/data03[1]_net_1\);
    
    \ioBank67reader/cellindex_RNINEKU[1]\ : OR2
      port map(A => \ioBank67reader/cellindex[1]_net_1\, B => 
        SerialLoad_c, Y => \ioBank67reader/un1_latch_1\);
    
    \ioBank64reader/cellindex[0]\ : DFN1
      port map(D => \ioBank64reader/cellindex_RNO_1[0]\, CLK => 
        SerialClock_c, Q => \ioBank64reader/cellindex[0]_net_1\);
    
    \A2DRead/DataRegU1Ch1o[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1n[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1o[11]_net_1\);
    
    \inputs62_pad[0]/U0/U0\ : IOPAD_IN
      port map(PAD => inputs62(0), Y => \inputs62_pad[0]/U0/NET1\);
    
    \snkpout01/counter[1]\ : DFN1
      port map(D => \snkpout01/counter_n1\, CLK => Clock04, Q => 
        \snkpout01/counter[1]_net_1\);
    
    \iobank68debounce/CurrentPosition[0]\ : DFN1
      port map(D => \dhold68_i[0]\, CLK => Clock03, Q => 
        \iobank68debounce/CurrentPosition[0]_net_1\);
    
    \iobank63debounce/DebounceTimer_RNO[7]\ : XA1
      port map(A => \iobank63debounce/DebounceTimer_c6\, B => 
        \iobank63debounce/DebounceTimer[7]_net_1\, C => 
        \iobank63debounce/un1_previousposition7\, Y => 
        \iobank63debounce/DebounceTimer_n7\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I38_Y\ : NOR2B
      port map(A => \A2DRead/N193\, B => \A2DRead/N197_0\, Y => 
        \A2DRead/N218\);
    
    \iobank69debounce/IOOut_RNO[0]\ : MX2B
      port map(A => \iobank69debounce/PreviousPosition[0]_net_1\, 
        B => \dhold69[0]\, S => LogicReset_c, Y => 
        \iobank69debounce/IOOut_3[0]\);
    
    \A2DRead/DataRegU1Ch1o[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1n[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1o[7]_net_1\);
    
    \A2D01reader/parallelholdreg_RNO_0[4]\ : MX2
      port map(A => \A2D01reader/parallelholdreg_7[4]\, B => 
        \A2D01reader/parallelholdreg[4]_net_1\, S => 
        \A2D01reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D01reader/N_95\);
    
    \discretedutycycle01/paralleldata_RNO_0[11]\ : MX2
      port map(A => \discretedutycycle01/paralleldata[11]_net_1\, 
        B => SerialIn_c_0, S => \discretedutycycle01/N_138\, Y
         => \discretedutycycle01/N_138_mux\);
    
    \A2DRead/DataRegU1Ch1f_RNIICG61_0[11]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1f[11]_net_1\, B => 
        \A2DRead/N_1590\, C => \A2DRead/N_1588\, Y => 
        \A2DRead/N_1626\);
    
    \pwmdisable01latch/paralleldata[5]\ : DFN1
      port map(D => \pwmdisable01latch/paralleldata_RNO_2[5]\, 
        CLK => SerialClock_c, Q => 
        \pwmdisable01latch/paralleldata[5]_net_1\);
    
    \ioBank61reader/parallelholdreg_RNO[1]\ : OR2
      port map(A => \ioBank61reader/N_39\, B => LogicReset_c, Y
         => \ioBank61reader/parallelholdreg_RNO_2[1]\);
    
    \matrix_read04/stage_RNITO3[0]\ : OR2B
      port map(A => \matrix_read04/stage[0]_net_1\, B => 
        \matrix_read04/stage[1]_net_1\, Y => \matrix_read04/N_26\);
    
    \A2DRead/DataRegU1Ch0k_RNI0OHI_0[12]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0l[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch0k[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch0j[12]_net_1\, Y => \A2DRead/N_1997\);
    
    \iobank63debounce/DebounceTimer[5]\ : DFN1E1
      port map(D => \iobank63debounce/DebounceTimer_n5\, CLK => 
        Clock03, E => \iobank63debounce/DebounceTimere\, Q => 
        \iobank63debounce/DebounceTimer[5]_net_1\);
    
    \bitcontrol01latch/paralleldata_RNO[5]\ : OR2
      port map(A => \bitcontrol01latch/N_99_mux\, B => 
        LogicReset_c, Y => 
        \bitcontrol01latch/paralleldata_RNO_1[5]_net_1\);
    
    \ioBank60reader/dataout_RNO_0\ : MX2
      port map(A => \ioBank60reader/N_33\, B => 
        \ioBank60reader/N_34\, S => 
        \ioBank60reader/cellindex[0]_net_1\, Y => 
        \ioBank60reader/dataout_57\);
    
    \clock_master/counter_RNIFBO8[2]\ : CLKINT
      port map(A => \clock_master/counter_i[2]\, Y => Clock03);
    
    \A2DRead/DataRegU1Ch1n[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1m[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1n[12]_net_1\);
    
    \discretedutycycle01/paralleldata_RNO_1[1]\ : NOR3C
      port map(A => \discretedutycycle01/un1_paralleldata_1[9]\, 
        B => \discretedutycycle01/output_0_sqmuxa_net_1\, C => 
        \discretedutycycle01/un1_paralleldata_2[3]\, Y => 
        \discretedutycycle01/N_128\);
    
    \iobank62debounce/DebounceTimer_RNO[4]\ : XA1
      port map(A => \iobank62debounce/DebounceTimer_c3\, B => 
        \iobank62debounce/DebounceTimer[4]_net_1\, C => 
        \iobank62debounce/un1_previousposition7\, Y => 
        \iobank62debounce/DebounceTimer_n4\);
    
    \ioBank60reader/dataout\ : DFN1
      port map(D => \ioBank60reader/dataout_RNO_2_net_1\, CLK => 
        Clock01, Q => do60);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I41_Y\ : AO1
      port map(A => \A2DRead/N200\, B => \A2DRead/N197\, C => 
        \A2DRead/N196_0\, Y => \A2DRead/N221_0\);
    
    \iobank69debounce/DebounceTimer[2]\ : DFN1E1
      port map(D => \iobank69debounce/DebounceTimer_n2\, CLK => 
        Clock03, E => \iobank69debounce/DebounceTimere\, Q => 
        \iobank69debounce/DebounceTimer[2]_net_1\);
    
    \matrix_read03/stage_RNI1DRL[5]\ : NOR2A
      port map(A => \matrix_read03/stage[2]_net_1\, B => 
        \matrix_read03/stage[5]_net_1\, Y => \matrix_read03/N_68\);
    
    \A2D00reader/cellindex_RNO[2]\ : XA1
      port map(A => \A2D00reader/cellindex_c1\, B => 
        \A2D00reader/cellindex[2]_net_1\, C => 
        \A2D00reader/cellindex_1_sqmuxa_1\, Y => 
        \A2D00reader/cellindex_n2\);
    
    \externenablelatch/paralleldata_RNO_1[4]\ : NOR3A
      port map(A => \externenablelatch/paralleldata_0_e_0[5]\, B
         => \externenablelatch/cellindex[1]_net_1\, C => 
        \externenablelatch/cellindex[0]_net_1\, Y => 
        \externenablelatch/N_96\);
    
    \A2DRead/DataRegU1Ch1p[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1o[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1p[4]_net_1\);
    
    \iobank68debounce/DebounceTimer_RNIIUB31[3]\ : NOR3C
      port map(A => \iobank68debounce/DebounceTimer[3]_net_1\, B
         => \iobank68debounce/DebounceTimer[2]_net_1\, C => 
        \iobank68debounce/DebounceTimer_c1\, Y => 
        \iobank68debounce/DebounceTimer_c3\);
    
    \snkpout01/PWMOut_3_0_I_44\ : AO1
      port map(A => \snkpout01/DWACT_CMPLE_PO2_DWACT_COMP0_E[1]\, 
        B => \snkpout01/DWACT_CMPLE_PO2_DWACT_COMP0_E[2]\, C => 
        \snkpout01/DWACT_CMPLE_PO2_DWACT_COMP0_E[0]\, Y => 
        \snkpout01/DWACT_COMP0_E[2]\);
    
    \iobank68debounce/DebounceTimer[8]\ : DFN1E1
      port map(D => \iobank68debounce/N_48\, CLK => Clock03, E
         => \iobank68debounce/DebounceTimere\, Q => 
        \iobank68debounce/DebounceTimer[8]_net_1\);
    
    \A2DRead/DataRegU1Ch1d[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1c[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1d[6]_net_1\);
    
    \A2DRead/DataRegU1Ch1k[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1j[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1k[10]_net_1\);
    
    \A2D01reader/parallelholdreg_RNO_1[9]\ : OR2
      port map(A => \ohold51[9]\, B => SerialLoad_c, Y => 
        \A2D01reader/parallelholdreg_7[9]\);
    
    \A2DRead/DataRegU1Ch0n[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0m[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0n[8]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNIKHQR2[6]\ : XOR3
      port map(A => \A2DRead/N_1484\, B => \A2DRead/N_1480\, C
         => \A2DRead/N_1482\, Y => \A2DRead/N_1515\);
    
    \iobank68debounce/Changing_RNIP62F\ : NOR2
      port map(A => \iobank68debounce/Changing_net_1\, B => 
        LogicReset_c, Y => 
        \iobank68debounce/un1_previousposition7\);
    
    \matrix_read03/dataOut04[1]\ : DFN1
      port map(D => \matrix_read03/data04[1]_net_1\, CLK => 
        Clock03, Q => \dhold66[1]\);
    
    \A2DRead/DataRegU1Ch1p_RNITPGN1[10]\ : XOR3
      port map(A => \A2DRead/N_1589\, B => \A2DRead/N_1587\, C
         => \A2DRead/N_1591\, Y => \A2DRead/N_1601\);
    
    \iobank60debounce/PreviousPosition_RNO[3]\ : MX2B
      port map(A => \iobank60debounce/CurrentPosition[3]_net_1\, 
        B => \inputs60_c[3]\, S => LogicReset_c, Y => 
        \iobank60debounce/PreviousPosition_3[3]\);
    
    \A2DRead/DataRegU1Ch1m[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1l[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1m[11]_net_1\);
    
    \pwmdisable01latch/paralleldata_RNO_1[7]\ : NOR3C
      port map(A => \pwmdisable01latch/cellindex[2]_net_1\, B => 
        \pwmdisable01latch/output_0_sqmuxa_net_1\, C => 
        \pwmdisable01latch/cellindex_c1\, Y => 
        \pwmdisable01latch/N_101\);
    
    \externenablelatch/CellIndexUpdate.un39_address_3\ : NOR2
      port map(A => \internaddr[3]\, B => \internaddr[4]\, Y => 
        \ioBank62reader.parallelholdreg_0_sqmuxa_4\);
    
    \A2DRead/step[1]\ : DFN1E0
      port map(D => \A2DRead/N_108\, CLK => Clock04, E => 
        \A2DRead/N_59\, Q => \A2DRead/step[1]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I35_un1_Y\ : 
        NOR2B
      port map(A => \A2DRead/N191_0\, B => \A2DRead/N194_0\, Y
         => \A2DRead/I35_un1_Y\);
    
    \A2DRead/DataRegU1Ch0m_RNIBU711_0[9]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0o[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch0m[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch0n[9]_net_1\, Y => \A2DRead/N_1911\);
    
    \externenablelatch/paralleldata[6]\ : DFN1
      port map(D => 
        \externenablelatch/paralleldata_RNO_0[6]_net_1\, CLK => 
        SerialClock_c, Q => 
        \externenablelatch/paralleldata[6]_net_1\);
    
    \discretedutycycle01/cellindex_RNI6LGB1[3]\ : NOR3C
      port map(A => \discretedutycycle01/cellindex[2]_net_1\, B
         => \discretedutycycle01/cellindex[3]_net_1\, C => 
        \discretedutycycle01/un6_address_2\, Y => 
        \discretedutycycle01/un6_address\);
    
    \iobank65debounce/CurrentPosition[1]\ : DFN1
      port map(D => \dhold65_i[1]\, CLK => Clock03, Q => 
        \iobank65debounce/CurrentPosition[1]_net_1\);
    
    \iobank61debounce/CurrentPosition_RNO[0]\ : INV
      port map(A => \inputs61_c[0]\, Y => 
        \iobank61debounce/inputs61_c_i[0]\);
    
    \discretedutycycle01/paralleldata[4]\ : DFN1
      port map(D => \discretedutycycle01/paralleldata_RNO_3[4]\, 
        CLK => SerialClock_c, Q => 
        \discretedutycycle01/paralleldata[4]_net_1\);
    
    \iobank6Adebounce/DebounceTimer[5]\ : DFN1E1
      port map(D => \iobank6Adebounce/DebounceTimer_n5\, CLK => 
        Clock03, E => \iobank6Adebounce/DebounceTimere\, Q => 
        \iobank6Adebounce/DebounceTimer[5]_net_1\);
    
    \iobank67debounce/IOOut[1]\ : DFN1E0
      port map(D => \iobank67debounce/IOOut_3[1]\, CLK => Clock03, 
        E => \iobank67debounce/IOOut_0_sqmuxa\, Q => \ohold67[1]\);
    
    \A2DRead/DataRegU1Ch0p_RNICPRN[10]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0b[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch0p[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch0a[10]_net_1\, Y => \A2DRead/N_1936\);
    
    \A2DRead/DataRegU1Ch1f_RNIC70O_0[8]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1f[8]_net_1\, B => 
        \A2DRead/N_1506\, C => \A2DRead/N_1504\, Y => 
        \A2DRead/N_1542\);
    
    \iobank66debounce/PreviousPosition[2]\ : DFN1
      port map(D => \iobank66debounce/PreviousPosition_3[2]\, CLK
         => Clock03, Q => 
        \iobank66debounce/PreviousPosition[2]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I34_Y\ : NOR3C
      port map(A => \A2DRead/N181\, B => \A2DRead/N184_0\, C => 
        \A2DRead/N193\, Y => \A2DRead/N214\);
    
    \A2D01reader/parallelholdreg_RNO_0[6]\ : MX2
      port map(A => \A2D01reader/parallelholdreg_7[6]\, B => 
        \A2D01reader/parallelholdreg[6]_net_1\, S => 
        \A2D01reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D01reader/N_97\);
    
    \iobank65debounce/Changing_RNIMJ8Q\ : NOR2
      port map(A => \iobank65debounce/Changing_0\, B => 
        LogicReset_c, Y => 
        \iobank65debounce/un1_previousposition7\);
    
    \A2DRead/DataRegU1Ch1p_RNIQ97KR_0[11]\ : MAJ3
      port map(A => \A2DRead/N_1636\, B => \A2DRead/N_1638\, C
         => \A2DRead/N_1663\, Y => \A2DRead/N_1668\);
    
    \inputs67_ctrl_pad[3]/U0/U1\ : IOTRI_OB_EB
      port map(D => \inputs67_ctrl_c[3]\, E => \VCC\, DOUT => 
        \inputs67_ctrl_pad[3]/U0/NET1\, EOUT => 
        \inputs67_ctrl_pad[3]/U0/NET2\);
    
    \A2DRead/DataRegU1Ch0p[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0o[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0p[1]_net_1\);
    
    \snkpout01/PWMOut_3_0_I_19\ : NOR2A
      port map(A => \dutycycle01[11]\, B => 
        \snkpout01/counter[11]_net_1\, Y => \snkpout01/N_20\);
    
    \A2DRead/DataRegU1Ch1p_RNIERI4_0[6]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1b[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch1a[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch1p[6]_net_1\, Y => \A2DRead/N_1478\);
    
    \A2DRead/DataRegU1Ch0i[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0h[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0i[5]_net_1\);
    
    \ioBank61reader/parallelholdreg_RNO[0]\ : OR2
      port map(A => \ioBank61reader/N_38\, B => LogicReset_c, Y
         => \ioBank61reader/parallelholdreg_RNO_2[0]\);
    
    \A2DRead/DataRegU1Ch0b[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0a[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0b[10]_net_1\);
    
    \iobank66debounce/DebounceTimer[2]\ : DFN1E1
      port map(D => \iobank66debounce/DebounceTimer_n2\, CLK => 
        Clock03, E => \iobank66debounce/DebounceTimere\, Q => 
        \iobank66debounce/DebounceTimer[2]_net_1\);
    
    \addresslatch/output_RNO_0[0]\ : MX2
      port map(A => \addresslatch/paralleldata[0]_net_1\, B => 
        \internaddr[0]\, S => Ale_c, Y => \addresslatch/N_51\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I4_P0N\ : AO1
      port map(A => \A2DRead/N_1553\, B => 
        \A2DRead/un60_dataregu1ch1_503_0_tz\, C => 
        \A2DRead/ADD_11x11_fast_I4_P0N_out\, Y => 
        \A2DRead/N166_0\);
    
    \iobank68debounce/DebounceTimer_RNO[7]\ : XA1
      port map(A => \iobank68debounce/DebounceTimer_c6\, B => 
        \iobank68debounce/DebounceTimer[7]_net_1\, C => 
        \iobank68debounce/un1_previousposition7\, Y => 
        \iobank68debounce/DebounceTimer_n7\);
    
    \A2DRead/DataRegU1Ch1i_RNIQ2PR_0[12]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1i[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch1h[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch1g[12]_net_1\, Y => \A2DRead/N_1652\);
    
    \ExternalHardwareEn_pad[3]/U0/U1\ : IOTRI_OB_EB
      port map(D => \ExternalHardwareEn_c[3]\, E => \VCC\, DOUT
         => \ExternalHardwareEn_pad[3]/U0/NET1\, EOUT => 
        \ExternalHardwareEn_pad[3]/U0/NET2\);
    
    \iobank64debounce/DebounceTimer_RNI5C7G[4]\ : NOR2B
      port map(A => \iobank64debounce/DebounceTimer_c3\, B => 
        \iobank64debounce/DebounceTimer[4]_net_1\, Y => 
        \iobank64debounce/DebounceTimer_c4\);
    
    \iobank67debounce/IOOut_RNO[0]\ : MX2B
      port map(A => \iobank67debounce/PreviousPosition[0]_net_1\, 
        B => \dhold67[0]\, S => LogicReset_c, Y => 
        \iobank67debounce/IOOut_3[0]\);
    
    \A2DRead/AdClock_RNO\ : OR2A
      port map(A => \A2DRead/step[8]_net_1\, B => \A2DRead/N_15\, 
        Y => \A2DRead/N_835\);
    
    \A2DRead/DataRegU1Ch1i_RNI8D0V32[11]\ : XOR3
      port map(A => \A2DRead/N_1639\, B => \A2DRead/N_1637\, C
         => \A2DRead/N_1612\, Y => \A2DRead/N_1641\);
    
    \A2DRead/DataRegU1Ch0l[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0k[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0l[1]_net_1\);
    
    \A2DRead/DataRegU1Ch0m[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0l[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0m[4]_net_1\);
    
    \A2DRead/DataRegU1Ch0i[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0h[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0i[10]_net_1\);
    
    \ioBank61reader/parallelholdreg_RNO[2]\ : OR2
      port map(A => \ioBank61reader/N_40\, B => LogicReset_c, Y
         => \ioBank61reader/parallelholdreg_RNO_2[2]\);
    
    \iobank67debounce/DebounceTimer_RNIK37H[4]\ : NOR3C
      port map(A => \iobank67debounce/DebounceTimer[3]_net_1\, B
         => \iobank67debounce/DebounceTimer[4]_net_1\, C => 
        \iobank67debounce/DebounceTimer_c2\, Y => 
        \iobank67debounce/DebounceTimer_c4\);
    
    \ioBank64reader/dataout_RNO_0\ : NOR2B
      port map(A => \ioBank64reader/parallelholdreg[0]_net_1\, B
         => \ioBank64reader/_decfrac0\, Y => 
        \ioBank64reader/parallelholdreg_m[0]\);
    
    \iobank6Adebounce/DebounceTimer[7]\ : DFN1E1
      port map(D => \iobank6Adebounce/DebounceTimer_n7\, CLK => 
        Clock03, E => \iobank6Adebounce/DebounceTimere\, Q => 
        \iobank6Adebounce/DebounceTimer[7]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I64_un1_Y\ : 
        NOR2B
      port map(A => \A2DRead/N228\, B => \A2DRead/N_2114\, Y => 
        \A2DRead/I64_un1_Y_0\);
    
    \A2DRead/step_RNI3L2F4[1]\ : NOR3C
      port map(A => \A2DRead/N_114\, B => 
        \A2DRead/DataRegU1Ch0b_1_sqmuxa_0_a2_0\, C => 
        \A2DRead/N_123\, Y => \A2DRead/DataRegU1Ch0d_1_sqmuxa\);
    
    \iobank64debounce/IOOut_RNO[1]\ : MX2B
      port map(A => \iobank64debounce/PreviousPosition[1]_net_1\, 
        B => \dhold64[1]\, S => LogicReset_c, Y => 
        \iobank64debounce/IOOut_3[1]\);
    
    \ExternalHardwareEn_pad[4]/U0/U0\ : IOPAD_TRI
      port map(D => \ExternalHardwareEn_pad[4]/U0/NET1\, E => 
        \ExternalHardwareEn_pad[4]/U0/NET2\, PAD => 
        ExternalHardwareEn(4));
    
    \snkpout01/PWMOut_3_0_I_36\ : OR2A
      port map(A => \dutycycle01[4]\, B => 
        \snkpout01/counter[4]_net_1\, Y => \snkpout01/N_5\);
    
    \ioBank6Areader/parallelholdreg_RNO_0[0]\ : MX2
      port map(A => \ioBank6Areader/parallelholdreg_7[0]\, B => 
        \ioBank6Areader/parallelholdreg[0]_net_1\, S => 
        \ioBank6Areader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank6Areader/N_23\);
    
    \A2DRead/step_RNILV912[3]\ : OA1
      port map(A => \A2DRead/step[4]_net_1\, B => 
        \A2DRead/step[3]_net_1\, C => \A2DRead/N_42\, Y => 
        \A2DRead/N_48\);
    
    \A2D00reader/cellindex[3]\ : DFN1
      port map(D => \A2D00reader/cellindex_n3\, CLK => 
        SerialClock_c, Q => \A2D00reader/cellindex[3]_net_1\);
    
    \iobank6Bdebounce/CurrentPosition[2]\ : DFN1
      port map(D => \dhold6B_i[2]\, CLK => Clock03, Q => 
        \iobank6Bdebounce/CurrentPosition[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNINSKQ1_1[6]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0f[6]_net_1\, B => 
        \A2DRead/N_1797\, C => \A2DRead/N_1795\, Y => 
        \A2DRead/N_1833\);
    
    \A2DRead/DataInReg[9]\ : DFN1E1
      port map(D => AdDout_c, CLK => Clock04, E => 
        \A2DRead/N_2182\, Q => \A2DRead/DataInReg[9]_net_1\);
    
    \iobank63debounce/IOOut_RNO[2]\ : MX2B
      port map(A => \iobank63debounce/PreviousPosition[2]_net_1\, 
        B => \dhold63[2]\, S => LogicReset_c, Y => 
        \iobank63debounce/IOOut_3[2]\);
    
    \clock_master/counter_4_I_30\ : XOR2
      port map(A => \clock_master/counter[4]_net_1\, B => 
        \clock_master/DWACT_ADD_CI_0_g_array_2[0]\, Y => 
        \clock_master/counter_4[4]\);
    
    \iobank63debounce/DebounceTimer_RNO[5]\ : XA1
      port map(A => \iobank63debounce/DebounceTimer_c4\, B => 
        \iobank63debounce/DebounceTimer[5]_net_1\, C => 
        \iobank63debounce/un1_previousposition7\, Y => 
        \iobank63debounce/DebounceTimer_n5\);
    
    \A2DRead/DataRegU1Ch1g[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1f[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1g[8]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNI7LFD[3]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0g[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch0i[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch0h[3]_net_1\, Y => \A2DRead/N_1748\);
    
    \A2DRead/DataRegU1Ch0f_RNITRJ06[12]\ : XOR3
      port map(A => \A2DRead/N_1977\, B => \A2DRead/N_2000\, C
         => \A2DRead/N_1975\, Y => \A2DRead/N_2008\);
    
    \ioBank60reader/parallelholdreg_RNO_0[1]\ : MX2
      port map(A => \ioBank60reader/parallelholdreg_7[1]\, B => 
        \ioBank60reader/parallelholdreg[1]_net_1\, S => 
        \ioBank60reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank60reader/N_39\);
    
    \A2DRead/DataRegU1Ch1g[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1f[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1g[1]_net_1\);
    
    \ioBank61reader/parallelholdreg[1]\ : DFN1
      port map(D => \ioBank61reader/parallelholdreg_RNO_2[1]\, 
        CLK => Clock01, Q => 
        \ioBank61reader/parallelholdreg[1]_net_1\);
    
    \ioBank64reader/parallelholdreg_RNO_0[0]\ : MX2
      port map(A => \ioBank64reader/parallelholdreg_7[0]\, B => 
        \ioBank64reader/parallelholdreg[0]_net_1\, S => 
        \ioBank64reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank64reader/N_23\);
    
    \ioBank65reader/cellindex_RNO[0]\ : NOR3
      port map(A => \ioBank65reader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank65reader/un1_latch_1\, Y => 
        \ioBank65reader/cellindex_RNO_2[0]\);
    
    \iobank60debounce/DebounceTimer_RNO[4]\ : XA1
      port map(A => \iobank60debounce/DebounceTimer_c3\, B => 
        \iobank60debounce/DebounceTimer[4]_net_1\, C => 
        \iobank60debounce/un1_previousposition7\, Y => 
        \iobank60debounce/DebounceTimer_n4\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I45_Y\ : AO1
      port map(A => \A2DRead/N204\, B => \A2DRead/N201\, C => 
        \A2DRead/N200\, Y => \A2DRead/N225\);
    
    \A2DRead/DataRegU1Ch0f_RNIQUJQ1[1]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0f[1]_net_1\, B => 
        \A2DRead/N_1706\, C => \A2DRead/N_1704\, Y => 
        \A2DRead/N_1715\);
    
    \ioBank69reader/parallelholdreg_0_sqmuxa_1\ : NOR3B
      port map(A => \internaddr[5]\, B => \internaddr[3]\, C => 
        \internaddr[7]\, Y => 
        \ioBank6Areader.parallelholdreg_0_sqmuxa_1\);
    
    \discretedutycycle01/output_RNO[10]\ : NOR2A
      port map(A => \discretedutycycle01/N_70\, B => LogicReset_c, 
        Y => \discretedutycycle01/output_RNO[10]_net_1\);
    
    \Watch_Dog_Reset/timercount_RNIBK2S[3]\ : NOR2B
      port map(A => \Watch_Dog_Reset/timercount[3]_net_1\, B => 
        \Watch_Dog_Reset/timercount[4]_net_1\, Y => 
        \Watch_Dog_Reset/m8_m4_0_a2_2\);
    
    \addresslatch/output[4]\ : DFN1
      port map(D => \addresslatch/output_RNO[4]_net_1\, CLK => 
        Clock01, Q => \internaddr[4]\);
    
    \A2DRead/DataRegU1Ch1o_RNISNPT[3]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1m[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch1o[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch1n[3]_net_1\, Y => \A2DRead/N_1397\);
    
    \iobank62debounce/CurrentPosition[2]\ : DFN1
      port map(D => \dhold62_i[2]\, CLK => Clock03, Q => 
        \iobank62debounce/CurrentPosition[2]_net_1\);
    
    \ioBank69reader/dataout_RNO\ : OR3
      port map(A => \ioBank69reader/parallelholdreg_m[2]\, B => 
        \ioBank69reader/parallelholdreg_m[1]\, C => 
        \ioBank69reader/dataout_0_1\, Y => 
        \ioBank69reader/dataout_RNO_11\);
    
    \clock_master/counter_4_I_37\ : NOR2B
      port map(A => \clock_master/DWACT_ADD_CI_0_g_array_0_2[0]\, 
        B => \clock_master/counter[3]_net_1\, Y => 
        \clock_master/DWACT_ADD_CI_0_g_array_1_1[0]\);
    
    \externenablelatch/output[1]\ : DFN1
      port map(D => \externenablelatch/output_RNO_0[1]_net_1\, 
        CLK => Clock01, Q => \ExternalHardwareEn_c[1]\);
    
    \A2DRead/DataRegU1Ch0g_RNI69462_0[9]\ : MAJ3
      port map(A => \A2DRead/N_1911\, B => \A2DRead/N_1915\, C
         => \A2DRead/N_1913\, Y => \A2DRead/N_1947\);
    
    \A2DRead/AdClock_RNO_6\ : NOR2B
      port map(A => \A2DRead/step[3]_net_1\, B => 
        \A2DRead/step[2]_net_1\, Y => \A2DRead/N_17\);
    
    \discretedutycycle01/cellindex_1_sqmuxa\ : NOR2
      port map(A => \discretedutycycle01/address\, B => 
        LogicReset_c, Y => 
        \discretedutycycle01/cellindex_1_sqmuxa_net_1\);
    
    \A2D00reader/parallelholdreg_RNO[10]\ : OR2
      port map(A => \A2D00reader/N_101\, B => LogicReset_c, Y => 
        \A2D00reader/parallelholdreg_RNO[10]_net_1\);
    
    \iobank6Adebounce/DebounceTimer[0]\ : DFN1E1
      port map(D => \iobank6Adebounce/N_67\, CLK => Clock03, E
         => \iobank6Adebounce/DebounceTimere\, Q => 
        \iobank6Adebounce/DebounceTimer[0]_net_1\);
    
    \heart_beat/counter[6]\ : DFN1
      port map(D => \heart_beat/m33\, CLK => Clock04, Q => 
        \heart_beat/counter[6]_net_1\);
    
    \A2DRead/DataRegU1Ch1k[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1j[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1k[8]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNI73PR2[1]\ : MAJ3
      port map(A => \A2DRead/N_1361\, B => \A2DRead/N_1365\, C
         => \A2DRead/N_1363\, Y => \A2DRead/N_1370\);
    
    \A2DRead/DataRegU1Ch1f_RNI7M284[6]\ : OR2
      port map(A => \A2DRead/un60_dataregu1ch1_408_0\, B => 
        \A2DRead/un60_dataregu1ch1_244\, Y => \A2DRead/N_1520\);
    
    \heart_beat/un1_counter_1_m2\ : NOR2B
      port map(A => \heart_beat/counter[1]_net_1\, B => 
        \heart_beat/N_2_i\, Y => \heart_beat/N_3_i\);
    
    \A2DRead/DataRegU1Ch1p_RNIJ7S2F1[10]\ : OR2
      port map(A => \A2DRead/un60_dataregu1ch1_708_0\, B => 
        \A2DRead/un60_dataregu1ch1_424\, Y => \A2DRead/N_1640\);
    
    \A2DRead/DataRegU1Ch0g_RNIKM362[7]\ : XOR3
      port map(A => \A2DRead/N_1859\, B => \A2DRead/N_1855\, C
         => \A2DRead/N_1857\, Y => \A2DRead/N_1890\);
    
    \A2DRead/DataRegU1Ch0f_RNITR3D41[5]\ : AO1
      port map(A => \A2DRead/N_1812\, B => 
        \A2DRead/un60_dataregu1ch0_283_0_tz\, C => 
        \A2DRead/un60_dataregu1ch0_167\, Y => \A2DRead/N_1817\);
    
    \A2DRead/DataRegU1Ch1f_RNI5AN482[5]\ : XOR3
      port map(A => \A2DRead/N_1471\, B => \A2DRead/N_1469\, C
         => \A2DRead/N_1444\, Y => \A2DRead/N_1473\);
    
    \A2DRead/DataRegU1Ch0o[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0n[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0o[4]_net_1\);
    
    \ioBank62reader/dataout_RNO_1\ : AO1
      port map(A => \ioBank62reader/parallelholdreg[1]_net_1\, B
         => \ioBank62reader/cellindex[0]_net_1\, C => 
        \ioBank62reader/parallelholdreg_m[2]\, Y => 
        \ioBank62reader/dataout_0_2\);
    
    \A2DRead/DataRegU1Ch1f[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1e[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1f[12]_net_1\);
    
    \ioBank65reader/cellindex_RNIPINK1[1]\ : AOI1
      port map(A => 
        \ioBank65reader/parallelholdreg_0_sqmuxa_3_net_1\, B => 
        \ioBank65reader/parallelholdreg_0_sqmuxa_2\, C => 
        SerialLoad_c, Y => 
        \ioBank65reader/parallelholdreg_1_sqmuxa\);
    
    \A2DRead/DataRegU1Ch1o_RNIDABUQ[4]\ : XOR3
      port map(A => \A2DRead/N_1468\, B => \A2DRead/N_1495\, C
         => \A2DRead/N_1470\, Y => \A2DRead/N_1499\);
    
    \iobank66debounce/DebounceTimer_RNO_0[6]\ : NOR2B
      port map(A => \iobank66debounce/DebounceTimer_c4\, B => 
        \iobank66debounce/DebounceTimer[5]_net_1\, Y => 
        \iobank66debounce/DebounceTimer_c5\);
    
    \iobank63debounce/PreviousPosition[1]\ : DFN1
      port map(D => \iobank63debounce/PreviousPosition_3[1]\, CLK
         => Clock03, Q => 
        \iobank63debounce/PreviousPosition[1]_net_1\);
    
    \A2DRead/DataRegU1Ch0d_RNIV26V7_0[6]\ : MAJ3
      port map(A => \A2DRead/N_1834\, B => \A2DRead/N_1811\, C
         => \A2DRead/N_1836\, Y => \A2DRead/N_1843\);
    
    \matrix_read04/dataOut03_RNIVL9B[0]\ : INV
      port map(A => \dhold6A[0]\, Y => \dhold6A_i[0]\);
    
    \AN5NRMControl_pad/U0/U0\ : IOPAD_TRI
      port map(D => \AN5NRMControl_pad/U0/NET1\, E => 
        \AN5NRMControl_pad/U0/NET2\, PAD => AN5NRMControl);
    
    \snkpout01/PWMOut_3_0_I_6\ : AND3
      port map(A => \snkpout01/DWACT_BL_EQUAL_0_E_0[0]\, B => 
        \snkpout01/DWACT_BL_EQUAL_0_E_0[1]\, C => 
        \snkpout01/DWACT_BL_EQUAL_0_E_0[2]\, Y => 
        \snkpout01/DWACT_BL_EQUAL_0_DWACT_ANDTREE_E[0]\);
    
    \ioBank6Breader/parallelholdreg[2]\ : DFN1
      port map(D => \ioBank6Breader/parallelholdreg_RNO_12[2]\, 
        CLK => Clock01, Q => 
        \ioBank6Breader/parallelholdreg[2]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I72_un1_Y\ : 
        NOR3C
      port map(A => \A2DRead/N195_0\, B => \A2DRead/N199\, C => 
        \A2DRead/ADD_11x11_fast_I72_un1_Y_0_0\, Y => 
        \A2DRead/I72_un1_Y\);
    
    \A2DRead/DataRegU1Ch1o[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1n[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1o[5]_net_1\);
    
    \addresslatch/paralleldata_RNO_0[7]\ : MX2
      port map(A => \addresslatch/paralleldata[7]_net_1\, B => 
        SerialIn_c_0, S => \addresslatch/N_90\, Y => 
        \addresslatch/N_90_mux\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I4_G0N\ : NOR2B
      port map(A => \A2DRead/N_1585\, B => \A2DRead/N_1558\, Y
         => \A2DRead/N165_0\);
    
    \A2DRead/DataRegU1Ch1d[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1c[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1d[11]_net_1\);
    
    \discretedutycycle01/output_RNO_0[1]\ : MX2
      port map(A => \dutycycle01[1]\, B => 
        \discretedutycycle01/paralleldata[1]_net_1\, S => 
        \discretedutycycle01/output_0_sqmuxa_0_net_1\, Y => 
        \discretedutycycle01/N_61\);
    
    \A2DRead/DataRegU1Ch1o_RNIB8QR2_0[5]\ : MAJ3
      port map(A => \A2DRead/N_1452\, B => \A2DRead/N_1456\, C
         => \A2DRead/N_1454\, Y => \A2DRead/N_1488\);
    
    \ioBank64reader/parallelholdreg_RNO_1[2]\ : OR2
      port map(A => \ohold64[2]\, B => SerialLoad_c, Y => 
        \ioBank64reader/parallelholdreg_7[2]\);
    
    \snkpout01/counter_RNO[5]\ : XA1
      port map(A => \snkpout01/counter[5]_net_1\, B => 
        \snkpout01/counter_c4\, C => \snkpout01/counter_1_sqmuxa\, 
        Y => \snkpout01/counter_n5\);
    
    \iobank63debounce/PreviousPosition_RNO[2]\ : MX2B
      port map(A => \iobank63debounce/CurrentPosition[2]_net_1\, 
        B => \dhold63[2]\, S => LogicReset_c, Y => 
        \iobank63debounce/PreviousPosition_3[2]\);
    
    \A2DRead/DataRegU1Ch1f_RNIPJG61_0[12]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1f[12]_net_1\, B => 
        \A2DRead/N_1618\, C => \A2DRead/N_1616\, Y => 
        \A2DRead/N_1654\);
    
    \iobank60debounce/DebounceTimer_RNIKSIQ[8]\ : OA1C
      port map(A => \iobank60debounce/DebounceTimer[8]_net_1\, B
         => \iobank60debounce/Changing_net_1\, C => LogicReset_c, 
        Y => \iobank60debounce/IOOut_0_sqmuxa\);
    
    \heart_beat/counter[3]\ : DFN1
      port map(D => \heart_beat/N_39\, CLK => Clock04, Q => 
        \heart_beat/counter[3]_net_1\);
    
    \A2D00reader/parallelholdreg_RNO_1[5]\ : OR2
      port map(A => \ohold50[5]\, B => SerialLoad_c, Y => 
        \A2D00reader/parallelholdreg_7[5]\);
    
    \matrix_read04/stage_RNO[0]\ : NOR2
      port map(A => LogicReset_c, B => 
        \matrix_read04/stage[0]_net_1\, Y => \matrix_read04/N_58\);
    
    \A2D00reader/parallelholdreg_RNO[0]\ : OR2
      port map(A => \A2D00reader/N_91\, B => LogicReset_c, Y => 
        \A2D00reader/parallelholdreg_RNO[0]_net_1\);
    
    \A2DRead/DataInReg[8]\ : DFN1E1
      port map(D => AdDout_c, CLK => Clock04, E => 
        \A2DRead/N_2181\, Q => \A2DRead/DataInReg[8]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_423_RNI3A9652\ : OA1
      port map(A => \A2DRead/N_1902\, B => \A2DRead/N_1875\, C
         => \A2DRead/N_1900\, Y => 
        \A2DRead/un60_dataregu1ch0_503_0\);
    
    \iobank62debounce/PreviousPosition_RNO[1]\ : MX2B
      port map(A => \iobank62debounce/CurrentPosition[1]_net_1\, 
        B => \dhold62[1]\, S => LogicReset_c, Y => 
        \iobank62debounce/PreviousPosition_3[1]\);
    
    \A2DRead/DataRegU1Ch0d_RNIHUIP2[6]\ : XOR3
      port map(A => \A2DRead/N_1824\, B => \A2DRead/N_1822\, C
         => \A2DRead/N_1826\, Y => \A2DRead/N_1836\);
    
    \A2DRead/DataRegU1Ch0d_RNIQM9J41[8]\ : XOR3
      port map(A => \A2DRead/N_1899\, B => \A2DRead/N_1926\, C
         => \A2DRead/N_1901\, Y => \A2DRead/N_1930\);
    
    \A2DRead/DataRegU1Ch1i_RNI0CGK2_0[11]\ : MAJ3
      port map(A => \A2DRead/N_1620\, B => \A2DRead/N_1624\, C
         => \A2DRead/N_1622\, Y => \A2DRead/N_1656\);
    
    \A2DRead/step_RNIJF3V[6]\ : NOR2B
      port map(A => \A2DRead/step[6]_net_1\, B => 
        \A2DRead/step[3]_net_1\, Y => \A2DRead/N_2136\);
    
    \A2DRead/DataRegU1Ch0f_RNI5V2F6_0[11]\ : MAJ3
      port map(A => \A2DRead/N_1972\, B => \A2DRead/N_1947\, C
         => \A2DRead/N_1949\, Y => \A2DRead/N_1981\);
    
    \iobank62debounce/PreviousPosition[2]\ : DFN1
      port map(D => \iobank62debounce/PreviousPosition_3[2]\, CLK
         => Clock03, Q => 
        \iobank62debounce/PreviousPosition[2]_net_1\);
    
    \iobank67debounce/DebounceTimer[7]\ : DFN1E1
      port map(D => \iobank67debounce/DebounceTimer_n7\, CLK => 
        Clock03, E => \iobank67debounce/DebounceTimere\, Q => 
        \iobank67debounce/DebounceTimer[7]_net_1\);
    
    \ioBank6Breader/dataout_RNO_0\ : NOR2B
      port map(A => \ioBank6Breader/parallelholdreg[2]_net_1\, B
         => \ioBank6Breader/cellindex[1]_net_1\, Y => 
        \ioBank6Breader/parallelholdreg_m[2]\);
    
    \A2DRead/DataRegU1Ch0i[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0h[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0i[8]_net_1\);
    
    \Watch_Dog_Reset/timercount[0]\ : DFN1E0
      port map(D => \Watch_Dog_Reset/N_61_i\, CLK => \counter[1]\, 
        E => \Watch_Dog_Reset/timercount_0_sqmuxa\, Q => 
        \Watch_Dog_Reset/timercount[0]_net_1\);
    
    \bitcontrol01latch/output_RNI1K2R[1]\ : OA1
      port map(A => PnlLgtControl_c, B => \pwmdisable01[1]\, C
         => \bitcontrol01latch/bitcontrol01[1]\, Y => 
        AN5NRMControl_c);
    
    \discretedutycycle01/paralleldata[2]\ : DFN1
      port map(D => \discretedutycycle01/paralleldata_RNO_3[2]\, 
        CLK => SerialClock_c, Q => 
        \discretedutycycle01/paralleldata[2]_net_1\);
    
    \iobank61debounce/Changing_RNO\ : XOR2
      port map(A => \iobank61debounce/PreviousPosition[0]_net_1\, 
        B => \iobank61debounce/CurrentPosition[0]_net_1\, Y => 
        \iobank61debounce/Changing_0\);
    
    \iobank6Adebounce/DebounceTimer_RNI9H222[6]\ : NOR3C
      port map(A => \iobank6Adebounce/DebounceTimer_c1\, B => 
        \iobank6Adebounce/DebounceTimer_c5_out\, C => 
        \iobank6Adebounce/DebounceTimer_m2_0_a2_1\, Y => 
        \iobank6Adebounce/DebounceTimer_c6\);
    
    \A2DRead/DataRegU1Ch1o_RNIQ2AF1_0[6]\ : MAJ3
      port map(A => \A2DRead/N_1475\, B => \A2DRead/N_1479\, C
         => \A2DRead/N_1477\, Y => \A2DRead/N_1490\);
    
    \matrix_read04/stage_RNI3V3[5]\ : NOR2A
      port map(A => \matrix_read04/stage[2]_net_1\, B => 
        \matrix_read04/stage[5]_net_1\, Y => \matrix_read04/N_68\);
    
    \A2DRead/DataRegU1Ch0g_RNI9SLT2_0[12]\ : MAJ3
      port map(A => \A2DRead/N_1997\, B => \A2DRead/N_2001\, C
         => \A2DRead/N_1999\, Y => \A2DRead/N_2021\);
    
    \matrix_read03/ctrl[1]\ : DFN1
      port map(D => \matrix_read03/ctrl_RNO[1]_net_1\, CLK => 
        Clock03, Q => \inputs62_ctrl_c[1]\);
    
    \A2D01reader/cellindex_RNI7B821[1]\ : NOR3C
      port map(A => \A2D01reader/parallelholdreg_0_sqmuxa_1\, B
         => \A2D01reader/parallelholdreg_0_sqmuxa_0\, C => 
        \internaddr[4]\, Y => 
        \A2D01reader/parallelholdreg_0_sqmuxa_3\);
    
    \A2DRead/DataRegU1Ch1p_RNI3FUUA_0[12]\ : MAJ3
      port map(A => \A2DRead/N_1672\, B => \A2DRead/N_1676\, C
         => \A2DRead/N_1674\, Y => \A2DRead/N_1684\);
    
    \A2DRead/DataRegU1Ch0f_RNIDGAKG_0[8]\ : MAJ3
      port map(A => \A2DRead/N_1924\, B => \A2DRead/N_1897\, C
         => \A2DRead/N_1922\, Y => \A2DRead/N_1929\);
    
    \A2DRead/DataRegU1Ch0h[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0g[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0h[6]_net_1\);
    
    \A2DRead/DataRegU1Ch1p_RNIPHD97[10]\ : XOR3
      port map(A => \A2DRead/N_1599\, B => \A2DRead/N_1601\, C
         => \A2DRead/N_1576\, Y => \A2DRead/N_1607\);
    
    \discretedutycycle01/paralleldata_RNO[6]\ : NOR2A
      port map(A => \discretedutycycle01/N_133_mux\, B => 
        LogicReset_c, Y => 
        \discretedutycycle01/paralleldata_RNO_3[6]\);
    
    \iobank66debounce/DebounceTimer_RNO[1]\ : XA1
      port map(A => \iobank66debounce/DebounceTimer[1]_net_1\, B
         => \iobank66debounce/DebounceTimer[0]_net_1\, C => 
        \iobank66debounce/un1_previousposition7\, Y => 
        \iobank66debounce/DebounceTimer_n1\);
    
    \A2DRead/DataRegU1Ch0k[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0j[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0k[9]_net_1\);
    
    \iobank6Bdebounce/DebounceTimer[6]\ : DFN1E1
      port map(D => \iobank6Bdebounce/DebounceTimer_n6\, CLK => 
        Clock03, E => \iobank6Bdebounce/DebounceTimere\, Q => 
        \iobank6Bdebounce/DebounceTimer[6]_net_1\);
    
    \iobank62debounce/DebounceTimer_RNIRGSG[1]\ : NOR2B
      port map(A => \iobank62debounce/DebounceTimer[0]_net_1\, B
         => \iobank62debounce/DebounceTimer[1]_net_1\, Y => 
        \iobank62debounce/DebounceTimer_c1\);
    
    \A2DRead/DataRegU1Ch0f[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0e[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0f[5]_net_1\);
    
    \pwmdisable01latch/paralleldata_RNO[1]\ : NOR2A
      port map(A => \pwmdisable01latch/N_95_mux\, B => 
        LogicReset_c, Y => 
        \pwmdisable01latch/paralleldata_RNO_2[1]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I15_Y\ : AO1
      port map(A => \A2DRead/N174\, B => \A2DRead/N178\, C => 
        \A2DRead/N177\, Y => \A2DRead/N192\);
    
    \bitcontrol01latch/output_RNIVH2R[0]\ : OA1
      port map(A => PnlLgtControl_c, B => \pwmdisable01[0]\, C
         => \bitcontrol01latch/bitcontrol01[0]\, Y => 
        AN6NRMControl_c);
    
    \A2DRead/step[3]\ : DFN1E0
      port map(D => \A2DRead/N_53\, CLK => Clock04, E => 
        \A2DRead/N_59\, Q => \A2DRead/step[3]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIUOVN_0[6]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1f[6]_net_1\, B => 
        \A2DRead/N_1450\, C => \A2DRead/N_1448\, Y => 
        \A2DRead/N_1486\);
    
    \A2DRead/DataRegU1Ch1k[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1j[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1k[1]_net_1\);
    
    \iobank6Adebounce/DebounceTimer_RNO[2]\ : XA1
      port map(A => \iobank6Adebounce/DebounceTimer[2]_net_1\, B
         => \iobank6Adebounce/DebounceTimer_c1\, C => 
        \iobank6Adebounce/un1_previousposition7\, Y => 
        \iobank6Adebounce/DebounceTimer_n2\);
    
    \ioBank68reader/parallelholdreg_RNO_1[2]\ : OR2
      port map(A => \ohold68[2]\, B => SerialLoad_c, Y => 
        \ioBank68reader/parallelholdreg_7[2]\);
    
    \snkpout01/counter_RNIA0OI[2]\ : NOR3B
      port map(A => \snkpout01/counter[12]_net_1\, B => 
        \snkpout01/counter[2]_net_1\, C => 
        \snkpout01/un1_counterlto5\, Y => \snkpout01/counter10_1\);
    
    \iobank66debounce/DebounceTimer_RNO_0[4]\ : NOR2B
      port map(A => \iobank66debounce/DebounceTimer_c2\, B => 
        \iobank66debounce/DebounceTimer[3]_net_1\, Y => 
        \iobank66debounce/DebounceTimer_c3\);
    
    \A2DRead/DataRegU1Ch0[7]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch0[6]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0[7]_net_1\);
    
    \A2D00reader/parallelholdreg_RNO_1[3]\ : OR2
      port map(A => \ohold50[3]\, B => SerialLoad_c, Y => 
        \A2D00reader/parallelholdreg_7[3]\);
    
    \ioBank62reader/parallelholdreg_RNO_0[1]\ : MX2
      port map(A => \ioBank62reader/parallelholdreg_7[1]\, B => 
        \ioBank62reader/parallelholdreg[1]_net_1\, S => 
        \ioBank62reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank62reader/N_24\);
    
    \A2DRead/DataRegU1Ch1o_RNIPKPT_0[2]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1o[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch1n[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch1m[2]_net_1\, Y => \A2DRead/N_1376\);
    
    \A2DRead/DataRegU1Ch0g_RNIIOCLB[12]\ : XOR3
      port map(A => \A2DRead/N_2023\, B => \A2DRead/N_2021\, C
         => \A2DRead/N_2019\, Y => \A2DRead/N_2030\);
    
    \iobank6Adebounce/DebounceTimer_RNO[7]\ : XA1
      port map(A => \iobank6Adebounce/DebounceTimer_c6\, B => 
        \iobank6Adebounce/DebounceTimer[7]_net_1\, C => 
        \iobank6Adebounce/un1_previousposition7\, Y => 
        \iobank6Adebounce/DebounceTimer_n7\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I81_Y\ : XOR3
      port map(A => \A2DRead/N_1446\, B => \A2DRead/N_1473\, C
         => \A2DRead/N_2114\, Y => \A2DRead/un60_dataregu1ch1[4]\);
    
    \heart_beat/counter[10]\ : DFN1
      port map(D => \heart_beat/m29\, CLK => Clock04, Q => 
        \heart_beat/counter[10]_net_1\);
    
    \A2DRead/DataRegU1Ch0k[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0j[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0k[3]_net_1\);
    
    \ioBank68reader/cellindex[1]\ : DFN1
      port map(D => \ioBank68reader/cellindex_RNO_5[1]\, CLK => 
        SerialClock_c, Q => \ioBank68reader/cellindex[1]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I27_Y\ : AO1
      port map(A => \A2DRead/N156\, B => \A2DRead/N160\, C => 
        \A2DRead/N159\, Y => \A2DRead/N204_0\);
    
    \pwmdisable01latch/cellindex[0]\ : DFN1E0
      port map(D => \pwmdisable01latch/N_79\, CLK => 
        SerialClock_c, E => 
        \pwmdisable01latch/cellindex_1_sqmuxa_net_1\, Q => 
        \pwmdisable01latch/cellindex[0]_net_1\);
    
    \A2DRead/DataRegU1Ch1b[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1a[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1b[12]_net_1\);
    
    \clock_master/counter_8_I_38\ : NOR3C
      port map(A => Clock03, B => LogicReset_c, C => 
        \clock_master/counter[3]_net_1\, Y => 
        \clock_master/DWACT_ADD_CI_0_g_array_1_1_0[0]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I63_un1_Y\ : 
        NOR2B
      port map(A => \A2DRead/N226\, B => \A2DRead/N208_0\, Y => 
        \A2DRead/I63_un1_Y_0\);
    
    \matrix_read03/dataOut04[0]\ : DFN1
      port map(D => \matrix_read03/data04[0]_net_1\, CLK => 
        Clock03, Q => \dhold66[0]\);
    
    \EncLgtControl_pad/U0/U0\ : IOPAD_TRI
      port map(D => \EncLgtControl_pad/U0/NET1\, E => 
        \EncLgtControl_pad/U0/NET2\, PAD => EncLgtControl);
    
    \ioBank61reader/parallelholdreg_RNO[3]\ : OR2
      port map(A => \ioBank61reader/N_41\, B => LogicReset_c, Y
         => \ioBank61reader/parallelholdreg_RNO_2[3]\);
    
    \snkpout01/PWMOut_3_0_I_29\ : AOI1A
      port map(A => \snkpout01/ACT_LT3_E[0]\, B => 
        \snkpout01/ACT_LT3_E[1]\, C => \snkpout01/ACT_LT3_E[2]\, 
        Y => \snkpout01/ACT_LT3_E[3]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I44_Y\ : NOR2B
      port map(A => \A2DRead/N203\, B => \A2DRead/N199_0\, Y => 
        \A2DRead/N224_0\);
    
    \bitcontrol01latch/output[7]\ : DFN1
      port map(D => \bitcontrol01latch/output_RNO_0[7]_net_1\, 
        CLK => Clock01, Q => \bitcontrol01[7]\);
    
    \ioBank64reader/parallelholdreg_RNO_1[0]\ : OR2
      port map(A => \ohold64[0]\, B => SerialLoad_c, Y => 
        \ioBank64reader/parallelholdreg_7[0]\);
    
    \inputs60_pad[3]/U0/U0\ : IOPAD_IN
      port map(PAD => inputs60(3), Y => \inputs60_pad[3]/U0/NET1\);
    
    \addresslatch/cellindex[1]\ : DFN1
      port map(D => \addresslatch/cellindex_n1\, CLK => 
        SerialClock_c, Q => \addresslatch/cellindex[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1i[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1h[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1i[12]_net_1\);
    
    \iobank68debounce/IOOut[1]\ : DFN1E0
      port map(D => \iobank68debounce/IOOut_3[1]\, CLK => Clock03, 
        E => \iobank68debounce/IOOut_0_sqmuxa\, Q => \ohold68[1]\);
    
    \iobank68debounce/DebounceTimer_RNO_0[6]\ : NOR2B
      port map(A => \iobank68debounce/DebounceTimer_c3\, B => 
        \iobank68debounce/DebounceTimer_c5_out\, Y => 
        \iobank68debounce/DebounceTimer_c5\);
    
    \iobank68debounce/PreviousPosition[0]\ : DFN1
      port map(D => \iobank68debounce/PreviousPosition_3[0]\, CLK
         => Clock03, Q => 
        \iobank68debounce/PreviousPosition[0]_net_1\);
    
    \iobank61debounce/DebounceTimer_RNIPTAL[6]\ : NOR3C
      port map(A => \iobank61debounce/DebounceTimer_c1\, B => 
        \iobank61debounce/DebounceTimer_c5_out\, C => 
        \iobank61debounce/DebounceTimer_m2_0_a2_1\, Y => 
        \iobank61debounce/DebounceTimer_c6\);
    
    \externenablelatch/paralleldata[2]\ : DFN1
      port map(D => 
        \externenablelatch/paralleldata_RNO_0[2]_net_1\, CLK => 
        SerialClock_c, Q => 
        \externenablelatch/paralleldata[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNI4GCDF_0[12]\ : MAJ3
      port map(A => \A2DRead/N_2008\, B => \A2DRead/N_1981\, C
         => \A2DRead/N_2006\, Y => \A2DRead/N_2013\);
    
    \A2DRead/DataRegU1Ch0g_RNIELKN1[10]\ : XOR3
      port map(A => \A2DRead/N_1943\, B => \A2DRead/N_1939\, C
         => \A2DRead/N_1941\, Y => \A2DRead/N_1974\);
    
    \ioBank63reader/parallelholdreg_0_sqmuxa_4\ : NOR3B
      port map(A => \internaddr[5]\, B => \firmware.N_75\, C => 
        \internaddr[2]\, Y => 
        \ioBank63reader/parallelholdreg_0_sqmuxa_4_net_1\);
    
    \matrix_read04/stage_RNO[2]\ : XA1C
      port map(A => \matrix_read04/stage[2]_net_1\, B => 
        \matrix_read04/N_26\, C => LogicReset_c, Y => 
        \matrix_read04/N_19\);
    
    \ioBank67reader/dataout\ : DFN1
      port map(D => \ioBank67reader/dataout_RNO_9\, CLK => 
        Clock01, Q => do67);
    
    \A2D00reader/dataout_0_0\ : OR2
      port map(A => SerialLoad_c, B => LogicReset_c, Y => 
        \A2D01reader.dataout_0_0\);
    
    \A2DRead/DataRegU1Ch1f_RNIKKTT83[8]\ : MAJ3
      port map(A => \A2DRead/N_1581\, B => \A2DRead/N_1556\, C
         => \A2DRead/N_1583\, Y => \A2DRead/N_1586\);
    
    \ioBank67reader/parallelholdreg_RNO[0]\ : OR2
      port map(A => \ioBank67reader/N_23\, B => LogicReset_c, Y
         => \ioBank67reader/parallelholdreg_RNO_8[0]\);
    
    \A2DRead/DataRegU1Ch0c[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0b[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0c[5]_net_1\);
    
    \matrix_read03/data01[2]\ : DFN1E1
      port map(D => \inputs62_c[2]\, CLK => Clock03, E => 
        \matrix_read03/ctrl12\, Q => 
        \matrix_read03/data01[2]_net_1\);
    
    \pwmdisable01latch/paralleldata[3]\ : DFN1
      port map(D => \pwmdisable01latch/paralleldata_RNO_2[3]\, 
        CLK => SerialClock_c, Q => 
        \pwmdisable01latch/paralleldata[3]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I85_Y_0\ : XOR2
      port map(A => \A2DRead/N_1585\, B => \A2DRead/N_1558\, Y
         => \A2DRead/ADD_11x11_fast_I85_Y_0\);
    
    \A2DRead/DataRegU1Ch1a[10]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[10]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch1a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1a[10]_net_1\);
    
    \A2DRead/DataRegU1Ch0d_RNIVEMUV_0[3]\ : MAJ3
      port map(A => \A2DRead/N_1761\, B => \A2DRead/N_1763\, C
         => \A2DRead/N_1786\, Y => \A2DRead/N_1791\);
    
    \ioBank63reader/parallelholdreg_RNO_0[0]\ : MX2
      port map(A => \ioBank63reader/parallelholdreg_7[0]\, B => 
        \ioBank63reader/parallelholdreg[0]_net_1\, S => 
        \ioBank63reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank63reader/N_23\);
    
    \A2DRead/DataRegU1Ch0d_RNI80HQ[11]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0c[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch0e[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch0d[11]_net_1\, Y => \A2DRead/N_1962\);
    
    \A2DRead/DataRegU1Ch0i[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0h[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0i_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0i[7]_net_1\);
    
    \firmware/dataout_RNO_7\ : OR2A
      port map(A => \firmware/cellindex[1]_net_1\, B => 
        \firmware/parallelholdreg[7]_net_1\, Y => \firmware/N_43\);
    
    \discretedutycycle01/cellindex_RNO[1]\ : XA1
      port map(A => \discretedutycycle01/cellindex[1]_net_1\, B
         => \discretedutycycle01/cellindex[0]_net_1\, C => 
        \discretedutycycle01/cellindex_1_sqmuxa_1_0_net_1\, Y => 
        \discretedutycycle01/cellindex_n1\);
    
    \A2DRead/DataRegU1Ch1i_RNIKSOR[10]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1g[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch1i[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch1h[10]_net_1\, Y => \A2DRead/N_1595\);
    
    \firmware/cellindex_RNIN3PT[1]\ : OR2B
      port map(A => \firmware/cellindex[1]_net_1\, B => 
        \firmware/cellindex[0]_net_1\, Y => \firmware/N_40\);
    
    \A2DRead/DataRegU1Ch0f_RNIA0CQ6_0[8]\ : MAJ3
      port map(A => \A2DRead/N_1888\, B => \A2DRead/N_1863\, C
         => \A2DRead/N_1865\, Y => \A2DRead/N_1897\);
    
    \matrix_read03/stage_RNO_0[4]\ : OA1C
      port map(A => \matrix_read03/stage[3]_net_1\, B => 
        \matrix_read03/N_36\, C => \matrix_read03/stage[4]_net_1\, 
        Y => \matrix_read03/N_55\);
    
    \bitcontrol01latch/output_RNO_0[5]\ : MX2
      port map(A => \bitcontrol01latch/bitcontrol01[5]\, B => 
        \bitcontrol01latch/paralleldata[5]_net_1\, S => 
        \bitcontrol01latch/output_0_sqmuxa_net_1\, Y => 
        \bitcontrol01latch/N_49\);
    
    \addresslatch/paralleldata_RNO_0[3]\ : MX2
      port map(A => \addresslatch/paralleldata[3]_net_1\, B => 
        SerialIn_c_0, S => \addresslatch/N_86\, Y => 
        \addresslatch/N_86_mux\);
    
    \A2DRead/DataRegU1Ch1p_RNIU4J36[12]\ : XOR3
      port map(A => \A2DRead/N_1658\, B => \A2DRead/N_1671\, C
         => \A2DRead/N_1656\, Y => \A2DRead/N_1675\);
    
    \discretedutycycle01/output_0_sqmuxa\ : NOR2A
      port map(A => \discretedutycycle01/address\, B => 
        SerialLoad_c, Y => 
        \discretedutycycle01/output_0_sqmuxa_net_1\);
    
    \discretedutycycle01/output_0_sqmuxa_0\ : NOR2A
      port map(A => \discretedutycycle01/address\, B => 
        SerialLoad_c, Y => 
        \discretedutycycle01/output_0_sqmuxa_0_net_1\);
    
    \A2DRead/DataRegU1Ch0[8]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch0[7]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0[8]_net_1\);
    
    \matrix_read04/stage_RNI3NB[5]\ : NOR3B
      port map(A => \matrix_read04/N_63\, B => 
        \matrix_read04/ctrl9_0_a3_0\, C => \matrix_read04/N_26\, 
        Y => \matrix_read04/ctrl9\);
    
    \firmware/cellindex_RNO[0]\ : NOR2A
      port map(A => \ioBank60reader.cellindex_1_sqmuxa_1_1\, B
         => \firmware/cellindex[0]_net_1\, Y => 
        \firmware/cellindex_n0\);
    
    \iobank69debounce/IOOut[1]\ : DFN1E0
      port map(D => \iobank69debounce/IOOut_3[1]\, CLK => Clock03, 
        E => \iobank69debounce/IOOut_0_sqmuxa\, Q => \ohold69[1]\);
    
    \iobank61debounce/IOOut_RNO[2]\ : MX2B
      port map(A => \iobank61debounce/PreviousPosition[2]_net_1\, 
        B => \inputs61_c[2]\, S => LogicReset_c, Y => 
        \iobank61debounce/IOOut_8[2]\);
    
    \A2DRead/DataRegU1Ch0d[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0c[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0d[9]_net_1\);
    
    \matrix_read03/dataOut03_RNI0BRA[2]\ : INV
      port map(A => \dhold65[2]\, Y => \dhold65_i[2]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I18_Y\ : NOR2B
      port map(A => \A2DRead/N175\, B => \A2DRead/N172\, Y => 
        \A2DRead/N195\);
    
    \pwmdisable01latch/output[5]\ : DFN1
      port map(D => \pwmdisable01latch/output_RNO_2[5]\, CLK => 
        Clock01, Q => \pwmdisable01[5]\);
    
    \ioBank65reader/parallelholdreg_0_sqmuxa_3\ : NOR2B
      port map(A => \A2D01reader.parallelholdreg_0_sqmuxa_4\, B
         => \ioBank62reader.parallelholdreg_0_sqmuxa_4\, Y => 
        \ioBank65reader/parallelholdreg_0_sqmuxa_3_net_1\);
    
    \iobank60debounce/IOOut[2]\ : DFN1E0
      port map(D => \iobank60debounce/IOOut_8[2]\, CLK => Clock03, 
        E => \iobank60debounce/IOOut_0_sqmuxa\, Q => \ohold60[2]\);
    
    \matrix_read03/stage_RNIVARL[2]\ : NOR2B
      port map(A => \matrix_read03/stage[3]_net_1\, B => 
        \matrix_read03/stage[2]_net_1\, Y => 
        \matrix_read03/ctrl15_m1_e_0_1\);
    
    \A2DRead/DataRegU1Ch1i_RNI348GE_0[12]\ : MAJ3
      port map(A => \A2DRead/N_1661\, B => \A2DRead/N_1634\, C
         => \A2DRead/N_1659\, Y => \A2DRead/N_1666\);
    
    \ioBank69reader/dataout_RNO_0\ : NOR2B
      port map(A => \ioBank69reader/parallelholdreg[2]_net_1\, B
         => \ioBank69reader/cellindex[1]_net_1\, Y => 
        \ioBank69reader/parallelholdreg_m[2]\);
    
    \A2D00reader/parallelholdreg_RNO_1[2]\ : OR2
      port map(A => \ohold50[2]\, B => SerialLoad_c, Y => 
        \A2D00reader/parallelholdreg_7[2]\);
    
    \A2DRead/DataRegU1Ch0g_RNITJEOG[10]\ : XOR3
      port map(A => \A2DRead/N_1950\, B => \A2DRead/N_1952\, C
         => \A2DRead/N_1925\, Y => \A2DRead/N_1956\);
    
    \ExternalHardwareEn_pad[2]/U0/U0\ : IOPAD_TRI
      port map(D => \ExternalHardwareEn_pad[2]/U0/NET1\, E => 
        \ExternalHardwareEn_pad[2]/U0/NET2\, PAD => 
        ExternalHardwareEn(2));
    
    \A2DRead/DataRegU1Ch1o_RNIIA0EU1[5]\ : AO1
      port map(A => \A2DRead/N_1496\, B => 
        \A2DRead/un60_dataregu1ch1_428_0_tz\, C => 
        \A2DRead/un60_dataregu1ch1_256\, Y => \A2DRead/N_1528\);
    
    \A2DRead/DataRegU1Ch0n[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0m[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0n[9]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I85_Y\ : AX1D
      port map(A => \A2DRead/N227_0\, B => \A2DRead/I64_un1_Y_0\, 
        C => \A2DRead/ADD_11x11_fast_I85_Y_0\, Y => 
        \A2DRead/un60_dataregu1ch1[8]\);
    
    \A2DRead/DataRegU1Ch1o_RNI85IN21[5]\ : XOR3
      port map(A => \A2DRead/N_1523\, B => \A2DRead/N_1496\, C
         => \A2DRead/N_1498\, Y => \A2DRead/N_1527\);
    
    \A2DRead/DataRegU1Ch1e[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1d[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1e[11]_net_1\);
    
    \A2DRead/step_RNIUM6U1[4]\ : OR2A
      port map(A => \A2DRead/step[4]_net_1\, B => \A2DRead/N_61\, 
        Y => \A2DRead/N_63\);
    
    \snkpout01/counter_RNO[11]\ : XA1
      port map(A => \snkpout01/counter_c10\, B => 
        \snkpout01/counter[11]_net_1\, C => 
        \snkpout01/counter_1_sqmuxa\, Y => 
        \snkpout01/counter_n11\);
    
    \A2DRead/DatHldRegU1Ch1[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1[16]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch1_1_sqmuxa\, Q => 
        \ohold51[11]\);
    
    \A2DRead/DataRegU1Ch1o_RNIUIOKA[2]\ : OA1
      port map(A => \A2DRead/N_1389\, B => \A2DRead/N_1387\, C
         => \A2DRead/N_1385\, Y => 
        \A2DRead/un60_dataregu1ch1_88_0\);
    
    \matrix_read03/dataOut02_RNIU6O9[1]\ : INV
      port map(A => \dhold64[1]\, Y => \dhold64_i[1]\);
    
    \A2DRead/DataRegU1Ch1f_RNIF1G7[1]\ : XOR2
      port map(A => \A2DRead/DataRegU1Ch1f[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1a[1]_net_1\, Y => 
        \A2DRead/un60_dataregu1ch1_24_1\);
    
    \iobank69debounce/DebounceTimer_RNO_0[8]\ : NOR3C
      port map(A => \iobank69debounce/un1_previousposition7\, B
         => \iobank69debounce/DebounceTimer[7]_net_1\, C => 
        \iobank69debounce/DebounceTimer_c6\, Y => 
        \iobank69debounce/N_48\);
    
    \externenablelatch/output[5]\ : DFN1
      port map(D => \externenablelatch/output_RNO_0[5]_net_1\, 
        CLK => Clock01, Q => \ExternalHardwareEn_c[5]\);
    
    \ioBank66reader/dataout_RNO_0\ : NOR3A
      port map(A => \ioBank66reader/parallelholdreg[0]_net_1\, B
         => \ioBank66reader/cellindex[0]_net_1\, C => 
        \ioBank66reader/cellindex[1]_net_1\, Y => 
        \ioBank66reader/parallelholdreg_m[0]\);
    
    \snkpout01/PWMOut_3_0_I_37\ : AO1C
      port map(A => \dutycycle01[1]\, B => 
        \snkpout01/counter[1]_net_1\, C => \snkpout01/N_4\, Y => 
        \snkpout01/N_6\);
    
    \AN6NRMControl_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => AN6NRMControl_c, E => \VCC\, DOUT => 
        \AN6NRMControl_pad/U0/NET1\, EOUT => 
        \AN6NRMControl_pad/U0/NET2\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I21_Y\ : AO1
      port map(A => \A2DRead/N165\, B => \A2DRead/N169\, C => 
        \A2DRead/N168\, Y => \A2DRead/N198\);
    
    \iobank67debounce/DebounceTimer[3]\ : DFN1E1
      port map(D => \iobank67debounce/DebounceTimer_n3\, CLK => 
        Clock03, E => \iobank67debounce/DebounceTimere\, Q => 
        \iobank67debounce/DebounceTimer[3]_net_1\);
    
    \A2DRead/step_RNI6KFJ6[5]\ : MX2
      port map(A => \A2DRead/i5_mux\, B => \A2DRead/N_48\, S => 
        \A2DRead/step[5]_net_1\, Y => \A2DRead/i8_mux_0\);
    
    \A2DRead/DataRegU1Ch1m[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1l[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1m[8]_net_1\);
    
    \A2DRead/DataRegU1Ch0l[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0k[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0l[11]_net_1\);
    
    \iobank69debounce/PreviousPosition_RNO[2]\ : MX2B
      port map(A => \iobank69debounce/CurrentPosition[2]_net_1\, 
        B => \dhold69[2]\, S => LogicReset_c, Y => 
        \iobank69debounce/PreviousPosition_3[2]\);
    
    \bitcontrol01latch/paralleldata_RNO[6]\ : OR2
      port map(A => \bitcontrol01latch/N_100_mux\, B => 
        LogicReset_c, Y => 
        \bitcontrol01latch/paralleldata_RNO_1[6]_net_1\);
    
    \matrix_read03/dataOut02[0]\ : DFN1
      port map(D => \matrix_read03/data02[0]_net_1\, CLK => 
        Clock03, Q => \dhold64[0]\);
    
    \externenablelatch/paralleldata_RNO_0[5]\ : MX2
      port map(A => \externenablelatch/paralleldata[5]_net_1\, B
         => SerialIn_c_0, S => \externenablelatch/N_97\, Y => 
        \externenablelatch/N_97_mux\);
    
    \Watch_Dog_Reset/timercount_RNIPM3A1[2]\ : NOR2B
      port map(A => \Watch_Dog_Reset/N_2\, B => 
        \Watch_Dog_Reset/timercount[2]_net_1\, Y => 
        \Watch_Dog_Reset/N_3_0\);
    
    \A2DRead/un60_dataregu1ch0_423_RNO_0\ : OA1
      port map(A => \A2DRead/N_1807\, B => \A2DRead/N_1809\, C
         => \A2DRead/N_1832\, Y => 
        \A2DRead/un60_dataregu1ch0_343_0\);
    
    \A2DRead/DataInReg_RNO[2]\ : NOR3C
      port map(A => \A2DRead/i8_mux_0\, B => \A2DRead/m50_0\, C
         => \A2DRead/DataInReg_321_e_1\, Y => \A2DRead/N_2172\);
    
    \A2D00reader/parallelholdreg[6]\ : DFN1
      port map(D => \A2D00reader/parallelholdreg_RNO_0[6]_net_1\, 
        CLK => Clock01, Q => 
        \A2D00reader/parallelholdreg[6]_net_1\);
    
    \iobank61debounce/DebounceTimer_RNO[6]\ : XA1
      port map(A => \iobank61debounce/DebounceTimer_c5\, B => 
        \iobank61debounce/DebounceTimer[6]_net_1\, C => 
        \iobank61debounce/un1_previousposition7\, Y => 
        \iobank61debounce/DebounceTimer_n6\);
    
    \iobank6Adebounce/DebounceTimer[2]\ : DFN1E1
      port map(D => \iobank6Adebounce/DebounceTimer_n2\, CLK => 
        Clock03, E => \iobank6Adebounce/DebounceTimere\, Q => 
        \iobank6Adebounce/DebounceTimer[2]_net_1\);
    
    \externenablelatch/paralleldata_RNO_0[0]\ : MX2
      port map(A => \externenablelatch/paralleldata[0]_net_1\, B
         => SerialIn_c_0, S => \externenablelatch/N_92\, Y => 
        \externenablelatch/N_92_mux\);
    
    \externenablelatch/paralleldata_RNO[6]\ : NOR2A
      port map(A => \externenablelatch/N_98_mux\, B => 
        LogicReset_c, Y => 
        \externenablelatch/paralleldata_RNO_0[6]_net_1\);
    
    \A2D01reader/parallelholdreg_RNO[5]\ : OR2
      port map(A => \A2D01reader/N_96\, B => LogicReset_c, Y => 
        \A2D01reader/parallelholdreg_RNO_0[5]_net_1\);
    
    \iobank60debounce/CurrentPosition[1]\ : DFN1
      port map(D => \iobank60debounce/inputs60_c_i[1]\, CLK => 
        Clock03, Q => \iobank60debounce/CurrentPosition[1]_net_1\);
    
    \AN6NRMControl_pad/U0/U0\ : IOPAD_TRI
      port map(D => \AN6NRMControl_pad/U0/NET1\, E => 
        \AN6NRMControl_pad/U0/NET2\, PAD => AN6NRMControl);
    
    \A2DRead/DataRegU1Ch1n[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1m[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1n[6]_net_1\);
    
    \A2DRead/DataRegU1Ch1m_RNI5PO91[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1m[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch1n[1]_net_1\, C => 
        \A2DRead/un60_dataregu1ch1_29_1\, Y => 
        \A2DRead/un60_dataregu1ch1_29_3\);
    
    \clock_master/counter[3]\ : DFN1
      port map(D => \clock_master/counter_4[3]\, CLK => XCLK_c, Q
         => \clock_master/counter[3]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I14_Y\ : OA1
      port map(A => \A2DRead/N_2029\, B => \A2DRead/N_2032\, C
         => \A2DRead/N178\, Y => \A2DRead/N191\);
    
    \A2DRead/DataRegU1Ch0c[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0b[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0c[7]_net_1\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I70_Y_0\ : MAJ3
      port map(A => \A2DRead/N_1685\, B => \A2DRead/N_1682\, C
         => \A2DRead/N177_0\, Y => 
        \A2DRead/ADD_11x11_fast_I70_Y_0_0\);
    
    \ioBank60reader/parallelholdreg_0_sqmuxa_2_0\ : NOR2B
      port map(A => \A2D01reader.parallelholdreg_0_sqmuxa_5\, B
         => \ioBank6Breader.parallelholdreg_0_sqmuxa_3\, Y => 
        \ioBank60reader/parallelholdreg_0_sqmuxa_2_net_1\);
    
    \A2DRead/DataRegU1Ch0d_RNILAAG[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0c[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch0d[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch0e[1]_net_1\, Y => \A2DRead/N_1704\);
    
    \A2DRead/DataRegU1Ch1h[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1g[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1h[1]_net_1\);
    
    \Watch_Dog_Reset/timercount_RNITF5O1[6]\ : NOR3A
      port map(A => \Watch_Dog_Reset/m40_e_3\, B => 
        \Watch_Dog_Reset/timercount[6]_net_1\, C => 
        \Watch_Dog_Reset/timercount[7]_net_1\, Y => 
        \Watch_Dog_Reset/m40_e_6\);
    
    \A2DRead/DataRegU1Ch0g_RNIQ9NFL2[10]\ : XOR3
      port map(A => \A2DRead/N_1958\, B => \A2DRead/N_1956\, C
         => \A2DRead/N_1931\, Y => \A2DRead/N_1960\);
    
    \A2DRead/DataRegU1Ch0f_RNIRVJQ1[2]\ : XOR3
      port map(A => \A2DRead/N_1707\, B => 
        \A2DRead/DataRegU1Ch0f[2]_net_1\, C => \A2DRead/N_1705\, 
        Y => \A2DRead/N_1728\);
    
    \iobank63debounce/DebounceTimer[2]\ : DFN1E1
      port map(D => \iobank63debounce/DebounceTimer_n2\, CLK => 
        Clock03, E => \iobank63debounce/DebounceTimere\, Q => 
        \iobank63debounce/DebounceTimer[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNINH1Q2_0[10]\ : MAJ3
      port map(A => \A2DRead/N_1940\, B => \A2DRead/N_1917\, C
         => \A2DRead/N_1942\, Y => \A2DRead/N_1951\);
    
    \matrix_read03/dataOut00[1]\ : DFN1
      port map(D => \matrix_read03/data00[1]_net_1\, CLK => 
        Clock03, Q => \dhold62[1]\);
    
    \A2DRead/DataRegU1Ch0f[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0e[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0f[2]_net_1\);
    
    \iobank66debounce/DebounceTimer_RNI0PI41_0[8]\ : OR2B
      port map(A => \iobank66debounce/DebounceTimer[8]_net_1\, B
         => \iobank66debounce/un1_previousposition7\, Y => 
        \iobank66debounce/DebounceTimere\);
    
    \iobank61debounce/DebounceTimer_RNO[0]\ : NOR2A
      port map(A => \iobank61debounce/un1_previousposition7\, B
         => \iobank61debounce/DebounceTimer[0]_net_1\, Y => 
        \iobank61debounce/N_69\);
    
    \snkpout01/counter_RNO[9]\ : XA1
      port map(A => \snkpout01/counter[9]_net_1\, B => 
        \snkpout01/counter_c8\, C => \snkpout01/counter_1_sqmuxa\, 
        Y => \snkpout01/counter_n9\);
    
    \addresslatch/paralleldata[7]\ : DFN1
      port map(D => \addresslatch/paralleldata_RNO[7]_net_1\, CLK
         => SerialClock_c, Q => 
        \addresslatch/paralleldata[7]_net_1\);
    
    \matrix_read04/dataOut01[0]\ : DFN1
      port map(D => \matrix_read04/data01[0]_net_1\, CLK => 
        Clock03, Q => \dhold68[0]\);
    
    \A2DRead/DataRegU1Ch1c_RNI76TC_0[6]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1e[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch1d[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch1c[6]_net_1\, Y => \A2DRead/N_1476\);
    
    \discretedutycycle01/paralleldata[7]\ : DFN1
      port map(D => \discretedutycycle01/paralleldata_RNO_2[7]\, 
        CLK => SerialClock_c, Q => 
        \discretedutycycle01/paralleldata[7]_net_1\);
    
    \iobank66debounce/DebounceTimer_RNO_0[8]\ : NOR3C
      port map(A => \iobank66debounce/un1_previousposition7\, B
         => \iobank66debounce/DebounceTimer[7]_net_1\, C => 
        \iobank66debounce/DebounceTimer_c6\, Y => 
        \iobank66debounce/N_48\);
    
    \bitcontrol01latch/output[0]\ : DFN1
      port map(D => \bitcontrol01latch/output_RNO_1[0]\, CLK => 
        Clock01, Q => \bitcontrol01latch/bitcontrol01[0]\);
    
    \A2DRead/DataRegU1Ch0k[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0j[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0k[10]_net_1\);
    
    \A2D00reader/parallelholdreg_RNO_0[0]\ : MX2
      port map(A => \A2D00reader/parallelholdreg_7[0]\, B => 
        \A2D00reader/parallelholdreg[0]_net_1\, S => 
        \A2D00reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D00reader/N_91\);
    
    \clock_master/counter_8_I_46\ : XA1
      port map(A => Clock03, B => LogicReset_c, C => 
        \clock_master/counter[3]_net_1\, Y => 
        \clock_master/DWACT_ADD_CI_0_pog_array_1[0]\);
    
    \A2DRead/DataRegU1Ch1j_RNI2CU31[8]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1j[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch1l[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch1k[8]_net_1\, Y => \A2DRead/N_1537\);
    
    \A2D01reader/parallelholdreg_RNO[1]\ : OR2
      port map(A => \A2D01reader/N_92\, B => LogicReset_c, Y => 
        \A2D01reader/parallelholdreg_RNO_0[1]_net_1\);
    
    \matrix_read04/stage_RNI0M9[2]\ : NOR3B
      port map(A => \matrix_read04/stage_m1_0_a2_0\, B => 
        \matrix_read04/stage[2]_net_1\, C => \matrix_read04/N_26\, 
        Y => \matrix_read04/stage_N_3_mux\);
    
    \matrix_read04/dataOut00_RNIUE08[2]\ : INV
      port map(A => \dhold67[2]\, Y => \dhold67_i[2]\);
    
    \addresslatch/paralleldata[3]\ : DFN1
      port map(D => \addresslatch/paralleldata_RNO[3]_net_1\, CLK
         => SerialClock_c, Q => 
        \addresslatch/paralleldata[3]_net_1\);
    
    \Watch_Dog_Reset/timercount_RNIFO2S[6]\ : NOR2B
      port map(A => \Watch_Dog_Reset/timercount[6]_net_1\, B => 
        \Watch_Dog_Reset/timercount[5]_net_1\, Y => 
        \Watch_Dog_Reset/m8_m4_0_a2_1\);
    
    \externenablelatch/output[2]\ : DFN1
      port map(D => \externenablelatch/output_RNO_0[2]_net_1\, 
        CLK => Clock01, Q => \ExternalHardwareEn_c[2]\);
    
    \ioBank69reader/cellindex_RNO[0]\ : NOR3
      port map(A => \ioBank69reader/cellindex[0]_net_1\, B => 
        LogicReset_c, C => \ioBank69reader/un1_latch_1\, Y => 
        \ioBank69reader/cellindex_RNO_6[0]\);
    
    \iobank60debounce/IOOut[1]\ : DFN1E0
      port map(D => \iobank60debounce/IOOut_8[1]\, CLK => Clock03, 
        E => \iobank60debounce/IOOut_0_sqmuxa\, Q => \ohold60[1]\);
    
    \A2DRead/DataRegU1Ch0f_RNIM2F0G[2]\ : XOR3
      port map(A => \A2DRead/N_1756\, B => \A2DRead/N_1758\, C
         => \A2DRead/N_1737\, Y => \A2DRead/N_1762\);
    
    \A2DRead/DataRegU1Ch1f_RNIQA0R73[7]\ : XOR3
      port map(A => \A2DRead/N_1555\, B => \A2DRead/N_1553\, C
         => \A2DRead/N_1528\, Y => \A2DRead/N_1557\);
    
    \addresslatch/paralleldata_RNO_0[1]\ : MX2
      port map(A => \addresslatch/paralleldata[1]_net_1\, B => 
        SerialIn_c_0, S => \addresslatch/N_84\, Y => 
        \addresslatch/N_84_mux\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I88_Y\ : XOR3
      port map(A => \A2DRead/N_1642\, B => \A2DRead/N_1669\, C
         => \A2DRead/N275\, Y => \A2DRead/un60_dataregu1ch1[11]\);
    
    \AN2DimControl_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => AN2DimControl_c, E => \VCC\, DOUT => 
        \AN2DimControl_pad/U0/NET1\, EOUT => 
        \AN2DimControl_pad/U0/NET2\);
    
    \A2DRead/DataRegU1Ch0f_RNIPDGV2[5]\ : XOR3
      port map(A => \A2DRead/N_1830\, B => \A2DRead/N_1828\, C
         => \A2DRead/N_1805\, Y => \A2DRead/N_1838\);
    
    \snkpout01/counter_RNO[10]\ : XA1
      port map(A => \snkpout01/counter_c9\, B => 
        \snkpout01/counter[10]_net_1\, C => 
        \snkpout01/counter_1_sqmuxa\, Y => 
        \snkpout01/counter_n10\);
    
    \A2DRead/DataRegU1Ch1p_RNI2FI4[2]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1b[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch1p[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch1a[2]_net_1\, Y => \A2DRead/N_1373\);
    
    \externenablelatch/output_RNO[3]\ : OR2
      port map(A => \externenablelatch/N_49\, B => LogicReset_c, 
        Y => \externenablelatch/output_RNO_0[3]_net_1\);
    
    \A2D00reader/parallelholdreg_RNO_1[11]\ : OR2
      port map(A => \ohold50[11]\, B => SerialLoad_c, Y => 
        \A2D00reader/parallelholdreg_7[11]\);
    
    \clock_master/counter_4_I_40\ : AND2
      port map(A => 
        \clock_master/DWACT_ADD_CI_0_pog_array_0_1_0[0]\, B => 
        \clock_master/counter[3]_net_1\, Y => 
        \clock_master/DWACT_ADD_CI_0_pog_array_1_0[0]\);
    
    \A2D00reader/cellindex_RNIIVCI[2]\ : NOR2
      port map(A => \A2D00reader/cellindex[2]_net_1\, B => 
        \A2D00reader/cellindex[0]_net_1\, Y => 
        \A2D00reader/parallelholdreg_0_sqmuxa_0\);
    
    \A2DRead/DataRegU1Ch0m_RNIBU711[9]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0m[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch0o[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch0n[9]_net_1\, Y => \A2DRead/N_1910\);
    
    \A2D01reader/parallelholdreg_RNO_1[2]\ : OR2
      port map(A => \ohold51[2]\, B => SerialLoad_c, Y => 
        \A2D01reader/parallelholdreg_7[2]\);
    
    \iobank61debounce/DebounceTimer_RNIM68S[8]\ : OA1C
      port map(A => \iobank61debounce/DebounceTimer[8]_net_1\, B
         => \iobank61debounce/Changing_net_1\, C => LogicReset_c, 
        Y => \iobank61debounce/IOOut_0_sqmuxa\);
    
    \A2DRead/DataRegU1Ch1i_RNIT6FU35[12]\ : AO1
      port map(A => \A2DRead/N_1665\, B => 
        \A2DRead/un60_dataregu1ch1_783_0_tz\, C => 
        \A2DRead/un60_dataregu1ch1_469\, Y => \A2DRead/N_1670\);
    
    \AN4PTTControl_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => \outputs01_c_c_c[3]\, E => \VCC\, DOUT => 
        \AN4PTTControl_pad/U0/NET1\, EOUT => 
        \AN4PTTControl_pad/U0/NET2\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I89_Y\ : AX1D
      port map(A => \A2DRead/ADD_11x11_fast_I72_Y_out\, B => 
        \A2DRead/I59_un1_Y\, C => 
        \A2DRead/ADD_11x11_fast_I89_Y_0\, Y => 
        \A2DRead/un60_dataregu1ch0[12]\);
    
    \A2D00reader/cellindex[2]\ : DFN1
      port map(D => \A2D00reader/cellindex_n2\, CLK => 
        SerialClock_c, Q => \A2D00reader/cellindex[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0p_RNISVV71[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0b[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch0p[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch0a[1]_net_1\, Y => \A2DRead/N_1706\);
    
    \A2DRead/DataRegU1Ch0g_RNI24362[5]\ : XOR3
      port map(A => \A2DRead/N_1803\, B => \A2DRead/N_1799\, C
         => \A2DRead/N_1801\, Y => \A2DRead/N_1834\);
    
    \inputs62_ctrl_pad[2]/U0/U1\ : IOTRI_OB_EB
      port map(D => \inputs62_ctrl_c[2]\, E => \VCC\, DOUT => 
        \inputs62_ctrl_pad[2]/U0/NET1\, EOUT => 
        \inputs62_ctrl_pad[2]/U0/NET2\);
    
    \discretedutycycle01/output[8]\ : DFN1
      port map(D => \discretedutycycle01/output_RNO[8]_net_1\, 
        CLK => Clock01, Q => \dutycycle01[8]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I25_Y\ : AO1
      port map(A => \A2DRead/N159_0\, B => \A2DRead/N163_0\, C
         => \A2DRead/N162\, Y => \A2DRead/N202_0\);
    
    \A2DRead/step_RNI3L2F4_2[3]\ : NOR3B
      port map(A => \A2DRead/N_115\, B => \A2DRead/step_c1\, C
         => \A2DRead/step[3]_net_1\, Y => 
        \A2DRead/DataRegU1Ch0j_1_sqmuxa\);
    
    \bitcontrol01latch/cellindex[1]\ : DFN1E0
      port map(D => \bitcontrol01latch/cellindex_n1\, CLK => 
        SerialClock_c, E => 
        \bitcontrol01latch/cellindex_1_sqmuxa_net_1\, Q => 
        \bitcontrol01latch/cellindex[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1o_RNINVU48_0[2]\ : AO13
      port map(A => \A2DRead/N_1407\, B => \A2DRead/N_1405\, C
         => \A2DRead/un60_i4_mux\, Y => \A2DRead/N_1414\);
    
    \Watch_Dog_Reset/timercount_RNO_1[8]\ : NOR3C
      port map(A => \Watch_Dog_Reset/timercount[6]_net_1\, B => 
        \Watch_Dog_Reset/timercount[7]_net_1\, C => 
        \Watch_Dog_Reset/m15_m3_0_a2_1\, Y => 
        \Watch_Dog_Reset/m15_m3_0_a2_3\);
    
    \pwmdisable01latch/cellindex[1]\ : DFN1E0
      port map(D => \pwmdisable01latch/cellindex_n1\, CLK => 
        SerialClock_c, E => 
        \pwmdisable01latch/cellindex_1_sqmuxa_net_1\, Q => 
        \pwmdisable01latch/cellindex[1]_net_1\);
    
    \iobank60debounce/PreviousPosition[1]\ : DFN1
      port map(D => \iobank60debounce/PreviousPosition_3[1]\, CLK
         => Clock03, Q => 
        \iobank60debounce/PreviousPosition[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1e[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1d[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1e[4]_net_1\);
    
    \AN6PTTControl_pad/U0/U0\ : IOPAD_TRI
      port map(D => \AN6PTTControl_pad/U0/NET1\, E => 
        \AN6PTTControl_pad/U0/NET2\, PAD => AN6PTTControl);
    
    \A2DRead/DataRegU1Ch1o_RNIMT8F1_0[2]\ : MAJ3
      port map(A => \A2DRead/N_1371\, B => \A2DRead/N_1375\, C
         => \A2DRead/N_1373\, Y => \A2DRead/N_1386\);
    
    \A2DRead/DataRegU1Ch0d_RNI5TGQ[10]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0c[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch0e[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch0d[10]_net_1\, Y => \A2DRead/N_1934\);
    
    \ioBank66reader/parallelholdreg_RNO[0]\ : OR2
      port map(A => \ioBank66reader/N_23\, B => LogicReset_c, Y
         => \ioBank66reader/parallelholdreg_RNO_7[0]\);
    
    \A2DRead/DataRegU1Ch0j[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0i[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0j[3]_net_1\);
    
    \discretedutycycle01/output[3]\ : DFN1
      port map(D => \discretedutycycle01/output_RNO_3[3]\, CLK
         => Clock01, Q => \dutycycle01[3]\);
    
    \A2DRead/DataRegU1Ch0g[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0f[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0g[9]_net_1\);
    
    \ioBank65reader/parallelholdreg_RNO_0[1]\ : MX2
      port map(A => \ioBank65reader/parallelholdreg_7[1]\, B => 
        \ioBank65reader/parallelholdreg[1]_net_1\, S => 
        \ioBank65reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank65reader/N_24\);
    
    \A2DRead/DataRegU1Ch0j_RNISSBN[7]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0j[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch0l[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch0k[7]_net_1\, Y => \A2DRead/N_1856\);
    
    \A2DRead/DataInReg[3]\ : DFN1E1
      port map(D => AdDout_c, CLK => Clock04, E => 
        \A2DRead/N_2176\, Q => \A2DRead/DataInReg[3]_net_1\);
    
    \A2DRead/step_RNILVKE1_0[3]\ : NOR2B
      port map(A => \A2DRead/N_54\, B => \A2DRead/step[3]_net_1\, 
        Y => \A2DRead/N_118\);
    
    \iobank61debounce/PreviousPosition_RNO[0]\ : MX2B
      port map(A => \iobank61debounce/CurrentPosition[0]_net_1\, 
        B => \inputs61_c[0]\, S => LogicReset_c, Y => 
        \iobank61debounce/PreviousPosition_3[0]\);
    
    \A2DRead/DataRegU1Ch0[5]\ : DFN1E1
      port map(D => \A2DRead/un60_dataregu1ch0[4]\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0[5]_net_1\);
    
    \iobank60debounce/PreviousPosition_RNO[2]\ : MX2B
      port map(A => \iobank60debounce/CurrentPosition[2]_net_1\, 
        B => \inputs60_c[2]\, S => LogicReset_c, Y => 
        \iobank60debounce/PreviousPosition_3[2]\);
    
    \matrix_read04/stage_RNO[5]\ : XA1B
      port map(A => \matrix_read04/stage[5]_net_1\, B => 
        \matrix_read04/stage_N_3_mux\, C => LogicReset_c, Y => 
        \matrix_read04/N_13\);
    
    \iobank60debounce/DebounceTimer_RNO_0[8]\ : NOR3C
      port map(A => \iobank60debounce/un1_previousposition7\, B
         => \iobank60debounce/DebounceTimer[7]_net_1\, C => 
        \iobank60debounce/DebounceTimer_c6\, Y => 
        \iobank60debounce/N_48\);
    
    \A2DRead/DataRegU1Ch1e_RNIBFFP_0[11]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1e[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch1d[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch1c[11]_net_1\, Y => \A2DRead/N_1616\);
    
    \A2DRead/DataRegU1Ch0f_RNIJ8HV2_0[7]\ : MAJ3
      port map(A => \A2DRead/N_1884\, B => \A2DRead/N_1861\, C
         => \A2DRead/N_1886\, Y => \A2DRead/N_1895\);
    
    \A2DRead/DataRegU1Ch1f_RNI500O_0[7]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1f[7]_net_1\, B => 
        \A2DRead/N_1478\, C => \A2DRead/N_1476\, Y => 
        \A2DRead/N_1514\);
    
    \ioBank6Breader/parallelholdreg_RNO_0[2]\ : MX2
      port map(A => \ioBank6Breader/parallelholdreg_7[2]\, B => 
        \ioBank6Breader/parallelholdreg[2]_net_1\, S => 
        \ioBank6Breader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank6Breader/N_25\);
    
    \externenablelatch/paralleldata[1]\ : DFN1
      port map(D => 
        \externenablelatch/paralleldata_RNO_0[1]_net_1\, CLK => 
        SerialClock_c, Q => 
        \externenablelatch/paralleldata[1]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNIM4GD[8]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0g[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch0i[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch0h[8]_net_1\, Y => \A2DRead/N_1886\);
    
    \iobank68debounce/DebounceTimer_RNO[4]\ : XA1
      port map(A => \iobank68debounce/DebounceTimer_c3\, B => 
        \iobank68debounce/DebounceTimer[4]_net_1\, C => 
        \iobank68debounce/un1_previousposition7\, Y => 
        \iobank68debounce/DebounceTimer_n4\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I84_Y\ : XOR3
      port map(A => \A2DRead/N_1530\, B => \A2DRead/N_1557\, C
         => \A2DRead/N229_0\, Y => \A2DRead/un60_dataregu1ch1[7]\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I61_un1_Y\ : 
        NOR3C
      port map(A => \A2DRead/N197\, B => \A2DRead/N201\, C => 
        \A2DRead/N229\, Y => \A2DRead/I61_un1_Y\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I70_Y_0\ : MAJ3
      port map(A => \A2DRead/N_2029\, B => \A2DRead/N_2032\, C
         => \A2DRead/N177\, Y => \A2DRead/ADD_11x11_fast_I70_Y_0\);
    
    \A2DRead/DataRegU1Ch0g[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0f[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0g[12]_net_1\);
    
    \iobank63debounce/DebounceTimer_RNO[6]\ : XA1
      port map(A => \iobank63debounce/DebounceTimer_c5\, B => 
        \iobank63debounce/DebounceTimer[6]_net_1\, C => 
        \iobank63debounce/un1_previousposition7\, Y => 
        \iobank63debounce/DebounceTimer_n6\);
    
    \bitcontrol01latch/output_RNO[5]\ : OR2
      port map(A => \bitcontrol01latch/N_49\, B => LogicReset_c, 
        Y => \bitcontrol01latch/output_RNO_1[5]\);
    
    \addresslatch/output_RNO_0[1]\ : MX2
      port map(A => \addresslatch/paralleldata[1]_net_1\, B => 
        \internaddr[1]\, S => Ale_c, Y => \addresslatch/N_52\);
    
    \iobank68debounce/DebounceTimer_RNO_0[3]\ : NOR2B
      port map(A => \iobank68debounce/DebounceTimer_c1\, B => 
        \iobank68debounce/DebounceTimer[2]_net_1\, Y => 
        \iobank68debounce/DebounceTimer_c2\);
    
    \ioBank69reader/parallelholdreg_RNO[1]\ : OR2
      port map(A => \ioBank69reader/N_24\, B => LogicReset_c, Y
         => \ioBank69reader/parallelholdreg_RNO_10[1]\);
    
    \A2DRead/step_RNIU6EM[7]\ : NOR2A
      port map(A => uCReset_c, B => \A2DRead/step[7]_net_1\, Y
         => \A2DRead/DataRegU1Ch0n_1_sqmuxa_0_a2_0_0\);
    
    \A2D00reader/parallelholdreg_0_sqmuxa_4\ : NOR2
      port map(A => \internaddr[1]\, B => \internaddr[0]\, Y => 
        \firmware.N_76\);
    
    \A2DRead/DataRegU1Ch1b[9]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1a[9]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1b[9]_net_1\);
    
    \discretedutycycle01/output_RNO[7]\ : NOR2A
      port map(A => \discretedutycycle01/N_67\, B => LogicReset_c, 
        Y => \discretedutycycle01/output_RNO_2[7]\);
    
    \ioBank69reader/parallelholdreg[2]\ : DFN1
      port map(D => \ioBank69reader/parallelholdreg_RNO_10[2]\, 
        CLK => Clock01, Q => 
        \ioBank69reader/parallelholdreg[2]_net_1\);
    
    \addresslatch/paralleldata_RNO_0[4]\ : MX2
      port map(A => \addresslatch/paralleldata[4]_net_1\, B => 
        SerialIn_c_0, S => \addresslatch/N_87\, Y => 
        \addresslatch/N_87_mux\);
    
    \inputs61_pad[0]/U0/U0\ : IOPAD_IN
      port map(PAD => inputs61(0), Y => \inputs61_pad[0]/U0/NET1\);
    
    \A2DRead/DataRegU1Ch0g_RNIP7GD_0[9]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0i[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch0h[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch0g[9]_net_1\, Y => \A2DRead/N_1915\);
    
    \matrix_read04/dataOut00_RNISC08[0]\ : INV
      port map(A => \dhold67[0]\, Y => \dhold67_i[0]\);
    
    \pwmdisable01latch/output[4]\ : DFN1
      port map(D => \pwmdisable01latch/output_RNO_2[4]\, CLK => 
        Clock01, Q => \pwmdisable01[4]\);
    
    \pwmdisable01latch/paralleldata[2]\ : DFN1
      port map(D => \pwmdisable01latch/paralleldata_RNO_2[2]\, 
        CLK => SerialClock_c, Q => 
        \pwmdisable01latch/paralleldata[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0j[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0i[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0j[2]_net_1\);
    
    \iobank67debounce/PreviousPosition[1]\ : DFN1
      port map(D => \iobank67debounce/PreviousPosition_3[1]\, CLK
         => Clock03, Q => 
        \iobank67debounce/PreviousPosition[1]_net_1\);
    
    \ioBank65reader/parallelholdreg_RNO_1[0]\ : OR2
      port map(A => \ohold65[0]\, B => SerialLoad_c, Y => 
        \ioBank65reader/parallelholdreg_7[0]\);
    
    \A2DRead/DataRegU1Ch1o_RNI688QJ[2]\ : OR2
      port map(A => \A2DRead/un60_dataregu1ch1_88_0\, B => 
        \A2DRead/un60_dataregu1ch1_52\, Y => \A2DRead/N_1392\);
    
    \A2DRead/DataRegU1Ch0b[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0a[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0b[7]_net_1\);
    
    \matrix_read04/dataOut00[2]\ : DFN1
      port map(D => \matrix_read04/data00[2]_net_1\, CLK => 
        Clock03, Q => \dhold67[2]\);
    
    \discretedutycycle01/output_RNO[8]\ : NOR2A
      port map(A => \discretedutycycle01/N_68\, B => LogicReset_c, 
        Y => \discretedutycycle01/output_RNO[8]_net_1\);
    
    \A2DRead/m16\ : NOR2A
      port map(A => uCReset_c, B => LogicReset_c, Y => 
        \A2DRead.AdClock_0_sqmuxa\);
    
    \ioBank63reader/parallelholdreg[1]\ : DFN1
      port map(D => \ioBank63reader/parallelholdreg_RNO_4[1]\, 
        CLK => Clock01, Q => 
        \ioBank63reader/parallelholdreg[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1c[10]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1b[10]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1c[10]_net_1\);
    
    \A2DRead/DataRegU1Ch1e_RNI8CFP_0[10]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1e[10]_net_1\, B => 
        \A2DRead/DataRegU1Ch1d[10]_net_1\, C => 
        \A2DRead/DataRegU1Ch1c[10]_net_1\, Y => \A2DRead/N_1588\);
    
    \iobank63debounce/DebounceTimer_RNI7ST03[6]\ : NOR2B
      port map(A => \iobank63debounce/DebounceTimer_c3\, B => 
        \iobank63debounce/DebounceTimer_m2_0_a2_2\, Y => 
        \iobank63debounce/DebounceTimer_c6\);
    
    \firmware/cellindex[2]\ : DFN1
      port map(D => \firmware/N_16\, CLK => SerialClock_c, Q => 
        \firmware/cellindex[2]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNI93VN[3]\ : XOR3
      port map(A => \A2DRead/N_1374\, B => 
        \A2DRead/DataRegU1Ch1f[3]_net_1\, C => \A2DRead/N_1372\, 
        Y => \A2DRead/N_1403\);
    
    \A2DRead/DataRegU1Ch1c[1]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1b[1]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1c[1]_net_1\);
    
    \A2DRead/DataRegU1Ch0d[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0c[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0d[2]_net_1\);
    
    \A2DRead/step_RNIJF3V_2[6]\ : NOR2
      port map(A => \A2DRead/step[3]_net_1\, B => 
        \A2DRead/step[6]_net_1\, Y => 
        \A2DRead/DataInReg_16_6_e_0[11]\);
    
    \A2DRead/DataRegU1Ch1g_RNISJ2Q_0[9]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1i[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch1h[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch1g[9]_net_1\, Y => \A2DRead/N_1568\);
    
    \iobank66debounce/DebounceTimer_RNIS9A23[6]\ : NOR3C
      port map(A => \iobank66debounce/DebounceTimer_c1\, B => 
        \iobank66debounce/DebounceTimer_c4_out\, C => 
        \iobank66debounce/DebounceTimer_m2_0_a2_1\, Y => 
        \iobank66debounce/DebounceTimer_c6\);
    
    \A2DRead/DataRegU1Ch0k_RNITKHI_0[11]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0l[11]_net_1\, B => 
        \A2DRead/DataRegU1Ch0k[11]_net_1\, C => 
        \A2DRead/DataRegU1Ch0j[11]_net_1\, Y => \A2DRead/N_1969\);
    
    \Watch_Dog_Reset/timercount[7]\ : DFN1E0
      port map(D => \Watch_Dog_Reset/timercount_n7\, CLK => 
        \counter[1]\, E => \Watch_Dog_Reset/timercount_0_sqmuxa\, 
        Q => \Watch_Dog_Reset/timercount[7]_net_1\);
    
    \matrix_read04/dataOut04[0]\ : DFN1
      port map(D => \matrix_read04/data04[0]_net_1\, CLK => 
        Clock03, Q => \dhold6B[0]\);
    
    \A2DRead/DataRegU1Ch0c[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0b[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0c[8]_net_1\);
    
    \A2DRead/DataRegU1Ch1o[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1n[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0o_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1o[3]_net_1\);
    
    \iobank68debounce/PreviousPosition_RNO[0]\ : MX2B
      port map(A => \iobank68debounce/CurrentPosition[0]_net_1\, 
        B => \dhold68[0]\, S => LogicReset_c, Y => 
        \iobank68debounce/PreviousPosition_3[0]\);
    
    \A2DRead/step_RNILVKE1[3]\ : OR2B
      port map(A => \A2DRead/step_c1\, B => 
        \A2DRead/step[3]_net_1\, Y => \A2DRead/N_61\);
    
    \A2DRead/DataRegU1Ch1m[3]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1l[3]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1m[3]_net_1\);
    
    \A2DRead/DataRegU1Ch1j[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1i[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0j_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1j[11]_net_1\);
    
    \iobank6Adebounce/Changing\ : DFN1E0
      port map(D => \iobank6Adebounce/Changing_net_1\, CLK => 
        Clock03, E => LogicReset_c, Q => 
        \iobank6Adebounce/Changing_0\);
    
    \A2DRead/DataRegU1Ch0n[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0m[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0n[11]_net_1\);
    
    \iobank6Bdebounce/Changing_RNI3HNP\ : NOR2
      port map(A => \iobank6Bdebounce/Changing_0\, B => 
        LogicReset_c, Y => 
        \iobank6Bdebounce/un1_previousposition7\);
    
    \A2DRead/DataRegU1Ch1f_RNI1BNN[10]\ : XOR3
      port map(A => \A2DRead/N_1562\, B => 
        \A2DRead/DataRegU1Ch1f[10]_net_1\, C => \A2DRead/N_1560\, 
        Y => \A2DRead/N_1597\);
    
    \pwmdisable01latch/output_RNO_0[2]\ : MX2
      port map(A => \pwmdisable01[2]\, B => 
        \pwmdisable01latch/paralleldata[2]_net_1\, S => 
        \pwmdisable01latch/output_0_sqmuxa_net_1\, Y => 
        \pwmdisable01latch/N_46\);
    
    \iobank64debounce/DebounceTimer_RNIS48H_0[8]\ : OR2B
      port map(A => \iobank64debounce/DebounceTimer[8]_net_1\, B
         => \iobank64debounce/un1_previousposition7\, Y => 
        \iobank64debounce/DebounceTimere\);
    
    \matrix_read03/dataOut04[2]\ : DFN1
      port map(D => \matrix_read03/data04[2]_net_1\, CLK => 
        Clock03, Q => \dhold66[2]\);
    
    \iobank61debounce/PreviousPosition[3]\ : DFN1
      port map(D => \iobank61debounce/PreviousPosition_3[3]\, CLK
         => Clock03, Q => 
        \iobank61debounce/PreviousPosition[3]_net_1\);
    
    \ioBank61reader/parallelholdreg_RNO_0[0]\ : MX2
      port map(A => \ioBank61reader/parallelholdreg_7[0]\, B => 
        \ioBank61reader/parallelholdreg[0]_net_1\, S => 
        \ioBank61reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank61reader/N_38\);
    
    \A2D00reader/parallelholdreg_RNO_0[9]\ : MX2
      port map(A => \A2D00reader/parallelholdreg_7[9]\, B => 
        \A2D00reader/parallelholdreg[9]_net_1\, S => 
        \A2D00reader/parallelholdreg_1_sqmuxa\, Y => 
        \A2D00reader/N_100\);
    
    \A2D00reader/parallelholdreg_RNO_1[7]\ : OR2
      port map(A => \ohold50[7]\, B => SerialLoad_c, Y => 
        \A2D00reader/parallelholdreg_7[7]\);
    
    \ioBank62reader/cellindex_RNIM8GJ[1]\ : NOR3
      port map(A => \ioBank62reader/cellindex[0]_net_1\, B => 
        \ioBank62reader/cellindex[1]_net_1\, C => \internaddr[2]\, 
        Y => \ioBank62reader/parallelholdreg_0_sqmuxa_0\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I69_Y_0\ : MAJ3
      port map(A => \A2DRead/N_2033\, B => \A2DRead/N_2031\, C
         => \A2DRead/N180\, Y => \A2DRead/ADD_11x11_fast_I69_Y_0\);
    
    \A2DRead/DataRegU1Ch1f_RNIEC8SC_1[7]\ : MAJ3
      port map(A => \A2DRead/N_1521\, B => \A2DRead/N_1494\, C
         => \A2DRead/N_1519\, Y => \A2DRead/N_1526\);
    
    \iobank6Bdebounce/IOOut[0]\ : DFN1E0
      port map(D => \iobank6Bdebounce/IOOut_3[0]\, CLK => Clock03, 
        E => \iobank6Bdebounce/IOOut_0_sqmuxa\, Q => \ohold6B[0]\);
    
    \iobank68debounce/IOOut_RNO[2]\ : MX2B
      port map(A => \iobank68debounce/PreviousPosition[2]_net_1\, 
        B => \dhold68[2]\, S => LogicReset_c, Y => 
        \iobank68debounce/IOOut_3[2]\);
    
    \A2DRead/DataRegU1Ch1f_RNIGAVN[4]\ : XOR3
      port map(A => \A2DRead/N_1396\, B => 
        \A2DRead/DataRegU1Ch1f[4]_net_1\, C => \A2DRead/N_1394\, 
        Y => \A2DRead/N_1429\);
    
    \iobank61debounce/DebounceTimer_RNO[7]\ : XA1
      port map(A => \iobank61debounce/DebounceTimer_c6\, B => 
        \iobank61debounce/DebounceTimer[7]_net_1\, C => 
        \iobank61debounce/un1_previousposition7\, Y => 
        \iobank61debounce/DebounceTimer_n7\);
    
    \A2D01reader/parallelholdreg_RNO[3]\ : OR2
      port map(A => \A2D01reader/N_94\, B => LogicReset_c, Y => 
        \A2D01reader/parallelholdreg_RNO_0[3]_net_1\);
    
    \iobank66debounce/PreviousPosition_RNO[0]\ : MX2B
      port map(A => \iobank66debounce/CurrentPosition[0]_net_1\, 
        B => \dhold66[0]\, S => LogicReset_c, Y => 
        \iobank66debounce/PreviousPosition_3[0]\);
    
    \iobank69debounce/DebounceTimer[3]\ : DFN1E1
      port map(D => \iobank69debounce/DebounceTimer_n3\, CLK => 
        Clock03, E => \iobank69debounce/DebounceTimere\, Q => 
        \iobank69debounce/DebounceTimer[3]_net_1\);
    
    \A2DRead/DataRegU1Ch0g[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0f[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0g[2]_net_1\);
    
    \iobank69debounce/DebounceTimer_RNO[2]\ : XA1
      port map(A => \iobank69debounce/DebounceTimer[2]_net_1\, B
         => \iobank69debounce/DebounceTimer_c1\, C => 
        \iobank69debounce/un1_previousposition7\, Y => 
        \iobank69debounce/DebounceTimer_n2\);
    
    \A2DRead/DataRegU1Ch0m_RNIJ5711[1]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0m[1]_net_1\, B => 
        \A2DRead/DataRegU1Ch0n[1]_net_1\, C => 
        \A2DRead/DataRegU1Ch0o[1]_net_1\, Y => \A2DRead/N_1708\);
    
    \ioBank63reader/parallelholdreg_RNO_0[2]\ : MX2
      port map(A => \ioBank63reader/parallelholdreg_7[2]\, B => 
        \ioBank63reader/parallelholdreg[2]_net_1\, S => 
        \ioBank63reader/parallelholdreg_1_sqmuxa\, Y => 
        \ioBank63reader/N_25\);
    
    \Watch_Dog_Reset/timercount_RNIBLBP1[1]\ : NOR3B
      port map(A => \Watch_Dog_Reset/timercount[10]_net_1\, B => 
        \Watch_Dog_Reset/m40_e_1\, C => 
        \Watch_Dog_Reset/timercount[1]_net_1\, Y => 
        \Watch_Dog_Reset/m40_e_5\);
    
    \iobank60debounce/DebounceTimer[7]\ : DFN1E1
      port map(D => \iobank60debounce/DebounceTimer_n7\, CLK => 
        Clock03, E => \iobank60debounce/DebounceTimere\, Q => 
        \iobank60debounce/DebounceTimer[7]_net_1\);
    
    \ioBank69reader/cellindex[1]\ : DFN1
      port map(D => \ioBank69reader/cellindex_RNO_6[1]\, CLK => 
        SerialClock_c, Q => \ioBank69reader/cellindex[1]_net_1\);
    
    \A2DRead/DataRegU1Ch1p_RNI63HN1_0[11]\ : MAJ3
      port map(A => \A2DRead/N_1615\, B => \A2DRead/N_1619\, C
         => \A2DRead/N_1617\, Y => \A2DRead/N_1630\);
    
    \A2DRead/DataRegU1Ch0m[2]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0l[2]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0m[2]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNIFURN4[6]\ : OA1
      port map(A => \A2DRead/un60_dataregu1ch0_323_0\, B => 
        \A2DRead/un60_dataregu1ch0_408_0_tz_out\, C => 
        \A2DRead/N_1856\, Y => \A2DRead/un60_dataregu1ch0_408_0\);
    
    \heart_beat/un1_counter_1_m10\ : NOR3B
      port map(A => \heart_beat/counter[4]_net_1\, B => 
        \heart_beat/counter[5]_net_1\, C => \heart_beat/i5_mux\, 
        Y => \heart_beat/N_11_i\);
    
    \heart_beat/counter[9]\ : DFN1
      port map(D => \heart_beat/m30\, CLK => Clock04, Q => 
        \heart_beat/counter[9]_net_1\);
    
    \A2DRead/DataRegU1Ch0m_RNIPB711_0[3]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0o[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch0n[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch0m[3]_net_1\, Y => \A2DRead/N_1745\);
    
    \A2D00reader/dataout_RNO_7\ : MX2
      port map(A => \A2D00reader/parallelholdreg[0]_net_1\, B => 
        \A2D00reader/parallelholdreg[8]_net_1\, S => 
        \A2D00reader/cellindex[3]_net_1\, Y => \A2D00reader/N_69\);
    
    \ioBank6Areader/parallelholdreg_0_sqmuxa_3\ : NOR2B
      port map(A => \ioBank6Areader.parallelholdreg_0_sqmuxa_1\, 
        B => \ioBank6Breader.parallelholdreg_0_sqmuxa_4\, Y => 
        \ioBank6Areader/parallelholdreg_0_sqmuxa_3_0\);
    
    \A2D01reader/cellindex_RNO[3]\ : AX1C
      port map(A => \A2D01reader/cellindex_1_sqmuxa_1\, B => 
        \A2D01reader/cellindex[3]_net_1\, C => \A2D01reader/N_89\, 
        Y => \A2D01reader/cellindex_n3\);
    
    \ioBank62reader/parallelholdreg[0]\ : DFN1
      port map(D => \ioBank62reader/parallelholdreg_RNO_3[0]\, 
        CLK => Clock01, Q => 
        \ioBank62reader/parallelholdreg[0]_net_1\);
    
    \iobank62debounce/DebounceTimer_RNO_0[5]\ : NOR2B
      port map(A => \iobank62debounce/DebounceTimer_c3\, B => 
        \iobank62debounce/DebounceTimer[4]_net_1\, Y => 
        \iobank62debounce/DebounceTimer_c4\);
    
    \A2DRead/un60_dataregu1ch0_419_RNILK27N2_0\ : MAJ3
      port map(A => \A2DRead/N_1872\, B => \A2DRead/N_1847\, C
         => \A2DRead/N_1874\, Y => \A2DRead/N_1877\);
    
    \A2DRead/un60_dataregu1ch1_824_ADD_11x11_fast_I19_Y\ : AO1
      port map(A => \A2DRead/N168_0\, B => \A2DRead/N172_0\, C
         => \A2DRead/N171_0\, Y => \A2DRead/N196\);
    
    \A2DRead/DataRegU1Ch1j_RNIS5U31[6]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1j[6]_net_1\, B => 
        \A2DRead/DataRegU1Ch1l[6]_net_1\, C => 
        \A2DRead/DataRegU1Ch1k[6]_net_1\, Y => \A2DRead/N_1481\);
    
    \addresslatch/output[3]\ : DFN1
      port map(D => \addresslatch/output_RNO[3]_net_1\, CLK => 
        Clock01, Q => \internaddr[3]\);
    
    \discretedutycycle01/CellIndexUpdate.address_3\ : NOR3C
      port map(A => \discretedutycycle01/address_1\, B => 
        \discretedutycycle01/address_0\, C => 
        \A2D01reader.parallelholdreg_0_sqmuxa_5\, Y => 
        \discretedutycycle01/address_3\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I24_Y\ : NOR2B
      port map(A => \A2DRead/N163_0\, B => \A2DRead/N166\, Y => 
        \A2DRead/N201\);
    
    \A2DRead/DataRegU1Ch1k[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1j[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0k_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1k[12]_net_1\);
    
    \bitcontrol01latch/cellindex_1_sqmuxa\ : AOI1
      port map(A => \bitcontrol01latch/un26_address_2\, B => 
        \firmware.N_76\, C => LogicReset_c, Y => 
        \bitcontrol01latch/cellindex_1_sqmuxa_net_1\);
    
    \A2DRead/DataRegU1Ch1c_RNIRPSC_0[2]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1e[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch1d[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch1c[2]_net_1\, Y => \A2DRead/N_1372\);
    
    \A2D01reader/parallelholdreg_RNO[10]\ : OR2
      port map(A => \A2D01reader/N_101\, B => LogicReset_c, Y => 
        \A2D01reader/parallelholdreg_RNO_0[10]_net_1\);
    
    \iobank63debounce/CurrentPosition[0]\ : DFN1
      port map(D => \dhold63_i[0]\, CLK => Clock03, Q => 
        \iobank63debounce/CurrentPosition[0]_net_1\);
    
    \A2DRead/DataRegU1Ch0g_RNIQ9NFL2_0[10]\ : MAJ3
      port map(A => \A2DRead/N_1956\, B => \A2DRead/N_1931\, C
         => \A2DRead/N_1958\, Y => \A2DRead/N_1961\);
    
    \iobank67debounce/DebounceTimer_RNI3P3O[2]\ : NOR3C
      port map(A => \iobank67debounce/DebounceTimer_c1\, B => 
        \iobank67debounce/DebounceTimer_m2_0_a2_1\, C => 
        \iobank67debounce/DebounceTimer_m2_0_a2_2\, Y => 
        \iobank67debounce/DebounceTimer_c6\);
    
    \iobank62debounce/DebounceTimer_RNO[2]\ : XA1
      port map(A => \iobank62debounce/DebounceTimer[2]_net_1\, B
         => \iobank62debounce/DebounceTimer_c1\, C => 
        \iobank62debounce/un1_previousposition7\, Y => 
        \iobank62debounce/DebounceTimer_n2\);
    
    \A2DRead/step_RNILV912_0[3]\ : NOR3C
      port map(A => \A2DRead/step[4]_net_1\, B => 
        \A2DRead/step[3]_net_1\, C => \A2DRead/N_42\, Y => 
        \A2DRead/N_55_mux\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I30_Y\ : OA1
      port map(A => \A2DRead/N_1820\, B => \A2DRead/N_1793\, C
         => \A2DRead/N157_0\, Y => \A2DRead/N207\);
    
    \A2DRead/DataRegU1Ch0h[12]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0g[12]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0h[12]_net_1\);
    
    \A2DRead/DataRegU1Ch0f_RNIGD4KG_0[5]\ : MAJ3
      port map(A => \A2DRead/N_1840\, B => \A2DRead/N_1813\, C
         => \A2DRead/N_1838\, Y => \A2DRead/N_1845\);
    
    \A2DRead/DataRegU1Ch0d_RNIRGAG_0[3]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0e[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch0d[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch0c[3]_net_1\, Y => \A2DRead/N_1741\);
    
    \iobank68debounce/Changing\ : DFN1E0
      port map(D => \iobank68debounce/Changing_0\, CLK => Clock03, 
        E => LogicReset_c, Q => \iobank68debounce/Changing_net_1\);
    
    \discretedutycycle01/cellindex_RNIH8OL[1]\ : NOR2B
      port map(A => \discretedutycycle01/cellindex[1]_net_1\, B
         => \discretedutycycle01/cellindex[0]_net_1\, Y => 
        \discretedutycycle01/cellindex_c1\);
    
    \A2DRead/DataRegU1Ch1d[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1c[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0d_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1d[8]_net_1\);
    
    \externenablelatch/output_RNO[6]\ : NOR2A
      port map(A => \externenablelatch/N_52\, B => LogicReset_c, 
        Y => \externenablelatch/output_RNO_0[6]_net_1\);
    
    \A2D00reader/parallelholdreg[8]\ : DFN1
      port map(D => \A2D00reader/parallelholdreg_RNO[8]_net_1\, 
        CLK => Clock01, Q => 
        \A2D00reader/parallelholdreg[8]_net_1\);
    
    \matrix_read04/stage[0]\ : DFN1
      port map(D => \matrix_read04/N_58\, CLK => Clock03, Q => 
        \matrix_read04/stage[0]_net_1\);
    
    \iobank61debounce/DebounceTimer_RNIPU26[1]\ : NOR2B
      port map(A => \iobank61debounce/DebounceTimer[0]_net_1\, B
         => \iobank61debounce/DebounceTimer[1]_net_1\, Y => 
        \iobank61debounce/DebounceTimer_c1\);
    
    \matrix_read04/data01[0]\ : DFN1E1
      port map(D => \inputs67_c[0]\, CLK => Clock03, E => 
        \matrix_read04/ctrl12\, Q => 
        \matrix_read04/data01[0]_net_1\);
    
    \ioBank62reader/cellindex_RNI6TF71[1]\ : NOR3C
      port map(A => \ioBank62reader/parallelholdreg_0_sqmuxa_2\, 
        B => \firmware.N_70\, C => 
        \ioBank6Breader.parallelholdreg_0_sqmuxa_3\, Y => 
        \ioBank62reader/parallelholdreg_0_sqmuxa_4_0\);
    
    \A2DRead/DataRegU1Ch0e[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0d[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0e_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0e[6]_net_1\);
    
    \A2DRead/DataRegU1Ch0m[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0l[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0m_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0m[7]_net_1\);
    
    \A2DRead/DataRegU1Ch1b[8]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1a[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0b_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1b[8]_net_1\);
    
    \A2DRead/DataRegU1Ch0n[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0m[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0n_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0n[5]_net_1\);
    
    \iobank65debounce/DebounceTimer[7]\ : DFN1E1
      port map(D => \iobank65debounce/DebounceTimer_n7\, CLK => 
        Clock03, E => \iobank65debounce/DebounceTimere\, Q => 
        \iobank65debounce/DebounceTimer[7]_net_1\);
    
    \A2DRead/DataRegU1Ch1p_RNIN4J4[9]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch1b[9]_net_1\, B => 
        \A2DRead/DataRegU1Ch1p[9]_net_1\, C => 
        \A2DRead/DataRegU1Ch1a[9]_net_1\, Y => \A2DRead/N_1561\);
    
    \iobank6Adebounce/IOOut_RNO[1]\ : MX2B
      port map(A => \iobank6Adebounce/PreviousPosition[1]_net_1\, 
        B => \dhold6A[1]\, S => LogicReset_c, Y => 
        \iobank6Adebounce/IOOut_3[1]\);
    
    \firmware/cellindex_RNIE0GV2[1]\ : OR3B
      port map(A => \ioBank62reader.parallelholdreg_0_sqmuxa_4\, 
        B => \firmware/N_42\, C => 
        \firmware/un1_reset_0_o2_3_net_1\, Y => \firmware/N_14\);
    
    \iobank6Adebounce/CurrentPosition[1]\ : DFN1
      port map(D => \dhold6A_i[1]\, CLK => Clock03, Q => 
        \iobank6Adebounce/CurrentPosition[1]_net_1\);
    
    \iobank68debounce/IOOut_RNO[0]\ : MX2B
      port map(A => \iobank68debounce/PreviousPosition[0]_net_1\, 
        B => \dhold68[0]\, S => LogicReset_c, Y => 
        \iobank68debounce/IOOut_3[0]\);
    
    \A2DRead/DataRegU1Ch0g_RNIAOFD[4]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0g[4]_net_1\, B => 
        \A2DRead/DataRegU1Ch0i[4]_net_1\, C => 
        \A2DRead/DataRegU1Ch0h[4]_net_1\, Y => \A2DRead/N_1774\);
    
    \iobank63debounce/Changing_RNO\ : XOR2
      port map(A => \iobank63debounce/CurrentPosition[0]_net_1\, 
        B => \iobank63debounce/PreviousPosition[0]_net_1\, Y => 
        \iobank63debounce/Changing_0\);
    
    \discretedutycycle01/output_RNO_0[9]\ : MX2
      port map(A => \dutycycle01[9]\, B => 
        \discretedutycycle01/paralleldata[9]_net_1\, S => 
        \discretedutycycle01/output_0_sqmuxa_0_net_1\, Y => 
        \discretedutycycle01/N_69\);
    
    \A2DRead/DataRegU1Ch0g_RNIBD362_0[6]\ : MAJ3
      port map(A => \A2DRead/N_1827\, B => \A2DRead/N_1831\, C
         => \A2DRead/N_1829\, Y => \A2DRead/N_1863\);
    
    \A2DRead/DataRegU1Ch0o_RNIKCLA2[10]\ : XOR3
      port map(A => \A2DRead/N_1936\, B => \A2DRead/N_1934\, C
         => \A2DRead/N_1938\, Y => \A2DRead/N_1948\);
    
    \A2DRead/DataRegU1Ch0d_RNI1NAG[5]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0c[5]_net_1\, B => 
        \A2DRead/DataRegU1Ch0e[5]_net_1\, C => 
        \A2DRead/DataRegU1Ch0d[5]_net_1\, Y => \A2DRead/N_1794\);
    
    \A2DRead/DataRegU1Ch1f_RNIGA4SC_1[5]\ : MAJ3
      port map(A => \A2DRead/N_1465\, B => \A2DRead/N_1438\, C
         => \A2DRead/N_1463\, Y => \A2DRead/N_1470\);
    
    \heart_beat/HeartBeatOut_RNO_0\ : OA1C
      port map(A => \heart_beat/counter[11]_net_1\, B => 
        \heart_beat/un1_counterlt11\, C => 
        \heart_beat/counter[12]_net_1\, Y => 
        \heart_beat/un1_counterlt15\);
    
    \SerialOut_pad/U0/U0\ : IOPAD_TRI
      port map(D => \SerialOut_pad/U0/NET1\, E => 
        \SerialOut_pad/U0/NET2\, PAD => SerialOut);
    
    \A2DRead/DataRegU1Ch0g_RNINJQC[12]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0g[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch0i[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch0h[12]_net_1\, Y => \A2DRead/N_1998\);
    
    \A2DRead/DataRegU1Ch1p[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1o[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0p_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1p[5]_net_1\);
    
    \ioBank67reader/dataout_RNO\ : OR3
      port map(A => \ioBank67reader/parallelholdreg_m[2]\, B => 
        \ioBank67reader/parallelholdreg_m[1]\, C => 
        \ioBank67reader/dataout_0_1\, Y => 
        \ioBank67reader/dataout_RNO_9\);
    
    \A2DRead/DataRegU1Ch0m_RNI8R711_0[8]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0o[8]_net_1\, B => 
        \A2DRead/DataRegU1Ch0n[8]_net_1\, C => 
        \A2DRead/DataRegU1Ch0m[8]_net_1\, Y => \A2DRead/N_1883\);
    
    \A2DRead/DataRegU1Ch0d_RNIU27V7[7]\ : XOR3
      port map(A => \A2DRead/N_1862\, B => \A2DRead/N_1864\, C
         => \A2DRead/N_1839\, Y => \A2DRead/N_1870\);
    
    \iobank65debounce/DebounceTimer_RNO[8]\ : NOR3C
      port map(A => \iobank65debounce/un1_previousposition7\, B
         => \iobank65debounce/DebounceTimer[7]_net_1\, C => 
        \iobank65debounce/DebounceTimer_c6\, Y => 
        \iobank65debounce/N_48\);
    
    \heart_beat/counter[11]\ : DFN1
      port map(D => \heart_beat/m28\, CLK => Clock04, Q => 
        \heart_beat/counter[11]_net_1\);
    
    \A2DRead/DataRegU1Ch0g[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0f[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0g[5]_net_1\);
    
    \AN1DimControl_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => AN1DimControl_c, E => \VCC\, DOUT => 
        \AN1DimControl_pad/U0/NET1\, EOUT => 
        \AN1DimControl_pad/U0/NET2\);
    
    \A2DRead/DataRegU1Ch0g_RNIS4R52[7]\ : AO1
      port map(A => \A2DRead/N_1795\, B => \A2DRead/N_1797\, C
         => \A2DRead/N_1858\, Y => 
        \A2DRead/un60_dataregu1ch0_408_0_tz_out\);
    
    \A2DRead/DataRegU1Ch0p_RNIIVRN_0[12]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0b[12]_net_1\, B => 
        \A2DRead/DataRegU1Ch0a[12]_net_1\, C => 
        \A2DRead/DataRegU1Ch0p[12]_net_1\, Y => \A2DRead/N_1993\);
    
    \A2DRead/DataRegU1Ch0g_RNIIOCLB_0[12]\ : MAJ3
      port map(A => \A2DRead/N_2019\, B => \A2DRead/N_2023\, C
         => \A2DRead/N_2021\, Y => \A2DRead/N_2031\);
    
    \discretedutycycle01/paralleldata_RNO_1[5]\ : NOR3C
      port map(A => \discretedutycycle01/un1_paralleldata_1[9]\, 
        B => \discretedutycycle01/output_0_sqmuxa_net_1\, C => 
        \discretedutycycle01/un1_paralleldata_2[7]\, Y => 
        \discretedutycycle01/N_132\);
    
    \iobank68debounce/DebounceTimer_RNO[6]\ : XA1
      port map(A => \iobank68debounce/DebounceTimer_c5\, B => 
        \iobank68debounce/DebounceTimer[6]_net_1\, C => 
        \iobank68debounce/un1_previousposition7\, Y => 
        \iobank68debounce/DebounceTimer_n6\);
    
    \A2DRead/DataRegU1Ch0a[5]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[5]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch0a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0a[5]_net_1\);
    
    \A2DRead/DataRegU1Ch0c[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0b[4]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0c_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0c[4]_net_1\);
    
    \ioBank63reader/parallelholdreg_RNO_1[0]\ : OR2
      port map(A => \ohold63[0]\, B => SerialLoad_c, Y => 
        \ioBank63reader/parallelholdreg_7[0]\);
    
    \A2DRead/DataRegU1Ch0a[10]\ : DFN1E1
      port map(D => \A2DRead/DataInReg[10]_net_1\, CLK => Clock04, 
        E => \A2DRead/DataRegU1Ch0a_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0a[10]_net_1\);
    
    \A2DRead/DataRegU1Ch1g[6]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1f[6]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0g_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1g[6]_net_1\);
    
    \discretedutycycle01/output[11]\ : DFN1
      port map(D => \discretedutycycle01/output_RNO[11]_net_1\, 
        CLK => Clock01, Q => \dutycycle01[11]\);
    
    \A2DRead/DataRegU1Ch0f[11]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch0e[11]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0f_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch0f[11]_net_1\);
    
    \addresslatch/output_RNO_0[4]\ : MX2
      port map(A => \addresslatch/paralleldata[4]_net_1\, B => 
        \internaddr[4]\, S => Ale_c, Y => \addresslatch/N_55\);
    
    \A2DRead/DataRegU1Ch1l[7]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1k[7]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0l_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1l[7]_net_1\);
    
    \A2DRead/un60_dataregu1ch0_824_ADD_11x11_fast_I70_un1_Y\ : 
        NOR3C
      port map(A => \A2DRead/N216\, B => \A2DRead/N224_0\, C => 
        \A2DRead/N231\, Y => \A2DRead/I70_un1_Y\);
    
    \A2D01reader/cellindex[3]\ : DFN1
      port map(D => \A2D01reader/cellindex_n3\, CLK => 
        SerialClock_c, Q => \A2D01reader/cellindex[3]_net_1\);
    
    \bitcontrol01latch/output_RNO_0[0]\ : MX2
      port map(A => \bitcontrol01latch/bitcontrol01[0]\, B => 
        \bitcontrol01latch/paralleldata[0]_net_1\, S => 
        \bitcontrol01latch/output_0_sqmuxa_net_1\, Y => 
        \bitcontrol01latch/N_44\);
    
    \A2DRead/step_RNI3L2F4_5[3]\ : NOR3C
      port map(A => \A2DRead/DataRegU1Ch0o_1_sqmuxa_0_a3_0\, B
         => \A2DRead/N_119\, C => \A2DRead/N_128\, Y => 
        \A2DRead/DataRegU1Ch0o_1_sqmuxa\);
    
    \A2DRead/DataRegU1Ch1o_RNISNPT_0[3]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch1o[3]_net_1\, B => 
        \A2DRead/DataRegU1Ch1n[3]_net_1\, C => 
        \A2DRead/DataRegU1Ch1m[3]_net_1\, Y => \A2DRead/N_1398\);
    
    \A2DRead/DataRegU1Ch1f_RNISDT25_0[10]\ : MAJ3
      port map(A => \A2DRead/N_1597\, B => \A2DRead/N_1572\, C
         => \A2DRead/N_1574\, Y => \A2DRead/N_1606\);
    
    \A2DRead/DataRegU1Ch0j_RNIDDBN[2]\ : XOR3
      port map(A => \A2DRead/DataRegU1Ch0j[2]_net_1\, B => 
        \A2DRead/DataRegU1Ch0l[2]_net_1\, C => 
        \A2DRead/DataRegU1Ch0k[2]_net_1\, Y => \A2DRead/N_1724\);
    
    \A2DRead/DataRegU1Ch0g_RNI8HV57[11]\ : XOR3
      port map(A => \A2DRead/N_2002\, B => \A2DRead/N_2004\, C
         => \A2DRead/N_1979\, Y => \A2DRead/N_2010\);
    
    SerialOut_pad_RNO_2 : NOR3C
      port map(A => SerialOut_2, B => SerialOut_1, C => 
        SerialOut_7, Y => SerialOut_11);
    
    \snkpout01/PWMOut_3_0_I_24\ : XNOR2
      port map(A => \snkpout01/counter[5]_net_1\, B => 
        \dutycycle01[5]\, Y => \snkpout01/DWACT_BL_EQUAL_0_E[0]\);
    
    \iobank60debounce/DebounceTimer[3]\ : DFN1E1
      port map(D => \iobank60debounce/DebounceTimer_n3\, CLK => 
        Clock03, E => \iobank60debounce/DebounceTimere\, Q => 
        \iobank60debounce/DebounceTimer[3]_net_1\);
    
    \iobank60debounce/DebounceTimer_RNO[2]\ : XA1
      port map(A => \iobank60debounce/DebounceTimer[2]_net_1\, B
         => \iobank60debounce/DebounceTimer_c1\, C => 
        \iobank60debounce/un1_previousposition7\, Y => 
        \iobank60debounce/DebounceTimer_n2\);
    
    \iobank6Adebounce/PreviousPosition_RNO[0]\ : MX2B
      port map(A => \iobank6Adebounce/CurrentPosition[0]_net_1\, 
        B => \dhold6A[0]\, S => LogicReset_c, Y => 
        \iobank6Adebounce/PreviousPosition_3[0]\);
    
    \discretedutycycle01/paralleldata_RNO[1]\ : NOR2A
      port map(A => \discretedutycycle01/N_128_mux\, B => 
        LogicReset_c, Y => 
        \discretedutycycle01/paralleldata_RNO_3[1]\);
    
    \A2DRead/DataRegU1Ch0p_RNIEI081_0[7]\ : MAJ3
      port map(A => \A2DRead/DataRegU1Ch0b[7]_net_1\, B => 
        \A2DRead/DataRegU1Ch0a[7]_net_1\, C => 
        \A2DRead/DataRegU1Ch0p[7]_net_1\, Y => \A2DRead/N_1853\);
    
    \iobank69debounce/Changing_RNO\ : XOR2
      port map(A => \iobank69debounce/PreviousPosition[0]_net_1\, 
        B => \iobank69debounce/CurrentPosition[0]_net_1\, Y => 
        \iobank69debounce/Changing_net_1\);
    
    \A2D00reader/parallelholdreg_RNO[3]\ : OR2
      port map(A => \A2D00reader/N_94\, B => LogicReset_c, Y => 
        \A2D00reader/parallelholdreg_RNO[3]_net_1\);
    
    \pwmdisable01latch/cellindex_RNO[1]\ : XA1
      port map(A => \pwmdisable01latch/cellindex[1]_net_1\, B => 
        \pwmdisable01latch/cellindex[0]_net_1\, C => 
        \ioBank60reader.cellindex_1_sqmuxa_1_1\, Y => 
        \pwmdisable01latch/cellindex_n1\);
    
    \ioBank60reader/parallelholdreg[1]\ : DFN1
      port map(D => 
        \ioBank60reader/parallelholdreg_RNO_1[1]_net_1\, CLK => 
        Clock01, Q => \ioBank60reader/parallelholdreg[1]_net_1\);
    
    \clock_master/counter_4_I_6\ : AND2
      port map(A => \counter[1]\, B => LogicReset_c, Y => 
        \clock_master/DWACT_ADD_CI_0_g_array_0_1_1[0]\);
    
    \externenablelatch/paralleldata_RNO_1[3]\ : NOR2B
      port map(A => \externenablelatch/paralleldata_0_e_0[3]\, B
         => \externenablelatch/cellindex_c1\, Y => 
        \externenablelatch/N_95\);
    
    \iobank69debounce/DebounceTimer[6]\ : DFN1E1
      port map(D => \iobank69debounce/DebounceTimer_n6\, CLK => 
        Clock03, E => \iobank69debounce/DebounceTimere\, Q => 
        \iobank69debounce/DebounceTimer[6]_net_1\);
    
    \iobank66debounce/DebounceTimer[4]\ : DFN1E1
      port map(D => \iobank66debounce/DebounceTimer_n4\, CLK => 
        Clock03, E => \iobank66debounce/DebounceTimere\, Q => 
        \iobank66debounce/DebounceTimer[4]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIH92SC_1[3]\ : MIN3
      port map(A => \A2DRead/N_1437\, B => \A2DRead/N_1435\, C
         => \A2DRead/N_1412\, Y => \A2DRead/un60_i1_mux_1\);
    
    \ioBank6Breader/parallelholdreg[1]\ : DFN1
      port map(D => \ioBank6Breader/parallelholdreg_RNO_12[1]\, 
        CLK => Clock01, Q => 
        \ioBank6Breader/parallelholdreg[1]_net_1\);
    
    \A2DRead/DatHldRegU1Ch1[4]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1[8]_net_1\, CLK => 
        Clock04, E => \A2DRead/DatHldRegU1Ch1_1_sqmuxa\, Q => 
        \ohold51[3]\);
    
    \ioBank62reader/parallelholdreg_RNO_1[2]\ : OR2
      port map(A => \ohold62[2]\, B => SerialLoad_c, Y => 
        \ioBank62reader/parallelholdreg_7[2]\);
    
    \matrix_read04/stage_RNI3V3_0[4]\ : NOR2A
      port map(A => \matrix_read04/stage[4]_net_1\, B => 
        \matrix_read04/stage[3]_net_1\, Y => \matrix_read04/N_64\);
    
    \A2DRead/DataRegU1Ch1h[5]\ : DFN1E1
      port map(D => \A2DRead/DataRegU1Ch1g[5]_net_1\, CLK => 
        Clock04, E => \A2DRead/DataRegU1Ch0h_1_sqmuxa\, Q => 
        \A2DRead/DataRegU1Ch1h[5]_net_1\);
    
    \iobank61debounce/IOOut[1]\ : DFN1E0
      port map(D => \iobank61debounce/IOOut_8[1]\, CLK => Clock03, 
        E => \iobank61debounce/IOOut_0_sqmuxa\, Q => \ohold61[1]\);
    
    \iobank68debounce/DebounceTimer_RNO[3]\ : XA1
      port map(A => \iobank68debounce/DebounceTimer_c2\, B => 
        \iobank68debounce/DebounceTimer[3]_net_1\, C => 
        \iobank68debounce/un1_previousposition7\, Y => 
        \iobank68debounce/DebounceTimer_n3\);
    
    \A2DRead/DataRegU1Ch0f_RNI9EKQ1[4]\ : XOR3
      port map(A => \A2DRead/N_1743\, B => 
        \A2DRead/DataRegU1Ch0f[4]_net_1\, C => \A2DRead/N_1741\, 
        Y => \A2DRead/N_1776\);
    
    \matrix_read04/dataOut04[2]\ : DFN1
      port map(D => \matrix_read04/data04[2]_net_1\, CLK => 
        Clock03, Q => \dhold6B[2]\);
    
    \addresslatch/paralleldata[4]\ : DFN1
      port map(D => \addresslatch/paralleldata_RNO[4]_net_1\, CLK
         => SerialClock_c, Q => 
        \addresslatch/paralleldata[4]_net_1\);
    
    \addresslatch/paralleldata_RNO_1[3]\ : NOR2B
      port map(A => \addresslatch/paralleldata_0_e_0[1]\, B => 
        \addresslatch/cellindex_c1\, Y => \addresslatch/N_86\);
    
    \ioBank6Breader/parallelholdreg_RNO_1[1]\ : OR2
      port map(A => \ohold6B[1]\, B => SerialLoad_c, Y => 
        \ioBank6Breader/parallelholdreg_7[1]\);
    
    \A2D01reader/parallelholdreg[5]\ : DFN1
      port map(D => \A2D01reader/parallelholdreg_RNO_0[5]_net_1\, 
        CLK => Clock01, Q => 
        \A2D01reader/parallelholdreg[5]_net_1\);
    
    \A2DRead/DataRegU1Ch1f_RNIT6APP1[6]\ : AO1
      port map(A => \A2DRead/N_1551\, B => \A2DRead/N_1526\, C
         => \A2DRead/un60_dataregu1ch1_498_0\, Y => 
        \A2DRead/N_1556\);
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH; 
