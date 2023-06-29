library ieee;
use ieee.std_logic_1164.all;

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
	end component;
	
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
			BranchNotEqual : OUT STD_LOGIC;
			Jump : OUT STD_LOGIC;
			ALUOp1, ALUOp0 : OUT STD_LOGIC);
	
	end component;

	component ALUControlUnit 
		PORT(
			ALUOp : IN STD_LOGIC_VECTOR(1 downto 0);
			F 		: IN STD_LOGIC_VECTOR(5 downto 0);
			Op		: OUT STD_LOGIC_VECTOR(2 downto 0));
	
	end component;
	
	component threeBit2to1Mux
		port (
			input0, input1 : IN STD_LOGIC_VECTOR(2 downto 0);
			sel : in std_logic;
			mux_out : out std_logic_vector(2 downto 0)
		);
	end component;
	
	component eightBit2to1Mux 
		port 
		(
			input0, input1 : IN STD_LOGIC_VECTOR(7 downto 0);
			sel : in std_logic;
			mux_out : out std_logic_vector(7 downto 0));
	end component;
	
	component shiftLeft2 
		port (
			input_instr : IN STD_LOGIC_VECTOR(1 downto 0);
			
			output : OUT STD_LOGIC_VECTOR(3 downto 0));	
	
	end component;
	
	component shiftLeft2_eightBits 
		port (
			input_instr : IN STD_LOGIC_VECTOR(7 downto 0);
			output : OUT STD_LOGIC_VECTOR(7 downto 0));
			
	end component;
	
	signal sig_PCOut : STD_LOGIC_VECTOR(7 downto 0);
	
	signal sig_JumpMuxOut : STD_LOGIC_VECTOR(7 downto 0); --to be mapped
	
	signal sig_instrMemAddress : STD_LOGIC_VECTOR(31 downto 0);
	
	signal pc4_zero, pc4_cOut : STD_LOGIC;
	signal pc4_diff : STD_LOGIC_VECTOR(7 downto 0);
	
	signal sig_shiftLeft2JOut : STD_LOGIC_VECTOR(3 downto 0);
	signal sig_JumpAddress : STD_LOGIC_VECTOR(7 downto 0);
	
	signal sig_fileRegMuxOut : STD_LOGIC_VECTOR(2 downto 0);
	
	signal sig_dataMemMuxOut : STD_LOGIC_VECTOR(7 downto 0);
	
	--fileRegister outputs
	signal sig_readData1, sig_readData2 : STD_LOGIC_VECTOR(7 downto 0);
	
	--control signals
	signal sig_RegDst, sig_ALUSrc, sig_MemtoReg, sig_MemRead, sig_MemWrite, sig_Branch, sig_BNE, sig_Jump, sig_RegWrite : STD_LOGIC;
	signal sig_ALUOp : STD_LOGIC_VECTOR(1 downto 0);
	
	--ALU MUX
	signal sig_aluMuxOut : STD_LOGIC_VECTOR(7 downto 0);
	
	begin
	
	--signal assignment
	sig_JumpAddress <= pc4_diff(7 downto 4) & sig_shiftLeft2JOut;


	pcRegister: eightBitRegister
		port map(
			i_resetBar => GReset, 
			i_load => '1',
			i_clock => GClock,		
			i_Value => sig_JumpMuxOut,		
			o_Value =>	sig_PCOut);
			
	pcPlus4: eightBitAddSub
			port map(
			i_Ai => sig_PCOut, 
			i_Bi => "00000100",
			i_Op => '0',
			o_Zero => pc4_zero,
			o_CarryOut => pc4_cOut,
			o_Diff => pc4_diff);	
			
	insMemory: instrMem
		port map(
			address => sig_PCOut,
			clock	=> GClock,
			q => sig_instrMemAddress);
	
	
	lShift2J: shiftLeft2
		port map(
			input_instr => sig_instrMemAddress(1 downto 0),
			output => sig_shiftLeft2JOut);
			
	control: controlLogicUnit
		port map (
			op => sig_instrMemAddress(31 downto 26),
			
			RegDst => sig_RegDst, 
			ALUSrc => sig_ALUSrc,
			MemtoReg => sig_MemRead, 
			RegWrite => sig_RegWrite, 
			MemRead => sig_MemRead, 
			MemWrite => sig_MemWrite, 
			Branch => sig_Branch, 
			BranchNotEqual => sig_BNE,
			Jump => sig_Jump, 
			ALUOp1 => sig_ALUOp(1), 
			ALUOp0 => sig_ALUOp(0));
			
	regFileMux: threeBit2to1Mux 
		port map (
		
			input0 => sig_instrMemAddress(18 downto 16),
			input1 => sig_instrMemAddress(13 downto 11),
			sel => sig_RegDst, 
			mux_out => sig_fileRegMuxOut);
	
	regFile: registerFile 
		port map(
			i_clk => GClock,
			i_resetBar => GReset,
			i_load => sig_RegWrite,
			
			i_readReg1 => sig_instrMemAddress(23 downto 21), 
			i_readReg2 => sig_instrMemAddress(18 downto 16),
			
			i_writeRegAddr => sig_fileRegMuxOut,
			i_writeData => sig_dataMemMuxOut, --output needs to be assigned for dataMem
		
			o_readData1 => sig_readData1, 
			o_readData2 => sig_readData2);
			
	aluMux: eightBit2to1Mux
		port map (
			input0 => sig_readData2, 
			input1 => sig_instrMemAddress(7 downto 0),
			sel => sig_ALUSrc,
			mux_out => 			
		
		);
			
	arithmeticUnit: alu 
		port map(
			rData1 => sig_readData1, 
			rData2 => ,
			Op => , 
			ALUResult => ,
			Zero =>	);



end rtl; 