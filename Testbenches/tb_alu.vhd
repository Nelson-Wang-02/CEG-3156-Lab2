library ieee;
use ieee.std_logic_1164.all;

entity tb_alu is
end tb_alu;

architecture testbench of tb_alu is
	component alu
		PORT(
			rData1, rData2 : IN STD_LOGIC_VECTOR(7 downto 0);
			Op 		: IN STD_LOGIC_VECTOR(2 downto 0);
			ALUResult	: OUT STD_LOGIC_VECTOR(7 downto 0);
			Zero : OUT STD_LOGIC);
	end component;
	
	signal tb_rData1, tb_rData2 : STD_LOGIC_VECTOR(7 downto 0);
	signal tb_Op : STD_LOGIC_VECTOR(2 downto 0);
	signal tb_ALUResult : STD_LOGIC_VECTOR(7 downto 0);
	signal tb_Zero : STD_LOGIC;
	
begin
    -- Map the controlLogicUnit into the testbench
    dut1 : alu 
	 
		port map(
			rData1 => tb_rData1,
			rData2 => tb_rData2,
			Op => tb_Op, 
			ALUResult => tb_ALUResult,
			Zero => tb_Zero);

    stim_proc : process
    begin
	 
		--Test AND operation
		tb_rData1 <= "01010101"; --55
		tb_rData2 <= "10101010"; --AA
		tb_Op <= "000"; --AND
		wait for 10 ns; 	
		assert tb_ALUResult = "00000000" report "AND Operation failed" severity error;
		
		--Test OR operation 
		tb_Op <= "001"; --OR
		wait for 10 ns;
		assert tb_ALUResult = "11111111" and tb_Zero = '0' report "OR Operation failed" severity error;

		--Test ADD operation
		tb_Op <= "010"; --ADD
		wait for 10 ns;
		assert tb_ALUResult = "11111111" and tb_Zero = '0' report "ADD Operation failed" severity error;		
		
		--Test SUB operation
		tb_Op <= "011"; --SUB
		wait for 10 ns;
		assert tb_ALUResult = "10101011" and tb_Zero = '0' report "SUB Operation failed" severity error;
		
		--Test SLT operation
		tb_Op <= "100"; --SLT
		wait for 10 ns;
		assert tb_ALUResult = "00000001" and tb_Zero = '0' report "SLT Operation failed" severity error;	
		
		wait;
    end process;
end testbench;
