LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity tb_ALUCtrlUnit is
END tb_ALUCtrlUnit;

ARCHITECTURE testbench of tb_ALUCtrlUnit IS

	Component ALUCtrlUnit
		port(
			F: 				IN std_logic_vector(5 downto 0);
			AluOp:			IN std_logic_vector(1 downto 0);
			Operation:		OUT std_logic_vector(2 downto 0)
		);
	END component;
	
	--IN Signals
	signal tb_F: 			std_logic_vector(5 downto 0);
	signal tb_AluOp:		std_logic_vector(1 downto 0);
	
	--OUT Signals
	signal tb_Operation:	std_logic_vector(2 downto 0);
	
	constant period: time:= 50 ns;
	signal sim_end: boolean := false;
	
	begin
	
	DUT: ALUCtrlUnit
		port map(
			F => tb_F,
			AluOp => tb_AluOp,
			Operation => tb_Operation
		);
		
		
	tb_process: process
		Begin
		--test 1, expected 010
		tb_AluOp <= "00";
		tb_F <= "000000";
		wait for period;
		
		--test 2, expected 110
		tb_AluOp <= "01";
		tb_F <= "000000";
		wait for period;
		
		--test 3, expected 010
		tb_AluOp <= "10";
		tb_F <= "000000";
		wait for period;
		
		--test 4, expected 110
		tb_AluOp <= "10";
		tb_F <= "000010";
		wait for period;
		
		--test 5, expected 000
		tb_AluOp <= "10";
		tb_F <= "000100";
		wait for period;
		
		--test 6, expected 001
		tb_AluOp <= "10";
		tb_F <= "000101";
		wait for period;
			
		--test 7, expected 111
		tb_AluOp <= "10";
		tb_F <= "001010";
		wait for period;
		
		wait;
		end process;		
				
	end testbench;
	