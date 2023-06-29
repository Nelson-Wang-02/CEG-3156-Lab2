entity singleCycleProcessor is 

	port (
		GClock, GReset : IN STD_LOGIC; 
		ValueSelect : IN STD_LOGIC_VECTOR(2 downto 0);
		
		MuxOut : OUT STD_LOGIC_VECTOR(7 downto 0);
		InstructionOut : OUT STD_LOGIC_VECTOR(31 downto 0);
		
		BranchOut, ZeroOut, MemWriteOut, RegWriteOut : OUT STD_LOGIC);

end singleCycleProcessor; 

architecture rtl of singleCycleProcessor is 

	component eightBitRegister
		PORT(
			i_resetBar, i_load	: IN	STD_LOGIC;
			i_clock			: IN	STD_LOGIC;
			i_Value			: IN	STD_LOGIC_VECTOR(7 downto 0);
			o_Value			: OUT	STD_LOGIC_VECTOR(7 downto 0));		
			
	component eightBitAddSub
		PORT(
			i_Ai, i_Bi		: IN	STD_LOGIC_VECTOR(7 downto 0);
			i_Op				: IN STD_LOGIC;
			o_Zero         : OUT STD_LOGIC;
			o_CarryOut		: OUT	STD_LOGIC;
			o_Diff			: OUT	STD_LOGIC_VECTOR(7 downto 0));	
	end component;
	
	component instrMem 
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
		);
	END component;

	component dataMem 
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END component;
	
	
	component alu 
		PORT(
			rData1, rData2 : IN STD_LOGIC_VECTOR(7 downto 0);
			Op 		: IN STD_LOGIC_VECTOR(2 downto 0);
			ALUResult	: OUT STD_LOGIC_VECTOR(7 downto 0);
			Zero : OUT STD_LOGIC);
			
	END component;
	
	component registerFile 
		port (
			i_clk : IN STD_LOGIC;
			i_resetBar : IN STD_LOGIC; 
			i_load : IN STD_LOGIC;
			
			i_readReg1, i_readReg2 : IN STD_LOGIC_VECTOR(2 downto 0);
			
			i_writeRegAddr : IN STD_LOGIC_VECTOR(2 downto 0);
			i_writeData : IN STD_LOGIC_VECTOR(7 downto 0);
		
			o_readData1, o_readData2 : OUT STD_LOGIC_VECTOR(7 downto 0));		
		
	end component; 
	
	component controlLogicUnit 
		port (
			op : in std_logic_vector(5 downto 0);
			
			RegDst, ALUSrc : OUT STD_LOGIC;
			MemtoReg, RegWrite : OUT STD_LOGIC;
			MemRead, MemWrite : OUT STD_LOGIC;
			Branch : OUT STD_LOGIC;
			Jump : OUT STD_LOGIC;
			ALUOp1, ALUOp0 : OUT STD_LOGIC);
	
	end component;

	component ALUControlUnit 
		PORT(
			ALUOp : IN STD_LOGIC_VECTOR(1 downto 0);
			F 		: IN STD_LOGIC_VECTOR(5 downto 0);
			Op		: OUT STD_LOGIC_VECTOR(2 downto 0));
	
	end component;
	
	component eightBit2to1Mux 
		port 
		(
			input0, input1 : IN STD_LOGIC_VECTOR(7 downto 0);
			sel : in std_logic;
			mux_out : out std_logic_vector(7 downto 0));
		end component;
	
	signal sig_PCOut : STD_LOGIC_VECTOR(7 downto 0);
	
	signal sig_JumpMuxOut : STD_LOGIC_VECTOR(7 downto 0); --to be mapped
	
	signal sig_instrMemAddress : STD_LOGIC_VECTOR(31 downto 0);
	
	begin
	
	
	pcRegister: eightBitRegister
		port map(
			i_resetBar => GReset, 
			i_load => '1',
			i_clock => GClock,		
			i_Value => sig_JumpMuxOut,		
			o_Value =>	sig_PCOut);
			
	pcPlus4: eightBitAddSub
			port map(
			i_Ai => , 
			i_Bi => ,
			i_Op => ,
			o_Zero => ,
			o_CarryOut => ,
			o_Diff => ,			);	
			
	insMemory: instrMem
		port map(
			address => sig_PCOut;
			clock	=> GClock;
			q => sig_instrMemAddress);
	
	
	
	



end rtl; 