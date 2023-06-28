-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/27/2023 21:37:51"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	thirtyTwoBitAdder IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	Sum : OUT std_logic_vector(31 DOWNTO 0)
	);
END thirtyTwoBitAdder;

-- Design Ports Information
-- Sum[0]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[5]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[6]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[7]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[8]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[9]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[10]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[11]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[12]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[13]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[14]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[15]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[16]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[17]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[18]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[19]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[20]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[21]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[22]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[23]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[24]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[25]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[26]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[27]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[28]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[29]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[30]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[31]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF thirtyTwoBitAdder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Sum : std_logic_vector(31 DOWNTO 0);
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \Sum[0]~output_o\ : std_logic;
SIGNAL \Sum[1]~output_o\ : std_logic;
SIGNAL \Sum[2]~output_o\ : std_logic;
SIGNAL \Sum[3]~output_o\ : std_logic;
SIGNAL \Sum[4]~output_o\ : std_logic;
SIGNAL \Sum[5]~output_o\ : std_logic;
SIGNAL \Sum[6]~output_o\ : std_logic;
SIGNAL \Sum[7]~output_o\ : std_logic;
SIGNAL \Sum[8]~output_o\ : std_logic;
SIGNAL \Sum[9]~output_o\ : std_logic;
SIGNAL \Sum[10]~output_o\ : std_logic;
SIGNAL \Sum[11]~output_o\ : std_logic;
SIGNAL \Sum[12]~output_o\ : std_logic;
SIGNAL \Sum[13]~output_o\ : std_logic;
SIGNAL \Sum[14]~output_o\ : std_logic;
SIGNAL \Sum[15]~output_o\ : std_logic;
SIGNAL \Sum[16]~output_o\ : std_logic;
SIGNAL \Sum[17]~output_o\ : std_logic;
SIGNAL \Sum[18]~output_o\ : std_logic;
SIGNAL \Sum[19]~output_o\ : std_logic;
SIGNAL \Sum[20]~output_o\ : std_logic;
SIGNAL \Sum[21]~output_o\ : std_logic;
SIGNAL \Sum[22]~output_o\ : std_logic;
SIGNAL \Sum[23]~output_o\ : std_logic;
SIGNAL \Sum[24]~output_o\ : std_logic;
SIGNAL \Sum[25]~output_o\ : std_logic;
SIGNAL \Sum[26]~output_o\ : std_logic;
SIGNAL \Sum[27]~output_o\ : std_logic;
SIGNAL \Sum[28]~output_o\ : std_logic;
SIGNAL \Sum[29]~output_o\ : std_logic;
SIGNAL \Sum[30]~output_o\ : std_logic;
SIGNAL \Sum[31]~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \b0to7|add0|o_Sum~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \b0to7|add1|o_Sum~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \b0to7|add1|o_CarryOut~0_combout\ : std_logic;
SIGNAL \b0to7|add2|o_Sum~0_combout\ : std_logic;
SIGNAL \b0to7|add2|o_CarryOut~1_combout\ : std_logic;
SIGNAL \b0to7|add2|o_CarryOut~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \b0to7|add3|o_Sum~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \b0to7|add3|o_CarryOut~0_combout\ : std_logic;
SIGNAL \b0to7|add4|o_Sum~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \b0to7|add4|o_CarryOut~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \b0to7|add4|o_CarryOut~1_combout\ : std_logic;
SIGNAL \b0to7|add5|o_Sum~combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \b0to7|add5|o_CarryOut~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \b0to7|add6|o_Sum~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \b0to7|add6|o_CarryOut~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \b0to7|add6|o_CarryOut~1_combout\ : std_logic;
SIGNAL \b0to7|add7|o_Sum~combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \b0to7|add7|o_CarryOut~0_combout\ : std_logic;
SIGNAL \b8to15|add0|o_Sum~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \b8to15|add0|o_CarryOut~1_combout\ : std_logic;
SIGNAL \b8to15|add0|o_CarryOut~0_combout\ : std_logic;
SIGNAL \b8to15|add1|o_Sum~combout\ : std_logic;
SIGNAL \b8to15|add1|o_CarryOut~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \b8to15|add2|o_Sum~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \b8to15|add2|o_CarryOut~1_combout\ : std_logic;
SIGNAL \b8to15|add2|o_CarryOut~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \b8to15|add3|o_Sum~combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \b8to15|add3|o_CarryOut~0_combout\ : std_logic;
SIGNAL \b8to15|add4|o_Sum~0_combout\ : std_logic;
SIGNAL \b8to15|add4|o_CarryOut~1_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \b8to15|add4|o_CarryOut~0_combout\ : std_logic;
SIGNAL \b8to15|add5|o_Sum~combout\ : std_logic;
SIGNAL \b8to15|add5|o_CarryOut~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \b8to15|add6|o_Sum~0_combout\ : std_logic;
SIGNAL \b8to15|add6|o_CarryOut~0_combout\ : std_logic;
SIGNAL \b8to15|add6|o_CarryOut~1_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \b8to15|add7|o_Sum~combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \b8to15|add7|o_CarryOut~0_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \b16to23|add0|o_Sum~0_combout\ : std_logic;
SIGNAL \b16to23|add0|o_CarryOut~1_combout\ : std_logic;
SIGNAL \b16to23|add0|o_CarryOut~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \b16to23|add1|o_Sum~combout\ : std_logic;
SIGNAL \b16to23|add1|o_CarryOut~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \b16to23|add2|o_Sum~0_combout\ : std_logic;
SIGNAL \b16to23|add2|o_CarryOut~0_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \b16to23|add2|o_CarryOut~1_combout\ : std_logic;
SIGNAL \b16to23|add3|o_Sum~combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \b16to23|add3|o_CarryOut~0_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \b16to23|add4|o_Sum~0_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \b16to23|add4|o_CarryOut~1_combout\ : std_logic;
SIGNAL \b16to23|add4|o_CarryOut~0_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \b16to23|add5|o_Sum~combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \b16to23|add5|o_CarryOut~0_combout\ : std_logic;
SIGNAL \b16to23|add6|o_Sum~0_combout\ : std_logic;
SIGNAL \b16to23|add6|o_CarryOut~0_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \b16to23|add6|o_CarryOut~1_combout\ : std_logic;
SIGNAL \b16to23|add7|o_Sum~combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \b16to23|add7|o_CarryOut~0_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \b24to31|add0|o_Sum~0_combout\ : std_logic;
SIGNAL \b24to31|add0|o_CarryOut~0_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \b24to31|add0|o_CarryOut~1_combout\ : std_logic;
SIGNAL \b24to31|add1|o_Sum~combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \b24to31|add1|o_CarryOut~0_combout\ : std_logic;
SIGNAL \b24to31|add2|o_Sum~0_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \b24to31|add2|o_CarryOut~1_combout\ : std_logic;
SIGNAL \b24to31|add2|o_CarryOut~0_combout\ : std_logic;
SIGNAL \b24to31|add3|o_Sum~combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \b24to31|add3|o_CarryOut~0_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \b24to31|add4|o_Sum~0_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \b24to31|add4|o_CarryOut~0_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \b24to31|add4|o_CarryOut~1_combout\ : std_logic;
SIGNAL \b24to31|add5|o_Sum~combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \b24to31|add5|o_CarryOut~0_combout\ : std_logic;
SIGNAL \b24to31|add6|o_Sum~0_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \b24to31|add7|o_Sum~0_combout\ : std_logic;
SIGNAL \b24to31|add7|o_Sum~combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
Sum <= ww_Sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X0_Y10_N15
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOOBUF_X20_Y0_N16
\Sum[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b0to7|add0|o_Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\Sum[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b0to7|add1|o_Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\Sum[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b0to7|add2|o_Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\Sum[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b0to7|add3|o_Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\Sum[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b0to7|add4|o_Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\Sum[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b0to7|add5|o_Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[5]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\Sum[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b0to7|add6|o_Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[6]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\Sum[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b0to7|add7|o_Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[7]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\Sum[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b8to15|add0|o_Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[8]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\Sum[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b8to15|add1|o_Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[9]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\Sum[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b8to15|add2|o_Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[10]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\Sum[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b8to15|add3|o_Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[11]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\Sum[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b8to15|add4|o_Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[12]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\Sum[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b8to15|add5|o_Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[13]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\Sum[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b8to15|add6|o_Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[14]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\Sum[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b8to15|add7|o_Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[15]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\Sum[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b16to23|add0|o_Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[16]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\Sum[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b16to23|add1|o_Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[17]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\Sum[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b16to23|add2|o_Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[18]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\Sum[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b16to23|add3|o_Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[19]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\Sum[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b16to23|add4|o_Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[20]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\Sum[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b16to23|add5|o_Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[21]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\Sum[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b16to23|add6|o_Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[22]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\Sum[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b16to23|add7|o_Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[23]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\Sum[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b24to31|add0|o_Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[24]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\Sum[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b24to31|add1|o_Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[25]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\Sum[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b24to31|add2|o_Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[26]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\Sum[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b24to31|add3|o_Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[27]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\Sum[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b24to31|add4|o_Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[28]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\Sum[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b24to31|add5|o_Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[29]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\Sum[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b24to31|add6|o_Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[30]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\Sum[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b24to31|add7|o_Sum~combout\,
	devoe => ww_devoe,
	o => \Sum[31]~output_o\);

-- Location: IOIBUF_X58_Y0_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X17_Y1_N24
\b0to7|add0|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add0|o_Sum~combout\ = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	combout => \b0to7|add0|o_Sum~combout\);

-- Location: IOIBUF_X16_Y0_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X17_Y1_N26
\b0to7|add1|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add1|o_Sum~0_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \b0to7|add1|o_Sum~0_combout\);

-- Location: IOIBUF_X11_Y0_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X17_Y1_N20
\b0to7|add1|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add1|o_CarryOut~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \b0to7|add1|o_CarryOut~0_combout\);

-- Location: LCCOMB_X17_Y1_N14
\b0to7|add2|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add2|o_Sum~0_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\ $ (\b0to7|add1|o_CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \b0to7|add1|o_CarryOut~0_combout\,
	combout => \b0to7|add2|o_Sum~0_combout\);

-- Location: LCCOMB_X17_Y1_N10
\b0to7|add2|o_CarryOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add2|o_CarryOut~1_combout\ = (\b0to7|add1|o_CarryOut~0_combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \b0to7|add1|o_CarryOut~0_combout\,
	combout => \b0to7|add2|o_CarryOut~1_combout\);

-- Location: LCCOMB_X17_Y1_N8
\b0to7|add2|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add2|o_CarryOut~0_combout\ = (\A[2]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \b0to7|add2|o_CarryOut~0_combout\);

-- Location: IOIBUF_X20_Y0_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X17_Y1_N28
\b0to7|add3|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add3|o_Sum~combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (((\b0to7|add2|o_CarryOut~1_combout\) # (\b0to7|add2|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0to7|add2|o_CarryOut~1_combout\,
	datab => \b0to7|add2|o_CarryOut~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \b0to7|add3|o_Sum~combout\);

-- Location: IOIBUF_X16_Y0_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X17_Y1_N6
\b0to7|add3|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add3|o_CarryOut~0_combout\ = (\B[3]~input_o\ & ((\b0to7|add2|o_CarryOut~1_combout\) # ((\b0to7|add2|o_CarryOut~0_combout\) # (\A[3]~input_o\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & ((\b0to7|add2|o_CarryOut~1_combout\) # 
-- (\b0to7|add2|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0to7|add2|o_CarryOut~1_combout\,
	datab => \b0to7|add2|o_CarryOut~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \b0to7|add3|o_CarryOut~0_combout\);

-- Location: LCCOMB_X17_Y1_N16
\b0to7|add4|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add4|o_Sum~0_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (\b0to7|add3|o_CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \b0to7|add3|o_CarryOut~0_combout\,
	combout => \b0to7|add4|o_Sum~0_combout\);

-- Location: IOIBUF_X11_Y0_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X17_Y1_N2
\b0to7|add4|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add4|o_CarryOut~0_combout\ = (\A[4]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	combout => \b0to7|add4|o_CarryOut~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X17_Y1_N12
\b0to7|add4|o_CarryOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add4|o_CarryOut~1_combout\ = (\b0to7|add3|o_CarryOut~0_combout\ & ((\A[4]~input_o\) # (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \b0to7|add3|o_CarryOut~0_combout\,
	combout => \b0to7|add4|o_CarryOut~1_combout\);

-- Location: LCCOMB_X17_Y1_N22
\b0to7|add5|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add5|o_Sum~combout\ = \B[5]~input_o\ $ (\A[5]~input_o\ $ (((\b0to7|add4|o_CarryOut~0_combout\) # (\b0to7|add4|o_CarryOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \b0to7|add4|o_CarryOut~0_combout\,
	datac => \A[5]~input_o\,
	datad => \b0to7|add4|o_CarryOut~1_combout\,
	combout => \b0to7|add5|o_Sum~combout\);

-- Location: IOIBUF_X115_Y34_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X17_Y1_N0
\b0to7|add5|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add5|o_CarryOut~0_combout\ = (\B[5]~input_o\ & ((\b0to7|add4|o_CarryOut~0_combout\) # ((\A[5]~input_o\) # (\b0to7|add4|o_CarryOut~1_combout\)))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & ((\b0to7|add4|o_CarryOut~0_combout\) # 
-- (\b0to7|add4|o_CarryOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \b0to7|add4|o_CarryOut~0_combout\,
	datac => \A[5]~input_o\,
	datad => \b0to7|add4|o_CarryOut~1_combout\,
	combout => \b0to7|add5|o_CarryOut~0_combout\);

-- Location: IOIBUF_X115_Y35_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X114_Y35_N0
\b0to7|add6|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add6|o_Sum~0_combout\ = \B[6]~input_o\ $ (\b0to7|add5|o_CarryOut~0_combout\ $ (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \b0to7|add5|o_CarryOut~0_combout\,
	datad => \A[6]~input_o\,
	combout => \b0to7|add6|o_Sum~0_combout\);

-- Location: IOIBUF_X115_Y40_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X114_Y35_N2
\b0to7|add6|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add6|o_CarryOut~0_combout\ = (\B[6]~input_o\ & \A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \b0to7|add6|o_CarryOut~0_combout\);

-- Location: IOIBUF_X115_Y34_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X114_Y35_N20
\b0to7|add6|o_CarryOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add6|o_CarryOut~1_combout\ = (\b0to7|add5|o_CarryOut~0_combout\ & ((\B[6]~input_o\) # (\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \b0to7|add5|o_CarryOut~0_combout\,
	datad => \A[6]~input_o\,
	combout => \b0to7|add6|o_CarryOut~1_combout\);

-- Location: LCCOMB_X114_Y35_N30
\b0to7|add7|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add7|o_Sum~combout\ = \B[7]~input_o\ $ (\A[7]~input_o\ $ (((\b0to7|add6|o_CarryOut~0_combout\) # (\b0to7|add6|o_CarryOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \b0to7|add6|o_CarryOut~0_combout\,
	datac => \A[7]~input_o\,
	datad => \b0to7|add6|o_CarryOut~1_combout\,
	combout => \b0to7|add7|o_Sum~combout\);

-- Location: IOIBUF_X115_Y33_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X115_Y33_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X114_Y35_N24
\b0to7|add7|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b0to7|add7|o_CarryOut~0_combout\ = (\B[7]~input_o\ & ((\b0to7|add6|o_CarryOut~0_combout\) # ((\A[7]~input_o\) # (\b0to7|add6|o_CarryOut~1_combout\)))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & ((\b0to7|add6|o_CarryOut~0_combout\) # 
-- (\b0to7|add6|o_CarryOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \b0to7|add6|o_CarryOut~0_combout\,
	datac => \A[7]~input_o\,
	datad => \b0to7|add6|o_CarryOut~1_combout\,
	combout => \b0to7|add7|o_CarryOut~0_combout\);

-- Location: LCCOMB_X114_Y35_N10
\b8to15|add0|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add0|o_Sum~0_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\ $ (\b0to7|add7|o_CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	datad => \b0to7|add7|o_CarryOut~0_combout\,
	combout => \b8to15|add0|o_Sum~0_combout\);

-- Location: IOIBUF_X0_Y35_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X115_Y35_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X114_Y35_N22
\b8to15|add0|o_CarryOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add0|o_CarryOut~1_combout\ = (\b0to7|add7|o_CarryOut~0_combout\ & ((\A[8]~input_o\) # (\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	datad => \b0to7|add7|o_CarryOut~0_combout\,
	combout => \b8to15|add0|o_CarryOut~1_combout\);

-- Location: LCCOMB_X114_Y35_N12
\b8to15|add0|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add0|o_CarryOut~0_combout\ = (\A[8]~input_o\ & \B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	combout => \b8to15|add0|o_CarryOut~0_combout\);

-- Location: LCCOMB_X114_Y35_N16
\b8to15|add1|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add1|o_Sum~combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ (((\b8to15|add0|o_CarryOut~1_combout\) # (\b8to15|add0|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datac => \b8to15|add0|o_CarryOut~1_combout\,
	datad => \b8to15|add0|o_CarryOut~0_combout\,
	combout => \b8to15|add1|o_Sum~combout\);

-- Location: LCCOMB_X114_Y35_N26
\b8to15|add1|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add1|o_CarryOut~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\b8to15|add0|o_CarryOut~1_combout\) # (\b8to15|add0|o_CarryOut~0_combout\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & ((\b8to15|add0|o_CarryOut~1_combout\) # 
-- (\b8to15|add0|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datac => \b8to15|add0|o_CarryOut~1_combout\,
	datad => \b8to15|add0|o_CarryOut~0_combout\,
	combout => \b8to15|add1|o_CarryOut~0_combout\);

-- Location: IOIBUF_X0_Y69_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X1_Y68_N16
\b8to15|add2|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add2|o_Sum~0_combout\ = \b8to15|add1|o_CarryOut~0_combout\ $ (\A[10]~input_o\ $ (\B[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b8to15|add1|o_CarryOut~0_combout\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	combout => \b8to15|add2|o_Sum~0_combout\);

-- Location: IOIBUF_X0_Y67_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X1_Y68_N28
\b8to15|add2|o_CarryOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add2|o_CarryOut~1_combout\ = (\b8to15|add1|o_CarryOut~0_combout\ & ((\A[10]~input_o\) # (\B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b8to15|add1|o_CarryOut~0_combout\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	combout => \b8to15|add2|o_CarryOut~1_combout\);

-- Location: LCCOMB_X1_Y68_N26
\b8to15|add2|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add2|o_CarryOut~0_combout\ = (\B[10]~input_o\ & \A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \b8to15|add2|o_CarryOut~0_combout\);

-- Location: IOIBUF_X0_Y66_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X1_Y68_N30
\b8to15|add3|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add3|o_Sum~combout\ = \A[11]~input_o\ $ (\B[11]~input_o\ $ (((\b8to15|add2|o_CarryOut~1_combout\) # (\b8to15|add2|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \b8to15|add2|o_CarryOut~1_combout\,
	datac => \b8to15|add2|o_CarryOut~0_combout\,
	datad => \B[11]~input_o\,
	combout => \b8to15|add3|o_Sum~combout\);

-- Location: IOIBUF_X0_Y66_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X1_Y68_N0
\b8to15|add3|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add3|o_CarryOut~0_combout\ = (\A[11]~input_o\ & ((\b8to15|add2|o_CarryOut~1_combout\) # ((\b8to15|add2|o_CarryOut~0_combout\) # (\B[11]~input_o\)))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & ((\b8to15|add2|o_CarryOut~1_combout\) # 
-- (\b8to15|add2|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \b8to15|add2|o_CarryOut~1_combout\,
	datac => \b8to15|add2|o_CarryOut~0_combout\,
	datad => \B[11]~input_o\,
	combout => \b8to15|add3|o_CarryOut~0_combout\);

-- Location: LCCOMB_X1_Y68_N10
\b8to15|add4|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add4|o_Sum~0_combout\ = \A[12]~input_o\ $ (\B[12]~input_o\ $ (\b8to15|add3|o_CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \b8to15|add3|o_CarryOut~0_combout\,
	combout => \b8to15|add4|o_Sum~0_combout\);

-- Location: LCCOMB_X1_Y68_N6
\b8to15|add4|o_CarryOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add4|o_CarryOut~1_combout\ = (\b8to15|add3|o_CarryOut~0_combout\ & ((\A[12]~input_o\) # (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \b8to15|add3|o_CarryOut~0_combout\,
	combout => \b8to15|add4|o_CarryOut~1_combout\);

-- Location: IOIBUF_X0_Y64_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X0_Y68_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X1_Y68_N12
\b8to15|add4|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add4|o_CarryOut~0_combout\ = (\B[12]~input_o\ & \A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \b8to15|add4|o_CarryOut~0_combout\);

-- Location: LCCOMB_X1_Y68_N8
\b8to15|add5|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add5|o_Sum~combout\ = \A[13]~input_o\ $ (\B[13]~input_o\ $ (((\b8to15|add4|o_CarryOut~1_combout\) # (\b8to15|add4|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b8to15|add4|o_CarryOut~1_combout\,
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \b8to15|add4|o_CarryOut~0_combout\,
	combout => \b8to15|add5|o_Sum~combout\);

-- Location: LCCOMB_X1_Y68_N2
\b8to15|add5|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add5|o_CarryOut~0_combout\ = (\A[13]~input_o\ & ((\b8to15|add4|o_CarryOut~1_combout\) # ((\B[13]~input_o\) # (\b8to15|add4|o_CarryOut~0_combout\)))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & ((\b8to15|add4|o_CarryOut~1_combout\) # 
-- (\b8to15|add4|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b8to15|add4|o_CarryOut~1_combout\,
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \b8to15|add4|o_CarryOut~0_combout\,
	combout => \b8to15|add5|o_CarryOut~0_combout\);

-- Location: IOIBUF_X69_Y0_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X75_Y1_N24
\b8to15|add6|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add6|o_Sum~0_combout\ = \b8to15|add5|o_CarryOut~0_combout\ $ (\A[14]~input_o\ $ (\B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b8to15|add5|o_CarryOut~0_combout\,
	datab => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \b8to15|add6|o_Sum~0_combout\);

-- Location: LCCOMB_X75_Y1_N10
\b8to15|add6|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add6|o_CarryOut~0_combout\ = (\A[14]~input_o\ & \B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \b8to15|add6|o_CarryOut~0_combout\);

-- Location: LCCOMB_X75_Y1_N28
\b8to15|add6|o_CarryOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add6|o_CarryOut~1_combout\ = (\b8to15|add5|o_CarryOut~0_combout\ & ((\A[14]~input_o\) # (\B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b8to15|add5|o_CarryOut~0_combout\,
	datab => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \b8to15|add6|o_CarryOut~1_combout\);

-- Location: IOIBUF_X79_Y0_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X75_Y1_N6
\b8to15|add7|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add7|o_Sum~combout\ = \A[15]~input_o\ $ (\B[15]~input_o\ $ (((\b8to15|add6|o_CarryOut~0_combout\) # (\b8to15|add6|o_CarryOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b8to15|add6|o_CarryOut~0_combout\,
	datab => \b8to15|add6|o_CarryOut~1_combout\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \b8to15|add7|o_Sum~combout\);

-- Location: IOIBUF_X74_Y0_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X75_Y1_N0
\b8to15|add7|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b8to15|add7|o_CarryOut~0_combout\ = (\A[15]~input_o\ & ((\b8to15|add6|o_CarryOut~0_combout\) # ((\b8to15|add6|o_CarryOut~1_combout\) # (\B[15]~input_o\)))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & ((\b8to15|add6|o_CarryOut~0_combout\) # 
-- (\b8to15|add6|o_CarryOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b8to15|add6|o_CarryOut~0_combout\,
	datab => \b8to15|add6|o_CarryOut~1_combout\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \b8to15|add7|o_CarryOut~0_combout\);

-- Location: IOIBUF_X81_Y0_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X75_Y1_N26
\b16to23|add0|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add0|o_Sum~0_combout\ = \B[16]~input_o\ $ (\b8to15|add7|o_CarryOut~0_combout\ $ (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \b8to15|add7|o_CarryOut~0_combout\,
	datad => \A[16]~input_o\,
	combout => \b16to23|add0|o_Sum~0_combout\);

-- Location: LCCOMB_X75_Y1_N22
\b16to23|add0|o_CarryOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add0|o_CarryOut~1_combout\ = (\b8to15|add7|o_CarryOut~0_combout\ & ((\B[16]~input_o\) # (\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \b8to15|add7|o_CarryOut~0_combout\,
	datad => \A[16]~input_o\,
	combout => \b16to23|add0|o_CarryOut~1_combout\);

-- Location: LCCOMB_X75_Y1_N20
\b16to23|add0|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add0|o_CarryOut~0_combout\ = (\B[16]~input_o\ & \A[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datad => \A[16]~input_o\,
	combout => \b16to23|add0|o_CarryOut~0_combout\);

-- Location: IOIBUF_X74_Y0_N15
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X79_Y0_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X75_Y1_N8
\b16to23|add1|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add1|o_Sum~combout\ = \B[17]~input_o\ $ (\A[17]~input_o\ $ (((\b16to23|add0|o_CarryOut~1_combout\) # (\b16to23|add0|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b16to23|add0|o_CarryOut~1_combout\,
	datab => \b16to23|add0|o_CarryOut~0_combout\,
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \b16to23|add1|o_Sum~combout\);

-- Location: LCCOMB_X75_Y1_N18
\b16to23|add1|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add1|o_CarryOut~0_combout\ = (\B[17]~input_o\ & ((\b16to23|add0|o_CarryOut~1_combout\) # ((\b16to23|add0|o_CarryOut~0_combout\) # (\A[17]~input_o\)))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & ((\b16to23|add0|o_CarryOut~1_combout\) # 
-- (\b16to23|add0|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b16to23|add0|o_CarryOut~1_combout\,
	datab => \b16to23|add0|o_CarryOut~0_combout\,
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \b16to23|add1|o_CarryOut~0_combout\);

-- Location: IOIBUF_X74_Y0_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X75_Y1_N4
\b16to23|add2|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add2|o_Sum~0_combout\ = \b16to23|add1|o_CarryOut~0_combout\ $ (\B[18]~input_o\ $ (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b16to23|add1|o_CarryOut~0_combout\,
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \b16to23|add2|o_Sum~0_combout\);

-- Location: LCCOMB_X75_Y1_N30
\b16to23|add2|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add2|o_CarryOut~0_combout\ = (\B[18]~input_o\ & \A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \b16to23|add2|o_CarryOut~0_combout\);

-- Location: IOIBUF_X67_Y0_N8
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X75_Y1_N16
\b16to23|add2|o_CarryOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add2|o_CarryOut~1_combout\ = (\b16to23|add1|o_CarryOut~0_combout\ & ((\B[18]~input_o\) # (\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b16to23|add1|o_CarryOut~0_combout\,
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \b16to23|add2|o_CarryOut~1_combout\);

-- Location: LCCOMB_X75_Y1_N2
\b16to23|add3|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add3|o_Sum~combout\ = \B[19]~input_o\ $ (\A[19]~input_o\ $ (((\b16to23|add2|o_CarryOut~0_combout\) # (\b16to23|add2|o_CarryOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b16to23|add2|o_CarryOut~0_combout\,
	datab => \B[19]~input_o\,
	datac => \A[19]~input_o\,
	datad => \b16to23|add2|o_CarryOut~1_combout\,
	combout => \b16to23|add3|o_Sum~combout\);

-- Location: IOIBUF_X0_Y50_N15
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X75_Y1_N12
\b16to23|add3|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add3|o_CarryOut~0_combout\ = (\B[19]~input_o\ & ((\b16to23|add2|o_CarryOut~0_combout\) # ((\A[19]~input_o\) # (\b16to23|add2|o_CarryOut~1_combout\)))) # (!\B[19]~input_o\ & (\A[19]~input_o\ & ((\b16to23|add2|o_CarryOut~0_combout\) # 
-- (\b16to23|add2|o_CarryOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b16to23|add2|o_CarryOut~0_combout\,
	datab => \B[19]~input_o\,
	datac => \A[19]~input_o\,
	datad => \b16to23|add2|o_CarryOut~1_combout\,
	combout => \b16to23|add3|o_CarryOut~0_combout\);

-- Location: IOIBUF_X0_Y46_N15
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X1_Y47_N16
\b16to23|add4|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add4|o_Sum~0_combout\ = \B[20]~input_o\ $ (\b16to23|add3|o_CarryOut~0_combout\ $ (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \b16to23|add3|o_CarryOut~0_combout\,
	datac => \A[20]~input_o\,
	combout => \b16to23|add4|o_Sum~0_combout\);

-- Location: IOIBUF_X0_Y47_N1
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X1_Y47_N4
\b16to23|add4|o_CarryOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add4|o_CarryOut~1_combout\ = (\b16to23|add3|o_CarryOut~0_combout\ & ((\B[20]~input_o\) # (\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \b16to23|add3|o_CarryOut~0_combout\,
	datac => \A[20]~input_o\,
	combout => \b16to23|add4|o_CarryOut~1_combout\);

-- Location: LCCOMB_X1_Y47_N26
\b16to23|add4|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add4|o_CarryOut~0_combout\ = (\A[20]~input_o\ & \B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \b16to23|add4|o_CarryOut~0_combout\);

-- Location: IOIBUF_X0_Y35_N1
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X1_Y47_N14
\b16to23|add5|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add5|o_Sum~combout\ = \B[21]~input_o\ $ (\A[21]~input_o\ $ (((\b16to23|add4|o_CarryOut~1_combout\) # (\b16to23|add4|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \b16to23|add4|o_CarryOut~1_combout\,
	datac => \b16to23|add4|o_CarryOut~0_combout\,
	datad => \A[21]~input_o\,
	combout => \b16to23|add5|o_Sum~combout\);

-- Location: IOIBUF_X0_Y50_N22
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X1_Y47_N0
\b16to23|add5|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add5|o_CarryOut~0_combout\ = (\B[21]~input_o\ & ((\b16to23|add4|o_CarryOut~1_combout\) # ((\b16to23|add4|o_CarryOut~0_combout\) # (\A[21]~input_o\)))) # (!\B[21]~input_o\ & (\A[21]~input_o\ & ((\b16to23|add4|o_CarryOut~1_combout\) # 
-- (\b16to23|add4|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \b16to23|add4|o_CarryOut~1_combout\,
	datac => \b16to23|add4|o_CarryOut~0_combout\,
	datad => \A[21]~input_o\,
	combout => \b16to23|add5|o_CarryOut~0_combout\);

-- Location: LCCOMB_X1_Y47_N10
\b16to23|add6|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add6|o_Sum~0_combout\ = \A[22]~input_o\ $ (\B[22]~input_o\ $ (\b16to23|add5|o_CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	datad => \b16to23|add5|o_CarryOut~0_combout\,
	combout => \b16to23|add6|o_Sum~0_combout\);

-- Location: LCCOMB_X1_Y47_N12
\b16to23|add6|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add6|o_CarryOut~0_combout\ = (\B[22]~input_o\ & \A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \b16to23|add6|o_CarryOut~0_combout\);

-- Location: IOIBUF_X0_Y47_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X1_Y47_N6
\b16to23|add6|o_CarryOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add6|o_CarryOut~1_combout\ = (\b16to23|add5|o_CarryOut~0_combout\ & ((\A[22]~input_o\) # (\B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	datad => \b16to23|add5|o_CarryOut~0_combout\,
	combout => \b16to23|add6|o_CarryOut~1_combout\);

-- Location: LCCOMB_X1_Y47_N24
\b16to23|add7|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add7|o_Sum~combout\ = \B[23]~input_o\ $ (\A[23]~input_o\ $ (((\b16to23|add6|o_CarryOut~0_combout\) # (\b16to23|add6|o_CarryOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b16to23|add6|o_CarryOut~0_combout\,
	datab => \B[23]~input_o\,
	datac => \A[23]~input_o\,
	datad => \b16to23|add6|o_CarryOut~1_combout\,
	combout => \b16to23|add7|o_Sum~combout\);

-- Location: IOIBUF_X0_Y24_N15
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X1_Y47_N2
\b16to23|add7|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b16to23|add7|o_CarryOut~0_combout\ = (\B[23]~input_o\ & ((\b16to23|add6|o_CarryOut~0_combout\) # ((\A[23]~input_o\) # (\b16to23|add6|o_CarryOut~1_combout\)))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & ((\b16to23|add6|o_CarryOut~0_combout\) # 
-- (\b16to23|add6|o_CarryOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b16to23|add6|o_CarryOut~0_combout\,
	datab => \B[23]~input_o\,
	datac => \A[23]~input_o\,
	datad => \b16to23|add6|o_CarryOut~1_combout\,
	combout => \b16to23|add7|o_CarryOut~0_combout\);

-- Location: IOIBUF_X0_Y25_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X1_Y26_N8
\b24to31|add0|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add0|o_Sum~0_combout\ = \A[24]~input_o\ $ (\b16to23|add7|o_CarryOut~0_combout\ $ (\B[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \b16to23|add7|o_CarryOut~0_combout\,
	datad => \B[24]~input_o\,
	combout => \b24to31|add0|o_Sum~0_combout\);

-- Location: LCCOMB_X1_Y26_N10
\b24to31|add0|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add0|o_CarryOut~0_combout\ = (\A[24]~input_o\ & \B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \b24to31|add0|o_CarryOut~0_combout\);

-- Location: IOIBUF_X0_Y22_N22
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X1_Y26_N28
\b24to31|add0|o_CarryOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add0|o_CarryOut~1_combout\ = (\b16to23|add7|o_CarryOut~0_combout\ & ((\A[24]~input_o\) # (\B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \b16to23|add7|o_CarryOut~0_combout\,
	datad => \B[24]~input_o\,
	combout => \b24to31|add0|o_CarryOut~1_combout\);

-- Location: LCCOMB_X1_Y26_N6
\b24to31|add1|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add1|o_Sum~combout\ = \B[25]~input_o\ $ (\A[25]~input_o\ $ (((\b24to31|add0|o_CarryOut~0_combout\) # (\b24to31|add0|o_CarryOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b24to31|add0|o_CarryOut~0_combout\,
	datab => \B[25]~input_o\,
	datac => \A[25]~input_o\,
	datad => \b24to31|add0|o_CarryOut~1_combout\,
	combout => \b24to31|add1|o_Sum~combout\);

-- Location: IOIBUF_X0_Y27_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X1_Y26_N0
\b24to31|add1|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add1|o_CarryOut~0_combout\ = (\B[25]~input_o\ & ((\b24to31|add0|o_CarryOut~0_combout\) # ((\A[25]~input_o\) # (\b24to31|add0|o_CarryOut~1_combout\)))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & ((\b24to31|add0|o_CarryOut~0_combout\) # 
-- (\b24to31|add0|o_CarryOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b24to31|add0|o_CarryOut~0_combout\,
	datab => \B[25]~input_o\,
	datac => \A[25]~input_o\,
	datad => \b24to31|add0|o_CarryOut~1_combout\,
	combout => \b24to31|add1|o_CarryOut~0_combout\);

-- Location: LCCOMB_X1_Y26_N18
\b24to31|add2|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add2|o_Sum~0_combout\ = \B[26]~input_o\ $ (\A[26]~input_o\ $ (\b24to31|add1|o_CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \b24to31|add1|o_CarryOut~0_combout\,
	combout => \b24to31|add2|o_Sum~0_combout\);

-- Location: IOIBUF_X0_Y25_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X1_Y26_N22
\b24to31|add2|o_CarryOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add2|o_CarryOut~1_combout\ = (\b24to31|add1|o_CarryOut~0_combout\ & ((\B[26]~input_o\) # (\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \b24to31|add1|o_CarryOut~0_combout\,
	combout => \b24to31|add2|o_CarryOut~1_combout\);

-- Location: LCCOMB_X1_Y26_N12
\b24to31|add2|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add2|o_CarryOut~0_combout\ = (\B[26]~input_o\ & \A[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	combout => \b24to31|add2|o_CarryOut~0_combout\);

-- Location: LCCOMB_X1_Y26_N16
\b24to31|add3|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add3|o_Sum~combout\ = \B[27]~input_o\ $ (\A[27]~input_o\ $ (((\b24to31|add2|o_CarryOut~1_combout\) # (\b24to31|add2|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \b24to31|add2|o_CarryOut~1_combout\,
	datad => \b24to31|add2|o_CarryOut~0_combout\,
	combout => \b24to31|add3|o_Sum~combout\);

-- Location: IOIBUF_X0_Y7_N8
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X1_Y26_N2
\b24to31|add3|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add3|o_CarryOut~0_combout\ = (\B[27]~input_o\ & ((\A[27]~input_o\) # ((\b24to31|add2|o_CarryOut~1_combout\) # (\b24to31|add2|o_CarryOut~0_combout\)))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & ((\b24to31|add2|o_CarryOut~1_combout\) # 
-- (\b24to31|add2|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \b24to31|add2|o_CarryOut~1_combout\,
	datad => \b24to31|add2|o_CarryOut~0_combout\,
	combout => \b24to31|add3|o_CarryOut~0_combout\);

-- Location: IOIBUF_X0_Y10_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X1_Y7_N24
\b24to31|add4|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add4|o_Sum~0_combout\ = \B[28]~input_o\ $ (\b24to31|add3|o_CarryOut~0_combout\ $ (\A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[28]~input_o\,
	datac => \b24to31|add3|o_CarryOut~0_combout\,
	datad => \A[28]~input_o\,
	combout => \b24to31|add4|o_Sum~0_combout\);

-- Location: IOIBUF_X0_Y8_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X1_Y7_N2
\b24to31|add4|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add4|o_CarryOut~0_combout\ = (\B[28]~input_o\ & \A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => \b24to31|add4|o_CarryOut~0_combout\);

-- Location: IOIBUF_X0_Y5_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X1_Y7_N28
\b24to31|add4|o_CarryOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add4|o_CarryOut~1_combout\ = (\b24to31|add3|o_CarryOut~0_combout\ & ((\B[28]~input_o\) # (\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[28]~input_o\,
	datac => \b24to31|add3|o_CarryOut~0_combout\,
	datad => \A[28]~input_o\,
	combout => \b24to31|add4|o_CarryOut~1_combout\);

-- Location: LCCOMB_X1_Y7_N22
\b24to31|add5|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add5|o_Sum~combout\ = \B[29]~input_o\ $ (\A[29]~input_o\ $ (((\b24to31|add4|o_CarryOut~0_combout\) # (\b24to31|add4|o_CarryOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \b24to31|add4|o_CarryOut~0_combout\,
	datac => \A[29]~input_o\,
	datad => \b24to31|add4|o_CarryOut~1_combout\,
	combout => \b24to31|add5|o_Sum~combout\);

-- Location: IOIBUF_X0_Y11_N15
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X1_Y7_N0
\b24to31|add5|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add5|o_CarryOut~0_combout\ = (\B[29]~input_o\ & ((\b24to31|add4|o_CarryOut~0_combout\) # ((\A[29]~input_o\) # (\b24to31|add4|o_CarryOut~1_combout\)))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & ((\b24to31|add4|o_CarryOut~0_combout\) # 
-- (\b24to31|add4|o_CarryOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \b24to31|add4|o_CarryOut~0_combout\,
	datac => \A[29]~input_o\,
	datad => \b24to31|add4|o_CarryOut~1_combout\,
	combout => \b24to31|add5|o_CarryOut~0_combout\);

-- Location: LCCOMB_X1_Y7_N10
\b24to31|add6|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add6|o_Sum~0_combout\ = \B[30]~input_o\ $ (\A[30]~input_o\ $ (\b24to31|add5|o_CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \b24to31|add5|o_CarryOut~0_combout\,
	combout => \b24to31|add6|o_Sum~0_combout\);

-- Location: IOIBUF_X1_Y0_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X1_Y7_N12
\b24to31|add7|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add7|o_Sum~0_combout\ = \A[31]~input_o\ $ (((\B[30]~input_o\ & ((\A[30]~input_o\) # (\b24to31|add5|o_CarryOut~0_combout\))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & \b24to31|add5|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \b24to31|add5|o_CarryOut~0_combout\,
	combout => \b24to31|add7|o_Sum~0_combout\);

-- Location: LCCOMB_X1_Y7_N14
\b24to31|add7|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \b24to31|add7|o_Sum~combout\ = \B[31]~input_o\ $ (\b24to31|add7|o_Sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[31]~input_o\,
	datad => \b24to31|add7|o_Sum~0_combout\,
	combout => \b24to31|add7|o_Sum~combout\);

ww_Sum(0) <= \Sum[0]~output_o\;

ww_Sum(1) <= \Sum[1]~output_o\;

ww_Sum(2) <= \Sum[2]~output_o\;

ww_Sum(3) <= \Sum[3]~output_o\;

ww_Sum(4) <= \Sum[4]~output_o\;

ww_Sum(5) <= \Sum[5]~output_o\;

ww_Sum(6) <= \Sum[6]~output_o\;

ww_Sum(7) <= \Sum[7]~output_o\;

ww_Sum(8) <= \Sum[8]~output_o\;

ww_Sum(9) <= \Sum[9]~output_o\;

ww_Sum(10) <= \Sum[10]~output_o\;

ww_Sum(11) <= \Sum[11]~output_o\;

ww_Sum(12) <= \Sum[12]~output_o\;

ww_Sum(13) <= \Sum[13]~output_o\;

ww_Sum(14) <= \Sum[14]~output_o\;

ww_Sum(15) <= \Sum[15]~output_o\;

ww_Sum(16) <= \Sum[16]~output_o\;

ww_Sum(17) <= \Sum[17]~output_o\;

ww_Sum(18) <= \Sum[18]~output_o\;

ww_Sum(19) <= \Sum[19]~output_o\;

ww_Sum(20) <= \Sum[20]~output_o\;

ww_Sum(21) <= \Sum[21]~output_o\;

ww_Sum(22) <= \Sum[22]~output_o\;

ww_Sum(23) <= \Sum[23]~output_o\;

ww_Sum(24) <= \Sum[24]~output_o\;

ww_Sum(25) <= \Sum[25]~output_o\;

ww_Sum(26) <= \Sum[26]~output_o\;

ww_Sum(27) <= \Sum[27]~output_o\;

ww_Sum(28) <= \Sum[28]~output_o\;

ww_Sum(29) <= \Sum[29]~output_o\;

ww_Sum(30) <= \Sum[30]~output_o\;

ww_Sum(31) <= \Sum[31]~output_o\;
END structure;


