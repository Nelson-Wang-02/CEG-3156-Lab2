library ieee;
use ieee.std_logic_1164.all;

entity tb_controlLogicUnit is
end tb_controlLogicUnit;

architecture testbench of tb_controlLogicUnit is
    signal op : std_logic_vector(5 downto 0);
    signal RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, BranchNotEqual, Jump, ALUOp1, ALUOp0 : std_logic;
    component controlLogicUnit
        port(
            op : in std_logic_vector(5 downto 0);
            RegDst : out std_logic;
            ALUSrc : out std_logic;
            MemtoReg : out std_logic;
            RegWrite : out std_logic;
            MemRead : out std_logic;
            MemWrite : out std_logic;
            Branch : out std_logic;
            BranchNotEqual : out std_logic;
            Jump : out std_logic;
            ALUOp1 : out std_logic;
            ALUOp0 : out std_logic
        );
    end component;
begin
    -- Map the controlLogicUnit into the testbench
    dut1 : controlLogicUnit 
	 
		port map(
        op => op,
        RegDst => RegDst,
        ALUSrc => ALUSrc,
        MemtoReg => MemtoReg,
        RegWrite => RegWrite,
        MemRead => MemRead,
        MemWrite => MemWrite,
        Branch => Branch,
        BranchNotEqual => BranchNotEqual,
        Jump => Jump,
        ALUOp1 => ALUOp1,
        ALUOp0 => ALUOp0
		);

    stim_proc : process
    begin

        -- Test condition 1
        op <= "000000"; --rFormat
        wait for 10 ns;
        assert RegDst = '1' and RegWrite = '1' and ALUOp1 = '1'  report "Test 1 failed" severity error;

        -- Test condition 2
        op <= "100011"; --lw
        wait for 10 ns;
        assert ALUSrc = '1' and MemtoReg = '1' and RegWrite = '1' and MemRead = '1' report "Test 2 failed" severity error;

        -- Test condition 3
        op <= "101011"; --sw
        wait for 10 ns;
        assert ALUSrc = '1' and MemWrite = '1'  report "Test 3 failed" severity error;

		  -- Test condition 4
		  op <= "000100"; --beq
		  wait for 10 ns;
		  assert Branch = '1' and ALUOp0 = '1' report "Test 4 failed" severity error;  
		  
		  -- Test condition 5
		  op <= "000101"; -- bne
		  wait for 10 ns; 
		  assert BranchNotEqual = '1' report "Test 5 failed" severity error;  
		  
		  -- Test condition 6
		  op <= "000010"; -- jump
		  wait for 10 ns;
		  assert Jump = '1' report "Test 6 failed" severity error;
			
        wait;
    end process;
end testbench;
