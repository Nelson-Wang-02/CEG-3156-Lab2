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

-- DATE "07/04/2023 00:02:10"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	singleCycleProcessor IS
    PORT (
	GClock : IN std_logic;
	GReset : IN std_logic;
	ValueSelect : IN std_logic_vector(2 DOWNTO 0);
	MuxOut : OUT std_logic_vector(7 DOWNTO 0);
	InstructionOut : OUT std_logic_vector(31 DOWNTO 0);
	BranchOut : OUT std_logic;
	ZeroOut : OUT std_logic;
	MemWriteOut : OUT std_logic;
	RegWriteOut : OUT std_logic
	);
END singleCycleProcessor;

-- Design Ports Information
-- MuxOut[0]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[1]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[0]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[5]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[7]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[8]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[9]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[10]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[11]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[12]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[13]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[14]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[15]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[16]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[17]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[18]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[19]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[20]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[21]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[22]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[23]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[24]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[25]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[26]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[27]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[28]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[29]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[30]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[31]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOut	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZeroOut	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWriteOut	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWriteOut	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ValueSelect[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ValueSelect[2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ValueSelect[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GClock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GReset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF singleCycleProcessor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_GClock : std_logic;
SIGNAL ww_GReset : std_logic;
SIGNAL ww_ValueSelect : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_MuxOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_InstructionOut : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_BranchOut : std_logic;
SIGNAL ww_ZeroOut : std_logic;
SIGNAL ww_MemWriteOut : std_logic;
SIGNAL ww_RegWriteOut : std_logic;
SIGNAL \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \GReset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GClock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regFile|row6|b0|int_q~q\ : std_logic;
SIGNAL \regFile|row6|b1|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux1|i_out~1_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux1|i_out~0_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux1|i_out~1_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux6|choice~0_combout\ : std_logic;
SIGNAL \outputMux|mux1|i_out~0_combout\ : std_logic;
SIGNAL \regFile|row1|b2|int_q~q\ : std_logic;
SIGNAL \regFile|row2|b2|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData1|mux2|choice~3_combout\ : std_logic;
SIGNAL \regFile|row4|b3|int_q~q\ : std_logic;
SIGNAL \regFile|row5|b3|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux3|i_out~3_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux3|i_out~4_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux3|choice~1_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux3|choice~2_combout\ : std_logic;
SIGNAL \regFile|row5|b5|int_q~q\ : std_logic;
SIGNAL \regFile|row3|b5|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux5|i_out~3_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux5|i_out~4_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux5|choice~5_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux6|i_out~3_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux6|i_out~4_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux6|choice~2_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux6|choice~4_combout\ : std_logic;
SIGNAL \regFile|row4|b7|int_q~q\ : std_logic;
SIGNAL \regFile|row2|b7|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux7|i_out~0_combout\ : std_logic;
SIGNAL \regFile|row1|b7|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData1|mux7|i_out~0_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux7|i_out~1_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux7|i_out~2_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux7|i_out~3_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux7|i_out~4_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux7|i_out~5_combout\ : std_logic;
SIGNAL \outputMux|mux7|choice~2_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|add0|o_Sum~combout\ : std_logic;
SIGNAL \pcPlus4|add5|int_CarryOut1~combout\ : std_logic;
SIGNAL \pcPlus4|add6|int_CarryOut1~combout\ : std_logic;
SIGNAL \pcPlus4|add4|int_CarryOut3~combout\ : std_logic;
SIGNAL \aluMux|mux7|mux_out~2_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|o_Zero~7_combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux7|choice~0_combout\ : std_logic;
SIGNAL \ValueSelect[1]~input_o\ : std_logic;
SIGNAL \regFile|row6|b0|int_q~feeder_combout\ : std_logic;
SIGNAL \regFile|row5|b3|int_q~feeder_combout\ : std_logic;
SIGNAL \regFile|row5|b5|int_q~feeder_combout\ : std_logic;
SIGNAL \regFile|row1|b7|int_q~feeder_combout\ : std_logic;
SIGNAL \MuxOut[0]~output_o\ : std_logic;
SIGNAL \MuxOut[1]~output_o\ : std_logic;
SIGNAL \MuxOut[2]~output_o\ : std_logic;
SIGNAL \MuxOut[3]~output_o\ : std_logic;
SIGNAL \MuxOut[4]~output_o\ : std_logic;
SIGNAL \MuxOut[5]~output_o\ : std_logic;
SIGNAL \MuxOut[6]~output_o\ : std_logic;
SIGNAL \MuxOut[7]~output_o\ : std_logic;
SIGNAL \InstructionOut[0]~output_o\ : std_logic;
SIGNAL \InstructionOut[1]~output_o\ : std_logic;
SIGNAL \InstructionOut[2]~output_o\ : std_logic;
SIGNAL \InstructionOut[3]~output_o\ : std_logic;
SIGNAL \InstructionOut[4]~output_o\ : std_logic;
SIGNAL \InstructionOut[5]~output_o\ : std_logic;
SIGNAL \InstructionOut[6]~output_o\ : std_logic;
SIGNAL \InstructionOut[7]~output_o\ : std_logic;
SIGNAL \InstructionOut[8]~output_o\ : std_logic;
SIGNAL \InstructionOut[9]~output_o\ : std_logic;
SIGNAL \InstructionOut[10]~output_o\ : std_logic;
SIGNAL \InstructionOut[11]~output_o\ : std_logic;
SIGNAL \InstructionOut[12]~output_o\ : std_logic;
SIGNAL \InstructionOut[13]~output_o\ : std_logic;
SIGNAL \InstructionOut[14]~output_o\ : std_logic;
SIGNAL \InstructionOut[15]~output_o\ : std_logic;
SIGNAL \InstructionOut[16]~output_o\ : std_logic;
SIGNAL \InstructionOut[17]~output_o\ : std_logic;
SIGNAL \InstructionOut[18]~output_o\ : std_logic;
SIGNAL \InstructionOut[19]~output_o\ : std_logic;
SIGNAL \InstructionOut[20]~output_o\ : std_logic;
SIGNAL \InstructionOut[21]~output_o\ : std_logic;
SIGNAL \InstructionOut[22]~output_o\ : std_logic;
SIGNAL \InstructionOut[23]~output_o\ : std_logic;
SIGNAL \InstructionOut[24]~output_o\ : std_logic;
SIGNAL \InstructionOut[25]~output_o\ : std_logic;
SIGNAL \InstructionOut[26]~output_o\ : std_logic;
SIGNAL \InstructionOut[27]~output_o\ : std_logic;
SIGNAL \InstructionOut[28]~output_o\ : std_logic;
SIGNAL \InstructionOut[29]~output_o\ : std_logic;
SIGNAL \InstructionOut[30]~output_o\ : std_logic;
SIGNAL \InstructionOut[31]~output_o\ : std_logic;
SIGNAL \BranchOut~output_o\ : std_logic;
SIGNAL \ZeroOut~output_o\ : std_logic;
SIGNAL \MemWriteOut~output_o\ : std_logic;
SIGNAL \RegWriteOut~output_o\ : std_logic;
SIGNAL \ValueSelect[0]~input_o\ : std_logic;
SIGNAL \ValueSelect[2]~input_o\ : std_logic;
SIGNAL \outputMux|mux7|choice~0_combout\ : std_logic;
SIGNAL \GClock~input_o\ : std_logic;
SIGNAL \GClock~inputclkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \branchALU|add3|int_CarryOut2~combout\ : std_logic;
SIGNAL \pcPlus4|add4|int_CarryOut1~combout\ : std_logic;
SIGNAL \branchALU|add3|int_CarryOut3~0_combout\ : std_logic;
SIGNAL \branchALU|add4|o_CarryOut~0_combout\ : std_logic;
SIGNAL \branchALU|add5|o_CarryOut~0_combout\ : std_logic;
SIGNAL \pcPlus4|add5|int_CarryOut3~combout\ : std_logic;
SIGNAL \pcPlus4|add7|int_CarryOut1~combout\ : std_logic;
SIGNAL \branchALU|add6|o_CarryOut~0_combout\ : std_logic;
SIGNAL \jumpMux|mux7|mux_out~0_combout\ : std_logic;
SIGNAL \GReset~input_o\ : std_logic;
SIGNAL \GReset~inputclkctrl_outclk\ : std_logic;
SIGNAL \pcRegister|b7|int_q~q\ : std_logic;
SIGNAL \jumpMux|mux6|mux_out~0_combout\ : std_logic;
SIGNAL \pcRegister|b6|int_q~q\ : std_logic;
SIGNAL \jumpMux|mux5|mux_out~0_combout\ : std_logic;
SIGNAL \pcRegister|b5|int_q~q\ : std_logic;
SIGNAL \control|beq~1_combout\ : std_logic;
SIGNAL \aluCtrl|Op[0]~0_combout\ : std_logic;
SIGNAL \control|beq~0_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux6|choice~0_combout\ : std_logic;
SIGNAL \control|ALUOp1~0_combout\ : std_logic;
SIGNAL \control|ALUOp1~combout\ : std_logic;
SIGNAL \regFile|sig_regWrite[1]~0_combout\ : std_logic;
SIGNAL \regFile|sig_regWrite[1]~1_combout\ : std_logic;
SIGNAL \regFile|sig_regWrite[0]~2_combout\ : std_logic;
SIGNAL \regFile|row0|b3|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData1|mux6|choice~1_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux3|choice~3_combout\ : std_logic;
SIGNAL \regFile|sig_regWrite[2]~7_combout\ : std_logic;
SIGNAL \regFile|sig_regWrite[3]~12_combout\ : std_logic;
SIGNAL \regFile|row3|b3|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData1|mux3|choice~4_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux3|choice~5_combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux3|choice~0_combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux3|choice~1_combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux3|choice~2_combout\ : std_logic;
SIGNAL \dataMemMux|mux3|mux_out~0_combout\ : std_logic;
SIGNAL \regFile|sig_regWrite[1]~9_combout\ : std_logic;
SIGNAL \regFile|row1|b3|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux6|choice~1_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux7|choice~0_combout\ : std_logic;
SIGNAL \regFile|sig_regWrite[7]~3_combout\ : std_logic;
SIGNAL \regFile|sig_regWrite[4]~4_combout\ : std_logic;
SIGNAL \regFile|sig_regWrite[6]~6_combout\ : std_logic;
SIGNAL \regFile|row6|b3|int_q~q\ : std_logic;
SIGNAL \regFile|sig_regWrite[2]~8_combout\ : std_logic;
SIGNAL \regFile|row2|b3|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux3|i_out~0_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux3|i_out~1_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux3|i_out~2_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux3|i_out~5_combout\ : std_logic;
SIGNAL \aluCtrl|Op[2]~1_combout\ : std_logic;
SIGNAL \regFile|row6|b2|int_q~feeder_combout\ : std_logic;
SIGNAL \regFile|row6|b2|int_q~q\ : std_logic;
SIGNAL \regFile|sig_regWrite[7]~10_combout\ : std_logic;
SIGNAL \regFile|sig_regWrite[7]~13_combout\ : std_logic;
SIGNAL \regFile|row7|b2|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux2|i_out~1_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux1|choice~0_combout\ : std_logic;
SIGNAL \regFile|row3|b2|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux2|i_out~0_combout\ : std_logic;
SIGNAL \regFile|row0|b2|int_q~feeder_combout\ : std_logic;
SIGNAL \regFile|row0|b2|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux2|i_out~3_combout\ : std_logic;
SIGNAL \regFile|sig_regWrite[4]~5_combout\ : std_logic;
SIGNAL \regFile|row4|b2|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux2|i_out~2_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux2|i_out~4_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux2|i_out~5_combout\ : std_logic;
SIGNAL \regFile|row4|b0|int_q~q\ : std_logic;
SIGNAL \regFile|row0|b0|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux0|i_out~0_combout\ : std_logic;
SIGNAL \regFile|row2|b0|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux0|i_out~1_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux0|i_out~2_combout\ : std_logic;
SIGNAL \control|MemWrite~1_combout\ : std_logic;
SIGNAL \regFile|sig_regWrite[5]~11_combout\ : std_logic;
SIGNAL \regFile|row5|b0|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux0|i_out~3_combout\ : std_logic;
SIGNAL \regFile|row3|b0|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux0|i_out~4_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux0|i_out~5_combout\ : std_logic;
SIGNAL \aluMux|mux0|mux_out~0_combout\ : std_logic;
SIGNAL \regFile|row7|b0|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData1|mux0|i_out~1_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux0|i_out~2_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux0|i_out~3_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux0|i_out~4_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux1|choice~0_combout\ : std_logic;
SIGNAL \regFile|row1|b0|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData1|mux0|choice~0_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux0|i_out~0_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux0|i_out~5_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|add0|int_CarryOut2~combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux1|choice~2_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|add0|int_CarryOut3~combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|add1|o_Sum~combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux1|choice~3_combout\ : std_logic;
SIGNAL \control|MemWrite~2_combout\ : std_logic;
SIGNAL \dataMemory|altsyncram_component|auto_generated|rden_b_store~q\ : std_logic;
SIGNAL \dataMemory|altsyncram_component|auto_generated|ram_block1a0~0_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux0|i_out~6_combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux0|i_out~3_combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux1|choice~4_combout\ : std_logic;
SIGNAL \regFile|row7|b6|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData1|mux6|choice~7_combout\ : std_logic;
SIGNAL \regFile|row1|b5|int_q~feeder_combout\ : std_logic;
SIGNAL \regFile|row1|b5|int_q~q\ : std_logic;
SIGNAL \regFile|row0|b5|int_q~feeder_combout\ : std_logic;
SIGNAL \regFile|row0|b5|int_q~q\ : std_logic;
SIGNAL \regFile|row6|b5|int_q~q\ : std_logic;
SIGNAL \regFile|row2|b5|int_q~q\ : std_logic;
SIGNAL \regFile|row4|b5|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux5|i_out~0_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux5|i_out~1_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux5|i_out~2_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux5|i_out~5_combout\ : std_logic;
SIGNAL \regFile|row1|b4|int_q~feeder_combout\ : std_logic;
SIGNAL \regFile|row1|b4|int_q~q\ : std_logic;
SIGNAL \regFile|row5|b4|int_q~feeder_combout\ : std_logic;
SIGNAL \regFile|row5|b4|int_q~q\ : std_logic;
SIGNAL \regFile|row3|b4|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux4|i_out~3_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux4|i_out~4_combout\ : std_logic;
SIGNAL \regFile|row0|b4|int_q~feeder_combout\ : std_logic;
SIGNAL \regFile|row0|b4|int_q~q\ : std_logic;
SIGNAL \regFile|row6|b4|int_q~feeder_combout\ : std_logic;
SIGNAL \regFile|row6|b4|int_q~q\ : std_logic;
SIGNAL \regFile|row4|b4|int_q~q\ : std_logic;
SIGNAL \regFile|row2|b4|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux4|i_out~0_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux4|i_out~1_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux4|i_out~2_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux4|i_out~5_combout\ : std_logic;
SIGNAL \regFile|row7|b3|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData1|mux3|choice~0_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|add3|o_CarryOut~0_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|add4|o_CarryOut~0_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|add5|o_CarryOut~0_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|add6|o_CarryOut~0_combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux7|choice~1_combout\ : std_logic;
SIGNAL \dataMemMux|mux7|mux_out~0_combout\ : std_logic;
SIGNAL \regFile|row0|b7|int_q~q\ : std_logic;
SIGNAL \regFile|row6|b7|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux7|i_out~1_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux7|i_out~2_combout\ : std_logic;
SIGNAL \regFile|row7|b7|int_q~q\ : std_logic;
SIGNAL \regFile|row3|b7|int_q~q\ : std_logic;
SIGNAL \regFile|row5|b7|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux7|i_out~3_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux7|i_out~4_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux7|i_out~5_combout\ : std_logic;
SIGNAL \dataMemMux|mux6|mux_out~0_combout\ : std_logic;
SIGNAL \regFile|row1|b6|int_q~q\ : std_logic;
SIGNAL \regFile|row0|b6|int_q~q\ : std_logic;
SIGNAL \regFile|row2|b6|int_q~q\ : std_logic;
SIGNAL \regFile|row4|b6|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux6|i_out~0_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux6|i_out~1_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux6|i_out~2_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux6|i_out~5_combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux6|choice~0_combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux6|choice~1_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|add6|o_Sum~combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux6|choice~2_combout\ : std_logic;
SIGNAL \dataMemMux|mux5|mux_out~0_combout\ : std_logic;
SIGNAL \regFile|row7|b5|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData1|mux5|choice~1_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux5|choice~2_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux5|choice~3_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux5|choice~4_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux5|choice~6_combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux5|choice~0_combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux5|choice~1_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|add5|o_Sum~combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux5|choice~2_combout\ : std_logic;
SIGNAL \dataMemMux|mux4|mux_out~0_combout\ : std_logic;
SIGNAL \regFile|row7|b4|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData1|mux4|choice~0_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux4|choice~3_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux4|choice~4_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux4|choice~1_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux5|choice~0_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux4|choice~2_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux4|choice~5_combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux4|choice~0_combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux4|choice~1_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|add4|o_Sum~combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux4|choice~2_combout\ : std_logic;
SIGNAL \dataMemMux|mux1|mux_out~0_combout\ : std_logic;
SIGNAL \regFile|row2|b1|int_q~q\ : std_logic;
SIGNAL \regFile|row4|b1|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux1|i_out~2_combout\ : std_logic;
SIGNAL \regFile|row5|b1|int_q~q\ : std_logic;
SIGNAL \regFile|row0|b1|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux1|i_out~3_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux1|i_out~4_combout\ : std_logic;
SIGNAL \regFile|row1|b1|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData2|mux1|i_out~0_combout\ : std_logic;
SIGNAL \regFile|mux_readData2|mux1|i_out~5_combout\ : std_logic;
SIGNAL \regFile|row7|b1|int_q~feeder_combout\ : std_logic;
SIGNAL \regFile|row7|b1|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData1|mux1|choice~1_combout\ : std_logic;
SIGNAL \regFile|row3|b1|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData1|mux1|i_out~2_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux1|i_out~3_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux1|i_out~4_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|add1|o_CarryOut~0_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|add2|o_Sum~combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux2|choice~0_combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux2|choice~0_combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux2|choice~1_combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux2|choice~2_combout\ : std_logic;
SIGNAL \dataMemMux|mux2|mux_out~0_combout\ : std_logic;
SIGNAL \regFile|row5|b2|int_q~feeder_combout\ : std_logic;
SIGNAL \regFile|row5|b2|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData1|mux2|choice~4_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux2|choice~1_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux2|choice~2_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux2|choice~5_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|add2|o_CarryOut~0_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|add3|o_Sum~combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|o_Zero~2_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|o_Zero~3_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|o_Zero~4_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|o_Zero~5_combout\ : std_logic;
SIGNAL \arithmeticUnit|addSub|o_Zero~6_combout\ : std_logic;
SIGNAL \sig_branchSel~0_combout\ : std_logic;
SIGNAL \branchALU|add4|o_Sum~combout\ : std_logic;
SIGNAL \jumpMux|mux4|mux_out~0_combout\ : std_logic;
SIGNAL \pcRegister|b4|int_q~q\ : std_logic;
SIGNAL \jumpMux|mux3|mux_out~0_combout\ : std_logic;
SIGNAL \jumpMux|mux3|mux_out~1_combout\ : std_logic;
SIGNAL \pcRegister|b3|int_q~q\ : std_logic;
SIGNAL \jumpMux|mux2|mux_out~0_combout\ : std_logic;
SIGNAL \pcRegister|b2|int_q~q\ : std_logic;
SIGNAL \control|MemWrite~0_combout\ : std_logic;
SIGNAL \control|MemRead~0_combout\ : std_logic;
SIGNAL \arithmeticUnit|mux|mux0|i_out~2_combout\ : std_logic;
SIGNAL \dataMemMux|mux0|mux_out~0_combout\ : std_logic;
SIGNAL \outputMux|mux4|choice~1_combout\ : std_logic;
SIGNAL \outputMux|mux0|i_out~1_combout\ : std_logic;
SIGNAL \outputMux|mux2|choice~0_combout\ : std_logic;
SIGNAL \outputMux|mux0|i_out~0_combout\ : std_logic;
SIGNAL \outputMux|mux0|i_out~2_combout\ : std_logic;
SIGNAL \outputMux|mux0|i_out~3_combout\ : std_logic;
SIGNAL \control|ALUOp0~combout\ : std_logic;
SIGNAL \outputMux|mux1|i_out~1_combout\ : std_logic;
SIGNAL \outputMux|mux1|i_out~2_combout\ : std_logic;
SIGNAL \outputMux|mux1|i_out~3_combout\ : std_logic;
SIGNAL \outputMux|mux2|i_out~1_combout\ : std_logic;
SIGNAL \outputMux|mux4|choice~0_combout\ : std_logic;
SIGNAL \outputMux|mux2|i_out~0_combout\ : std_logic;
SIGNAL \outputMux|mux2|i_out~2_combout\ : std_logic;
SIGNAL \outputMux|mux2|i_out~3_combout\ : std_logic;
SIGNAL \outputMux|mux3|i_out~0_combout\ : std_logic;
SIGNAL \outputMux|mux3|i_out~2_combout\ : std_logic;
SIGNAL \outputMux|mux3|i_out~1_combout\ : std_logic;
SIGNAL \outputMux|mux3|i_out~3_combout\ : std_logic;
SIGNAL \outputMux|mux4|i_out~1_combout\ : std_logic;
SIGNAL \outputMux|mux4|i_out~0_combout\ : std_logic;
SIGNAL \outputMux|mux4|i_out~2_combout\ : std_logic;
SIGNAL \outputMux|mux4|i_out~3_combout\ : std_logic;
SIGNAL \outputMux|mux5|i_out~1_combout\ : std_logic;
SIGNAL \outputMux|mux5|i_out~2_combout\ : std_logic;
SIGNAL \control|Jump~0_combout\ : std_logic;
SIGNAL \outputMux|mux5|i_out~0_combout\ : std_logic;
SIGNAL \outputMux|mux5|i_out~3_combout\ : std_logic;
SIGNAL \regFile|row6|b6|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData1|mux6|choice~3_combout\ : std_logic;
SIGNAL \regFile|row3|b6|int_q~q\ : std_logic;
SIGNAL \regFile|row5|b6|int_q~q\ : std_logic;
SIGNAL \regFile|mux_readData1|mux6|choice~5_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux6|choice~6_combout\ : std_logic;
SIGNAL \regFile|mux_readData1|mux6|i_out~combout\ : std_logic;
SIGNAL \outputMux|mux6|i_out~0_combout\ : std_logic;
SIGNAL \outputMux|mux6|i_out~1_combout\ : std_logic;
SIGNAL \outputMux|mux6|i_out~2_combout\ : std_logic;
SIGNAL \outputMux|mux6|i_out~3_combout\ : std_logic;
SIGNAL \outputMux|mux7|choice~1_combout\ : std_logic;
SIGNAL \outputMux|mux7|choice~3_combout\ : std_logic;
SIGNAL \outputMux|mux7|choice~4_combout\ : std_logic;
SIGNAL \control|RegWrite~2_combout\ : std_logic;
SIGNAL \insMemory|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \aluCtrl|Op\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dataMemory|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \arithmeticUnit|addSub|b_Comp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \arithmeticUnit|addSub|ALT_INV_o_Zero~6_combout\ : std_logic;

BEGIN

ww_GClock <= GClock;
ww_GReset <= GReset;
ww_ValueSelect <= ValueSelect;
MuxOut <= ww_MuxOut;
InstructionOut <= ww_InstructionOut;
BranchOut <= ww_BranchOut;
ZeroOut <= ww_ZeroOut;
MemWriteOut <= ww_MemWriteOut;
RegWriteOut <= ww_RegWriteOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\pcRegister|b7|int_q~q\ & \pcRegister|b6|int_q~q\ & \pcRegister|b5|int_q~q\ & \pcRegister|b4|int_q~q\ & \pcRegister|b3|int_q~q\ & \pcRegister|b2|int_q~q\ & \~GND~combout\ & 
\~GND~combout\);

\insMemory|altsyncram_component|auto_generated|q_a\(0) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\insMemory|altsyncram_component|auto_generated|q_a\(1) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\insMemory|altsyncram_component|auto_generated|q_a\(2) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\insMemory|altsyncram_component|auto_generated|q_a\(3) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\insMemory|altsyncram_component|auto_generated|q_a\(4) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\insMemory|altsyncram_component|auto_generated|q_a\(5) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\insMemory|altsyncram_component|auto_generated|q_a\(6) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\insMemory|altsyncram_component|auto_generated|q_a\(7) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\insMemory|altsyncram_component|auto_generated|q_a\(8) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\insMemory|altsyncram_component|auto_generated|q_a\(9) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\insMemory|altsyncram_component|auto_generated|q_a\(10) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\insMemory|altsyncram_component|auto_generated|q_a\(11) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\insMemory|altsyncram_component|auto_generated|q_a\(12) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\insMemory|altsyncram_component|auto_generated|q_a\(13) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\insMemory|altsyncram_component|auto_generated|q_a\(14) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\insMemory|altsyncram_component|auto_generated|q_a\(15) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\insMemory|altsyncram_component|auto_generated|q_a\(16) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\insMemory|altsyncram_component|auto_generated|q_a\(17) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\insMemory|altsyncram_component|auto_generated|q_a\(18) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\insMemory|altsyncram_component|auto_generated|q_a\(19) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\insMemory|altsyncram_component|auto_generated|q_a\(20) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\insMemory|altsyncram_component|auto_generated|q_a\(21) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\insMemory|altsyncram_component|auto_generated|q_a\(22) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\insMemory|altsyncram_component|auto_generated|q_a\(23) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\insMemory|altsyncram_component|auto_generated|q_a\(24) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\insMemory|altsyncram_component|auto_generated|q_a\(25) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\insMemory|altsyncram_component|auto_generated|q_a\(26) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\insMemory|altsyncram_component|auto_generated|q_a\(27) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\insMemory|altsyncram_component|auto_generated|q_a\(28) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\insMemory|altsyncram_component|auto_generated|q_a\(29) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\insMemory|altsyncram_component|auto_generated|q_a\(30) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\insMemory|altsyncram_component|auto_generated|q_a\(31) <= \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);

\dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\regFile|mux_readData2|mux7|i_out~5_combout\ & \regFile|mux_readData2|mux6|i_out~5_combout\ & \regFile|mux_readData2|mux5|i_out~5_combout\ & \regFile|mux_readData2|mux4|i_out~5_combout\ & \regFile|mux_readData2|mux3|i_out~5_combout\ & 
\regFile|mux_readData2|mux2|i_out~5_combout\ & \regFile|mux_readData2|mux1|i_out~5_combout\ & \regFile|mux_readData2|mux0|i_out~6_combout\);

\dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\arithmeticUnit|mux|mux7|choice~1_combout\ & \arithmeticUnit|mux|mux6|choice~2_combout\ & \arithmeticUnit|mux|mux5|choice~2_combout\ & 
\arithmeticUnit|mux|mux4|choice~2_combout\ & \arithmeticUnit|mux|mux3|choice~2_combout\ & \arithmeticUnit|mux|mux2|choice~2_combout\ & \arithmeticUnit|mux|mux1|choice~4_combout\ & \arithmeticUnit|mux|mux0|i_out~3_combout\);

\dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\arithmeticUnit|mux|mux7|choice~1_combout\ & \arithmeticUnit|mux|mux6|choice~2_combout\ & \arithmeticUnit|mux|mux5|choice~2_combout\ & 
\arithmeticUnit|mux|mux4|choice~2_combout\ & \arithmeticUnit|mux|mux3|choice~2_combout\ & \arithmeticUnit|mux|mux2|choice~2_combout\ & \arithmeticUnit|mux|mux1|choice~4_combout\ & \arithmeticUnit|mux|mux0|i_out~3_combout\);

\dataMemory|altsyncram_component|auto_generated|q_b\(0) <= \dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\dataMemory|altsyncram_component|auto_generated|q_b\(1) <= \dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\dataMemory|altsyncram_component|auto_generated|q_b\(2) <= \dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\dataMemory|altsyncram_component|auto_generated|q_b\(3) <= \dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\dataMemory|altsyncram_component|auto_generated|q_b\(4) <= \dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\dataMemory|altsyncram_component|auto_generated|q_b\(5) <= \dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\dataMemory|altsyncram_component|auto_generated|q_b\(6) <= \dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\dataMemory|altsyncram_component|auto_generated|q_b\(7) <= \dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\GReset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GReset~input_o\);

\GClock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GClock~input_o\);
\arithmeticUnit|addSub|ALT_INV_o_Zero~6_combout\ <= NOT \arithmeticUnit|addSub|o_Zero~6_combout\;

-- Location: M9K_X64_Y63_N0
\dataMemory|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AA000000055",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../MIFs/instrMemTest.mif",
	init_file_layout => "port_a",
	logical_ram_name => "dataMem:dataMemory|altsyncram:altsyncram_component|altsyncram_gnt1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \control|MemWrite~2_combout\,
	portbre => \control|MemRead~0_combout\,
	clk0 => \GClock~inputclkctrl_outclk\,
	clk1 => \GClock~inputclkctrl_outclk\,
	ena0 => \control|MemWrite~2_combout\,
	ena1 => \dataMemory|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dataMemory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X62_Y65_N15
\regFile|row6|b0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \regFile|row6|b0|int_q~feeder_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row6|b0|int_q~q\);

-- Location: FF_X62_Y65_N13
\regFile|row6|b1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux1|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row6|b1|int_q~q\);

-- Location: LCCOMB_X62_Y65_N4
\regFile|mux_readData2|mux1|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux1|i_out~1_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(16) & (\regFile|row7|b1|int_q~q\)) # (!\insMemory|altsyncram_component|auto_generated|q_a\(16) & ((\regFile|row6|b1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row7|b1|int_q~q\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datad => \regFile|row6|b1|int_q~q\,
	combout => \regFile|mux_readData2|mux1|i_out~1_combout\);

-- Location: LCCOMB_X63_Y65_N26
\regFile|mux_readData1|mux1|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux1|i_out~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(22) & (\regFile|row2|b1|int_q~q\ & ((!\insMemory|altsyncram_component|auto_generated|q_a\(23))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(22) & (((\regFile|row4|b1|int_q~q\ & \insMemory|altsyncram_component|auto_generated|q_a\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datab => \regFile|row2|b1|int_q~q\,
	datac => \regFile|row4|b1|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	combout => \regFile|mux_readData1|mux1|i_out~0_combout\);

-- Location: LCCOMB_X63_Y65_N4
\regFile|mux_readData1|mux1|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux1|i_out~1_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(21) & ((\regFile|mux_readData1|mux1|i_out~0_combout\) # ((\regFile|row6|b1|int_q~q\ & \regFile|mux_readData1|mux5|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row6|b1|int_q~q\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datac => \regFile|mux_readData1|mux1|i_out~0_combout\,
	datad => \regFile|mux_readData1|mux5|choice~0_combout\,
	combout => \regFile|mux_readData1|mux1|i_out~1_combout\);

-- Location: LCCOMB_X65_Y63_N10
\regFile|mux_readData1|mux6|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux6|choice~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(23) & (\insMemory|altsyncram_component|auto_generated|q_a\(22) & \insMemory|altsyncram_component|auto_generated|q_a\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	combout => \regFile|mux_readData1|mux6|choice~0_combout\);

-- Location: LCCOMB_X66_Y64_N22
\outputMux|mux1|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux1|i_out~0_combout\ = (\outputMux|mux4|choice~0_combout\ & ((\ValueSelect[0]~input_o\ & ((\regFile|mux_readData2|mux1|i_out~5_combout\))) # (!\ValueSelect[0]~input_o\ & (\regFile|mux_readData1|mux1|i_out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux1|i_out~4_combout\,
	datab => \outputMux|mux4|choice~0_combout\,
	datac => \ValueSelect[0]~input_o\,
	datad => \regFile|mux_readData2|mux1|i_out~5_combout\,
	combout => \outputMux|mux1|i_out~0_combout\);

-- Location: FF_X65_Y65_N21
\regFile|row1|b2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux2|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row1|b2|int_q~q\);

-- Location: FF_X65_Y66_N31
\regFile|row2|b2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dataMemMux|mux2|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row2|b2|int_q~q\);

-- Location: LCCOMB_X65_Y65_N22
\regFile|mux_readData1|mux2|choice~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux2|choice~3_combout\ = (\regFile|mux_readData1|mux0|choice~0_combout\ & ((\regFile|row1|b2|int_q~q\) # ((!\regFile|mux_readData1|mux6|choice~1_combout\ & \regFile|row0|b2|int_q~q\)))) # 
-- (!\regFile|mux_readData1|mux0|choice~0_combout\ & (((!\regFile|mux_readData1|mux6|choice~1_combout\ & \regFile|row0|b2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux0|choice~0_combout\,
	datab => \regFile|row1|b2|int_q~q\,
	datac => \regFile|mux_readData1|mux6|choice~1_combout\,
	datad => \regFile|row0|b2|int_q~q\,
	combout => \regFile|mux_readData1|mux2|choice~3_combout\);

-- Location: FF_X65_Y66_N7
\regFile|row4|b3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dataMemMux|mux3|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row4|b3|int_q~q\);

-- Location: FF_X65_Y67_N11
\regFile|row5|b3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \regFile|row5|b3|int_q~feeder_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row5|b3|int_q~q\);

-- Location: LCCOMB_X66_Y65_N8
\regFile|mux_readData2|mux3|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux3|i_out~3_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(18) & (\regFile|row5|b3|int_q~q\ & ((!\insMemory|altsyncram_component|auto_generated|q_a\(17))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(18) & (((\regFile|row3|b3|int_q~q\ & \insMemory|altsyncram_component|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datab => \regFile|row5|b3|int_q~q\,
	datac => \regFile|row3|b3|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux3|i_out~3_combout\);

-- Location: LCCOMB_X66_Y65_N6
\regFile|mux_readData2|mux3|i_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux3|i_out~4_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(16) & ((\regFile|mux_readData2|mux3|i_out~3_combout\) # ((\regFile|row7|b3|int_q~q\ & \regFile|mux_readData2|mux7|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datab => \regFile|mux_readData2|mux3|i_out~3_combout\,
	datac => \regFile|row7|b3|int_q~q\,
	datad => \regFile|mux_readData2|mux7|choice~0_combout\,
	combout => \regFile|mux_readData2|mux3|i_out~4_combout\);

-- Location: LCCOMB_X65_Y65_N28
\regFile|mux_readData1|mux3|choice~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux3|choice~1_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(23) & (((!\insMemory|altsyncram_component|auto_generated|q_a\(22) & \regFile|row4|b3|int_q~q\)))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(23) & (\regFile|row2|b3|int_q~q\ & (\insMemory|altsyncram_component|auto_generated|q_a\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row2|b3|int_q~q\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datad => \regFile|row4|b3|int_q~q\,
	combout => \regFile|mux_readData1|mux3|choice~1_combout\);

-- Location: LCCOMB_X65_Y65_N26
\regFile|mux_readData1|mux3|choice~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux3|choice~2_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(21) & ((\regFile|mux_readData1|mux3|choice~1_combout\) # ((\regFile|row6|b3|int_q~q\ & \regFile|mux_readData1|mux5|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row6|b3|int_q~q\,
	datab => \regFile|mux_readData1|mux5|choice~0_combout\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datad => \regFile|mux_readData1|mux3|choice~1_combout\,
	combout => \regFile|mux_readData1|mux3|choice~2_combout\);

-- Location: FF_X63_Y66_N29
\regFile|row5|b5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \regFile|row5|b5|int_q~feeder_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row5|b5|int_q~q\);

-- Location: FF_X66_Y65_N1
\regFile|row3|b5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux5|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row3|b5|int_q~q\);

-- Location: LCCOMB_X66_Y65_N0
\regFile|mux_readData2|mux5|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux5|i_out~3_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(17) & (((\regFile|row3|b5|int_q~q\ & !\insMemory|altsyncram_component|auto_generated|q_a\(18))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(17) & (\regFile|row5|b5|int_q~q\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	datab => \regFile|row5|b5|int_q~q\,
	datac => \regFile|row3|b5|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	combout => \regFile|mux_readData2|mux5|i_out~3_combout\);

-- Location: LCCOMB_X66_Y65_N26
\regFile|mux_readData2|mux5|i_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux5|i_out~4_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(16) & ((\regFile|mux_readData2|mux5|i_out~3_combout\) # ((\regFile|mux_readData2|mux7|choice~0_combout\ & \regFile|row7|b5|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datab => \regFile|mux_readData2|mux7|choice~0_combout\,
	datac => \regFile|row7|b5|int_q~q\,
	datad => \regFile|mux_readData2|mux5|i_out~3_combout\,
	combout => \regFile|mux_readData2|mux5|i_out~4_combout\);

-- Location: LCCOMB_X63_Y66_N26
\regFile|mux_readData1|mux5|choice~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux5|choice~5_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(23) & (\regFile|row5|b5|int_q~q\ & (!\insMemory|altsyncram_component|auto_generated|q_a\(22)))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(23) & (((\insMemory|altsyncram_component|auto_generated|q_a\(22) & \regFile|row3|b5|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row5|b5|int_q~q\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datad => \regFile|row3|b5|int_q~q\,
	combout => \regFile|mux_readData1|mux5|choice~5_combout\);

-- Location: LCCOMB_X67_Y65_N4
\regFile|mux_readData2|mux6|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux6|i_out~3_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(18) & (((\regFile|row5|b6|int_q~q\ & !\insMemory|altsyncram_component|auto_generated|q_a\(17))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(18) & (\regFile|row3|b6|int_q~q\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datab => \regFile|row3|b6|int_q~q\,
	datac => \regFile|row5|b6|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux6|i_out~3_combout\);

-- Location: LCCOMB_X66_Y65_N28
\regFile|mux_readData2|mux6|i_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux6|i_out~4_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(16) & ((\regFile|mux_readData2|mux6|i_out~3_combout\) # ((\regFile|mux_readData2|mux7|choice~0_combout\ & \regFile|row7|b6|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datab => \regFile|mux_readData2|mux7|choice~0_combout\,
	datac => \regFile|row7|b6|int_q~q\,
	datad => \regFile|mux_readData2|mux6|i_out~3_combout\,
	combout => \regFile|mux_readData2|mux6|i_out~4_combout\);

-- Location: LCCOMB_X63_Y65_N12
\regFile|mux_readData1|mux6|choice~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux6|choice~2_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(22) & (((\regFile|row2|b6|int_q~q\ & !\insMemory|altsyncram_component|auto_generated|q_a\(23))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(22) & (\regFile|row4|b6|int_q~q\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datab => \regFile|row4|b6|int_q~q\,
	datac => \regFile|row2|b6|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	combout => \regFile|mux_readData1|mux6|choice~2_combout\);

-- Location: LCCOMB_X63_Y65_N10
\regFile|mux_readData1|mux6|choice~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux6|choice~4_combout\ = (\regFile|mux_readData1|mux6|choice~1_combout\ & (((\regFile|row1|b6|int_q~q\ & \regFile|mux_readData1|mux0|choice~0_combout\)))) # (!\regFile|mux_readData1|mux6|choice~1_combout\ & 
-- ((\regFile|row0|b6|int_q~q\) # ((\regFile|row1|b6|int_q~q\ & \regFile|mux_readData1|mux0|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux6|choice~1_combout\,
	datab => \regFile|row0|b6|int_q~q\,
	datac => \regFile|row1|b6|int_q~q\,
	datad => \regFile|mux_readData1|mux0|choice~0_combout\,
	combout => \regFile|mux_readData1|mux6|choice~4_combout\);

-- Location: FF_X65_Y66_N17
\regFile|row4|b7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux7|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row4|b7|int_q~q\);

-- Location: FF_X65_Y66_N11
\regFile|row2|b7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux7|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row2|b7|int_q~q\);

-- Location: LCCOMB_X65_Y66_N10
\regFile|mux_readData2|mux7|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux7|i_out~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(18) & (\regFile|row4|b7|int_q~q\ & ((!\insMemory|altsyncram_component|auto_generated|q_a\(17))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(18) & (((\regFile|row2|b7|int_q~q\ & \insMemory|altsyncram_component|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datab => \regFile|row4|b7|int_q~q\,
	datac => \regFile|row2|b7|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux7|i_out~0_combout\);

-- Location: FF_X67_Y66_N7
\regFile|row1|b7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \regFile|row1|b7|int_q~feeder_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row1|b7|int_q~q\);

-- Location: LCCOMB_X65_Y66_N16
\regFile|mux_readData1|mux7|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux7|i_out~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(23) & (((\regFile|row4|b7|int_q~q\ & !\insMemory|altsyncram_component|auto_generated|q_a\(22))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(23) & (\regFile|row2|b7|int_q~q\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row2|b7|int_q~q\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datac => \regFile|row4|b7|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	combout => \regFile|mux_readData1|mux7|i_out~0_combout\);

-- Location: LCCOMB_X66_Y66_N28
\regFile|mux_readData1|mux7|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux7|i_out~1_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(21) & ((\regFile|mux_readData1|mux7|i_out~0_combout\) # ((\regFile|row6|b7|int_q~q\ & \regFile|mux_readData1|mux5|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row6|b7|int_q~q\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datac => \regFile|mux_readData1|mux7|i_out~0_combout\,
	datad => \regFile|mux_readData1|mux5|choice~0_combout\,
	combout => \regFile|mux_readData1|mux7|i_out~1_combout\);

-- Location: LCCOMB_X66_Y66_N14
\regFile|mux_readData1|mux7|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux7|i_out~2_combout\ = (\regFile|mux_readData1|mux7|i_out~1_combout\) # ((!\regFile|mux_readData1|mux6|choice~1_combout\ & \regFile|row0|b7|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regFile|mux_readData1|mux6|choice~1_combout\,
	datac => \regFile|row0|b7|int_q~q\,
	datad => \regFile|mux_readData1|mux7|i_out~1_combout\,
	combout => \regFile|mux_readData1|mux7|i_out~2_combout\);

-- Location: LCCOMB_X67_Y65_N14
\regFile|mux_readData1|mux7|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux7|i_out~3_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(23) & (\regFile|row5|b7|int_q~q\ & ((!\insMemory|altsyncram_component|auto_generated|q_a\(22))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(23) & (((\regFile|row3|b7|int_q~q\ & \insMemory|altsyncram_component|auto_generated|q_a\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datab => \regFile|row5|b7|int_q~q\,
	datac => \regFile|row3|b7|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	combout => \regFile|mux_readData1|mux7|i_out~3_combout\);

-- Location: LCCOMB_X67_Y65_N8
\regFile|mux_readData1|mux7|i_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux7|i_out~4_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(21) & ((\regFile|mux_readData1|mux7|i_out~3_combout\) # ((\regFile|row7|b7|int_q~q\ & \regFile|mux_readData1|mux5|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row7|b7|int_q~q\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datac => \regFile|mux_readData1|mux7|i_out~3_combout\,
	datad => \regFile|mux_readData1|mux5|choice~0_combout\,
	combout => \regFile|mux_readData1|mux7|i_out~4_combout\);

-- Location: LCCOMB_X66_Y66_N24
\regFile|mux_readData1|mux7|i_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux7|i_out~5_combout\ = (\regFile|mux_readData1|mux7|i_out~2_combout\) # ((\regFile|mux_readData1|mux7|i_out~4_combout\) # ((\regFile|row1|b7|int_q~q\ & \regFile|mux_readData1|mux0|choice~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row1|b7|int_q~q\,
	datab => \regFile|mux_readData1|mux0|choice~0_combout\,
	datac => \regFile|mux_readData1|mux7|i_out~2_combout\,
	datad => \regFile|mux_readData1|mux7|i_out~4_combout\,
	combout => \regFile|mux_readData1|mux7|i_out~5_combout\);

-- Location: LCCOMB_X62_Y65_N22
\outputMux|mux7|choice~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux7|choice~2_combout\ = (\outputMux|mux4|choice~0_combout\ & ((\ValueSelect[0]~input_o\ & (\regFile|mux_readData2|mux7|i_out~5_combout\)) # (!\ValueSelect[0]~input_o\ & ((\regFile|mux_readData1|mux7|i_out~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputMux|mux4|choice~0_combout\,
	datab => \ValueSelect[0]~input_o\,
	datac => \regFile|mux_readData2|mux7|i_out~5_combout\,
	datad => \regFile|mux_readData1|mux7|i_out~5_combout\,
	combout => \outputMux|mux7|choice~2_combout\);

-- Location: LCCOMB_X67_Y65_N30
\arithmeticUnit|addSub|add0|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|add0|o_Sum~combout\ = \regFile|mux_readData1|mux0|i_out~5_combout\ $ (((\control|MemWrite~1_combout\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(0)))) # (!\control|MemWrite~1_combout\ & 
-- (\regFile|mux_readData2|mux0|i_out~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData2|mux0|i_out~6_combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(0),
	datac => \control|MemWrite~1_combout\,
	datad => \regFile|mux_readData1|mux0|i_out~5_combout\,
	combout => \arithmeticUnit|addSub|add0|o_Sum~combout\);

-- Location: LCCOMB_X69_Y63_N6
\pcPlus4|add5|int_CarryOut1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcPlus4|add5|int_CarryOut1~combout\ = \pcRegister|b5|int_q~q\ $ (((\pcRegister|b2|int_q~q\ & (\pcRegister|b4|int_q~q\ & \pcRegister|b3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcRegister|b2|int_q~q\,
	datab => \pcRegister|b5|int_q~q\,
	datac => \pcRegister|b4|int_q~q\,
	datad => \pcRegister|b3|int_q~q\,
	combout => \pcPlus4|add5|int_CarryOut1~combout\);

-- Location: LCCOMB_X68_Y63_N6
\pcPlus4|add6|int_CarryOut1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcPlus4|add6|int_CarryOut1~combout\ = \pcRegister|b6|int_q~q\ $ (\pcPlus4|add5|int_CarryOut3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pcRegister|b6|int_q~q\,
	datad => \pcPlus4|add5|int_CarryOut3~combout\,
	combout => \pcPlus4|add6|int_CarryOut1~combout\);

-- Location: LCCOMB_X69_Y63_N4
\pcPlus4|add4|int_CarryOut3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcPlus4|add4|int_CarryOut3~combout\ = (\pcRegister|b2|int_q~q\ & (\pcRegister|b4|int_q~q\ & \pcRegister|b3|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcRegister|b2|int_q~q\,
	datac => \pcRegister|b4|int_q~q\,
	datad => \pcRegister|b3|int_q~q\,
	combout => \pcPlus4|add4|int_CarryOut3~combout\);

-- Location: LCCOMB_X67_Y63_N4
\aluMux|mux7|mux_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluMux|mux7|mux_out~2_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(31) & ((\control|MemWrite~0_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(7))) # (!\control|MemWrite~0_combout\ & 
-- ((\regFile|mux_readData2|mux7|i_out~5_combout\))))) # (!\insMemory|altsyncram_component|auto_generated|q_a\(31) & (((\regFile|mux_readData2|mux7|i_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(31),
	datab => \control|MemWrite~0_combout\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(7),
	datad => \regFile|mux_readData2|mux7|i_out~5_combout\,
	combout => \aluMux|mux7|mux_out~2_combout\);

-- Location: LCCOMB_X67_Y63_N10
\arithmeticUnit|addSub|o_Zero~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|o_Zero~7_combout\ = \aluCtrl|Op\(0) $ (\aluMux|mux7|mux_out~2_combout\ $ (!\regFile|mux_readData1|mux7|i_out~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluCtrl|Op\(0),
	datac => \aluMux|mux7|mux_out~2_combout\,
	datad => \regFile|mux_readData1|mux7|i_out~5_combout\,
	combout => \arithmeticUnit|addSub|o_Zero~7_combout\);

-- Location: LCCOMB_X67_Y63_N12
\arithmeticUnit|mux|mux7|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux7|choice~0_combout\ = (\control|ALUOp1~0_combout\ & (\aluCtrl|Op\(0) $ (\aluMux|mux7|mux_out~2_combout\ $ (\regFile|mux_readData1|mux7|i_out~5_combout\)))) # (!\control|ALUOp1~0_combout\ & ((\aluCtrl|Op\(0) & 
-- ((\aluMux|mux7|mux_out~2_combout\) # (\regFile|mux_readData1|mux7|i_out~5_combout\))) # (!\aluCtrl|Op\(0) & (\aluMux|mux7|mux_out~2_combout\ & \regFile|mux_readData1|mux7|i_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALUOp1~0_combout\,
	datab => \aluCtrl|Op\(0),
	datac => \aluMux|mux7|mux_out~2_combout\,
	datad => \regFile|mux_readData1|mux7|i_out~5_combout\,
	combout => \arithmeticUnit|mux|mux7|choice~0_combout\);

-- Location: IOIBUF_X52_Y73_N22
\ValueSelect[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ValueSelect(1),
	o => \ValueSelect[1]~input_o\);

-- Location: LCCOMB_X62_Y65_N14
\regFile|row6|b0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|row6|b0|int_q~feeder_combout\ = \dataMemMux|mux0|mux_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dataMemMux|mux0|mux_out~0_combout\,
	combout => \regFile|row6|b0|int_q~feeder_combout\);

-- Location: LCCOMB_X65_Y67_N10
\regFile|row5|b3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|row5|b3|int_q~feeder_combout\ = \dataMemMux|mux3|mux_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataMemMux|mux3|mux_out~0_combout\,
	combout => \regFile|row5|b3|int_q~feeder_combout\);

-- Location: LCCOMB_X63_Y66_N28
\regFile|row5|b5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|row5|b5|int_q~feeder_combout\ = \dataMemMux|mux5|mux_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataMemMux|mux5|mux_out~0_combout\,
	combout => \regFile|row5|b5|int_q~feeder_combout\);

-- Location: LCCOMB_X67_Y66_N6
\regFile|row1|b7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|row1|b7|int_q~feeder_combout\ = \dataMemMux|mux7|mux_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataMemMux|mux7|mux_out~0_combout\,
	combout => \regFile|row1|b7|int_q~feeder_combout\);

-- Location: IOOBUF_X81_Y73_N9
\MuxOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputMux|mux0|i_out~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[0]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\MuxOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputMux|mux1|i_out~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[1]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\MuxOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputMux|mux2|i_out~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[2]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\MuxOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputMux|mux3|i_out~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[3]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\MuxOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputMux|mux4|i_out~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[4]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\MuxOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputMux|mux5|i_out~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[5]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\MuxOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputMux|mux6|i_out~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\MuxOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputMux|mux7|choice~4_combout\,
	devoe => ww_devoe,
	o => \MuxOut[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\InstructionOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \InstructionOut[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\InstructionOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \InstructionOut[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\InstructionOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \InstructionOut[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\InstructionOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \InstructionOut[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\InstructionOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \InstructionOut[4]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\InstructionOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \InstructionOut[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\InstructionOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \InstructionOut[6]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\InstructionOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \InstructionOut[7]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\InstructionOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \InstructionOut[8]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\InstructionOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \InstructionOut[9]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\InstructionOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \InstructionOut[10]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\InstructionOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \InstructionOut[11]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\InstructionOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \InstructionOut[12]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\InstructionOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \InstructionOut[13]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\InstructionOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \InstructionOut[14]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\InstructionOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \InstructionOut[15]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\InstructionOut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \InstructionOut[16]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\InstructionOut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \InstructionOut[17]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\InstructionOut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \InstructionOut[18]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\InstructionOut[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \InstructionOut[19]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\InstructionOut[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \InstructionOut[20]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\InstructionOut[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \InstructionOut[21]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\InstructionOut[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \InstructionOut[22]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\InstructionOut[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \InstructionOut[23]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\InstructionOut[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \InstructionOut[24]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\InstructionOut[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \InstructionOut[25]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\InstructionOut[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \InstructionOut[26]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\InstructionOut[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \InstructionOut[27]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\InstructionOut[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \InstructionOut[28]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\InstructionOut[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \InstructionOut[29]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\InstructionOut[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \InstructionOut[30]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\InstructionOut[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insMemory|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \InstructionOut[31]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\BranchOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control|ALUOp0~combout\,
	devoe => ww_devoe,
	o => \BranchOut~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\ZeroOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \arithmeticUnit|addSub|ALT_INV_o_Zero~6_combout\,
	devoe => ww_devoe,
	o => \ZeroOut~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\MemWriteOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control|MemWrite~2_combout\,
	devoe => ww_devoe,
	o => \MemWriteOut~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\RegWriteOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control|RegWrite~2_combout\,
	devoe => ww_devoe,
	o => \RegWriteOut~output_o\);

-- Location: IOIBUF_X62_Y73_N15
\ValueSelect[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ValueSelect(0),
	o => \ValueSelect[0]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\ValueSelect[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ValueSelect(2),
	o => \ValueSelect[2]~input_o\);

-- Location: LCCOMB_X62_Y65_N16
\outputMux|mux7|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux7|choice~0_combout\ = (!\ValueSelect[1]~input_o\ & (!\ValueSelect[0]~input_o\ & \ValueSelect[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[1]~input_o\,
	datab => \ValueSelect[0]~input_o\,
	datac => \ValueSelect[2]~input_o\,
	combout => \outputMux|mux7|choice~0_combout\);

-- Location: IOIBUF_X0_Y36_N8
\GClock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GClock,
	o => \GClock~input_o\);

-- Location: CLKCTRL_G2
\GClock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GClock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GClock~inputclkctrl_outclk\);

-- Location: LCCOMB_X62_Y65_N30
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X68_Y63_N18
\branchALU|add3|int_CarryOut2\ : cycloneive_lcell_comb
-- Equation(s):
-- \branchALU|add3|int_CarryOut2~combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(1) & (\pcRegister|b3|int_q~q\ $ (((\insMemory|altsyncram_component|auto_generated|q_a\(0)) # (\pcRegister|b2|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(0),
	datab => \pcRegister|b2|int_q~q\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(1),
	datad => \pcRegister|b3|int_q~q\,
	combout => \branchALU|add3|int_CarryOut2~combout\);

-- Location: LCCOMB_X69_Y63_N20
\pcPlus4|add4|int_CarryOut1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcPlus4|add4|int_CarryOut1~combout\ = \pcRegister|b4|int_q~q\ $ (((\pcRegister|b2|int_q~q\ & \pcRegister|b3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcRegister|b2|int_q~q\,
	datac => \pcRegister|b4|int_q~q\,
	datad => \pcRegister|b3|int_q~q\,
	combout => \pcPlus4|add4|int_CarryOut1~combout\);

-- Location: LCCOMB_X68_Y63_N12
\branchALU|add3|int_CarryOut3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branchALU|add3|int_CarryOut3~0_combout\ = (\pcRegister|b2|int_q~q\) # ((!\pcRegister|b3|int_q~q\) # (!\insMemory|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pcRegister|b2|int_q~q\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(0),
	datad => \pcRegister|b3|int_q~q\,
	combout => \branchALU|add3|int_CarryOut3~0_combout\);

-- Location: LCCOMB_X68_Y63_N4
\branchALU|add4|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branchALU|add4|o_CarryOut~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(2) & ((\branchALU|add3|int_CarryOut2~combout\) # ((\pcPlus4|add4|int_CarryOut1~combout\) # (!\branchALU|add3|int_CarryOut3~0_combout\)))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(2) & (\pcPlus4|add4|int_CarryOut1~combout\ & ((\branchALU|add3|int_CarryOut2~combout\) # (!\branchALU|add3|int_CarryOut3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(2),
	datab => \branchALU|add3|int_CarryOut2~combout\,
	datac => \pcPlus4|add4|int_CarryOut1~combout\,
	datad => \branchALU|add3|int_CarryOut3~0_combout\,
	combout => \branchALU|add4|o_CarryOut~0_combout\);

-- Location: LCCOMB_X68_Y63_N28
\branchALU|add5|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branchALU|add5|o_CarryOut~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(3) & ((\branchALU|add4|o_CarryOut~0_combout\) # (\pcPlus4|add4|int_CarryOut3~combout\ $ (\pcRegister|b5|int_q~q\)))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(3) & (\branchALU|add4|o_CarryOut~0_combout\ & (\pcPlus4|add4|int_CarryOut3~combout\ $ (\pcRegister|b5|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcPlus4|add4|int_CarryOut3~combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(3),
	datac => \branchALU|add4|o_CarryOut~0_combout\,
	datad => \pcRegister|b5|int_q~q\,
	combout => \branchALU|add5|o_CarryOut~0_combout\);

-- Location: LCCOMB_X68_Y64_N28
\pcPlus4|add5|int_CarryOut3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcPlus4|add5|int_CarryOut3~combout\ = (\pcRegister|b4|int_q~q\ & (\pcRegister|b3|int_q~q\ & (\pcRegister|b2|int_q~q\ & \pcRegister|b5|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcRegister|b4|int_q~q\,
	datab => \pcRegister|b3|int_q~q\,
	datac => \pcRegister|b2|int_q~q\,
	datad => \pcRegister|b5|int_q~q\,
	combout => \pcPlus4|add5|int_CarryOut3~combout\);

-- Location: LCCOMB_X68_Y63_N16
\pcPlus4|add7|int_CarryOut1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcPlus4|add7|int_CarryOut1~combout\ = \pcRegister|b7|int_q~q\ $ (((\pcRegister|b6|int_q~q\ & \pcPlus4|add5|int_CarryOut3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcRegister|b6|int_q~q\,
	datab => \pcRegister|b7|int_q~q\,
	datad => \pcPlus4|add5|int_CarryOut3~combout\,
	combout => \pcPlus4|add7|int_CarryOut1~combout\);

-- Location: LCCOMB_X68_Y63_N30
\branchALU|add6|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branchALU|add6|o_CarryOut~0_combout\ = (\branchALU|add5|o_CarryOut~0_combout\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(4)) # (\pcRegister|b6|int_q~q\ $ (\pcPlus4|add5|int_CarryOut3~combout\)))) # (!\branchALU|add5|o_CarryOut~0_combout\ & 
-- (\insMemory|altsyncram_component|auto_generated|q_a\(4) & (\pcRegister|b6|int_q~q\ $ (\pcPlus4|add5|int_CarryOut3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcRegister|b6|int_q~q\,
	datab => \branchALU|add5|o_CarryOut~0_combout\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(4),
	datad => \pcPlus4|add5|int_CarryOut3~combout\,
	combout => \branchALU|add6|o_CarryOut~0_combout\);

-- Location: LCCOMB_X68_Y63_N20
\jumpMux|mux7|mux_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \jumpMux|mux7|mux_out~0_combout\ = \pcPlus4|add7|int_CarryOut1~combout\ $ (((\sig_branchSel~0_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(5) $ (\branchALU|add6|o_CarryOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(5),
	datab => \pcPlus4|add7|int_CarryOut1~combout\,
	datac => \sig_branchSel~0_combout\,
	datad => \branchALU|add6|o_CarryOut~0_combout\,
	combout => \jumpMux|mux7|mux_out~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\GReset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GReset,
	o => \GReset~input_o\);

-- Location: CLKCTRL_G4
\GReset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GReset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GReset~inputclkctrl_outclk\);

-- Location: FF_X68_Y63_N21
\pcRegister|b7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \jumpMux|mux7|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcRegister|b7|int_q~q\);

-- Location: M9K_X64_Y65_N0
\insMemory|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001021FFF800000000000000000000000000001021FFF400000000000000000000000000000800000B00000000000000000000000000008C02000400000000000000000000000000008C0200030000000000000000000000000000AC0100040000000000000000000000000000004308200000000000000000000000000000AC04000300000000000000000000000000000023202500000000000000000000000000000043082200000000000000000000000000008C03000100000000000000000000000000008C020000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../MIFs/verificationTest.mif",
	init_file_layout => "port_a",
	logical_ram_name => "instrMem:insMemory|altsyncram:altsyncram_component|altsyncram_pua1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 36,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \GClock~inputclkctrl_outclk\,
	portaaddr => \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \insMemory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X68_Y63_N26
\jumpMux|mux6|mux_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \jumpMux|mux6|mux_out~0_combout\ = \pcPlus4|add6|int_CarryOut1~combout\ $ (((\sig_branchSel~0_combout\ & (\branchALU|add5|o_CarryOut~0_combout\ $ (\insMemory|altsyncram_component|auto_generated|q_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcPlus4|add6|int_CarryOut1~combout\,
	datab => \branchALU|add5|o_CarryOut~0_combout\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(4),
	datad => \sig_branchSel~0_combout\,
	combout => \jumpMux|mux6|mux_out~0_combout\);

-- Location: FF_X68_Y63_N27
\pcRegister|b6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \jumpMux|mux6|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcRegister|b6|int_q~q\);

-- Location: LCCOMB_X68_Y63_N2
\jumpMux|mux5|mux_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \jumpMux|mux5|mux_out~0_combout\ = \pcPlus4|add5|int_CarryOut1~combout\ $ (((\sig_branchSel~0_combout\ & (\branchALU|add4|o_CarryOut~0_combout\ $ (\insMemory|altsyncram_component|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcPlus4|add5|int_CarryOut1~combout\,
	datab => \branchALU|add4|o_CarryOut~0_combout\,
	datac => \sig_branchSel~0_combout\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(3),
	combout => \jumpMux|mux5|mux_out~0_combout\);

-- Location: FF_X68_Y63_N3
\pcRegister|b5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \jumpMux|mux5|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcRegister|b5|int_q~q\);

-- Location: LCCOMB_X68_Y65_N4
\control|beq~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|beq~1_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(30) & (!\insMemory|altsyncram_component|auto_generated|q_a\(27) & (!\insMemory|altsyncram_component|auto_generated|q_a\(29) & 
-- !\insMemory|altsyncram_component|auto_generated|q_a\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(30),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(27),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(29),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(31),
	combout => \control|beq~1_combout\);

-- Location: LCCOMB_X63_Y63_N14
\aluCtrl|Op[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluCtrl|Op[0]~0_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(27) & !\insMemory|altsyncram_component|auto_generated|q_a\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(27),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(26),
	combout => \aluCtrl|Op[0]~0_combout\);

-- Location: LCCOMB_X63_Y63_N28
\control|beq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|beq~0_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(30) & (!\insMemory|altsyncram_component|auto_generated|q_a\(31) & !\insMemory|altsyncram_component|auto_generated|q_a\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(30),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(31),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(29),
	combout => \control|beq~0_combout\);

-- Location: LCCOMB_X63_Y63_N0
\aluCtrl|Op[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluCtrl|Op\(0) = (\aluCtrl|Op[0]~0_combout\ & (\control|beq~0_combout\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(28)) # (!\insMemory|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(28),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(3),
	datac => \aluCtrl|Op[0]~0_combout\,
	datad => \control|beq~0_combout\,
	combout => \aluCtrl|Op\(0));

-- Location: LCCOMB_X66_Y65_N24
\regFile|mux_readData2|mux6|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux6|choice~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(16) & (!\insMemory|altsyncram_component|auto_generated|q_a\(18) & !\insMemory|altsyncram_component|auto_generated|q_a\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux6|choice~0_combout\);

-- Location: LCCOMB_X63_Y63_N22
\control|ALUOp1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|ALUOp1~0_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(26) & (!\insMemory|altsyncram_component|auto_generated|q_a\(27) & \control|beq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(26),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(27),
	datad => \control|beq~0_combout\,
	combout => \control|ALUOp1~0_combout\);

-- Location: LCCOMB_X63_Y63_N2
\control|ALUOp1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|ALUOp1~combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(27)) # ((\insMemory|altsyncram_component|auto_generated|q_a\(28)) # ((\insMemory|altsyncram_component|auto_generated|q_a\(26)) # (!\control|beq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(27),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(28),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(26),
	datad => \control|beq~0_combout\,
	combout => \control|ALUOp1~combout\);

-- Location: LCCOMB_X66_Y67_N12
\regFile|sig_regWrite[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|sig_regWrite[1]~0_combout\ = (\control|ALUOp1~combout\ & (!\insMemory|altsyncram_component|auto_generated|q_a\(18) & ((\control|MemRead~0_combout\)))) # (!\control|ALUOp1~combout\ & (((!\insMemory|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(13),
	datac => \control|MemRead~0_combout\,
	datad => \control|ALUOp1~combout\,
	combout => \regFile|sig_regWrite[1]~0_combout\);

-- Location: LCCOMB_X66_Y67_N30
\regFile|sig_regWrite[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|sig_regWrite[1]~1_combout\ = (\regFile|sig_regWrite[1]~0_combout\ & ((\control|ALUOp1~combout\ & ((!\insMemory|altsyncram_component|auto_generated|q_a\(17)))) # (!\control|ALUOp1~combout\ & 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALUOp1~combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(12),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	datad => \regFile|sig_regWrite[1]~0_combout\,
	combout => \regFile|sig_regWrite[1]~1_combout\);

-- Location: LCCOMB_X66_Y67_N4
\regFile|sig_regWrite[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|sig_regWrite[0]~2_combout\ = (\regFile|sig_regWrite[1]~1_combout\ & ((\control|ALUOp1~combout\ & (!\insMemory|altsyncram_component|auto_generated|q_a\(16))) # (!\control|ALUOp1~combout\ & 
-- ((!\insMemory|altsyncram_component|auto_generated|q_a\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(11),
	datac => \regFile|sig_regWrite[1]~1_combout\,
	datad => \control|ALUOp1~combout\,
	combout => \regFile|sig_regWrite[0]~2_combout\);

-- Location: FF_X65_Y63_N1
\regFile|row0|b3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux3|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row0|b3|int_q~q\);

-- Location: LCCOMB_X65_Y65_N16
\regFile|mux_readData1|mux6|choice~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux6|choice~1_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(23)) # ((\insMemory|altsyncram_component|auto_generated|q_a\(22)) # (\insMemory|altsyncram_component|auto_generated|q_a\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	combout => \regFile|mux_readData1|mux6|choice~1_combout\);

-- Location: LCCOMB_X65_Y65_N24
\regFile|mux_readData1|mux3|choice~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux3|choice~3_combout\ = (\regFile|mux_readData1|mux0|choice~0_combout\ & ((\regFile|row1|b3|int_q~q\) # ((\regFile|row0|b3|int_q~q\ & !\regFile|mux_readData1|mux6|choice~1_combout\)))) # 
-- (!\regFile|mux_readData1|mux0|choice~0_combout\ & (\regFile|row0|b3|int_q~q\ & (!\regFile|mux_readData1|mux6|choice~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux0|choice~0_combout\,
	datab => \regFile|row0|b3|int_q~q\,
	datac => \regFile|mux_readData1|mux6|choice~1_combout\,
	datad => \regFile|row1|b3|int_q~q\,
	combout => \regFile|mux_readData1|mux3|choice~3_combout\);

-- Location: LCCOMB_X66_Y67_N14
\regFile|sig_regWrite[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|sig_regWrite[2]~7_combout\ = (\regFile|sig_regWrite[1]~0_combout\ & ((\control|ALUOp1~combout\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(17)))) # (!\control|ALUOp1~combout\ & 
-- (\insMemory|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALUOp1~combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(12),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	datad => \regFile|sig_regWrite[1]~0_combout\,
	combout => \regFile|sig_regWrite[2]~7_combout\);

-- Location: LCCOMB_X66_Y65_N16
\regFile|sig_regWrite[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|sig_regWrite[3]~12_combout\ = (\regFile|sig_regWrite[2]~7_combout\ & ((\control|ALUOp1~combout\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(16)))) # (!\control|ALUOp1~combout\ & 
-- (\insMemory|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALUOp1~combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(11),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datad => \regFile|sig_regWrite[2]~7_combout\,
	combout => \regFile|sig_regWrite[3]~12_combout\);

-- Location: FF_X66_Y65_N9
\regFile|row3|b3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux3|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row3|b3|int_q~q\);

-- Location: LCCOMB_X65_Y67_N4
\regFile|mux_readData1|mux3|choice~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux3|choice~4_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(22) & (((\regFile|row3|b3|int_q~q\ & !\insMemory|altsyncram_component|auto_generated|q_a\(23))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(22) & (\regFile|row5|b3|int_q~q\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row5|b3|int_q~q\,
	datab => \regFile|row3|b3|int_q~q\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	combout => \regFile|mux_readData1|mux3|choice~4_combout\);

-- Location: LCCOMB_X65_Y65_N14
\regFile|mux_readData1|mux3|choice~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux3|choice~5_combout\ = (\regFile|mux_readData1|mux3|choice~2_combout\) # ((\regFile|mux_readData1|mux3|choice~3_combout\) # ((\insMemory|altsyncram_component|auto_generated|q_a\(21) & 
-- \regFile|mux_readData1|mux3|choice~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux3|choice~2_combout\,
	datab => \regFile|mux_readData1|mux3|choice~3_combout\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datad => \regFile|mux_readData1|mux3|choice~4_combout\,
	combout => \regFile|mux_readData1|mux3|choice~5_combout\);

-- Location: LCCOMB_X62_Y63_N2
\arithmeticUnit|mux|mux3|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux3|choice~0_combout\ = (\aluCtrl|Op\(0)) # ((\control|MemWrite~1_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(3))) # (!\control|MemWrite~1_combout\ & ((\regFile|mux_readData2|mux3|i_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|MemWrite~1_combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(3),
	datac => \aluCtrl|Op\(0),
	datad => \regFile|mux_readData2|mux3|i_out~5_combout\,
	combout => \arithmeticUnit|mux|mux3|choice~0_combout\);

-- Location: LCCOMB_X62_Y63_N28
\arithmeticUnit|mux|mux3|choice~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux3|choice~1_combout\ = (!\control|ALUOp1~0_combout\ & (\arithmeticUnit|mux|mux3|choice~0_combout\ & ((\regFile|mux_readData1|mux3|choice~0_combout\) # (\regFile|mux_readData1|mux3|choice~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux3|choice~0_combout\,
	datab => \control|ALUOp1~0_combout\,
	datac => \regFile|mux_readData1|mux3|choice~5_combout\,
	datad => \arithmeticUnit|mux|mux3|choice~0_combout\,
	combout => \arithmeticUnit|mux|mux3|choice~1_combout\);

-- Location: LCCOMB_X66_Y63_N26
\arithmeticUnit|mux|mux3|choice~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux3|choice~2_combout\ = (!\aluCtrl|Op\(2) & ((\arithmeticUnit|mux|mux3|choice~1_combout\) # ((\control|ALUOp1~0_combout\ & \arithmeticUnit|addSub|add3|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluCtrl|Op\(2),
	datab => \control|ALUOp1~0_combout\,
	datac => \arithmeticUnit|mux|mux3|choice~1_combout\,
	datad => \arithmeticUnit|addSub|add3|o_Sum~combout\,
	combout => \arithmeticUnit|mux|mux3|choice~2_combout\);

-- Location: LCCOMB_X65_Y66_N6
\dataMemMux|mux3|mux_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataMemMux|mux3|mux_out~0_combout\ = (\control|MemRead~0_combout\ & (\dataMemory|altsyncram_component|auto_generated|q_b\(3))) # (!\control|MemRead~0_combout\ & ((\arithmeticUnit|mux|mux3|choice~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataMemory|altsyncram_component|auto_generated|q_b\(3),
	datab => \control|MemRead~0_combout\,
	datad => \arithmeticUnit|mux|mux3|choice~2_combout\,
	combout => \dataMemMux|mux3|mux_out~0_combout\);

-- Location: LCCOMB_X66_Y67_N16
\regFile|sig_regWrite[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|sig_regWrite[1]~9_combout\ = (\regFile|sig_regWrite[1]~1_combout\ & ((\control|ALUOp1~combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(16))) # (!\control|ALUOp1~combout\ & 
-- ((\insMemory|altsyncram_component|auto_generated|q_a\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(11),
	datac => \regFile|sig_regWrite[1]~1_combout\,
	datad => \control|ALUOp1~combout\,
	combout => \regFile|sig_regWrite[1]~9_combout\);

-- Location: FF_X65_Y63_N29
\regFile|row1|b3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux3|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row1|b3|int_q~q\);

-- Location: LCCOMB_X65_Y63_N2
\regFile|mux_readData2|mux6|choice~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux6|choice~1_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(16)) # ((\insMemory|altsyncram_component|auto_generated|q_a\(18)) # (\insMemory|altsyncram_component|auto_generated|q_a\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux6|choice~1_combout\);

-- Location: LCCOMB_X66_Y65_N18
\regFile|mux_readData2|mux7|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux7|choice~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(18) & \insMemory|altsyncram_component|auto_generated|q_a\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux7|choice~0_combout\);

-- Location: LCCOMB_X66_Y67_N18
\regFile|sig_regWrite[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|sig_regWrite[7]~3_combout\ = (\control|ALUOp1~combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(18) & ((\control|MemRead~0_combout\)))) # (!\control|ALUOp1~combout\ & (((\insMemory|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(13),
	datac => \control|MemRead~0_combout\,
	datad => \control|ALUOp1~combout\,
	combout => \regFile|sig_regWrite[7]~3_combout\);

-- Location: LCCOMB_X66_Y67_N0
\regFile|sig_regWrite[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|sig_regWrite[4]~4_combout\ = (\regFile|sig_regWrite[7]~3_combout\ & ((\control|ALUOp1~combout\ & ((!\insMemory|altsyncram_component|auto_generated|q_a\(16)))) # (!\control|ALUOp1~combout\ & 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALUOp1~combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(11),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datad => \regFile|sig_regWrite[7]~3_combout\,
	combout => \regFile|sig_regWrite[4]~4_combout\);

-- Location: LCCOMB_X66_Y67_N24
\regFile|sig_regWrite[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|sig_regWrite[6]~6_combout\ = (\regFile|sig_regWrite[4]~4_combout\ & ((\control|ALUOp1~combout\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(17)))) # (!\control|ALUOp1~combout\ & 
-- (\insMemory|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALUOp1~combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(12),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	datad => \regFile|sig_regWrite[4]~4_combout\,
	combout => \regFile|sig_regWrite[6]~6_combout\);

-- Location: FF_X66_Y66_N17
\regFile|row6|b3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux3|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row6|b3|int_q~q\);

-- Location: LCCOMB_X66_Y66_N30
\regFile|sig_regWrite[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|sig_regWrite[2]~8_combout\ = (\regFile|sig_regWrite[2]~7_combout\ & ((\control|ALUOp1~combout\ & (!\insMemory|altsyncram_component|auto_generated|q_a\(16))) # (!\control|ALUOp1~combout\ & 
-- ((!\insMemory|altsyncram_component|auto_generated|q_a\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALUOp1~combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(11),
	datad => \regFile|sig_regWrite[2]~7_combout\,
	combout => \regFile|sig_regWrite[2]~8_combout\);

-- Location: FF_X65_Y66_N13
\regFile|row2|b3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux3|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row2|b3|int_q~q\);

-- Location: LCCOMB_X65_Y66_N12
\regFile|mux_readData2|mux3|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux3|i_out~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(18) & (\regFile|row4|b3|int_q~q\ & ((!\insMemory|altsyncram_component|auto_generated|q_a\(17))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(18) & (((\regFile|row2|b3|int_q~q\ & \insMemory|altsyncram_component|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row4|b3|int_q~q\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datac => \regFile|row2|b3|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux3|i_out~0_combout\);

-- Location: LCCOMB_X66_Y66_N16
\regFile|mux_readData2|mux3|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux3|i_out~1_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(16) & ((\regFile|mux_readData2|mux3|i_out~0_combout\) # ((\regFile|mux_readData2|mux7|choice~0_combout\ & \regFile|row6|b3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datab => \regFile|mux_readData2|mux7|choice~0_combout\,
	datac => \regFile|row6|b3|int_q~q\,
	datad => \regFile|mux_readData2|mux3|i_out~0_combout\,
	combout => \regFile|mux_readData2|mux3|i_out~1_combout\);

-- Location: LCCOMB_X65_Y63_N0
\regFile|mux_readData2|mux3|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux3|i_out~2_combout\ = (\regFile|mux_readData2|mux3|i_out~1_combout\) # ((!\regFile|mux_readData2|mux6|choice~1_combout\ & \regFile|row0|b3|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regFile|mux_readData2|mux6|choice~1_combout\,
	datac => \regFile|row0|b3|int_q~q\,
	datad => \regFile|mux_readData2|mux3|i_out~1_combout\,
	combout => \regFile|mux_readData2|mux3|i_out~2_combout\);

-- Location: LCCOMB_X65_Y63_N28
\regFile|mux_readData2|mux3|i_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux3|i_out~5_combout\ = (\regFile|mux_readData2|mux3|i_out~4_combout\) # ((\regFile|mux_readData2|mux3|i_out~2_combout\) # ((\regFile|mux_readData2|mux6|choice~0_combout\ & \regFile|row1|b3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData2|mux3|i_out~4_combout\,
	datab => \regFile|mux_readData2|mux6|choice~0_combout\,
	datac => \regFile|row1|b3|int_q~q\,
	datad => \regFile|mux_readData2|mux3|i_out~2_combout\,
	combout => \regFile|mux_readData2|mux3|i_out~5_combout\);

-- Location: LCCOMB_X66_Y63_N8
\arithmeticUnit|addSub|b_Comp[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|b_Comp\(3) = \aluCtrl|Op\(0) $ (((\control|MemWrite~1_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(3))) # (!\control|MemWrite~1_combout\ & ((\regFile|mux_readData2|mux3|i_out~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|MemWrite~1_combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(3),
	datac => \aluCtrl|Op\(0),
	datad => \regFile|mux_readData2|mux3|i_out~5_combout\,
	combout => \arithmeticUnit|addSub|b_Comp\(3));

-- Location: LCCOMB_X63_Y63_N16
\aluCtrl|Op[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluCtrl|Op[2]~1_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(3) & (!\insMemory|altsyncram_component|auto_generated|q_a\(0) & (!\insMemory|altsyncram_component|auto_generated|q_a\(2) & 
-- \insMemory|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(3),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(0),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(2),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(1),
	combout => \aluCtrl|Op[2]~1_combout\);

-- Location: LCCOMB_X63_Y63_N8
\aluCtrl|Op[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluCtrl|Op\(2) = (!\control|ALUOp1~combout\ & \aluCtrl|Op[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|ALUOp1~combout\,
	datad => \aluCtrl|Op[2]~1_combout\,
	combout => \aluCtrl|Op\(2));

-- Location: LCCOMB_X66_Y66_N0
\regFile|row6|b2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|row6|b2|int_q~feeder_combout\ = \dataMemMux|mux2|mux_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataMemMux|mux2|mux_out~0_combout\,
	combout => \regFile|row6|b2|int_q~feeder_combout\);

-- Location: FF_X66_Y66_N1
\regFile|row6|b2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \regFile|row6|b2|int_q~feeder_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row6|b2|int_q~q\);

-- Location: LCCOMB_X66_Y67_N10
\regFile|sig_regWrite[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|sig_regWrite[7]~10_combout\ = (\regFile|sig_regWrite[7]~3_combout\ & ((\control|ALUOp1~combout\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(16)))) # (!\control|ALUOp1~combout\ & 
-- (\insMemory|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALUOp1~combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(11),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datad => \regFile|sig_regWrite[7]~3_combout\,
	combout => \regFile|sig_regWrite[7]~10_combout\);

-- Location: LCCOMB_X66_Y65_N22
\regFile|sig_regWrite[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|sig_regWrite[7]~13_combout\ = (\regFile|sig_regWrite[7]~10_combout\ & ((\control|ALUOp1~combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(17))) # (!\control|ALUOp1~combout\ & 
-- ((\insMemory|altsyncram_component|auto_generated|q_a\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(12),
	datac => \regFile|sig_regWrite[7]~10_combout\,
	datad => \control|ALUOp1~combout\,
	combout => \regFile|sig_regWrite[7]~13_combout\);

-- Location: FF_X66_Y66_N23
\regFile|row7|b2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux2|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row7|b2|int_q~q\);

-- Location: LCCOMB_X66_Y66_N22
\regFile|mux_readData2|mux2|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux2|i_out~1_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(16) & ((\regFile|row7|b2|int_q~q\))) # (!\insMemory|altsyncram_component|auto_generated|q_a\(16) & (\regFile|row6|b2|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regFile|row6|b2|int_q~q\,
	datac => \regFile|row7|b2|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	combout => \regFile|mux_readData2|mux2|i_out~1_combout\);

-- Location: LCCOMB_X66_Y65_N14
\regFile|mux_readData2|mux1|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux1|choice~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(16) & (!\insMemory|altsyncram_component|auto_generated|q_a\(18) & \insMemory|altsyncram_component|auto_generated|q_a\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux1|choice~0_combout\);

-- Location: FF_X66_Y65_N3
\regFile|row3|b2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux2|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row3|b2|int_q~q\);

-- Location: LCCOMB_X66_Y65_N2
\regFile|mux_readData2|mux2|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux2|i_out~0_combout\ = (\regFile|row1|b2|int_q~q\ & ((\regFile|mux_readData2|mux6|choice~0_combout\) # ((\regFile|mux_readData2|mux1|choice~0_combout\ & \regFile|row3|b2|int_q~q\)))) # (!\regFile|row1|b2|int_q~q\ & 
-- (\regFile|mux_readData2|mux1|choice~0_combout\ & (\regFile|row3|b2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row1|b2|int_q~q\,
	datab => \regFile|mux_readData2|mux1|choice~0_combout\,
	datac => \regFile|row3|b2|int_q~q\,
	datad => \regFile|mux_readData2|mux6|choice~0_combout\,
	combout => \regFile|mux_readData2|mux2|i_out~0_combout\);

-- Location: LCCOMB_X65_Y67_N16
\regFile|row0|b2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|row0|b2|int_q~feeder_combout\ = \dataMemMux|mux2|mux_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataMemMux|mux2|mux_out~0_combout\,
	combout => \regFile|row0|b2|int_q~feeder_combout\);

-- Location: FF_X65_Y67_N17
\regFile|row0|b2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \regFile|row0|b2|int_q~feeder_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row0|b2|int_q~q\);

-- Location: LCCOMB_X65_Y67_N12
\regFile|mux_readData2|mux2|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux2|i_out~3_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(17) & ((\insMemory|altsyncram_component|auto_generated|q_a\(18) & (\regFile|row5|b2|int_q~q\)) # (!\insMemory|altsyncram_component|auto_generated|q_a\(18) 
-- & ((\regFile|row0|b2|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row5|b2|int_q~q\,
	datab => \regFile|row0|b2|int_q~q\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux2|i_out~3_combout\);

-- Location: LCCOMB_X66_Y67_N26
\regFile|sig_regWrite[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|sig_regWrite[4]~5_combout\ = (\regFile|sig_regWrite[4]~4_combout\ & ((\control|ALUOp1~combout\ & ((!\insMemory|altsyncram_component|auto_generated|q_a\(17)))) # (!\control|ALUOp1~combout\ & 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALUOp1~combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(12),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	datad => \regFile|sig_regWrite[4]~4_combout\,
	combout => \regFile|sig_regWrite[4]~5_combout\);

-- Location: FF_X65_Y66_N9
\regFile|row4|b2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux2|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row4|b2|int_q~q\);

-- Location: LCCOMB_X65_Y66_N8
\regFile|mux_readData2|mux2|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux2|i_out~2_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(18) & (((\regFile|row4|b2|int_q~q\ & !\insMemory|altsyncram_component|auto_generated|q_a\(17))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(18) & (\regFile|row2|b2|int_q~q\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row2|b2|int_q~q\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datac => \regFile|row4|b2|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux2|i_out~2_combout\);

-- Location: LCCOMB_X66_Y63_N6
\regFile|mux_readData2|mux2|i_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux2|i_out~4_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(16) & (\insMemory|altsyncram_component|auto_generated|q_a\(18) & (\regFile|mux_readData2|mux2|i_out~3_combout\))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(16) & ((\regFile|mux_readData2|mux2|i_out~2_combout\) # ((!\insMemory|altsyncram_component|auto_generated|q_a\(18) & \regFile|mux_readData2|mux2|i_out~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datac => \regFile|mux_readData2|mux2|i_out~3_combout\,
	datad => \regFile|mux_readData2|mux2|i_out~2_combout\,
	combout => \regFile|mux_readData2|mux2|i_out~4_combout\);

-- Location: LCCOMB_X66_Y63_N16
\regFile|mux_readData2|mux2|i_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux2|i_out~5_combout\ = (\regFile|mux_readData2|mux2|i_out~0_combout\) # ((\regFile|mux_readData2|mux2|i_out~4_combout\) # ((\regFile|mux_readData2|mux7|choice~0_combout\ & \regFile|mux_readData2|mux2|i_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData2|mux7|choice~0_combout\,
	datab => \regFile|mux_readData2|mux2|i_out~1_combout\,
	datac => \regFile|mux_readData2|mux2|i_out~0_combout\,
	datad => \regFile|mux_readData2|mux2|i_out~4_combout\,
	combout => \regFile|mux_readData2|mux2|i_out~5_combout\);

-- Location: LCCOMB_X66_Y63_N14
\arithmeticUnit|addSub|b_Comp[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|b_Comp\(2) = \aluCtrl|Op\(0) $ (((\control|MemWrite~1_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(2))) # (!\control|MemWrite~1_combout\ & ((\regFile|mux_readData2|mux2|i_out~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|MemWrite~1_combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(2),
	datac => \aluCtrl|Op\(0),
	datad => \regFile|mux_readData2|mux2|i_out~5_combout\,
	combout => \arithmeticUnit|addSub|b_Comp\(2));

-- Location: FF_X63_Y65_N29
\regFile|row4|b0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux0|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row4|b0|int_q~q\);

-- Location: FF_X65_Y65_N17
\regFile|row0|b0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux0|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row0|b0|int_q~q\);

-- Location: LCCOMB_X63_Y65_N30
\regFile|mux_readData2|mux0|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux0|i_out~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(18) & (\regFile|row4|b0|int_q~q\)) # (!\insMemory|altsyncram_component|auto_generated|q_a\(18) & ((\regFile|row0|b0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regFile|row4|b0|int_q~q\,
	datac => \regFile|row0|b0|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	combout => \regFile|mux_readData2|mux0|i_out~0_combout\);

-- Location: FF_X63_Y65_N25
\regFile|row2|b0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux0|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row2|b0|int_q~q\);

-- Location: LCCOMB_X63_Y65_N24
\regFile|mux_readData2|mux0|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux0|i_out~1_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(18) & (\regFile|row6|b0|int_q~q\)) # (!\insMemory|altsyncram_component|auto_generated|q_a\(18) & ((\regFile|row2|b0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row6|b0|int_q~q\,
	datac => \regFile|row2|b0|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	combout => \regFile|mux_readData2|mux0|i_out~1_combout\);

-- Location: LCCOMB_X63_Y65_N14
\regFile|mux_readData2|mux0|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux0|i_out~2_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(16) & ((\insMemory|altsyncram_component|auto_generated|q_a\(17) & ((\regFile|mux_readData2|mux0|i_out~1_combout\))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(17) & (\regFile|mux_readData2|mux0|i_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	datac => \regFile|mux_readData2|mux0|i_out~0_combout\,
	datad => \regFile|mux_readData2|mux0|i_out~1_combout\,
	combout => \regFile|mux_readData2|mux0|i_out~2_combout\);

-- Location: LCCOMB_X68_Y65_N30
\control|MemWrite~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|MemWrite~1_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(31) & \control|MemWrite~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(31),
	datad => \control|MemWrite~0_combout\,
	combout => \control|MemWrite~1_combout\);

-- Location: LCCOMB_X66_Y67_N20
\regFile|sig_regWrite[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|sig_regWrite[5]~11_combout\ = (\regFile|sig_regWrite[7]~10_combout\ & ((\control|ALUOp1~combout\ & (!\insMemory|altsyncram_component|auto_generated|q_a\(17))) # (!\control|ALUOp1~combout\ & 
-- ((!\insMemory|altsyncram_component|auto_generated|q_a\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(12),
	datac => \regFile|sig_regWrite[7]~10_combout\,
	datad => \control|ALUOp1~combout\,
	combout => \regFile|sig_regWrite[5]~11_combout\);

-- Location: FF_X67_Y65_N25
\regFile|row5|b0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux0|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row5|b0|int_q~q\);

-- Location: LCCOMB_X67_Y65_N2
\regFile|mux_readData2|mux0|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux0|i_out~3_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(18) & (((\regFile|row5|b0|int_q~q\) # (\insMemory|altsyncram_component|auto_generated|q_a\(17))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(18) & (\regFile|row1|b0|int_q~q\ & ((!\insMemory|altsyncram_component|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row1|b0|int_q~q\,
	datab => \regFile|row5|b0|int_q~q\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux0|i_out~3_combout\);

-- Location: FF_X67_Y65_N21
\regFile|row3|b0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux0|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row3|b0|int_q~q\);

-- Location: LCCOMB_X67_Y65_N20
\regFile|mux_readData2|mux0|i_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux0|i_out~4_combout\ = (\regFile|mux_readData2|mux0|i_out~3_combout\ & (\regFile|row7|b0|int_q~q\)) # (!\regFile|mux_readData2|mux0|i_out~3_combout\ & ((\regFile|row3|b0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row7|b0|int_q~q\,
	datac => \regFile|row3|b0|int_q~q\,
	datad => \regFile|mux_readData2|mux0|i_out~3_combout\,
	combout => \regFile|mux_readData2|mux0|i_out~4_combout\);

-- Location: LCCOMB_X67_Y65_N6
\regFile|mux_readData2|mux0|i_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux0|i_out~5_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(16) & ((\insMemory|altsyncram_component|auto_generated|q_a\(17) & ((\regFile|mux_readData2|mux0|i_out~4_combout\))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(17) & (\regFile|mux_readData2|mux0|i_out~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	datab => \regFile|mux_readData2|mux0|i_out~3_combout\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datad => \regFile|mux_readData2|mux0|i_out~4_combout\,
	combout => \regFile|mux_readData2|mux0|i_out~5_combout\);

-- Location: LCCOMB_X67_Y65_N18
\aluMux|mux0|mux_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluMux|mux0|mux_out~0_combout\ = (\control|MemWrite~1_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(0))) # (!\control|MemWrite~1_combout\ & (((\regFile|mux_readData2|mux0|i_out~2_combout\) # 
-- (\regFile|mux_readData2|mux0|i_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(0),
	datab => \regFile|mux_readData2|mux0|i_out~2_combout\,
	datac => \control|MemWrite~1_combout\,
	datad => \regFile|mux_readData2|mux0|i_out~5_combout\,
	combout => \aluMux|mux0|mux_out~0_combout\);

-- Location: FF_X66_Y65_N13
\regFile|row7|b0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux0|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row7|b0|int_q~q\);

-- Location: LCCOMB_X66_Y65_N12
\regFile|mux_readData1|mux0|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux0|i_out~1_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(21) & ((\regFile|row7|b0|int_q~q\))) # (!\insMemory|altsyncram_component|auto_generated|q_a\(21) & (\regFile|row6|b0|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row6|b0|int_q~q\,
	datac => \regFile|row7|b0|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	combout => \regFile|mux_readData1|mux0|i_out~1_combout\);

-- Location: LCCOMB_X65_Y65_N8
\regFile|mux_readData1|mux0|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux0|i_out~2_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(22) & (((\regFile|row2|b0|int_q~q\ & !\insMemory|altsyncram_component|auto_generated|q_a\(23))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(22) & (\regFile|row4|b0|int_q~q\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row4|b0|int_q~q\,
	datab => \regFile|row2|b0|int_q~q\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	combout => \regFile|mux_readData1|mux0|i_out~2_combout\);

-- Location: LCCOMB_X65_Y65_N18
\regFile|mux_readData1|mux0|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux0|i_out~3_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(22) & ((\insMemory|altsyncram_component|auto_generated|q_a\(23) & (\regFile|row5|b0|int_q~q\)) # (!\insMemory|altsyncram_component|auto_generated|q_a\(23) 
-- & ((\regFile|row0|b0|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row5|b0|int_q~q\,
	datab => \regFile|row0|b0|int_q~q\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	combout => \regFile|mux_readData1|mux0|i_out~3_combout\);

-- Location: LCCOMB_X65_Y65_N4
\regFile|mux_readData1|mux0|i_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux0|i_out~4_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(21) & (\insMemory|altsyncram_component|auto_generated|q_a\(23) & ((\regFile|mux_readData1|mux0|i_out~3_combout\)))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(21) & ((\regFile|mux_readData1|mux0|i_out~2_combout\) # ((!\insMemory|altsyncram_component|auto_generated|q_a\(23) & \regFile|mux_readData1|mux0|i_out~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datac => \regFile|mux_readData1|mux0|i_out~2_combout\,
	datad => \regFile|mux_readData1|mux0|i_out~3_combout\,
	combout => \regFile|mux_readData1|mux0|i_out~4_combout\);

-- Location: LCCOMB_X65_Y65_N20
\regFile|mux_readData1|mux1|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux1|choice~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(21) & (\insMemory|altsyncram_component|auto_generated|q_a\(22) & !\insMemory|altsyncram_component|auto_generated|q_a\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	combout => \regFile|mux_readData1|mux1|choice~0_combout\);

-- Location: FF_X65_Y65_N3
\regFile|row1|b0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux0|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row1|b0|int_q~q\);

-- Location: LCCOMB_X65_Y65_N6
\regFile|mux_readData1|mux0|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux0|choice~0_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(23) & (!\insMemory|altsyncram_component|auto_generated|q_a\(22) & \insMemory|altsyncram_component|auto_generated|q_a\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	combout => \regFile|mux_readData1|mux0|choice~0_combout\);

-- Location: LCCOMB_X65_Y65_N2
\regFile|mux_readData1|mux0|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux0|i_out~0_combout\ = (\regFile|row3|b0|int_q~q\ & ((\regFile|mux_readData1|mux1|choice~0_combout\) # ((\regFile|row1|b0|int_q~q\ & \regFile|mux_readData1|mux0|choice~0_combout\)))) # (!\regFile|row3|b0|int_q~q\ & 
-- (((\regFile|row1|b0|int_q~q\ & \regFile|mux_readData1|mux0|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row3|b0|int_q~q\,
	datab => \regFile|mux_readData1|mux1|choice~0_combout\,
	datac => \regFile|row1|b0|int_q~q\,
	datad => \regFile|mux_readData1|mux0|choice~0_combout\,
	combout => \regFile|mux_readData1|mux0|i_out~0_combout\);

-- Location: LCCOMB_X65_Y65_N10
\regFile|mux_readData1|mux0|i_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux0|i_out~5_combout\ = (\regFile|mux_readData1|mux0|i_out~4_combout\) # ((\regFile|mux_readData1|mux0|i_out~0_combout\) # ((\regFile|mux_readData1|mux5|choice~0_combout\ & \regFile|mux_readData1|mux0|i_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux5|choice~0_combout\,
	datab => \regFile|mux_readData1|mux0|i_out~1_combout\,
	datac => \regFile|mux_readData1|mux0|i_out~4_combout\,
	datad => \regFile|mux_readData1|mux0|i_out~0_combout\,
	combout => \regFile|mux_readData1|mux0|i_out~5_combout\);

-- Location: LCCOMB_X66_Y63_N0
\arithmeticUnit|addSub|add0|int_CarryOut2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|add0|int_CarryOut2~combout\ = (\aluCtrl|Op\(0) & ((\aluMux|mux0|mux_out~0_combout\) # (\regFile|mux_readData1|mux0|i_out~5_combout\))) # (!\aluCtrl|Op\(0) & ((!\regFile|mux_readData1|mux0|i_out~5_combout\) # 
-- (!\aluMux|mux0|mux_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluCtrl|Op\(0),
	datac => \aluMux|mux0|mux_out~0_combout\,
	datad => \regFile|mux_readData1|mux0|i_out~5_combout\,
	combout => \arithmeticUnit|addSub|add0|int_CarryOut2~combout\);

-- Location: LCCOMB_X66_Y64_N4
\arithmeticUnit|mux|mux1|choice~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux1|choice~2_combout\ = (\aluCtrl|Op\(0)) # ((\control|MemWrite~1_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(1))) # (!\control|MemWrite~1_combout\ & ((\regFile|mux_readData2|mux1|i_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|MemWrite~1_combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(1),
	datac => \aluCtrl|Op\(0),
	datad => \regFile|mux_readData2|mux1|i_out~5_combout\,
	combout => \arithmeticUnit|mux|mux1|choice~2_combout\);

-- Location: LCCOMB_X66_Y63_N30
\arithmeticUnit|addSub|add0|int_CarryOut3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|add0|int_CarryOut3~combout\ = (\regFile|mux_readData1|mux0|i_out~5_combout\ & ((\control|ALUOp0~combout\) # ((!\insMemory|altsyncram_component|auto_generated|q_a\(3) & !\control|ALUOp1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALUOp0~combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(3),
	datac => \control|ALUOp1~combout\,
	datad => \regFile|mux_readData1|mux0|i_out~5_combout\,
	combout => \arithmeticUnit|addSub|add0|int_CarryOut3~combout\);

-- Location: LCCOMB_X66_Y64_N6
\arithmeticUnit|addSub|add1|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|add1|o_Sum~combout\ = \regFile|mux_readData1|mux1|i_out~4_combout\ $ (\arithmeticUnit|addSub|b_Comp\(1) $ (((\arithmeticUnit|addSub|add0|int_CarryOut3~combout\) # (!\arithmeticUnit|addSub|add0|int_CarryOut2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux1|i_out~4_combout\,
	datab => \arithmeticUnit|addSub|add0|int_CarryOut2~combout\,
	datac => \arithmeticUnit|addSub|add0|int_CarryOut3~combout\,
	datad => \arithmeticUnit|addSub|b_Comp\(1),
	combout => \arithmeticUnit|addSub|add1|o_Sum~combout\);

-- Location: LCCOMB_X66_Y64_N18
\arithmeticUnit|mux|mux1|choice~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux1|choice~3_combout\ = (\control|ALUOp1~0_combout\ & (((\arithmeticUnit|addSub|add1|o_Sum~combout\)))) # (!\control|ALUOp1~0_combout\ & (\regFile|mux_readData1|mux1|i_out~4_combout\ & (\arithmeticUnit|mux|mux1|choice~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux1|i_out~4_combout\,
	datab => \control|ALUOp1~0_combout\,
	datac => \arithmeticUnit|mux|mux1|choice~2_combout\,
	datad => \arithmeticUnit|addSub|add1|o_Sum~combout\,
	combout => \arithmeticUnit|mux|mux1|choice~3_combout\);

-- Location: LCCOMB_X68_Y65_N18
\control|MemWrite~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|MemWrite~2_combout\ = (\control|MemWrite~0_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(29) & \insMemory|altsyncram_component|auto_generated|q_a\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|MemWrite~0_combout\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(29),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(31),
	combout => \control|MemWrite~2_combout\);

-- Location: FF_X63_Y63_N11
\dataMemory|altsyncram_component|auto_generated|rden_b_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \control|MemRead~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataMemory|altsyncram_component|auto_generated|rden_b_store~q\);

-- Location: LCCOMB_X63_Y63_N10
\dataMemory|altsyncram_component|auto_generated|ram_block1a0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataMemory|altsyncram_component|auto_generated|ram_block1a0~0_combout\ = (\dataMemory|altsyncram_component|auto_generated|rden_b_store~q\) # ((!\insMemory|altsyncram_component|auto_generated|q_a\(29) & (\control|MemWrite~0_combout\ & 
-- \insMemory|altsyncram_component|auto_generated|q_a\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(29),
	datab => \control|MemWrite~0_combout\,
	datac => \dataMemory|altsyncram_component|auto_generated|rden_b_store~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(31),
	combout => \dataMemory|altsyncram_component|auto_generated|ram_block1a0~0_combout\);

-- Location: LCCOMB_X67_Y65_N0
\regFile|mux_readData2|mux0|i_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux0|i_out~6_combout\ = (\regFile|mux_readData2|mux0|i_out~2_combout\) # (\regFile|mux_readData2|mux0|i_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regFile|mux_readData2|mux0|i_out~2_combout\,
	datad => \regFile|mux_readData2|mux0|i_out~5_combout\,
	combout => \regFile|mux_readData2|mux0|i_out~6_combout\);

-- Location: LCCOMB_X63_Y63_N26
\arithmeticUnit|mux|mux0|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux0|i_out~3_combout\ = (\arithmeticUnit|mux|mux0|i_out~2_combout\ & ((\control|ALUOp1~combout\) # (!\aluCtrl|Op[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arithmeticUnit|mux|mux0|i_out~2_combout\,
	datab => \aluCtrl|Op[2]~1_combout\,
	datad => \control|ALUOp1~combout\,
	combout => \arithmeticUnit|mux|mux0|i_out~3_combout\);

-- Location: LCCOMB_X65_Y64_N0
\arithmeticUnit|mux|mux1|choice~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux1|choice~4_combout\ = (\arithmeticUnit|mux|mux1|choice~3_combout\ & ((\control|ALUOp1~combout\) # (!\aluCtrl|Op[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluCtrl|Op[2]~1_combout\,
	datab => \control|ALUOp1~combout\,
	datad => \arithmeticUnit|mux|mux1|choice~3_combout\,
	combout => \arithmeticUnit|mux|mux1|choice~4_combout\);

-- Location: FF_X66_Y65_N29
\regFile|row7|b6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux6|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row7|b6|int_q~q\);

-- Location: LCCOMB_X67_Y65_N10
\regFile|mux_readData1|mux6|choice~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux6|choice~7_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(23) & (\regFile|row7|b6|int_q~q\ & (\insMemory|altsyncram_component|auto_generated|q_a\(21) & \insMemory|altsyncram_component|auto_generated|q_a\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datab => \regFile|row7|b6|int_q~q\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	combout => \regFile|mux_readData1|mux6|choice~7_combout\);

-- Location: LCCOMB_X65_Y63_N26
\arithmeticUnit|addSub|b_Comp[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|b_Comp\(6) = \aluCtrl|Op\(0) $ (((\control|MemWrite~1_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(6))) # (!\control|MemWrite~1_combout\ & ((\regFile|mux_readData2|mux6|i_out~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluCtrl|Op\(0),
	datab => \control|MemWrite~1_combout\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(6),
	datad => \regFile|mux_readData2|mux6|i_out~5_combout\,
	combout => \arithmeticUnit|addSub|b_Comp\(6));

-- Location: LCCOMB_X66_Y64_N20
\regFile|row1|b5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|row1|b5|int_q~feeder_combout\ = \dataMemMux|mux5|mux_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataMemMux|mux5|mux_out~0_combout\,
	combout => \regFile|row1|b5|int_q~feeder_combout\);

-- Location: FF_X66_Y64_N21
\regFile|row1|b5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \regFile|row1|b5|int_q~feeder_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row1|b5|int_q~q\);

-- Location: LCCOMB_X67_Y66_N0
\regFile|row0|b5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|row0|b5|int_q~feeder_combout\ = \dataMemMux|mux5|mux_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataMemMux|mux5|mux_out~0_combout\,
	combout => \regFile|row0|b5|int_q~feeder_combout\);

-- Location: FF_X67_Y66_N1
\regFile|row0|b5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \regFile|row0|b5|int_q~feeder_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row0|b5|int_q~q\);

-- Location: FF_X66_Y66_N21
\regFile|row6|b5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux5|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row6|b5|int_q~q\);

-- Location: FF_X65_Y66_N25
\regFile|row2|b5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux5|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row2|b5|int_q~q\);

-- Location: FF_X65_Y66_N27
\regFile|row4|b5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux5|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row4|b5|int_q~q\);

-- Location: LCCOMB_X65_Y66_N26
\regFile|mux_readData2|mux5|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux5|i_out~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(18) & (((\regFile|row4|b5|int_q~q\ & !\insMemory|altsyncram_component|auto_generated|q_a\(17))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(18) & (\regFile|row2|b5|int_q~q\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datab => \regFile|row2|b5|int_q~q\,
	datac => \regFile|row4|b5|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux5|i_out~0_combout\);

-- Location: LCCOMB_X66_Y66_N20
\regFile|mux_readData2|mux5|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux5|i_out~1_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(16) & ((\regFile|mux_readData2|mux5|i_out~0_combout\) # ((\regFile|mux_readData2|mux7|choice~0_combout\ & \regFile|row6|b5|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datab => \regFile|mux_readData2|mux7|choice~0_combout\,
	datac => \regFile|row6|b5|int_q~q\,
	datad => \regFile|mux_readData2|mux5|i_out~0_combout\,
	combout => \regFile|mux_readData2|mux5|i_out~1_combout\);

-- Location: LCCOMB_X66_Y66_N18
\regFile|mux_readData2|mux5|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux5|i_out~2_combout\ = (\regFile|mux_readData2|mux5|i_out~1_combout\) # ((\regFile|row0|b5|int_q~q\ & !\regFile|mux_readData2|mux6|choice~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regFile|row0|b5|int_q~q\,
	datac => \regFile|mux_readData2|mux6|choice~1_combout\,
	datad => \regFile|mux_readData2|mux5|i_out~1_combout\,
	combout => \regFile|mux_readData2|mux5|i_out~2_combout\);

-- Location: LCCOMB_X66_Y64_N10
\regFile|mux_readData2|mux5|i_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux5|i_out~5_combout\ = (\regFile|mux_readData2|mux5|i_out~4_combout\) # ((\regFile|mux_readData2|mux5|i_out~2_combout\) # ((\regFile|row1|b5|int_q~q\ & \regFile|mux_readData2|mux6|choice~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData2|mux5|i_out~4_combout\,
	datab => \regFile|row1|b5|int_q~q\,
	datac => \regFile|mux_readData2|mux6|choice~0_combout\,
	datad => \regFile|mux_readData2|mux5|i_out~2_combout\,
	combout => \regFile|mux_readData2|mux5|i_out~5_combout\);

-- Location: LCCOMB_X66_Y64_N30
\arithmeticUnit|addSub|b_Comp[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|b_Comp\(5) = \aluCtrl|Op\(0) $ (((\control|MemWrite~1_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(5))) # (!\control|MemWrite~1_combout\ & ((\regFile|mux_readData2|mux5|i_out~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|MemWrite~1_combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(5),
	datac => \aluCtrl|Op\(0),
	datad => \regFile|mux_readData2|mux5|i_out~5_combout\,
	combout => \arithmeticUnit|addSub|b_Comp\(5));

-- Location: LCCOMB_X65_Y64_N12
\regFile|row1|b4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|row1|b4|int_q~feeder_combout\ = \dataMemMux|mux4|mux_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataMemMux|mux4|mux_out~0_combout\,
	combout => \regFile|row1|b4|int_q~feeder_combout\);

-- Location: FF_X65_Y64_N13
\regFile|row1|b4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \regFile|row1|b4|int_q~feeder_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row1|b4|int_q~q\);

-- Location: LCCOMB_X66_Y64_N0
\regFile|row5|b4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|row5|b4|int_q~feeder_combout\ = \dataMemMux|mux4|mux_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataMemMux|mux4|mux_out~0_combout\,
	combout => \regFile|row5|b4|int_q~feeder_combout\);

-- Location: FF_X66_Y64_N1
\regFile|row5|b4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \regFile|row5|b4|int_q~feeder_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row5|b4|int_q~q\);

-- Location: FF_X66_Y65_N21
\regFile|row3|b4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux4|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row3|b4|int_q~q\);

-- Location: LCCOMB_X66_Y65_N20
\regFile|mux_readData2|mux4|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux4|i_out~3_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(18) & (\regFile|row5|b4|int_q~q\ & ((!\insMemory|altsyncram_component|auto_generated|q_a\(17))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(18) & (((\regFile|row3|b4|int_q~q\ & \insMemory|altsyncram_component|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datab => \regFile|row5|b4|int_q~q\,
	datac => \regFile|row3|b4|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux4|i_out~3_combout\);

-- Location: LCCOMB_X66_Y65_N30
\regFile|mux_readData2|mux4|i_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux4|i_out~4_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(16) & ((\regFile|mux_readData2|mux4|i_out~3_combout\) # ((\regFile|mux_readData2|mux7|choice~0_combout\ & \regFile|row7|b4|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datab => \regFile|mux_readData2|mux7|choice~0_combout\,
	datac => \regFile|row7|b4|int_q~q\,
	datad => \regFile|mux_readData2|mux4|i_out~3_combout\,
	combout => \regFile|mux_readData2|mux4|i_out~4_combout\);

-- Location: LCCOMB_X65_Y64_N4
\regFile|row0|b4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|row0|b4|int_q~feeder_combout\ = \dataMemMux|mux4|mux_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataMemMux|mux4|mux_out~0_combout\,
	combout => \regFile|row0|b4|int_q~feeder_combout\);

-- Location: FF_X65_Y64_N5
\regFile|row0|b4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \regFile|row0|b4|int_q~feeder_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row0|b4|int_q~q\);

-- Location: LCCOMB_X66_Y66_N10
\regFile|row6|b4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|row6|b4|int_q~feeder_combout\ = \dataMemMux|mux4|mux_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataMemMux|mux4|mux_out~0_combout\,
	combout => \regFile|row6|b4|int_q~feeder_combout\);

-- Location: FF_X66_Y66_N11
\regFile|row6|b4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \regFile|row6|b4|int_q~feeder_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row6|b4|int_q~q\);

-- Location: FF_X65_Y66_N3
\regFile|row4|b4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dataMemMux|mux4|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row4|b4|int_q~q\);

-- Location: FF_X65_Y66_N5
\regFile|row2|b4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux4|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row2|b4|int_q~q\);

-- Location: LCCOMB_X65_Y66_N4
\regFile|mux_readData2|mux4|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux4|i_out~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(18) & (\regFile|row4|b4|int_q~q\ & ((!\insMemory|altsyncram_component|auto_generated|q_a\(17))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(18) & (((\regFile|row2|b4|int_q~q\ & \insMemory|altsyncram_component|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datab => \regFile|row4|b4|int_q~q\,
	datac => \regFile|row2|b4|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux4|i_out~0_combout\);

-- Location: LCCOMB_X65_Y64_N6
\regFile|mux_readData2|mux4|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux4|i_out~1_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(16) & ((\regFile|mux_readData2|mux4|i_out~0_combout\) # ((\regFile|row6|b4|int_q~q\ & \regFile|mux_readData2|mux7|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datab => \regFile|row6|b4|int_q~q\,
	datac => \regFile|mux_readData2|mux4|i_out~0_combout\,
	datad => \regFile|mux_readData2|mux7|choice~0_combout\,
	combout => \regFile|mux_readData2|mux4|i_out~1_combout\);

-- Location: LCCOMB_X65_Y64_N10
\regFile|mux_readData2|mux4|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux4|i_out~2_combout\ = (\regFile|mux_readData2|mux4|i_out~1_combout\) # ((\regFile|row0|b4|int_q~q\ & !\regFile|mux_readData2|mux6|choice~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regFile|row0|b4|int_q~q\,
	datac => \regFile|mux_readData2|mux6|choice~1_combout\,
	datad => \regFile|mux_readData2|mux4|i_out~1_combout\,
	combout => \regFile|mux_readData2|mux4|i_out~2_combout\);

-- Location: LCCOMB_X65_Y64_N2
\regFile|mux_readData2|mux4|i_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux4|i_out~5_combout\ = (\regFile|mux_readData2|mux4|i_out~4_combout\) # ((\regFile|mux_readData2|mux4|i_out~2_combout\) # ((\regFile|mux_readData2|mux6|choice~0_combout\ & \regFile|row1|b4|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData2|mux6|choice~0_combout\,
	datab => \regFile|row1|b4|int_q~q\,
	datac => \regFile|mux_readData2|mux4|i_out~4_combout\,
	datad => \regFile|mux_readData2|mux4|i_out~2_combout\,
	combout => \regFile|mux_readData2|mux4|i_out~5_combout\);

-- Location: LCCOMB_X65_Y64_N30
\arithmeticUnit|addSub|b_Comp[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|b_Comp\(4) = \aluCtrl|Op\(0) $ (((\control|MemWrite~1_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(4))) # (!\control|MemWrite~1_combout\ & ((\regFile|mux_readData2|mux4|i_out~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(4),
	datab => \aluCtrl|Op\(0),
	datac => \control|MemWrite~1_combout\,
	datad => \regFile|mux_readData2|mux4|i_out~5_combout\,
	combout => \arithmeticUnit|addSub|b_Comp\(4));

-- Location: FF_X66_Y65_N7
\regFile|row7|b3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux3|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row7|b3|int_q~q\);

-- Location: LCCOMB_X63_Y65_N6
\regFile|mux_readData1|mux3|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux3|choice~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(22) & (\insMemory|altsyncram_component|auto_generated|q_a\(23) & (\regFile|row7|b3|int_q~q\ & \insMemory|altsyncram_component|auto_generated|q_a\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datac => \regFile|row7|b3|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	combout => \regFile|mux_readData1|mux3|choice~0_combout\);

-- Location: LCCOMB_X66_Y63_N12
\arithmeticUnit|addSub|add3|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|add3|o_CarryOut~0_combout\ = (\arithmeticUnit|addSub|b_Comp\(3) & ((\regFile|mux_readData1|mux3|choice~5_combout\) # ((\regFile|mux_readData1|mux3|choice~0_combout\) # (\arithmeticUnit|addSub|add2|o_CarryOut~0_combout\)))) # 
-- (!\arithmeticUnit|addSub|b_Comp\(3) & (\arithmeticUnit|addSub|add2|o_CarryOut~0_combout\ & ((\regFile|mux_readData1|mux3|choice~5_combout\) # (\regFile|mux_readData1|mux3|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux3|choice~5_combout\,
	datab => \regFile|mux_readData1|mux3|choice~0_combout\,
	datac => \arithmeticUnit|addSub|b_Comp\(3),
	datad => \arithmeticUnit|addSub|add2|o_CarryOut~0_combout\,
	combout => \arithmeticUnit|addSub|add3|o_CarryOut~0_combout\);

-- Location: LCCOMB_X66_Y63_N20
\arithmeticUnit|addSub|add4|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|add4|o_CarryOut~0_combout\ = (\arithmeticUnit|addSub|b_Comp\(4) & ((\regFile|mux_readData1|mux4|choice~5_combout\) # ((\regFile|mux_readData1|mux4|choice~0_combout\) # (\arithmeticUnit|addSub|add3|o_CarryOut~0_combout\)))) # 
-- (!\arithmeticUnit|addSub|b_Comp\(4) & (\arithmeticUnit|addSub|add3|o_CarryOut~0_combout\ & ((\regFile|mux_readData1|mux4|choice~5_combout\) # (\regFile|mux_readData1|mux4|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux4|choice~5_combout\,
	datab => \regFile|mux_readData1|mux4|choice~0_combout\,
	datac => \arithmeticUnit|addSub|b_Comp\(4),
	datad => \arithmeticUnit|addSub|add3|o_CarryOut~0_combout\,
	combout => \arithmeticUnit|addSub|add4|o_CarryOut~0_combout\);

-- Location: LCCOMB_X67_Y63_N16
\arithmeticUnit|addSub|add5|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|add5|o_CarryOut~0_combout\ = (\arithmeticUnit|addSub|b_Comp\(5) & ((\regFile|mux_readData1|mux5|choice~6_combout\) # ((\regFile|mux_readData1|mux5|choice~1_combout\) # (\arithmeticUnit|addSub|add4|o_CarryOut~0_combout\)))) # 
-- (!\arithmeticUnit|addSub|b_Comp\(5) & (\arithmeticUnit|addSub|add4|o_CarryOut~0_combout\ & ((\regFile|mux_readData1|mux5|choice~6_combout\) # (\regFile|mux_readData1|mux5|choice~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux5|choice~6_combout\,
	datab => \regFile|mux_readData1|mux5|choice~1_combout\,
	datac => \arithmeticUnit|addSub|b_Comp\(5),
	datad => \arithmeticUnit|addSub|add4|o_CarryOut~0_combout\,
	combout => \arithmeticUnit|addSub|add5|o_CarryOut~0_combout\);

-- Location: LCCOMB_X67_Y63_N18
\arithmeticUnit|addSub|add6|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|add6|o_CarryOut~0_combout\ = (\arithmeticUnit|addSub|b_Comp\(6) & ((\regFile|mux_readData1|mux6|choice~6_combout\) # ((\regFile|mux_readData1|mux6|choice~7_combout\) # (\arithmeticUnit|addSub|add5|o_CarryOut~0_combout\)))) # 
-- (!\arithmeticUnit|addSub|b_Comp\(6) & (\arithmeticUnit|addSub|add5|o_CarryOut~0_combout\ & ((\regFile|mux_readData1|mux6|choice~6_combout\) # (\regFile|mux_readData1|mux6|choice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux6|choice~6_combout\,
	datab => \regFile|mux_readData1|mux6|choice~7_combout\,
	datac => \arithmeticUnit|addSub|b_Comp\(6),
	datad => \arithmeticUnit|addSub|add5|o_CarryOut~0_combout\,
	combout => \arithmeticUnit|addSub|add6|o_CarryOut~0_combout\);

-- Location: LCCOMB_X67_Y63_N2
\arithmeticUnit|mux|mux7|choice~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux7|choice~1_combout\ = (!\aluCtrl|Op\(2) & (\arithmeticUnit|mux|mux7|choice~0_combout\ $ (((\control|ALUOp1~0_combout\ & \arithmeticUnit|addSub|add6|o_CarryOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arithmeticUnit|mux|mux7|choice~0_combout\,
	datab => \control|ALUOp1~0_combout\,
	datac => \aluCtrl|Op\(2),
	datad => \arithmeticUnit|addSub|add6|o_CarryOut~0_combout\,
	combout => \arithmeticUnit|mux|mux7|choice~1_combout\);

-- Location: LCCOMB_X67_Y63_N22
\dataMemMux|mux7|mux_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataMemMux|mux7|mux_out~0_combout\ = (\control|MemRead~0_combout\ & (\dataMemory|altsyncram_component|auto_generated|q_b\(7))) # (!\control|MemRead~0_combout\ & ((\arithmeticUnit|mux|mux7|choice~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataMemory|altsyncram_component|auto_generated|q_b\(7),
	datac => \control|MemRead~0_combout\,
	datad => \arithmeticUnit|mux|mux7|choice~1_combout\,
	combout => \dataMemMux|mux7|mux_out~0_combout\);

-- Location: FF_X67_Y63_N23
\regFile|row0|b7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dataMemMux|mux7|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row0|b7|int_q~q\);

-- Location: FF_X66_Y66_N7
\regFile|row6|b7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux7|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row6|b7|int_q~q\);

-- Location: LCCOMB_X66_Y66_N6
\regFile|mux_readData2|mux7|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux7|i_out~1_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(16) & ((\regFile|mux_readData2|mux7|i_out~0_combout\) # ((\regFile|row6|b7|int_q~q\ & \regFile|mux_readData2|mux7|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData2|mux7|i_out~0_combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datac => \regFile|row6|b7|int_q~q\,
	datad => \regFile|mux_readData2|mux7|choice~0_combout\,
	combout => \regFile|mux_readData2|mux7|i_out~1_combout\);

-- Location: LCCOMB_X66_Y66_N4
\regFile|mux_readData2|mux7|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux7|i_out~2_combout\ = (\regFile|mux_readData2|mux7|i_out~1_combout\) # ((!\regFile|mux_readData2|mux6|choice~1_combout\ & \regFile|row0|b7|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData2|mux6|choice~1_combout\,
	datac => \regFile|row0|b7|int_q~q\,
	datad => \regFile|mux_readData2|mux7|i_out~1_combout\,
	combout => \regFile|mux_readData2|mux7|i_out~2_combout\);

-- Location: FF_X66_Y65_N11
\regFile|row7|b7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux7|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row7|b7|int_q~q\);

-- Location: FF_X67_Y63_N21
\regFile|row3|b7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux7|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row3|b7|int_q~q\);

-- Location: FF_X67_Y65_N29
\regFile|row5|b7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux7|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row5|b7|int_q~q\);

-- Location: LCCOMB_X67_Y65_N28
\regFile|mux_readData2|mux7|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux7|i_out~3_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(18) & (((\regFile|row5|b7|int_q~q\ & !\insMemory|altsyncram_component|auto_generated|q_a\(17))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(18) & (\regFile|row3|b7|int_q~q\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datab => \regFile|row3|b7|int_q~q\,
	datac => \regFile|row5|b7|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux7|i_out~3_combout\);

-- Location: LCCOMB_X66_Y65_N10
\regFile|mux_readData2|mux7|i_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux7|i_out~4_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(16) & ((\regFile|mux_readData2|mux7|i_out~3_combout\) # ((\regFile|mux_readData2|mux7|choice~0_combout\ & \regFile|row7|b7|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datab => \regFile|mux_readData2|mux7|choice~0_combout\,
	datac => \regFile|row7|b7|int_q~q\,
	datad => \regFile|mux_readData2|mux7|i_out~3_combout\,
	combout => \regFile|mux_readData2|mux7|i_out~4_combout\);

-- Location: LCCOMB_X66_Y66_N26
\regFile|mux_readData2|mux7|i_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux7|i_out~5_combout\ = (\regFile|mux_readData2|mux7|i_out~2_combout\) # ((\regFile|mux_readData2|mux7|i_out~4_combout\) # ((\regFile|row1|b7|int_q~q\ & \regFile|mux_readData2|mux6|choice~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row1|b7|int_q~q\,
	datab => \regFile|mux_readData2|mux7|i_out~2_combout\,
	datac => \regFile|mux_readData2|mux6|choice~0_combout\,
	datad => \regFile|mux_readData2|mux7|i_out~4_combout\,
	combout => \regFile|mux_readData2|mux7|i_out~5_combout\);

-- Location: LCCOMB_X67_Y63_N0
\dataMemMux|mux6|mux_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataMemMux|mux6|mux_out~0_combout\ = (\control|MemRead~0_combout\ & (\dataMemory|altsyncram_component|auto_generated|q_b\(6))) # (!\control|MemRead~0_combout\ & ((\arithmeticUnit|mux|mux6|choice~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataMemory|altsyncram_component|auto_generated|q_b\(6),
	datac => \control|MemRead~0_combout\,
	datad => \arithmeticUnit|mux|mux6|choice~2_combout\,
	combout => \dataMemMux|mux6|mux_out~0_combout\);

-- Location: FF_X65_Y63_N19
\regFile|row1|b6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux6|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row1|b6|int_q~q\);

-- Location: FF_X65_Y63_N3
\regFile|row0|b6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux6|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row0|b6|int_q~q\);

-- Location: FF_X63_Y65_N13
\regFile|row2|b6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux6|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row2|b6|int_q~q\);

-- Location: FF_X68_Y63_N17
\regFile|row4|b6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux6|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row4|b6|int_q~q\);

-- Location: LCCOMB_X63_Y65_N22
\regFile|mux_readData2|mux6|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux6|i_out~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(18) & (((\regFile|row4|b6|int_q~q\ & !\insMemory|altsyncram_component|auto_generated|q_a\(17))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(18) & (\regFile|row2|b6|int_q~q\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datab => \regFile|row2|b6|int_q~q\,
	datac => \regFile|row4|b6|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux6|i_out~0_combout\);

-- Location: LCCOMB_X63_Y63_N12
\regFile|mux_readData2|mux6|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux6|i_out~1_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(16) & ((\regFile|mux_readData2|mux6|i_out~0_combout\) # ((\regFile|row6|b6|int_q~q\ & \regFile|mux_readData2|mux7|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row6|b6|int_q~q\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datac => \regFile|mux_readData2|mux6|i_out~0_combout\,
	datad => \regFile|mux_readData2|mux7|choice~0_combout\,
	combout => \regFile|mux_readData2|mux6|i_out~1_combout\);

-- Location: LCCOMB_X65_Y63_N24
\regFile|mux_readData2|mux6|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux6|i_out~2_combout\ = (\regFile|mux_readData2|mux6|i_out~1_combout\) # ((!\regFile|mux_readData2|mux6|choice~1_combout\ & \regFile|row0|b6|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regFile|mux_readData2|mux6|choice~1_combout\,
	datac => \regFile|row0|b6|int_q~q\,
	datad => \regFile|mux_readData2|mux6|i_out~1_combout\,
	combout => \regFile|mux_readData2|mux6|i_out~2_combout\);

-- Location: LCCOMB_X65_Y63_N18
\regFile|mux_readData2|mux6|i_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux6|i_out~5_combout\ = (\regFile|mux_readData2|mux6|i_out~4_combout\) # ((\regFile|mux_readData2|mux6|i_out~2_combout\) # ((\regFile|mux_readData2|mux6|choice~0_combout\ & \regFile|row1|b6|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData2|mux6|i_out~4_combout\,
	datab => \regFile|mux_readData2|mux6|choice~0_combout\,
	datac => \regFile|row1|b6|int_q~q\,
	datad => \regFile|mux_readData2|mux6|i_out~2_combout\,
	combout => \regFile|mux_readData2|mux6|i_out~5_combout\);

-- Location: LCCOMB_X65_Y63_N16
\arithmeticUnit|mux|mux6|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux6|choice~0_combout\ = (\aluCtrl|Op\(0)) # ((\control|MemWrite~1_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(6))) # (!\control|MemWrite~1_combout\ & ((\regFile|mux_readData2|mux6|i_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluCtrl|Op\(0),
	datab => \control|MemWrite~1_combout\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(6),
	datad => \regFile|mux_readData2|mux6|i_out~5_combout\,
	combout => \arithmeticUnit|mux|mux6|choice~0_combout\);

-- Location: LCCOMB_X67_Y63_N30
\arithmeticUnit|mux|mux6|choice~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux6|choice~1_combout\ = (\regFile|mux_readData1|mux6|i_out~combout\ & (!\control|ALUOp1~0_combout\ & (!\aluCtrl|Op\(2) & \arithmeticUnit|mux|mux6|choice~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux6|i_out~combout\,
	datab => \control|ALUOp1~0_combout\,
	datac => \aluCtrl|Op\(2),
	datad => \arithmeticUnit|mux|mux6|choice~0_combout\,
	combout => \arithmeticUnit|mux|mux6|choice~1_combout\);

-- Location: LCCOMB_X67_Y63_N6
\arithmeticUnit|addSub|add6|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|add6|o_Sum~combout\ = \arithmeticUnit|addSub|b_Comp\(6) $ (\arithmeticUnit|addSub|add5|o_CarryOut~0_combout\ $ (((\regFile|mux_readData1|mux6|choice~6_combout\) # (\regFile|mux_readData1|mux6|choice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux6|choice~6_combout\,
	datab => \regFile|mux_readData1|mux6|choice~7_combout\,
	datac => \arithmeticUnit|addSub|b_Comp\(6),
	datad => \arithmeticUnit|addSub|add5|o_CarryOut~0_combout\,
	combout => \arithmeticUnit|addSub|add6|o_Sum~combout\);

-- Location: LCCOMB_X67_Y63_N28
\arithmeticUnit|mux|mux6|choice~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux6|choice~2_combout\ = (\arithmeticUnit|mux|mux6|choice~1_combout\) # ((\control|ALUOp1~0_combout\ & (!\aluCtrl|Op\(2) & \arithmeticUnit|addSub|add6|o_Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALUOp1~0_combout\,
	datab => \aluCtrl|Op\(2),
	datac => \arithmeticUnit|mux|mux6|choice~1_combout\,
	datad => \arithmeticUnit|addSub|add6|o_Sum~combout\,
	combout => \arithmeticUnit|mux|mux6|choice~2_combout\);

-- Location: LCCOMB_X65_Y66_N14
\dataMemMux|mux5|mux_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataMemMux|mux5|mux_out~0_combout\ = (\control|MemRead~0_combout\ & (\dataMemory|altsyncram_component|auto_generated|q_b\(5))) # (!\control|MemRead~0_combout\ & ((\arithmeticUnit|mux|mux5|choice~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|MemRead~0_combout\,
	datac => \dataMemory|altsyncram_component|auto_generated|q_b\(5),
	datad => \arithmeticUnit|mux|mux5|choice~2_combout\,
	combout => \dataMemMux|mux5|mux_out~0_combout\);

-- Location: FF_X66_Y65_N27
\regFile|row7|b5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux5|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row7|b5|int_q~q\);

-- Location: LCCOMB_X67_Y65_N22
\regFile|mux_readData1|mux5|choice~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux5|choice~1_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(23) & (\insMemory|altsyncram_component|auto_generated|q_a\(21) & (\regFile|row7|b5|int_q~q\ & \insMemory|altsyncram_component|auto_generated|q_a\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datac => \regFile|row7|b5|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	combout => \regFile|mux_readData1|mux5|choice~1_combout\);

-- Location: LCCOMB_X65_Y66_N24
\regFile|mux_readData1|mux5|choice~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux5|choice~2_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(22) & (((\regFile|row2|b5|int_q~q\ & !\insMemory|altsyncram_component|auto_generated|q_a\(23))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(22) & (\regFile|row4|b5|int_q~q\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row4|b5|int_q~q\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datac => \regFile|row2|b5|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	combout => \regFile|mux_readData1|mux5|choice~2_combout\);

-- Location: LCCOMB_X66_Y66_N8
\regFile|mux_readData1|mux5|choice~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux5|choice~3_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(21) & ((\regFile|mux_readData1|mux5|choice~2_combout\) # ((\regFile|mux_readData1|mux5|choice~0_combout\ & \regFile|row6|b5|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux5|choice~0_combout\,
	datab => \regFile|row6|b5|int_q~q\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datad => \regFile|mux_readData1|mux5|choice~2_combout\,
	combout => \regFile|mux_readData1|mux5|choice~3_combout\);

-- Location: LCCOMB_X66_Y66_N2
\regFile|mux_readData1|mux5|choice~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux5|choice~4_combout\ = (\regFile|row1|b5|int_q~q\ & ((\regFile|mux_readData1|mux0|choice~0_combout\) # ((!\regFile|mux_readData1|mux6|choice~1_combout\ & \regFile|row0|b5|int_q~q\)))) # (!\regFile|row1|b5|int_q~q\ & 
-- (!\regFile|mux_readData1|mux6|choice~1_combout\ & (\regFile|row0|b5|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row1|b5|int_q~q\,
	datab => \regFile|mux_readData1|mux6|choice~1_combout\,
	datac => \regFile|row0|b5|int_q~q\,
	datad => \regFile|mux_readData1|mux0|choice~0_combout\,
	combout => \regFile|mux_readData1|mux5|choice~4_combout\);

-- Location: LCCOMB_X66_Y66_N12
\regFile|mux_readData1|mux5|choice~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux5|choice~6_combout\ = (\regFile|mux_readData1|mux5|choice~3_combout\) # ((\regFile|mux_readData1|mux5|choice~4_combout\) # ((\regFile|mux_readData1|mux5|choice~5_combout\ & 
-- \insMemory|altsyncram_component|auto_generated|q_a\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux5|choice~5_combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datac => \regFile|mux_readData1|mux5|choice~3_combout\,
	datad => \regFile|mux_readData1|mux5|choice~4_combout\,
	combout => \regFile|mux_readData1|mux5|choice~6_combout\);

-- Location: LCCOMB_X66_Y64_N12
\arithmeticUnit|mux|mux5|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux5|choice~0_combout\ = (\aluCtrl|Op\(0)) # ((\control|MemWrite~1_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(5))) # (!\control|MemWrite~1_combout\ & ((\regFile|mux_readData2|mux5|i_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|MemWrite~1_combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(5),
	datac => \aluCtrl|Op\(0),
	datad => \regFile|mux_readData2|mux5|i_out~5_combout\,
	combout => \arithmeticUnit|mux|mux5|choice~0_combout\);

-- Location: LCCOMB_X65_Y66_N18
\arithmeticUnit|mux|mux5|choice~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux5|choice~1_combout\ = (!\control|ALUOp1~0_combout\ & (\arithmeticUnit|mux|mux5|choice~0_combout\ & ((\regFile|mux_readData1|mux5|choice~1_combout\) # (\regFile|mux_readData1|mux5|choice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALUOp1~0_combout\,
	datab => \regFile|mux_readData1|mux5|choice~1_combout\,
	datac => \regFile|mux_readData1|mux5|choice~6_combout\,
	datad => \arithmeticUnit|mux|mux5|choice~0_combout\,
	combout => \arithmeticUnit|mux|mux5|choice~1_combout\);

-- Location: LCCOMB_X66_Y63_N18
\arithmeticUnit|addSub|add5|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|add5|o_Sum~combout\ = \arithmeticUnit|addSub|b_Comp\(5) $ (\arithmeticUnit|addSub|add4|o_CarryOut~0_combout\ $ (((\regFile|mux_readData1|mux5|choice~1_combout\) # (\regFile|mux_readData1|mux5|choice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux5|choice~1_combout\,
	datab => \regFile|mux_readData1|mux5|choice~6_combout\,
	datac => \arithmeticUnit|addSub|b_Comp\(5),
	datad => \arithmeticUnit|addSub|add4|o_CarryOut~0_combout\,
	combout => \arithmeticUnit|addSub|add5|o_Sum~combout\);

-- Location: LCCOMB_X65_Y66_N28
\arithmeticUnit|mux|mux5|choice~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux5|choice~2_combout\ = (!\aluCtrl|Op\(2) & ((\arithmeticUnit|mux|mux5|choice~1_combout\) # ((\control|ALUOp1~0_combout\ & \arithmeticUnit|addSub|add5|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALUOp1~0_combout\,
	datab => \arithmeticUnit|mux|mux5|choice~1_combout\,
	datac => \aluCtrl|Op\(2),
	datad => \arithmeticUnit|addSub|add5|o_Sum~combout\,
	combout => \arithmeticUnit|mux|mux5|choice~2_combout\);

-- Location: LCCOMB_X65_Y66_N2
\dataMemMux|mux4|mux_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataMemMux|mux4|mux_out~0_combout\ = (\control|MemRead~0_combout\ & (\dataMemory|altsyncram_component|auto_generated|q_b\(4))) # (!\control|MemRead~0_combout\ & ((\arithmeticUnit|mux|mux4|choice~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|MemRead~0_combout\,
	datac => \dataMemory|altsyncram_component|auto_generated|q_b\(4),
	datad => \arithmeticUnit|mux|mux4|choice~2_combout\,
	combout => \dataMemMux|mux4|mux_out~0_combout\);

-- Location: FF_X66_Y65_N31
\regFile|row7|b4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux4|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row7|b4|int_q~q\);

-- Location: LCCOMB_X65_Y63_N22
\regFile|mux_readData1|mux4|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux4|choice~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(22) & (\insMemory|altsyncram_component|auto_generated|q_a\(21) & (\insMemory|altsyncram_component|auto_generated|q_a\(23) & \regFile|row7|b4|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datad => \regFile|row7|b4|int_q~q\,
	combout => \regFile|mux_readData1|mux4|choice~0_combout\);

-- Location: LCCOMB_X65_Y64_N16
\regFile|mux_readData1|mux4|choice~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux4|choice~3_combout\ = (\regFile|row1|b4|int_q~q\ & ((\regFile|mux_readData1|mux0|choice~0_combout\) # ((\regFile|row0|b4|int_q~q\ & !\regFile|mux_readData1|mux6|choice~1_combout\)))) # (!\regFile|row1|b4|int_q~q\ & 
-- (\regFile|row0|b4|int_q~q\ & (!\regFile|mux_readData1|mux6|choice~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row1|b4|int_q~q\,
	datab => \regFile|row0|b4|int_q~q\,
	datac => \regFile|mux_readData1|mux6|choice~1_combout\,
	datad => \regFile|mux_readData1|mux0|choice~0_combout\,
	combout => \regFile|mux_readData1|mux4|choice~3_combout\);

-- Location: LCCOMB_X66_Y64_N14
\regFile|mux_readData1|mux4|choice~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux4|choice~4_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(23) & (\regFile|row5|b4|int_q~q\ & (!\insMemory|altsyncram_component|auto_generated|q_a\(22)))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(23) & (((\insMemory|altsyncram_component|auto_generated|q_a\(22) & \regFile|row3|b4|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datab => \regFile|row5|b4|int_q~q\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datad => \regFile|row3|b4|int_q~q\,
	combout => \regFile|mux_readData1|mux4|choice~4_combout\);

-- Location: LCCOMB_X65_Y66_N22
\regFile|mux_readData1|mux4|choice~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux4|choice~1_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(23) & (\regFile|row4|b4|int_q~q\ & ((!\insMemory|altsyncram_component|auto_generated|q_a\(22))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(23) & (((\regFile|row2|b4|int_q~q\ & \insMemory|altsyncram_component|auto_generated|q_a\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datab => \regFile|row4|b4|int_q~q\,
	datac => \regFile|row2|b4|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	combout => \regFile|mux_readData1|mux4|choice~1_combout\);

-- Location: LCCOMB_X63_Y65_N20
\regFile|mux_readData1|mux5|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux5|choice~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(23) & \insMemory|altsyncram_component|auto_generated|q_a\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	combout => \regFile|mux_readData1|mux5|choice~0_combout\);

-- Location: LCCOMB_X65_Y64_N18
\regFile|mux_readData1|mux4|choice~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux4|choice~2_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(21) & ((\regFile|mux_readData1|mux4|choice~1_combout\) # ((\regFile|row6|b4|int_q~q\ & \regFile|mux_readData1|mux5|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datab => \regFile|row6|b4|int_q~q\,
	datac => \regFile|mux_readData1|mux4|choice~1_combout\,
	datad => \regFile|mux_readData1|mux5|choice~0_combout\,
	combout => \regFile|mux_readData1|mux4|choice~2_combout\);

-- Location: LCCOMB_X65_Y64_N14
\regFile|mux_readData1|mux4|choice~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux4|choice~5_combout\ = (\regFile|mux_readData1|mux4|choice~3_combout\) # ((\regFile|mux_readData1|mux4|choice~2_combout\) # ((\insMemory|altsyncram_component|auto_generated|q_a\(21) & 
-- \regFile|mux_readData1|mux4|choice~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datab => \regFile|mux_readData1|mux4|choice~3_combout\,
	datac => \regFile|mux_readData1|mux4|choice~4_combout\,
	datad => \regFile|mux_readData1|mux4|choice~2_combout\,
	combout => \regFile|mux_readData1|mux4|choice~5_combout\);

-- Location: LCCOMB_X65_Y64_N20
\arithmeticUnit|mux|mux4|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux4|choice~0_combout\ = (\aluCtrl|Op\(0)) # ((\control|MemWrite~1_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(4))) # (!\control|MemWrite~1_combout\ & ((\regFile|mux_readData2|mux4|i_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluCtrl|Op\(0),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(4),
	datac => \control|MemWrite~1_combout\,
	datad => \regFile|mux_readData2|mux4|i_out~5_combout\,
	combout => \arithmeticUnit|mux|mux4|choice~0_combout\);

-- Location: LCCOMB_X65_Y64_N8
\arithmeticUnit|mux|mux4|choice~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux4|choice~1_combout\ = (!\control|ALUOp1~0_combout\ & (\arithmeticUnit|mux|mux4|choice~0_combout\ & ((\regFile|mux_readData1|mux4|choice~0_combout\) # (\regFile|mux_readData1|mux4|choice~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALUOp1~0_combout\,
	datab => \regFile|mux_readData1|mux4|choice~0_combout\,
	datac => \regFile|mux_readData1|mux4|choice~5_combout\,
	datad => \arithmeticUnit|mux|mux4|choice~0_combout\,
	combout => \arithmeticUnit|mux|mux4|choice~1_combout\);

-- Location: LCCOMB_X66_Y63_N2
\arithmeticUnit|addSub|add4|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|add4|o_Sum~combout\ = \arithmeticUnit|addSub|b_Comp\(4) $ (\arithmeticUnit|addSub|add3|o_CarryOut~0_combout\ $ (((\regFile|mux_readData1|mux4|choice~5_combout\) # (\regFile|mux_readData1|mux4|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux4|choice~5_combout\,
	datab => \regFile|mux_readData1|mux4|choice~0_combout\,
	datac => \arithmeticUnit|addSub|b_Comp\(4),
	datad => \arithmeticUnit|addSub|add3|o_CarryOut~0_combout\,
	combout => \arithmeticUnit|addSub|add4|o_Sum~combout\);

-- Location: LCCOMB_X65_Y66_N0
\arithmeticUnit|mux|mux4|choice~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux4|choice~2_combout\ = (!\aluCtrl|Op\(2) & ((\arithmeticUnit|mux|mux4|choice~1_combout\) # ((\control|ALUOp1~0_combout\ & \arithmeticUnit|addSub|add4|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluCtrl|Op\(2),
	datab => \arithmeticUnit|mux|mux4|choice~1_combout\,
	datac => \control|ALUOp1~0_combout\,
	datad => \arithmeticUnit|addSub|add4|o_Sum~combout\,
	combout => \arithmeticUnit|mux|mux4|choice~2_combout\);

-- Location: LCCOMB_X66_Y64_N26
\dataMemMux|mux1|mux_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataMemMux|mux1|mux_out~0_combout\ = (\control|MemRead~0_combout\ & (((\dataMemory|altsyncram_component|auto_generated|q_b\(1))))) # (!\control|MemRead~0_combout\ & (!\aluCtrl|Op\(2) & (\arithmeticUnit|mux|mux1|choice~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluCtrl|Op\(2),
	datab => \arithmeticUnit|mux|mux1|choice~3_combout\,
	datac => \dataMemory|altsyncram_component|auto_generated|q_b\(1),
	datad => \control|MemRead~0_combout\,
	combout => \dataMemMux|mux1|mux_out~0_combout\);

-- Location: FF_X63_Y65_N1
\regFile|row2|b1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux1|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row2|b1|int_q~q\);

-- Location: FF_X63_Y65_N27
\regFile|row4|b1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux1|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row4|b1|int_q~q\);

-- Location: LCCOMB_X63_Y65_N2
\regFile|mux_readData2|mux1|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux1|i_out~2_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(18) & (((\regFile|row4|b1|int_q~q\ & !\insMemory|altsyncram_component|auto_generated|q_a\(17))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(18) & (\regFile|row2|b1|int_q~q\ & ((\insMemory|altsyncram_component|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datab => \regFile|row2|b1|int_q~q\,
	datac => \regFile|row4|b1|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux1|i_out~2_combout\);

-- Location: FF_X66_Y64_N29
\regFile|row5|b1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux1|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row5|b1|int_q~q\);

-- Location: FF_X65_Y63_N7
\regFile|row0|b1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux1|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row0|b1|int_q~q\);

-- Location: LCCOMB_X65_Y63_N6
\regFile|mux_readData2|mux1|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux1|i_out~3_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(17) & ((\insMemory|altsyncram_component|auto_generated|q_a\(18) & (\regFile|row5|b1|int_q~q\)) # (!\insMemory|altsyncram_component|auto_generated|q_a\(18) 
-- & ((\regFile|row0|b1|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datab => \regFile|row5|b1|int_q~q\,
	datac => \regFile|row0|b1|int_q~q\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(17),
	combout => \regFile|mux_readData2|mux1|i_out~3_combout\);

-- Location: LCCOMB_X65_Y63_N8
\regFile|mux_readData2|mux1|i_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux1|i_out~4_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(16) & (\insMemory|altsyncram_component|auto_generated|q_a\(18) & ((\regFile|mux_readData2|mux1|i_out~3_combout\)))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(16) & ((\regFile|mux_readData2|mux1|i_out~2_combout\) # ((!\insMemory|altsyncram_component|auto_generated|q_a\(18) & \regFile|mux_readData2|mux1|i_out~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(18),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(16),
	datac => \regFile|mux_readData2|mux1|i_out~2_combout\,
	datad => \regFile|mux_readData2|mux1|i_out~3_combout\,
	combout => \regFile|mux_readData2|mux1|i_out~4_combout\);

-- Location: FF_X65_Y63_N13
\regFile|row1|b1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux1|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row1|b1|int_q~q\);

-- Location: LCCOMB_X65_Y63_N12
\regFile|mux_readData2|mux1|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux1|i_out~0_combout\ = (\regFile|row3|b1|int_q~q\ & ((\regFile|mux_readData2|mux1|choice~0_combout\) # ((\regFile|row1|b1|int_q~q\ & \regFile|mux_readData2|mux6|choice~0_combout\)))) # (!\regFile|row3|b1|int_q~q\ & 
-- (((\regFile|row1|b1|int_q~q\ & \regFile|mux_readData2|mux6|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row3|b1|int_q~q\,
	datab => \regFile|mux_readData2|mux1|choice~0_combout\,
	datac => \regFile|row1|b1|int_q~q\,
	datad => \regFile|mux_readData2|mux6|choice~0_combout\,
	combout => \regFile|mux_readData2|mux1|i_out~0_combout\);

-- Location: LCCOMB_X65_Y63_N30
\regFile|mux_readData2|mux1|i_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData2|mux1|i_out~5_combout\ = (\regFile|mux_readData2|mux1|i_out~4_combout\) # ((\regFile|mux_readData2|mux1|i_out~0_combout\) # ((\regFile|mux_readData2|mux1|i_out~1_combout\ & \regFile|mux_readData2|mux7|choice~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData2|mux1|i_out~1_combout\,
	datab => \regFile|mux_readData2|mux7|choice~0_combout\,
	datac => \regFile|mux_readData2|mux1|i_out~4_combout\,
	datad => \regFile|mux_readData2|mux1|i_out~0_combout\,
	combout => \regFile|mux_readData2|mux1|i_out~5_combout\);

-- Location: LCCOMB_X66_Y63_N4
\arithmeticUnit|addSub|b_Comp[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|b_Comp\(1) = \aluCtrl|Op\(0) $ (((\control|MemWrite~1_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(1))) # (!\control|MemWrite~1_combout\ & ((\regFile|mux_readData2|mux1|i_out~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|MemWrite~1_combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(1),
	datac => \aluCtrl|Op\(0),
	datad => \regFile|mux_readData2|mux1|i_out~5_combout\,
	combout => \arithmeticUnit|addSub|b_Comp\(1));

-- Location: LCCOMB_X62_Y65_N6
\regFile|row7|b1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|row7|b1|int_q~feeder_combout\ = \dataMemMux|mux1|mux_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dataMemMux|mux1|mux_out~0_combout\,
	combout => \regFile|row7|b1|int_q~feeder_combout\);

-- Location: FF_X62_Y65_N7
\regFile|row7|b1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \regFile|row7|b1|int_q~feeder_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row7|b1|int_q~q\);

-- Location: LCCOMB_X65_Y63_N4
\regFile|mux_readData1|mux1|choice~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux1|choice~1_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(23) & (\regFile|row5|b1|int_q~q\ & (!\insMemory|altsyncram_component|auto_generated|q_a\(22) & \insMemory|altsyncram_component|auto_generated|q_a\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datab => \regFile|row5|b1|int_q~q\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	combout => \regFile|mux_readData1|mux1|choice~1_combout\);

-- Location: FF_X66_Y65_N5
\regFile|row3|b1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux1|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row3|b1|int_q~q\);

-- Location: LCCOMB_X66_Y65_N4
\regFile|mux_readData1|mux1|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux1|i_out~2_combout\ = (\regFile|row1|b1|int_q~q\ & ((\regFile|mux_readData1|mux0|choice~0_combout\) # ((\regFile|row3|b1|int_q~q\ & \regFile|mux_readData1|mux1|choice~0_combout\)))) # (!\regFile|row1|b1|int_q~q\ & 
-- (((\regFile|row3|b1|int_q~q\ & \regFile|mux_readData1|mux1|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row1|b1|int_q~q\,
	datab => \regFile|mux_readData1|mux0|choice~0_combout\,
	datac => \regFile|row3|b1|int_q~q\,
	datad => \regFile|mux_readData1|mux1|choice~0_combout\,
	combout => \regFile|mux_readData1|mux1|i_out~2_combout\);

-- Location: LCCOMB_X65_Y63_N20
\regFile|mux_readData1|mux1|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux1|i_out~3_combout\ = (\regFile|mux_readData1|mux1|choice~1_combout\) # ((\regFile|mux_readData1|mux1|i_out~2_combout\) # ((\regFile|mux_readData1|mux6|choice~0_combout\ & \regFile|row7|b1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux6|choice~0_combout\,
	datab => \regFile|row7|b1|int_q~q\,
	datac => \regFile|mux_readData1|mux1|choice~1_combout\,
	datad => \regFile|mux_readData1|mux1|i_out~2_combout\,
	combout => \regFile|mux_readData1|mux1|i_out~3_combout\);

-- Location: LCCOMB_X65_Y63_N14
\regFile|mux_readData1|mux1|i_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux1|i_out~4_combout\ = (\regFile|mux_readData1|mux1|i_out~1_combout\) # ((\regFile|mux_readData1|mux1|i_out~3_combout\) # ((\regFile|row0|b1|int_q~q\ & !\regFile|mux_readData1|mux6|choice~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux1|i_out~1_combout\,
	datab => \regFile|row0|b1|int_q~q\,
	datac => \regFile|mux_readData1|mux6|choice~1_combout\,
	datad => \regFile|mux_readData1|mux1|i_out~3_combout\,
	combout => \regFile|mux_readData1|mux1|i_out~4_combout\);

-- Location: LCCOMB_X66_Y63_N24
\arithmeticUnit|addSub|add1|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|add1|o_CarryOut~0_combout\ = (\arithmeticUnit|addSub|b_Comp\(1) & ((\arithmeticUnit|addSub|add0|int_CarryOut3~combout\) # ((\regFile|mux_readData1|mux1|i_out~4_combout\) # (!\arithmeticUnit|addSub|add0|int_CarryOut2~combout\)))) # 
-- (!\arithmeticUnit|addSub|b_Comp\(1) & (\regFile|mux_readData1|mux1|i_out~4_combout\ & ((\arithmeticUnit|addSub|add0|int_CarryOut3~combout\) # (!\arithmeticUnit|addSub|add0|int_CarryOut2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arithmeticUnit|addSub|add0|int_CarryOut3~combout\,
	datab => \arithmeticUnit|addSub|add0|int_CarryOut2~combout\,
	datac => \arithmeticUnit|addSub|b_Comp\(1),
	datad => \regFile|mux_readData1|mux1|i_out~4_combout\,
	combout => \arithmeticUnit|addSub|add1|o_CarryOut~0_combout\);

-- Location: LCCOMB_X66_Y63_N22
\arithmeticUnit|addSub|add2|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|add2|o_Sum~combout\ = \arithmeticUnit|addSub|b_Comp\(2) $ (\arithmeticUnit|addSub|add1|o_CarryOut~0_combout\ $ (((\regFile|mux_readData1|mux2|choice~0_combout\) # (\regFile|mux_readData1|mux2|choice~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux2|choice~0_combout\,
	datab => \regFile|mux_readData1|mux2|choice~5_combout\,
	datac => \arithmeticUnit|addSub|b_Comp\(2),
	datad => \arithmeticUnit|addSub|add1|o_CarryOut~0_combout\,
	combout => \arithmeticUnit|addSub|add2|o_Sum~combout\);

-- Location: LCCOMB_X63_Y63_N18
\regFile|mux_readData1|mux2|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux2|choice~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(21) & (\regFile|row7|b2|int_q~q\ & (\insMemory|altsyncram_component|auto_generated|q_a\(23) & \insMemory|altsyncram_component|auto_generated|q_a\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datab => \regFile|row7|b2|int_q~q\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	combout => \regFile|mux_readData1|mux2|choice~0_combout\);

-- Location: LCCOMB_X63_Y63_N24
\arithmeticUnit|mux|mux2|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux2|choice~0_combout\ = (\aluCtrl|Op\(0)) # ((\control|MemWrite~1_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(2))) # (!\control|MemWrite~1_combout\ & ((\regFile|mux_readData2|mux2|i_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|MemWrite~1_combout\,
	datab => \aluCtrl|Op\(0),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(2),
	datad => \regFile|mux_readData2|mux2|i_out~5_combout\,
	combout => \arithmeticUnit|mux|mux2|choice~0_combout\);

-- Location: LCCOMB_X63_Y63_N20
\arithmeticUnit|mux|mux2|choice~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux2|choice~1_combout\ = (!\control|ALUOp1~0_combout\ & (\arithmeticUnit|mux|mux2|choice~0_combout\ & ((\regFile|mux_readData1|mux2|choice~0_combout\) # (\regFile|mux_readData1|mux2|choice~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALUOp1~0_combout\,
	datab => \regFile|mux_readData1|mux2|choice~0_combout\,
	datac => \regFile|mux_readData1|mux2|choice~5_combout\,
	datad => \arithmeticUnit|mux|mux2|choice~0_combout\,
	combout => \arithmeticUnit|mux|mux2|choice~1_combout\);

-- Location: LCCOMB_X63_Y63_N6
\arithmeticUnit|mux|mux2|choice~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux2|choice~2_combout\ = (!\aluCtrl|Op\(2) & ((\arithmeticUnit|mux|mux2|choice~1_combout\) # ((\control|ALUOp1~0_combout\ & \arithmeticUnit|addSub|add2|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|ALUOp1~0_combout\,
	datab => \aluCtrl|Op\(2),
	datac => \arithmeticUnit|addSub|add2|o_Sum~combout\,
	datad => \arithmeticUnit|mux|mux2|choice~1_combout\,
	combout => \arithmeticUnit|mux|mux2|choice~2_combout\);

-- Location: LCCOMB_X65_Y66_N30
\dataMemMux|mux2|mux_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataMemMux|mux2|mux_out~0_combout\ = (\control|MemRead~0_combout\ & (\dataMemory|altsyncram_component|auto_generated|q_b\(2))) # (!\control|MemRead~0_combout\ & ((\arithmeticUnit|mux|mux2|choice~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataMemory|altsyncram_component|auto_generated|q_b\(2),
	datab => \control|MemRead~0_combout\,
	datad => \arithmeticUnit|mux|mux2|choice~2_combout\,
	combout => \dataMemMux|mux2|mux_out~0_combout\);

-- Location: LCCOMB_X65_Y67_N22
\regFile|row5|b2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|row5|b2|int_q~feeder_combout\ = \dataMemMux|mux2|mux_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataMemMux|mux2|mux_out~0_combout\,
	combout => \regFile|row5|b2|int_q~feeder_combout\);

-- Location: FF_X65_Y67_N23
\regFile|row5|b2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \regFile|row5|b2|int_q~feeder_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row5|b2|int_q~q\);

-- Location: LCCOMB_X65_Y65_N12
\regFile|mux_readData1|mux2|choice~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux2|choice~4_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(22) & (\regFile|row3|b2|int_q~q\ & ((!\insMemory|altsyncram_component|auto_generated|q_a\(23))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(22) & (((\regFile|row5|b2|int_q~q\ & \insMemory|altsyncram_component|auto_generated|q_a\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row3|b2|int_q~q\,
	datab => \regFile|row5|b2|int_q~q\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	combout => \regFile|mux_readData1|mux2|choice~4_combout\);

-- Location: LCCOMB_X65_Y66_N20
\regFile|mux_readData1|mux2|choice~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux2|choice~1_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(22) & (\regFile|row2|b2|int_q~q\ & ((!\insMemory|altsyncram_component|auto_generated|q_a\(23))))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(22) & (((\regFile|row4|b2|int_q~q\ & \insMemory|altsyncram_component|auto_generated|q_a\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|row2|b2|int_q~q\,
	datab => \regFile|row4|b2|int_q~q\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	combout => \regFile|mux_readData1|mux2|choice~1_combout\);

-- Location: LCCOMB_X65_Y65_N0
\regFile|mux_readData1|mux2|choice~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux2|choice~2_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(21) & ((\regFile|mux_readData1|mux2|choice~1_combout\) # ((\regFile|mux_readData1|mux5|choice~0_combout\ & \regFile|row6|b2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datab => \regFile|mux_readData1|mux5|choice~0_combout\,
	datac => \regFile|row6|b2|int_q~q\,
	datad => \regFile|mux_readData1|mux2|choice~1_combout\,
	combout => \regFile|mux_readData1|mux2|choice~2_combout\);

-- Location: LCCOMB_X65_Y65_N30
\regFile|mux_readData1|mux2|choice~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux2|choice~5_combout\ = (\regFile|mux_readData1|mux2|choice~3_combout\) # ((\regFile|mux_readData1|mux2|choice~2_combout\) # ((\insMemory|altsyncram_component|auto_generated|q_a\(21) & 
-- \regFile|mux_readData1|mux2|choice~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux2|choice~3_combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datac => \regFile|mux_readData1|mux2|choice~4_combout\,
	datad => \regFile|mux_readData1|mux2|choice~2_combout\,
	combout => \regFile|mux_readData1|mux2|choice~5_combout\);

-- Location: LCCOMB_X66_Y63_N10
\arithmeticUnit|addSub|add2|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|add2|o_CarryOut~0_combout\ = (\arithmeticUnit|addSub|b_Comp\(2) & ((\regFile|mux_readData1|mux2|choice~0_combout\) # ((\regFile|mux_readData1|mux2|choice~5_combout\) # (\arithmeticUnit|addSub|add1|o_CarryOut~0_combout\)))) # 
-- (!\arithmeticUnit|addSub|b_Comp\(2) & (\arithmeticUnit|addSub|add1|o_CarryOut~0_combout\ & ((\regFile|mux_readData1|mux2|choice~0_combout\) # (\regFile|mux_readData1|mux2|choice~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux2|choice~0_combout\,
	datab => \regFile|mux_readData1|mux2|choice~5_combout\,
	datac => \arithmeticUnit|addSub|b_Comp\(2),
	datad => \arithmeticUnit|addSub|add1|o_CarryOut~0_combout\,
	combout => \arithmeticUnit|addSub|add2|o_CarryOut~0_combout\);

-- Location: LCCOMB_X66_Y63_N28
\arithmeticUnit|addSub|add3|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|add3|o_Sum~combout\ = \arithmeticUnit|addSub|b_Comp\(3) $ (\arithmeticUnit|addSub|add2|o_CarryOut~0_combout\ $ (((\regFile|mux_readData1|mux3|choice~0_combout\) # (\regFile|mux_readData1|mux3|choice~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux3|choice~0_combout\,
	datab => \arithmeticUnit|addSub|b_Comp\(3),
	datac => \regFile|mux_readData1|mux3|choice~5_combout\,
	datad => \arithmeticUnit|addSub|add2|o_CarryOut~0_combout\,
	combout => \arithmeticUnit|addSub|add3|o_Sum~combout\);

-- Location: LCCOMB_X67_Y63_N8
\arithmeticUnit|addSub|o_Zero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|o_Zero~2_combout\ = (\arithmeticUnit|addSub|add1|o_Sum~combout\) # ((\arithmeticUnit|addSub|add3|o_Sum~combout\) # (\arithmeticUnit|addSub|add2|o_Sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arithmeticUnit|addSub|add1|o_Sum~combout\,
	datac => \arithmeticUnit|addSub|add3|o_Sum~combout\,
	datad => \arithmeticUnit|addSub|add2|o_Sum~combout\,
	combout => \arithmeticUnit|addSub|o_Zero~2_combout\);

-- Location: LCCOMB_X67_Y63_N26
\arithmeticUnit|addSub|o_Zero~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|o_Zero~3_combout\ = (\arithmeticUnit|addSub|add4|o_Sum~combout\) # (\arithmeticUnit|addSub|add5|o_Sum~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arithmeticUnit|addSub|add4|o_Sum~combout\,
	datad => \arithmeticUnit|addSub|add5|o_Sum~combout\,
	combout => \arithmeticUnit|addSub|o_Zero~3_combout\);

-- Location: LCCOMB_X67_Y63_N20
\arithmeticUnit|addSub|o_Zero~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|o_Zero~4_combout\ = (\regFile|mux_readData1|mux6|choice~6_combout\) # (\regFile|mux_readData1|mux6|choice~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux6|choice~6_combout\,
	datad => \regFile|mux_readData1|mux6|choice~7_combout\,
	combout => \arithmeticUnit|addSub|o_Zero~4_combout\);

-- Location: LCCOMB_X67_Y63_N24
\arithmeticUnit|addSub|o_Zero~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|o_Zero~5_combout\ = (\arithmeticUnit|addSub|o_Zero~7_combout\ & ((\arithmeticUnit|addSub|o_Zero~4_combout\) # ((\arithmeticUnit|addSub|b_Comp\(6)) # (\arithmeticUnit|addSub|add5|o_CarryOut~0_combout\)))) # 
-- (!\arithmeticUnit|addSub|o_Zero~7_combout\ & ((\arithmeticUnit|addSub|o_Zero~4_combout\ & (\arithmeticUnit|addSub|b_Comp\(6) $ (!\arithmeticUnit|addSub|add5|o_CarryOut~0_combout\))) # (!\arithmeticUnit|addSub|o_Zero~4_combout\ & 
-- ((!\arithmeticUnit|addSub|add5|o_CarryOut~0_combout\) # (!\arithmeticUnit|addSub|b_Comp\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arithmeticUnit|addSub|o_Zero~7_combout\,
	datab => \arithmeticUnit|addSub|o_Zero~4_combout\,
	datac => \arithmeticUnit|addSub|b_Comp\(6),
	datad => \arithmeticUnit|addSub|add5|o_CarryOut~0_combout\,
	combout => \arithmeticUnit|addSub|o_Zero~5_combout\);

-- Location: LCCOMB_X67_Y63_N14
\arithmeticUnit|addSub|o_Zero~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|addSub|o_Zero~6_combout\ = (\arithmeticUnit|addSub|add0|o_Sum~combout\) # ((\arithmeticUnit|addSub|o_Zero~2_combout\) # ((\arithmeticUnit|addSub|o_Zero~3_combout\) # (\arithmeticUnit|addSub|o_Zero~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arithmeticUnit|addSub|add0|o_Sum~combout\,
	datab => \arithmeticUnit|addSub|o_Zero~2_combout\,
	datac => \arithmeticUnit|addSub|o_Zero~3_combout\,
	datad => \arithmeticUnit|addSub|o_Zero~5_combout\,
	combout => \arithmeticUnit|addSub|o_Zero~6_combout\);

-- Location: LCCOMB_X68_Y63_N14
\sig_branchSel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_branchSel~0_combout\ = (\control|beq~1_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(28) & (\insMemory|altsyncram_component|auto_generated|q_a\(26) $ (!\arithmeticUnit|addSub|o_Zero~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(26),
	datab => \control|beq~1_combout\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(28),
	datad => \arithmeticUnit|addSub|o_Zero~6_combout\,
	combout => \sig_branchSel~0_combout\);

-- Location: LCCOMB_X68_Y63_N10
\branchALU|add4|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \branchALU|add4|o_Sum~combout\ = \insMemory|altsyncram_component|auto_generated|q_a\(2) $ (\pcPlus4|add4|int_CarryOut1~combout\ $ (((\branchALU|add3|int_CarryOut2~combout\) # (!\branchALU|add3|int_CarryOut3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(2),
	datab => \branchALU|add3|int_CarryOut2~combout\,
	datac => \pcPlus4|add4|int_CarryOut1~combout\,
	datad => \branchALU|add3|int_CarryOut3~0_combout\,
	combout => \branchALU|add4|o_Sum~combout\);

-- Location: LCCOMB_X68_Y63_N0
\jumpMux|mux4|mux_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \jumpMux|mux4|mux_out~0_combout\ = (\sig_branchSel~0_combout\ & ((\branchALU|add4|o_Sum~combout\))) # (!\sig_branchSel~0_combout\ & (\pcPlus4|add4|int_CarryOut1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcPlus4|add4|int_CarryOut1~combout\,
	datac => \sig_branchSel~0_combout\,
	datad => \branchALU|add4|o_Sum~combout\,
	combout => \jumpMux|mux4|mux_out~0_combout\);

-- Location: FF_X68_Y63_N1
\pcRegister|b4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \jumpMux|mux4|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcRegister|b4|int_q~q\);

-- Location: LCCOMB_X68_Y63_N24
\jumpMux|mux3|mux_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \jumpMux|mux3|mux_out~0_combout\ = \pcRegister|b3|int_q~q\ $ (((\pcRegister|b2|int_q~q\) # ((\insMemory|altsyncram_component|auto_generated|q_a\(0) & \sig_branchSel~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(0),
	datab => \pcRegister|b2|int_q~q\,
	datac => \sig_branchSel~0_combout\,
	datad => \pcRegister|b3|int_q~q\,
	combout => \jumpMux|mux3|mux_out~0_combout\);

-- Location: LCCOMB_X68_Y63_N22
\jumpMux|mux3|mux_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \jumpMux|mux3|mux_out~1_combout\ = (\control|Jump~0_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(1))) # (!\control|Jump~0_combout\ & (\jumpMux|mux3|mux_out~0_combout\ $ (((\insMemory|altsyncram_component|auto_generated|q_a\(1) & 
-- \sig_branchSel~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Jump~0_combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(1),
	datac => \sig_branchSel~0_combout\,
	datad => \jumpMux|mux3|mux_out~0_combout\,
	combout => \jumpMux|mux3|mux_out~1_combout\);

-- Location: FF_X68_Y63_N23
\pcRegister|b3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \jumpMux|mux3|mux_out~1_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcRegister|b3|int_q~q\);

-- Location: LCCOMB_X68_Y63_N8
\jumpMux|mux2|mux_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \jumpMux|mux2|mux_out~0_combout\ = (\control|Jump~0_combout\ & (\insMemory|altsyncram_component|auto_generated|q_a\(0))) # (!\control|Jump~0_combout\ & (\pcRegister|b2|int_q~q\ $ (((!\sig_branchSel~0_combout\) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Jump~0_combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(0),
	datac => \pcRegister|b2|int_q~q\,
	datad => \sig_branchSel~0_combout\,
	combout => \jumpMux|mux2|mux_out~0_combout\);

-- Location: FF_X68_Y63_N9
\pcRegister|b2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \jumpMux|mux2|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcRegister|b2|int_q~q\);

-- Location: LCCOMB_X68_Y65_N0
\control|MemWrite~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|MemWrite~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(27) & (!\insMemory|altsyncram_component|auto_generated|q_a\(28) & (!\insMemory|altsyncram_component|auto_generated|q_a\(30) & 
-- \insMemory|altsyncram_component|auto_generated|q_a\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(27),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(28),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(30),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(26),
	combout => \control|MemWrite~0_combout\);

-- Location: LCCOMB_X68_Y65_N24
\control|MemRead~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|MemRead~0_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(29) & (\control|MemWrite~0_combout\ & \insMemory|altsyncram_component|auto_generated|q_a\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(29),
	datac => \control|MemWrite~0_combout\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(31),
	combout => \control|MemRead~0_combout\);

-- Location: LCCOMB_X67_Y65_N16
\arithmeticUnit|mux|mux0|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arithmeticUnit|mux|mux0|i_out~2_combout\ = (\aluMux|mux0|mux_out~0_combout\ & ((\regFile|mux_readData1|mux0|i_out~5_combout\ & ((!\control|ALUOp1~0_combout\))) # (!\regFile|mux_readData1|mux0|i_out~5_combout\ & ((\aluCtrl|Op\(0)) # 
-- (\control|ALUOp1~0_combout\))))) # (!\aluMux|mux0|mux_out~0_combout\ & (\regFile|mux_readData1|mux0|i_out~5_combout\ & ((\aluCtrl|Op\(0)) # (\control|ALUOp1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluMux|mux0|mux_out~0_combout\,
	datab => \regFile|mux_readData1|mux0|i_out~5_combout\,
	datac => \aluCtrl|Op\(0),
	datad => \control|ALUOp1~0_combout\,
	combout => \arithmeticUnit|mux|mux0|i_out~2_combout\);

-- Location: LCCOMB_X67_Y65_N26
\dataMemMux|mux0|mux_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataMemMux|mux0|mux_out~0_combout\ = (\control|MemRead~0_combout\ & (((\dataMemory|altsyncram_component|auto_generated|q_b\(0))))) # (!\control|MemRead~0_combout\ & (!\aluCtrl|Op\(2) & ((\arithmeticUnit|mux|mux0|i_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluCtrl|Op\(2),
	datab => \control|MemRead~0_combout\,
	datac => \dataMemory|altsyncram_component|auto_generated|q_b\(0),
	datad => \arithmeticUnit|mux|mux0|i_out~2_combout\,
	combout => \dataMemMux|mux0|mux_out~0_combout\);

-- Location: LCCOMB_X62_Y65_N24
\outputMux|mux4|choice~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux4|choice~1_combout\ = (!\ValueSelect[1]~input_o\ & !\ValueSelect[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[1]~input_o\,
	datad => \ValueSelect[0]~input_o\,
	combout => \outputMux|mux4|choice~1_combout\);

-- Location: LCCOMB_X63_Y64_N24
\outputMux|mux0|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux0|i_out~1_combout\ = (\ValueSelect[2]~input_o\ & (\control|MemWrite~0_combout\ & (!\outputMux|mux4|choice~1_combout\ & \insMemory|altsyncram_component|auto_generated|q_a\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[2]~input_o\,
	datab => \control|MemWrite~0_combout\,
	datac => \outputMux|mux4|choice~1_combout\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(31),
	combout => \outputMux|mux0|i_out~1_combout\);

-- Location: LCCOMB_X62_Y65_N2
\outputMux|mux2|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux2|choice~0_combout\ = (!\ValueSelect[1]~input_o\ & (\ValueSelect[0]~input_o\ & !\ValueSelect[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[1]~input_o\,
	datab => \ValueSelect[0]~input_o\,
	datac => \ValueSelect[2]~input_o\,
	combout => \outputMux|mux2|choice~0_combout\);

-- Location: LCCOMB_X65_Y64_N24
\outputMux|mux0|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux0|i_out~0_combout\ = (\outputMux|mux4|choice~0_combout\ & ((\ValueSelect[0]~input_o\ & (\regFile|mux_readData2|mux0|i_out~6_combout\)) # (!\ValueSelect[0]~input_o\ & ((\regFile|mux_readData1|mux0|i_out~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputMux|mux4|choice~0_combout\,
	datab => \regFile|mux_readData2|mux0|i_out~6_combout\,
	datac => \regFile|mux_readData1|mux0|i_out~5_combout\,
	datad => \ValueSelect[0]~input_o\,
	combout => \outputMux|mux0|i_out~0_combout\);

-- Location: LCCOMB_X63_Y64_N26
\outputMux|mux0|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux0|i_out~2_combout\ = (\outputMux|mux0|i_out~1_combout\) # ((\outputMux|mux0|i_out~0_combout\) # ((\arithmeticUnit|mux|mux0|i_out~3_combout\ & \outputMux|mux2|choice~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arithmeticUnit|mux|mux0|i_out~3_combout\,
	datab => \outputMux|mux0|i_out~1_combout\,
	datac => \outputMux|mux2|choice~0_combout\,
	datad => \outputMux|mux0|i_out~0_combout\,
	combout => \outputMux|mux0|i_out~2_combout\);

-- Location: LCCOMB_X63_Y65_N28
\outputMux|mux0|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux0|i_out~3_combout\ = (\outputMux|mux0|i_out~2_combout\) # ((\outputMux|mux7|choice~0_combout\ & \dataMemMux|mux0|mux_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputMux|mux7|choice~0_combout\,
	datac => \dataMemMux|mux0|mux_out~0_combout\,
	datad => \outputMux|mux0|i_out~2_combout\,
	combout => \outputMux|mux0|i_out~3_combout\);

-- Location: LCCOMB_X63_Y63_N30
\control|ALUOp0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|ALUOp0~combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(27) & (\insMemory|altsyncram_component|auto_generated|q_a\(28) & (!\insMemory|altsyncram_component|auto_generated|q_a\(26) & \control|beq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(27),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(28),
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(26),
	datad => \control|beq~0_combout\,
	combout => \control|ALUOp0~combout\);

-- Location: LCCOMB_X66_Y64_N24
\outputMux|mux1|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux1|i_out~1_combout\ = (\outputMux|mux1|i_out~0_combout\) # ((\ValueSelect[2]~input_o\ & (!\outputMux|mux4|choice~1_combout\ & \control|ALUOp0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputMux|mux1|i_out~0_combout\,
	datab => \ValueSelect[2]~input_o\,
	datac => \outputMux|mux4|choice~1_combout\,
	datad => \control|ALUOp0~combout\,
	combout => \outputMux|mux1|i_out~1_combout\);

-- Location: LCCOMB_X66_Y64_N16
\outputMux|mux1|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux1|i_out~2_combout\ = (\outputMux|mux1|i_out~1_combout\) # ((!\aluCtrl|Op\(2) & (\outputMux|mux2|choice~0_combout\ & \arithmeticUnit|mux|mux1|choice~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluCtrl|Op\(2),
	datab => \outputMux|mux1|i_out~1_combout\,
	datac => \outputMux|mux2|choice~0_combout\,
	datad => \arithmeticUnit|mux|mux1|choice~3_combout\,
	combout => \outputMux|mux1|i_out~2_combout\);

-- Location: LCCOMB_X66_Y64_N28
\outputMux|mux1|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux1|i_out~3_combout\ = (\outputMux|mux1|i_out~2_combout\) # ((\outputMux|mux7|choice~0_combout\ & \dataMemMux|mux1|mux_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \outputMux|mux7|choice~0_combout\,
	datac => \dataMemMux|mux1|mux_out~0_combout\,
	datad => \outputMux|mux1|i_out~2_combout\,
	combout => \outputMux|mux1|i_out~3_combout\);

-- Location: LCCOMB_X67_Y65_N12
\outputMux|mux2|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux2|i_out~1_combout\ = (\outputMux|mux7|choice~0_combout\ & ((\dataMemMux|mux2|mux_out~0_combout\) # ((\arithmeticUnit|mux|mux2|choice~2_combout\ & \outputMux|mux2|choice~0_combout\)))) # (!\outputMux|mux7|choice~0_combout\ & 
-- (((\arithmeticUnit|mux|mux2|choice~2_combout\ & \outputMux|mux2|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputMux|mux7|choice~0_combout\,
	datab => \dataMemMux|mux2|mux_out~0_combout\,
	datac => \arithmeticUnit|mux|mux2|choice~2_combout\,
	datad => \outputMux|mux2|choice~0_combout\,
	combout => \outputMux|mux2|i_out~1_combout\);

-- Location: LCCOMB_X62_Y65_N12
\outputMux|mux4|choice~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux4|choice~0_combout\ = (\ValueSelect[1]~input_o\ & !\ValueSelect[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[1]~input_o\,
	datab => \ValueSelect[2]~input_o\,
	combout => \outputMux|mux4|choice~0_combout\);

-- Location: LCCOMB_X68_Y65_N22
\outputMux|mux2|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux2|i_out~0_combout\ = (\outputMux|mux4|choice~1_combout\ & (((\pcRegister|b2|int_q~q\ & !\ValueSelect[2]~input_o\)))) # (!\outputMux|mux4|choice~1_combout\ & (!\control|ALUOp1~combout\ & ((\ValueSelect[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputMux|mux4|choice~1_combout\,
	datab => \control|ALUOp1~combout\,
	datac => \pcRegister|b2|int_q~q\,
	datad => \ValueSelect[2]~input_o\,
	combout => \outputMux|mux2|i_out~0_combout\);

-- Location: LCCOMB_X62_Y63_N8
\outputMux|mux2|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux2|i_out~2_combout\ = (\ValueSelect[0]~input_o\ & (((\regFile|mux_readData2|mux2|i_out~5_combout\)))) # (!\ValueSelect[0]~input_o\ & ((\regFile|mux_readData1|mux2|choice~5_combout\) # ((\regFile|mux_readData1|mux2|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux2|choice~5_combout\,
	datab => \regFile|mux_readData2|mux2|i_out~5_combout\,
	datac => \ValueSelect[0]~input_o\,
	datad => \regFile|mux_readData1|mux2|choice~0_combout\,
	combout => \outputMux|mux2|i_out~2_combout\);

-- Location: LCCOMB_X68_Y65_N20
\outputMux|mux2|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux2|i_out~3_combout\ = (\outputMux|mux2|i_out~1_combout\) # ((\outputMux|mux2|i_out~0_combout\) # ((\outputMux|mux4|choice~0_combout\ & \outputMux|mux2|i_out~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputMux|mux2|i_out~1_combout\,
	datab => \outputMux|mux4|choice~0_combout\,
	datac => \outputMux|mux2|i_out~0_combout\,
	datad => \outputMux|mux2|i_out~2_combout\,
	combout => \outputMux|mux2|i_out~3_combout\);

-- Location: LCCOMB_X69_Y65_N0
\outputMux|mux3|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux3|i_out~0_combout\ = (\outputMux|mux4|choice~1_combout\ & (\pcRegister|b3|int_q~q\ & (!\ValueSelect[2]~input_o\))) # (!\outputMux|mux4|choice~1_combout\ & (((\ValueSelect[2]~input_o\ & \control|MemRead~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcRegister|b3|int_q~q\,
	datab => \outputMux|mux4|choice~1_combout\,
	datac => \ValueSelect[2]~input_o\,
	datad => \control|MemRead~0_combout\,
	combout => \outputMux|mux3|i_out~0_combout\);

-- Location: LCCOMB_X62_Y63_N14
\outputMux|mux3|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux3|i_out~2_combout\ = (\ValueSelect[0]~input_o\ & (((\regFile|mux_readData2|mux3|i_out~5_combout\)))) # (!\ValueSelect[0]~input_o\ & ((\regFile|mux_readData1|mux3|choice~5_combout\) # ((\regFile|mux_readData1|mux3|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux3|choice~5_combout\,
	datab => \ValueSelect[0]~input_o\,
	datac => \regFile|mux_readData1|mux3|choice~0_combout\,
	datad => \regFile|mux_readData2|mux3|i_out~5_combout\,
	combout => \outputMux|mux3|i_out~2_combout\);

-- Location: LCCOMB_X68_Y65_N14
\outputMux|mux3|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux3|i_out~1_combout\ = (\dataMemMux|mux3|mux_out~0_combout\ & ((\outputMux|mux7|choice~0_combout\) # ((\arithmeticUnit|mux|mux3|choice~2_combout\ & \outputMux|mux2|choice~0_combout\)))) # (!\dataMemMux|mux3|mux_out~0_combout\ & 
-- (\arithmeticUnit|mux|mux3|choice~2_combout\ & ((\outputMux|mux2|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataMemMux|mux3|mux_out~0_combout\,
	datab => \arithmeticUnit|mux|mux3|choice~2_combout\,
	datac => \outputMux|mux7|choice~0_combout\,
	datad => \outputMux|mux2|choice~0_combout\,
	combout => \outputMux|mux3|i_out~1_combout\);

-- Location: LCCOMB_X69_Y65_N10
\outputMux|mux3|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux3|i_out~3_combout\ = (\outputMux|mux3|i_out~0_combout\) # ((\outputMux|mux3|i_out~1_combout\) # ((\outputMux|mux4|choice~0_combout\ & \outputMux|mux3|i_out~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputMux|mux4|choice~0_combout\,
	datab => \outputMux|mux3|i_out~0_combout\,
	datac => \outputMux|mux3|i_out~2_combout\,
	datad => \outputMux|mux3|i_out~1_combout\,
	combout => \outputMux|mux3|i_out~3_combout\);

-- Location: LCCOMB_X68_Y65_N28
\outputMux|mux4|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux4|i_out~1_combout\ = (\outputMux|mux2|choice~0_combout\ & ((\arithmeticUnit|mux|mux4|choice~2_combout\) # ((\dataMemMux|mux4|mux_out~0_combout\ & \outputMux|mux7|choice~0_combout\)))) # (!\outputMux|mux2|choice~0_combout\ & 
-- (\dataMemMux|mux4|mux_out~0_combout\ & (\outputMux|mux7|choice~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputMux|mux2|choice~0_combout\,
	datab => \dataMemMux|mux4|mux_out~0_combout\,
	datac => \outputMux|mux7|choice~0_combout\,
	datad => \arithmeticUnit|mux|mux4|choice~2_combout\,
	combout => \outputMux|mux4|i_out~1_combout\);

-- Location: LCCOMB_X69_Y65_N4
\outputMux|mux4|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux4|i_out~0_combout\ = (\ValueSelect[2]~input_o\ & (((!\outputMux|mux4|choice~1_combout\ & \control|MemRead~0_combout\)))) # (!\ValueSelect[2]~input_o\ & (\pcRegister|b4|int_q~q\ & (\outputMux|mux4|choice~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[2]~input_o\,
	datab => \pcRegister|b4|int_q~q\,
	datac => \outputMux|mux4|choice~1_combout\,
	datad => \control|MemRead~0_combout\,
	combout => \outputMux|mux4|i_out~0_combout\);

-- Location: LCCOMB_X65_Y64_N28
\outputMux|mux4|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux4|i_out~2_combout\ = (\ValueSelect[0]~input_o\ & (\regFile|mux_readData2|mux4|i_out~5_combout\)) # (!\ValueSelect[0]~input_o\ & (((\regFile|mux_readData1|mux4|choice~0_combout\) # (\regFile|mux_readData1|mux4|choice~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData2|mux4|i_out~5_combout\,
	datab => \regFile|mux_readData1|mux4|choice~0_combout\,
	datac => \regFile|mux_readData1|mux4|choice~5_combout\,
	datad => \ValueSelect[0]~input_o\,
	combout => \outputMux|mux4|i_out~2_combout\);

-- Location: LCCOMB_X69_Y65_N18
\outputMux|mux4|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux4|i_out~3_combout\ = (\outputMux|mux4|i_out~1_combout\) # ((\outputMux|mux4|i_out~0_combout\) # ((\outputMux|mux4|choice~0_combout\ & \outputMux|mux4|i_out~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputMux|mux4|choice~0_combout\,
	datab => \outputMux|mux4|i_out~1_combout\,
	datac => \outputMux|mux4|i_out~0_combout\,
	datad => \outputMux|mux4|i_out~2_combout\,
	combout => \outputMux|mux4|i_out~3_combout\);

-- Location: LCCOMB_X62_Y65_N0
\outputMux|mux5|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux5|i_out~1_combout\ = (\outputMux|mux2|choice~0_combout\ & ((\arithmeticUnit|mux|mux5|choice~2_combout\) # ((\outputMux|mux7|choice~0_combout\ & \dataMemMux|mux5|mux_out~0_combout\)))) # (!\outputMux|mux2|choice~0_combout\ & 
-- (\outputMux|mux7|choice~0_combout\ & (\dataMemMux|mux5|mux_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputMux|mux2|choice~0_combout\,
	datab => \outputMux|mux7|choice~0_combout\,
	datac => \dataMemMux|mux5|mux_out~0_combout\,
	datad => \arithmeticUnit|mux|mux5|choice~2_combout\,
	combout => \outputMux|mux5|i_out~1_combout\);

-- Location: LCCOMB_X66_Y64_N8
\outputMux|mux5|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux5|i_out~2_combout\ = (\ValueSelect[0]~input_o\ & (((\regFile|mux_readData2|mux5|i_out~5_combout\)))) # (!\ValueSelect[0]~input_o\ & ((\regFile|mux_readData1|mux5|choice~1_combout\) # ((\regFile|mux_readData1|mux5|choice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux5|choice~1_combout\,
	datab => \ValueSelect[0]~input_o\,
	datac => \regFile|mux_readData1|mux5|choice~6_combout\,
	datad => \regFile|mux_readData2|mux5|i_out~5_combout\,
	combout => \outputMux|mux5|i_out~2_combout\);

-- Location: LCCOMB_X63_Y63_N4
\control|Jump~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Jump~0_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(27) & (\control|beq~0_combout\ & (!\insMemory|altsyncram_component|auto_generated|q_a\(28) & !\insMemory|altsyncram_component|auto_generated|q_a\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(27),
	datab => \control|beq~0_combout\,
	datac => \insMemory|altsyncram_component|auto_generated|q_a\(28),
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(26),
	combout => \control|Jump~0_combout\);

-- Location: LCCOMB_X62_Y65_N18
\outputMux|mux5|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux5|i_out~0_combout\ = (\outputMux|mux4|choice~1_combout\ & (\pcRegister|b5|int_q~q\ & (!\ValueSelect[2]~input_o\))) # (!\outputMux|mux4|choice~1_combout\ & (((\ValueSelect[2]~input_o\ & \control|Jump~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputMux|mux4|choice~1_combout\,
	datab => \pcRegister|b5|int_q~q\,
	datac => \ValueSelect[2]~input_o\,
	datad => \control|Jump~0_combout\,
	combout => \outputMux|mux5|i_out~0_combout\);

-- Location: LCCOMB_X62_Y65_N26
\outputMux|mux5|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux5|i_out~3_combout\ = (\outputMux|mux5|i_out~1_combout\) # ((\outputMux|mux5|i_out~0_combout\) # ((\outputMux|mux4|choice~0_combout\ & \outputMux|mux5|i_out~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputMux|mux4|choice~0_combout\,
	datab => \outputMux|mux5|i_out~1_combout\,
	datac => \outputMux|mux5|i_out~2_combout\,
	datad => \outputMux|mux5|i_out~0_combout\,
	combout => \outputMux|mux5|i_out~3_combout\);

-- Location: FF_X63_Y63_N27
\regFile|row6|b6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux6|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row6|b6|int_q~q\);

-- Location: LCCOMB_X63_Y65_N8
\regFile|mux_readData1|mux6|choice~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux6|choice~3_combout\ = (!\insMemory|altsyncram_component|auto_generated|q_a\(21) & ((\regFile|mux_readData1|mux6|choice~2_combout\) # ((\regFile|row6|b6|int_q~q\ & \regFile|mux_readData1|mux5|choice~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux6|choice~2_combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datac => \regFile|row6|b6|int_q~q\,
	datad => \regFile|mux_readData1|mux5|choice~0_combout\,
	combout => \regFile|mux_readData1|mux6|choice~3_combout\);

-- Location: FF_X67_Y63_N1
\regFile|row3|b6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dataMemMux|mux6|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	ena => \regFile|sig_regWrite[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row3|b6|int_q~q\);

-- Location: FF_X67_Y65_N5
\regFile|row5|b6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \dataMemMux|mux6|mux_out~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regFile|sig_regWrite[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regFile|row5|b6|int_q~q\);

-- Location: LCCOMB_X63_Y65_N16
\regFile|mux_readData1|mux6|choice~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux6|choice~5_combout\ = (\insMemory|altsyncram_component|auto_generated|q_a\(22) & (!\insMemory|altsyncram_component|auto_generated|q_a\(23) & (\regFile|row3|b6|int_q~q\))) # 
-- (!\insMemory|altsyncram_component|auto_generated|q_a\(22) & (\insMemory|altsyncram_component|auto_generated|q_a\(23) & ((\regFile|row5|b6|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(22),
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(23),
	datac => \regFile|row3|b6|int_q~q\,
	datad => \regFile|row5|b6|int_q~q\,
	combout => \regFile|mux_readData1|mux6|choice~5_combout\);

-- Location: LCCOMB_X63_Y65_N18
\regFile|mux_readData1|mux6|choice~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux6|choice~6_combout\ = (\regFile|mux_readData1|mux6|choice~4_combout\) # ((\regFile|mux_readData1|mux6|choice~3_combout\) # ((\insMemory|altsyncram_component|auto_generated|q_a\(21) & 
-- \regFile|mux_readData1|mux6|choice~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux6|choice~4_combout\,
	datab => \insMemory|altsyncram_component|auto_generated|q_a\(21),
	datac => \regFile|mux_readData1|mux6|choice~3_combout\,
	datad => \regFile|mux_readData1|mux6|choice~5_combout\,
	combout => \regFile|mux_readData1|mux6|choice~6_combout\);

-- Location: LCCOMB_X63_Y65_N0
\regFile|mux_readData1|mux6|i_out\ : cycloneive_lcell_comb
-- Equation(s):
-- \regFile|mux_readData1|mux6|i_out~combout\ = (\regFile|mux_readData1|mux6|choice~6_combout\) # ((\regFile|mux_readData1|mux6|choice~0_combout\ & \regFile|row7|b6|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regFile|mux_readData1|mux6|choice~0_combout\,
	datab => \regFile|row7|b6|int_q~q\,
	datad => \regFile|mux_readData1|mux6|choice~6_combout\,
	combout => \regFile|mux_readData1|mux6|i_out~combout\);

-- Location: LCCOMB_X65_Y64_N26
\outputMux|mux6|i_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux6|i_out~0_combout\ = (\outputMux|mux4|choice~0_combout\ & ((\ValueSelect[0]~input_o\ & ((\regFile|mux_readData2|mux6|i_out~5_combout\))) # (!\ValueSelect[0]~input_o\ & (\regFile|mux_readData1|mux6|i_out~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputMux|mux4|choice~0_combout\,
	datab => \ValueSelect[0]~input_o\,
	datac => \regFile|mux_readData1|mux6|i_out~combout\,
	datad => \regFile|mux_readData2|mux6|i_out~5_combout\,
	combout => \outputMux|mux6|i_out~0_combout\);

-- Location: LCCOMB_X63_Y64_N12
\outputMux|mux6|i_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux6|i_out~1_combout\ = (\ValueSelect[2]~input_o\ & (((!\outputMux|mux4|choice~1_combout\ & !\control|ALUOp1~combout\)))) # (!\ValueSelect[2]~input_o\ & (\pcRegister|b6|int_q~q\ & (\outputMux|mux4|choice~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[2]~input_o\,
	datab => \pcRegister|b6|int_q~q\,
	datac => \outputMux|mux4|choice~1_combout\,
	datad => \control|ALUOp1~combout\,
	combout => \outputMux|mux6|i_out~1_combout\);

-- Location: LCCOMB_X63_Y64_N2
\outputMux|mux6|i_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux6|i_out~2_combout\ = (\outputMux|mux6|i_out~0_combout\) # ((\outputMux|mux6|i_out~1_combout\) # ((\outputMux|mux2|choice~0_combout\ & \arithmeticUnit|mux|mux6|choice~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputMux|mux2|choice~0_combout\,
	datab => \outputMux|mux6|i_out~0_combout\,
	datac => \arithmeticUnit|mux|mux6|choice~2_combout\,
	datad => \outputMux|mux6|i_out~1_combout\,
	combout => \outputMux|mux6|i_out~2_combout\);

-- Location: LCCOMB_X63_Y64_N0
\outputMux|mux6|i_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux6|i_out~3_combout\ = (\outputMux|mux6|i_out~2_combout\) # ((\outputMux|mux7|choice~0_combout\ & \dataMemMux|mux6|mux_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \outputMux|mux7|choice~0_combout\,
	datac => \dataMemMux|mux6|mux_out~0_combout\,
	datad => \outputMux|mux6|i_out~2_combout\,
	combout => \outputMux|mux6|i_out~3_combout\);

-- Location: LCCOMB_X62_Y65_N8
\outputMux|mux7|choice~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux7|choice~1_combout\ = (!\ValueSelect[1]~input_o\ & (!\ValueSelect[0]~input_o\ & (!\ValueSelect[2]~input_o\ & \pcRegister|b7|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[1]~input_o\,
	datab => \ValueSelect[0]~input_o\,
	datac => \ValueSelect[2]~input_o\,
	datad => \pcRegister|b7|int_q~q\,
	combout => \outputMux|mux7|choice~1_combout\);

-- Location: LCCOMB_X62_Y65_N20
\outputMux|mux7|choice~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux7|choice~3_combout\ = (\outputMux|mux7|choice~2_combout\) # ((\outputMux|mux7|choice~1_combout\) # ((\arithmeticUnit|mux|mux7|choice~1_combout\ & \outputMux|mux2|choice~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputMux|mux7|choice~2_combout\,
	datab => \arithmeticUnit|mux|mux7|choice~1_combout\,
	datac => \outputMux|mux7|choice~1_combout\,
	datad => \outputMux|mux2|choice~0_combout\,
	combout => \outputMux|mux7|choice~3_combout\);

-- Location: LCCOMB_X67_Y65_N24
\outputMux|mux7|choice~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputMux|mux7|choice~4_combout\ = (\outputMux|mux7|choice~3_combout\) # ((\outputMux|mux7|choice~0_combout\ & \dataMemMux|mux7|mux_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outputMux|mux7|choice~0_combout\,
	datab => \dataMemMux|mux7|mux_out~0_combout\,
	datad => \outputMux|mux7|choice~3_combout\,
	combout => \outputMux|mux7|choice~4_combout\);

-- Location: LCCOMB_X68_Y65_N2
\control|RegWrite~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|RegWrite~2_combout\ = ((!\insMemory|altsyncram_component|auto_generated|q_a\(29) & (\control|MemWrite~0_combout\ & \insMemory|altsyncram_component|auto_generated|q_a\(31)))) # (!\control|ALUOp1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insMemory|altsyncram_component|auto_generated|q_a\(29),
	datab => \control|MemWrite~0_combout\,
	datac => \control|ALUOp1~combout\,
	datad => \insMemory|altsyncram_component|auto_generated|q_a\(31),
	combout => \control|RegWrite~2_combout\);

ww_MuxOut(0) <= \MuxOut[0]~output_o\;

ww_MuxOut(1) <= \MuxOut[1]~output_o\;

ww_MuxOut(2) <= \MuxOut[2]~output_o\;

ww_MuxOut(3) <= \MuxOut[3]~output_o\;

ww_MuxOut(4) <= \MuxOut[4]~output_o\;

ww_MuxOut(5) <= \MuxOut[5]~output_o\;

ww_MuxOut(6) <= \MuxOut[6]~output_o\;

ww_MuxOut(7) <= \MuxOut[7]~output_o\;

ww_InstructionOut(0) <= \InstructionOut[0]~output_o\;

ww_InstructionOut(1) <= \InstructionOut[1]~output_o\;

ww_InstructionOut(2) <= \InstructionOut[2]~output_o\;

ww_InstructionOut(3) <= \InstructionOut[3]~output_o\;

ww_InstructionOut(4) <= \InstructionOut[4]~output_o\;

ww_InstructionOut(5) <= \InstructionOut[5]~output_o\;

ww_InstructionOut(6) <= \InstructionOut[6]~output_o\;

ww_InstructionOut(7) <= \InstructionOut[7]~output_o\;

ww_InstructionOut(8) <= \InstructionOut[8]~output_o\;

ww_InstructionOut(9) <= \InstructionOut[9]~output_o\;

ww_InstructionOut(10) <= \InstructionOut[10]~output_o\;

ww_InstructionOut(11) <= \InstructionOut[11]~output_o\;

ww_InstructionOut(12) <= \InstructionOut[12]~output_o\;

ww_InstructionOut(13) <= \InstructionOut[13]~output_o\;

ww_InstructionOut(14) <= \InstructionOut[14]~output_o\;

ww_InstructionOut(15) <= \InstructionOut[15]~output_o\;

ww_InstructionOut(16) <= \InstructionOut[16]~output_o\;

ww_InstructionOut(17) <= \InstructionOut[17]~output_o\;

ww_InstructionOut(18) <= \InstructionOut[18]~output_o\;

ww_InstructionOut(19) <= \InstructionOut[19]~output_o\;

ww_InstructionOut(20) <= \InstructionOut[20]~output_o\;

ww_InstructionOut(21) <= \InstructionOut[21]~output_o\;

ww_InstructionOut(22) <= \InstructionOut[22]~output_o\;

ww_InstructionOut(23) <= \InstructionOut[23]~output_o\;

ww_InstructionOut(24) <= \InstructionOut[24]~output_o\;

ww_InstructionOut(25) <= \InstructionOut[25]~output_o\;

ww_InstructionOut(26) <= \InstructionOut[26]~output_o\;

ww_InstructionOut(27) <= \InstructionOut[27]~output_o\;

ww_InstructionOut(28) <= \InstructionOut[28]~output_o\;

ww_InstructionOut(29) <= \InstructionOut[29]~output_o\;

ww_InstructionOut(30) <= \InstructionOut[30]~output_o\;

ww_InstructionOut(31) <= \InstructionOut[31]~output_o\;

ww_BranchOut <= \BranchOut~output_o\;

ww_ZeroOut <= \ZeroOut~output_o\;

ww_MemWriteOut <= \MemWriteOut~output_o\;

ww_RegWriteOut <= \RegWriteOut~output_o\;
END structure;


