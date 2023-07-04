library ieee;
use ieee.std_logic_1164.all;

entity tb_singleCycleProcessor is
end tb_singleCycleProcessor;

architecture testbench of tb_singleCycleProcessor is

	component singleCycleProcessor 

		port (
			GClock, GReset : IN STD_LOGIC; 
			ValueSelect : IN STD_LOGIC_VECTOR(2 downto 0);
			
			MuxOut : OUT STD_LOGIC_VECTOR(7 downto 0);
			InstructionOut : OUT STD_LOGIC_VECTOR(31 downto 0);
			
			BranchOut, ZeroOut, MemWriteOut, RegWriteOut : OUT STD_LOGIC);

	end component; 

	signal tb_ValueSelect : STD_LOGIC_VECTOR(2 downto 0);
	signal tb_MuxOut : STD_LOGIC_VECTOR(7 downto 0);
	signal tb_InstructionOut : STD_LOGIC_VECTOR(31 downto 0);
	signal tb_GClock, tb_GReset, tb_BranchOut, tb_ZeroOut, tb_MemWriteOut, tb_RegWriteOut : STD_LOGIC;
	signal sim_end : boolean := false; 
	
	constant period: time := 50 ns; 
	
begin
    
    dut1 : singleCycleProcessor 
		port map(
			GClock => tb_GClock,
			GReset => tb_GReset,
			ValueSelect => tb_ValueSelect,
			
			MuxOut => tb_MuxOut,
			InstructionOut => tb_InstructionOut, 
			
			BranchOut => tb_BranchOut,
			ZeroOut => tb_ZeroOut,
			MemWriteOut => tb_MemWriteOut,
			RegWriteOut => tb_RegWriteOut);

	clock_process: process 
		begin 
		
		while (not sim_end) loop
			tb_GClock <= '1';
			wait for period/2;
			tb_GClock <= '0';
			wait for period/2;
		end loop;
		wait;
	end process;
			
			
    stim_proc : process
    begin
		tb_GReset <= '0', '1' after period; 
		wait for period; 
		
		tb_ValueSelect <= "000";
		wait for period;
		
		tb_ValueSelect <= "001";
		wait for period;

		tb_ValueSelect <= "010";		
		wait for period;

		tb_ValueSelect <= "011";		
		wait for period;
		
		tb_ValueSelect <= "100";		
		wait for period;

		tb_ValueSelect <= "101";
		wait for period;
		
		tb_ValueSelect <= "111";		
		wait for period;

		tb_ValueSelect <= "010";			
		wait for period;
		
		tb_ValueSelect <= "001";
		wait for period;
		
		tb_ValueSelect <= "001";
		wait for period;
		
		tb_ValueSelect <= "001";
		wait for period;
		
		tb_ValueSelect <= "001";
		wait for period;
		
		sim_end <= true;
	
		wait;
    end process;
end testbench;
