library ieee;
use ieee.std_logic_1164.all;

entity tb_ALUControlUnit is
end tb_ALUControlUnit;

architecture testbench of tb_ALUControlUnit is	 
	 signal tb_ALUOp : std_logic_vector(1 downto 0);
	 signal tb_F : std_logic_vector(5 downto 0);
	 signal tb_Op : std_LOGIC_VECTOR(2 downto 0);
	 
    component ALUControlUnit
		PORT(
			ALUOp : IN STD_LOGIC_VECTOR(1 downto 0);
			F 		: IN STD_LOGIC_VECTOR(5 downto 0);
			Op		: OUT STD_LOGIC_VECTOR(2 downto 0));
		 end component;
begin
    -- Map the DUT into the testbench
    dut1 : ALUControlUnit 
		port map(
        ALUOp => tb_ALUOp,
        F => tb_F,
        Op => tb_Op);

    stim_proc : process
    begin
        -- Test condition 1
        tb_ALUOp(1) <= '0'; tb_ALUOp(0) <= '0'; 
		  tb_F(5) <= '0'; tb_F(4) <= '0'; tb_F(3) <= '0'; tb_F(2) <= '0'; tb_F(1) <= '0'; tb_F(0) <= '0';
        wait for 10 ns;
        assert tb_Op(2) = '0' and tb_Op(1) = '1' and tb_Op(0) = '0' report "Test 1 failed" severity error;

        -- Test condition 2
        tb_ALUOp(1) <= '0'; tb_ALUOp(0) <= '1'; 
		  tb_F(5) <= '0'; tb_F(4) <= '0'; tb_F(3) <= '0'; tb_F(2) <= '0'; tb_F(1) <= '0'; tb_F(0) <= '0';
        wait for 10 ns;
        assert tb_Op(2) = '0' and tb_Op(1) = '1' and tb_Op(0) = '1' report "Test 2 failed" severity error;

--        -- Test condition 3
        tb_ALUOp(1) <= '1'; tb_ALUOp(0) <= '0'; 
		  tb_F(5) <= '0'; tb_F(4) <= '0'; tb_F(3) <= '0'; tb_F(2) <= '0'; tb_F(1) <= '0'; tb_F(0) <= '0';
        wait for 10 ns;
        assert tb_Op(2) = '0' and tb_Op(1) = '1' and tb_Op(0) = '0' report "Test 3 failed" severity error;
--
--        -- Test condition 4
        tb_ALUOp(1) <= '1'; tb_ALUOp(0) <= '0'; 
		  tb_F(5) <= '0'; tb_F(4) <= '0'; tb_F(3) <= '0'; tb_F(2) <= '0'; tb_F(1) <= '1'; tb_F(0) <= '0';
        wait for 10 ns;
        assert tb_Op(2) = '0' and tb_Op(1) = '1' and tb_Op(0) = '1' report "Test 4 failed" severity error;

--        -- Test condition 5
        tb_ALUOp(1) <= '1'; tb_ALUOp(0) <= '0'; 
		  tb_F(5) <= '0'; tb_F(4) <= '0'; tb_F(3) <= '0'; tb_F(2) <= '1'; tb_F(1) <= '0'; tb_F(0) <= '0';
        wait for 10 ns;
        assert tb_Op(2) = '0' and tb_Op(1) = '0' and tb_Op(0) = '0' report "Test 5 failed" severity error;
--
--        -- Test condition 6
        tb_ALUOp(1) <= '1'; tb_ALUOp(0) <= '0'; 
		  tb_F(5) <= '0'; tb_F(4) <= '0'; tb_F(3) <= '0'; tb_F(2) <= '1'; tb_F(1) <= '0'; tb_F(0) <= '1';
        wait for 10 ns;
        assert tb_Op(2) = '0' and tb_Op(1) = '0' and tb_Op(0) = '1' report "Test 6 failed" severity error;
--
--        -- Test condition 7
        tb_ALUOp(1) <= '1'; tb_ALUOp(0) <= '0'; 
		  tb_F(3) <= '1'; tb_F(2) <= '0'; tb_F(1) <= '1'; tb_F(0) <= '0';
        wait for 10 ns;
        assert tb_Op(2) = '1' and tb_Op(1) = '0' and tb_Op(0) = '0' report "Test 7 failed" severity error;

        wait;
    end process;
	 
end testbench;
