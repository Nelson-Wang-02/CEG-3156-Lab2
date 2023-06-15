library ieee; 
use ieee.std_logic_1164.all; 

entity tb_controlLogicUnit is 
end tb_controlLogicUnit; 

architecture testbench of tb_controlLogicUnit is 

	component controlLogicUnit 
		port (
			op : in std_logic_vector(5 downto 0);
			
			RegDst, ALUSrc : OUT STD_LOGIC;
			MemtoReg, RegWrite : OUT STD_LOGIC;
			MemRead, MemWrite : OUT STD_LOGIC;
			Branch : OUT STD_LOGIC;
			ALUOp1, ALUOp0 : OUT STD_LOGIC);

	end component; 
	--IN Signals
	signal tb_op : std_logic_vector(5 downto 0); 
	
	--OUT Signals
	signal tb_RegDst, tb_ALUSrc : std_logic; 
	signal tb_MemtoReg, tb_RegWrite : std_logic; 
	signal tb_MemRead, tb_MemWrite : std_logic; 
	signal tb_Branch : std_logic; 
	signal tb_ALUOp1, tb_ALUOp0 : std_logic; 
	
	constant period : time := 50 ns; 
	signal sim_end : boolean := false; 
	
	begin 
	
	DUT: controlLogicUnit 
		port map (
			op => tb_op,
			RegDst => tb_RegDst,
			ALUSrc => tb_ALUSrc,
			MemtoReg => tb_MemtoReg,
			RegWrite => tb_RegWrite,
			MemRead => tb_MemRead,
			MemWrite => tb_MemWrite,
			Branch => tb_Branch,
			ALUOp1 => tb_ALUOp1,
			ALUOp0 =>  tb_ALUOp0);
	
	tb_process: process 
		begin 
		
		
		
		--Test r-type instruction 
		tb_op <= "000000"; 
		wait for period; 
		
		--Test 1s
--		assert(tb_RegDst = '1' and tb_RegWrite = '1' and tb_ALUOp1 = '1'); 
--		report "RegDst, RegWrite, and ALUOp1 should be 1" severity error; 
		 
		--Test 0s
--		assert(tb_ALUSrc = '0' and tb_MemtoReg = '0' and tb_MemRead = '0' and tb_MemWrite ='0' and tb_ALUOp0 = '0');
--		report "ALUSrc, MemtoReg, MemRead, MemWrite, and ALUOp0 should be 0" severity error;
		
		--Test lw instruction 
		tb_op <= "100011"; 
		wait for period; 
		
		--Test 1s
--		assert(tb_ALUSrc = '1' and tb_MemtoReg = '1' and tb_RegWrite = '1' and tb_MemRead = '1');
--		report "ALUSrc, MemtoReg, RegWrite, and MemRead should be 0" severity error;
		
		--Test 0s 
--		assert(tb_RegDst = '0' and tb_MemWrite = '0' and tb_Branch = '0' and tb_ALUOp1 = '0' and tb_ALUOp0 = '0');
--		report "RegDst, MemWrite, Branch, ALUOp1, and ALUOp0 should be 0" severity error;
	 tb_op <= "101011";
	 wait for period; 
	 
	 tb_op <= "000100";
	 wait for period;
	
	wait;
	end process; 
	
end testbench; 
		
		
		
		
		