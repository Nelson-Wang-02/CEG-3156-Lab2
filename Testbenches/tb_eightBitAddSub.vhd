library ieee;
use ieee.std_logic_1164.all;

entity tb_eightBitAddSub is
end tb_eightBitAddSub;

architecture testbench of tb_eightBitAddSub is

    component eightBitAddSub
		PORT(
			i_Ai, i_Bi		: IN	STD_LOGIC_VECTOR(7 downto 0);
			i_Op				: IN STD_LOGIC;
			o_Zero         : OUT STD_LOGIC;
			o_CarryOut		: OUT	STD_LOGIC;
			o_Diff			: OUT	STD_LOGIC_VECTOR(7 downto 0));
    end component;
	 
	 signal tb_A, tb_B : STD_LOGIC_VECTOR(7 downto 0);
	 signal tb_Op, tb_Zero, tb_CarryOut : STD_LOGIC;
	 signal tb_Diff : STD_LOGIC_VECTOR(7 downto 0);
begin
    
    dut1 : eightBitAddSub 
		port map(
        i_Ai => tb_A,
		  i_Bi => tb_B, 
		  i_Op => tb_Op,
		  o_Zero => tb_Zero, 
		  o_CarryOut => tb_CarryOut,
		  o_Diff => tb_Diff);

    stim_proc : process
    begin

        -- Test condition 1
        tb_A <= "01010101"; --55
		  tb_B <= "10101010"; --AA
		  tb_Op <= '0'; --ADD
		  wait for 10 ns;
		  assert tb_Zero = '0' and tb_CarryOut = '0' and tb_Diff = "11111111" report "ADD operation failed" severity error;

        -- Test condition 1
        tb_A <= "01010101"; --55
		  tb_B <= "10101010"; --AA
		  tb_Op <= '1'; --ADD
		  
		  wait for 10 ns;
		  assert tb_Zero = '0' and tb_CarryOut = '0' and tb_Diff = "10101011" report "SUB operation failed" severity error;
	
        wait;
    end process;
end testbench;
