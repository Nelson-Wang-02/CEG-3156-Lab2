library ieee; 
LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity tb_ALU is
END tb_ALU;

ARCHITECTURE testbench of tb_ALU IS

	Component ALU
		port(
			rData1, rData2		: IN STD_LOGIC_VECTOR(7 downto 0);
			Op 					: IN STD_LOGIC_VECTOR(2 downto 0);
			ALUResult			: OUT STD_LOGIC_VECTOR(7 downto 0);
			Zero 					: OUT STD_LOGIC);
	END component;
	
	--IN Signals
	signal tb_rData1: 			std_logic_vector(7 downto 0);
	signal tb_rData2: 			std_logic_vector(7 downto 0);
	signal tb_Op:					std_logic_vector(2 downto 0);
	
	--OUT Signals
	signal tb_ALUResult:			std_logic_vector(7 downto 0);
	signal tb_Zero:					std_logic; 
	
	constant period: time:= 50 ns;
	signal sim_end: boolean := false;
	
	begin
	
	DUT: ALU
		port map(
			rData1 => tb_rData1,
			rData2 => tb_rData2,
			Op => tb_Op,
			ALUResult => tb_ALUResult,
			zero => tb_Zero
		);
		
		
	tb_process: process
		Begin
		--test ADD, expected 00000011
		tb_rData1 <= "00000001";
		tb_rData2 <= "00000010";
		tb_Op <= "010";
		wait for period;
		
		--test Subtract, expected 00000001
		tb_rData1 <= "00000011";
		tb_rData2 <= "00000010";
		tb_Op <= "110";
		wait for period;
		
		--test OR, expected 11111111
		tb_rData1 <= "00001111";
		tb_rData2 <= "11110000";
		tb_Op <= "001";
		wait for period;
		
		--test AND, expected 00111000
		tb_rData1 <= "00111111";
		tb_rData2 <= "11111000";
		tb_Op <= "000";
		wait for period;
		
		--test set on less than
		tb_rData1 <= "00111111";
		tb_rData2 <= "11111000";
		tb_Op <= "111";
		wait for period;
		
		wait;
		end process;		
				
	end testbench;