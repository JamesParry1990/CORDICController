--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: Controller_synthesis.vhd
-- /___/   /\     Timestamp: Wed Jun 11 13:25:57 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Controller -w -dir netgen/synthesis -ofmt vhdl -sim Controller.ngc Controller_synthesis.vhd 
-- Device	: xc3s100e-5-cp132
-- Input file	: Controller.ngc
-- Output file	: \\samba.engr.uvic.ca\home\kloftis\CENG 441\CORDICController\netgen\synthesis\Controller_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Controller
-- Xilinx	: C:\Xilinx\13.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Controller is
  port (
    clk : in STD_LOGIC := 'X'; 
    start : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    t : out STD_LOGIC; 
    op : out STD_LOGIC; 
    load : out STD_LOGIC; 
    done : in STD_LOGIC := 'X'; 
    i : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    m : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    code : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end Controller;

architecture Structure of Controller is
  signal Mtridata_i_not0001 : STD_LOGIC; 
  signal Mtridata_load_9 : STD_LOGIC; 
  signal Mtridata_load_not0001 : STD_LOGIC; 
  signal Mtridata_op_13 : STD_LOGIC; 
  signal Mtridata_op_not0001 : STD_LOGIC; 
  signal Mtrien_i_21 : STD_LOGIC; 
  signal Mtrien_i_mux0000 : STD_LOGIC; 
  signal Mtrien_i_not0001_23 : STD_LOGIC; 
  signal Mtrien_load_24 : STD_LOGIC; 
  signal Mtrien_load_mux0000 : STD_LOGIC; 
  signal Mtrien_load_not0001 : STD_LOGIC; 
  signal Mtrien_m_27 : STD_LOGIC; 
  signal Mtrien_op_28 : STD_LOGIC; 
  signal Mtrien_op_mux0000 : STD_LOGIC; 
  signal Mtrien_op_not0001 : STD_LOGIC; 
  signal Mtrien_state_31 : STD_LOGIC; 
  signal Mtrien_state_mux0000_32 : STD_LOGIC; 
  signal Mtrien_t_33 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal clk_BUFGP_49 : STD_LOGIC; 
  signal code_0_IBUF_53 : STD_LOGIC; 
  signal code_1_IBUF_54 : STD_LOGIC; 
  signal code_2_IBUF_55 : STD_LOGIC; 
  signal counter_cmp_eq0000 : STD_LOGIC; 
  signal counter_not0002 : STD_LOGIC; 
  signal done_IBUF_67 : STD_LOGIC; 
  signal rst_IBUF_77 : STD_LOGIC; 
  signal start_IBUF_79 : STD_LOGIC; 
  signal Mtridata_i : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Mtridata_i_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Mtridata_m : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Mtridata_state : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Mtridata_state_mux0000 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal counter : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal counter_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  counter_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_49,
      CE => counter_not0002,
      D => counter_mux0000(0),
      R => rst_IBUF_77,
      Q => counter(0)
    );
  counter_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_49,
      CE => counter_not0002,
      D => counter_mux0000(1),
      R => rst_IBUF_77,
      Q => counter(1)
    );
  counter_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_49,
      CE => counter_not0002,
      D => counter_mux0000(2),
      R => rst_IBUF_77,
      Q => counter(2)
    );
  counter_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_49,
      CE => counter_not0002,
      D => counter_mux0000(3),
      R => rst_IBUF_77,
      Q => counter(3)
    );
  Mtridata_op : FDE
    port map (
      C => clk_BUFGP_49,
      CE => Mtridata_op_not0001,
      D => code_2_IBUF_55,
      Q => Mtridata_op_13
    );
  Mtridata_i_0 : FDE
    port map (
      C => clk_BUFGP_49,
      CE => Mtridata_i_not0001,
      D => Mtridata_i_mux0000(3),
      Q => Mtridata_i(0)
    );
  Mtridata_i_1 : FDE
    port map (
      C => clk_BUFGP_49,
      CE => Mtridata_i_not0001,
      D => Mtridata_i_mux0000(2),
      Q => Mtridata_i(1)
    );
  Mtridata_i_2 : FDE
    port map (
      C => clk_BUFGP_49,
      CE => Mtridata_i_not0001,
      D => Mtridata_i_mux0000(1),
      Q => Mtridata_i(2)
    );
  Mtridata_i_3 : FDE
    port map (
      C => clk_BUFGP_49,
      CE => Mtridata_i_not0001,
      D => Mtridata_i_mux0000(0),
      Q => Mtridata_i(3)
    );
  Mtridata_m_0 : FDE
    port map (
      C => clk_BUFGP_49,
      CE => Mtridata_op_not0001,
      D => code_0_IBUF_53,
      Q => Mtridata_m(0)
    );
  Mtridata_m_1 : FDE
    port map (
      C => clk_BUFGP_49,
      CE => Mtridata_op_not0001,
      D => code_1_IBUF_54,
      Q => Mtridata_m(1)
    );
  Mtrien_load : FDE
    port map (
      C => clk_BUFGP_49,
      CE => Mtrien_load_not0001,
      D => Mtrien_load_mux0000,
      Q => Mtrien_load_24
    );
  Mtridata_state_0 : FD
    port map (
      C => clk_BUFGP_49,
      D => Mtridata_state_mux0000(2),
      Q => Mtridata_state(0)
    );
  Mtridata_state_1 : FD
    port map (
      C => clk_BUFGP_49,
      D => Mtridata_state_mux0000(1),
      Q => Mtridata_state(1)
    );
  Mtridata_state_2 : FD
    port map (
      C => clk_BUFGP_49,
      D => Mtridata_state_mux0000(0),
      Q => Mtridata_state(2)
    );
  Mtrien_op : FDE
    port map (
      C => clk_BUFGP_49,
      CE => Mtrien_op_not0001,
      D => Mtrien_op_mux0000,
      Q => Mtrien_op_28
    );
  Mtrien_i : FDE
    port map (
      C => clk_BUFGP_49,
      CE => Mtrien_i_not0001_23,
      D => Mtrien_i_mux0000,
      Q => Mtrien_i_21
    );
  Mtrien_state : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_49,
      D => Mtrien_state_mux0000_32,
      Q => Mtrien_state_31
    );
  Mtrien_m : FDE
    port map (
      C => clk_BUFGP_49,
      CE => Mtrien_op_not0001,
      D => Mtrien_op_mux0000,
      Q => Mtrien_m_27
    );
  Mtrien_t : FDE
    port map (
      C => clk_BUFGP_49,
      CE => Mtrien_op_not0001,
      D => Mtrien_op_mux0000,
      Q => Mtrien_t_33
    );
  Mtridata_load : FDE
    port map (
      C => clk_BUFGP_49,
      CE => Mtridata_load_not0001,
      D => state(0),
      Q => Mtridata_load_9
    );
  Mtrien_i_mux00001 : LUT4
    generic map(
      INIT => X"FF45"
    )
    port map (
      I0 => state(1),
      I1 => counter_cmp_eq0000,
      I2 => done_IBUF_67,
      I3 => rst_IBUF_77,
      O => Mtrien_i_mux0000
    );
  Mtridata_i_not00011 : LUT4
    generic map(
      INIT => X"00A8"
    )
    port map (
      I0 => done_IBUF_67,
      I1 => state(2),
      I2 => N38,
      I3 => state(0),
      O => Mtridata_i_not0001
    );
  Mtrien_state_mux0000_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => start_IBUF_79,
      I1 => done_IBUF_67,
      O => N9
    );
  Mtrien_state_mux0000 : LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => Mtrien_state_31,
      I1 => N9,
      I2 => counter_cmp_eq0000,
      I3 => rst_IBUF_77,
      O => Mtrien_state_mux0000_32
    );
  state_0_LogicTrst1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Mtridata_state(0),
      I1 => Mtrien_state_31,
      O => state(0)
    );
  Mtridata_state_mux0000_0_Q : LUT4
    generic map(
      INIT => X"B8F8"
    )
    port map (
      I0 => state(1),
      I1 => done_IBUF_67,
      I2 => Mtridata_state(2),
      I3 => N18,
      O => Mtridata_state_mux0000(0)
    );
  Mtrien_op_not00011 : LUT3
    generic map(
      INIT => X"AB"
    )
    port map (
      I0 => rst_IBUF_77,
      I1 => state(0),
      I2 => N40,
      O => Mtrien_op_not0001
    );
  Mtrien_load_not00011 : LUT4
    generic map(
      INIT => X"EAEF"
    )
    port map (
      I0 => rst_IBUF_77,
      I1 => start_IBUF_79,
      I2 => state(0),
      I3 => N5,
      O => Mtrien_load_not0001
    );
  start_IBUF : IBUF
    port map (
      I => start,
      O => start_IBUF_79
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_77
    );
  done_IBUF : IBUF
    port map (
      I => done,
      O => done_IBUF_67
    );
  code_2_IBUF : IBUF
    port map (
      I => code(2),
      O => code_2_IBUF_55
    );
  code_1_IBUF : IBUF
    port map (
      I => code(1),
      O => code_1_IBUF_54
    );
  code_0_IBUF : IBUF
    port map (
      I => code(0),
      O => code_0_IBUF_53
    );
  t_OBUFT : OBUFT
    port map (
      I => Mtridata_m(0),
      T => Mtrien_t_33,
      O => t
    );
  op_OBUFT : OBUFT
    port map (
      I => Mtridata_op_13,
      T => Mtrien_op_28,
      O => op
    );
  load_OBUFT : OBUFT
    port map (
      I => Mtridata_load_9,
      T => Mtrien_load_24,
      O => load
    );
  i_3_OBUFT : OBUFT
    port map (
      I => Mtridata_i(3),
      T => Mtrien_i_21,
      O => i(3)
    );
  i_2_OBUFT : OBUFT
    port map (
      I => Mtridata_i(2),
      T => Mtrien_i_21,
      O => i(2)
    );
  i_1_OBUFT : OBUFT
    port map (
      I => Mtridata_i(1),
      T => Mtrien_i_21,
      O => i(1)
    );
  i_0_OBUFT : OBUFT
    port map (
      I => Mtridata_i(0),
      T => Mtrien_i_21,
      O => i(0)
    );
  m_1_OBUFT : OBUFT
    port map (
      I => Mtridata_m(1),
      T => Mtrien_m_27,
      O => m(1)
    );
  m_0_OBUFT : OBUFT
    port map (
      I => Mtridata_m(0),
      T => Mtrien_m_27,
      O => m(0)
    );
  Mtridata_state_mux0000_1_SW2 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => done_IBUF_67,
      I1 => Mtrien_state_31,
      I2 => Mtridata_state(2),
      I3 => N39,
      O => N23
    );
  Mtridata_state_mux0000_1_Q : LUT4
    generic map(
      INIT => X"E0EC"
    )
    port map (
      I0 => start_IBUF_79,
      I1 => Mtridata_state(1),
      I2 => state(0),
      I3 => N23,
      O => Mtridata_state_mux0000(1)
    );
  Mtridata_state_mux0000_2_SW0 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => start_IBUF_79,
      I1 => Mtridata_state(1),
      I2 => Mtrien_state_31,
      I3 => done_IBUF_67,
      O => N20
    );
  Mtridata_op_not00011_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => Mtridata_state(0),
      I1 => done_IBUF_67,
      I2 => Mtrien_state_31,
      O => N25
    );
  Mtridata_op_not00011 : LUT4
    generic map(
      INIT => X"3320"
    )
    port map (
      I0 => counter_cmp_eq0000,
      I1 => N25,
      I2 => N37,
      I3 => state(1),
      O => Mtridata_op_not0001
    );
  Mtridata_load_not00011 : LUT4
    generic map(
      INIT => X"C8CD"
    )
    port map (
      I0 => Mtridata_state(0),
      I1 => start_IBUF_79,
      I2 => Mtrien_state_31,
      I3 => N5,
      O => Mtridata_load_not0001
    );
  Mtridata_state_mux0000_0_SW0 : LUT4
    generic map(
      INIT => X"AB00"
    )
    port map (
      I0 => start_IBUF_79,
      I1 => Mtridata_state(0),
      I2 => Mtrien_state_31,
      I3 => counter_cmp_eq0000,
      O => N18
    );
  counter_not00021 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => done_IBUF_67,
      I1 => Mtridata_state(2),
      I2 => Mtrien_state_31,
      O => counter_not0002
    );
  Mtrien_load_mux00001 : LUT4
    generic map(
      INIT => X"AAAB"
    )
    port map (
      I0 => rst_IBUF_77,
      I1 => Mtrien_state_31,
      I2 => Mtridata_state(0),
      I3 => Mtridata_state(1),
      O => Mtrien_load_mux0000
    );
  counter_mux0000_0_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => counter(0),
      I1 => done_IBUF_67,
      O => counter_mux0000(0)
    );
  counter_mux0000_1_1 : LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => counter(0),
      I1 => counter(1),
      I2 => done_IBUF_67,
      O => counter_mux0000(1)
    );
  Mtrien_op_mux00001 : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => Mtridata_state(1),
      I1 => Mtrien_state_31,
      I2 => rst_IBUF_77,
      O => Mtrien_op_mux0000
    );
  Mtridata_i_mux0000_3_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => Mtridata_state(1),
      I1 => counter(0),
      I2 => Mtrien_state_31,
      O => Mtridata_i_mux0000(3)
    );
  Mtridata_i_mux0000_2_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => Mtridata_state(1),
      I1 => counter(1),
      I2 => Mtrien_state_31,
      O => Mtridata_i_mux0000(2)
    );
  Mtridata_i_mux0000_1_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => Mtridata_state(1),
      I1 => counter(2),
      I2 => Mtrien_state_31,
      O => Mtridata_i_mux0000(1)
    );
  Mtridata_i_mux0000_0_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => Mtridata_state(1),
      I1 => counter(3),
      I2 => Mtrien_state_31,
      O => Mtridata_i_mux0000(0)
    );
  Mtrien_i_not0001 : LUT4
    generic map(
      INIT => X"AAAE"
    )
    port map (
      I0 => rst_IBUF_77,
      I1 => N29,
      I2 => Mtrien_state_31,
      I3 => Mtridata_state(0),
      O => Mtrien_i_not0001_23
    );
  counter_mux0000_3_SW1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => counter(1),
      I1 => counter(2),
      O => N31
    );
  counter_mux0000_3_Q : LUT4
    generic map(
      INIT => X"60C0"
    )
    port map (
      I0 => counter(0),
      I1 => counter(3),
      I2 => done_IBUF_67,
      I3 => N31,
      O => counter_mux0000(3)
    );
  counter_mux0000_2_Q : LUT4
    generic map(
      INIT => X"60C0"
    )
    port map (
      I0 => counter(0),
      I1 => counter(2),
      I2 => done_IBUF_67,
      I3 => counter(1),
      O => counter_mux0000(2)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_49
    );
  Mtridata_state_mux0000_2_Q : MUXF5
    port map (
      I0 => N35,
      I1 => N36,
      S => Mtridata_state(0),
      O => Mtridata_state_mux0000(2)
    );
  Mtridata_state_mux0000_2_F : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => Mtridata_state(2),
      I1 => done_IBUF_67,
      I2 => counter_cmp_eq0000,
      I3 => Mtrien_state_31,
      O => N35
    );
  Mtridata_state_mux0000_2_G : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => Mtridata_state(2),
      I1 => N20,
      I2 => Mtrien_state_31,
      O => N36
    );
  state_2_LogicTrst1 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Mtridata_state(2),
      I1 => Mtrien_state_31,
      LO => N37,
      O => state(2)
    );
  state_1_LogicTrst1 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Mtridata_state(1),
      I1 => Mtrien_state_31,
      LO => N38,
      O => state(1)
    );
  counter_cmp_eq00001 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => counter(3),
      I1 => counter(2),
      I2 => counter(1),
      I3 => counter(0),
      LO => N39,
      O => counter_cmp_eq0000
    );
  Mtridata_load_or000211 : LUT4_D
    generic map(
      INIT => X"557F"
    )
    port map (
      I0 => done_IBUF_67,
      I1 => Mtridata_state(2),
      I2 => counter_cmp_eq0000,
      I3 => state(1),
      LO => N40,
      O => N5
    );
  Mtrien_i_not0001_SW1 : LUT3_L
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => done_IBUF_67,
      I1 => Mtridata_state(1),
      I2 => Mtridata_state(2),
      LO => N29
    );

end Structure;

