`include "../defines.v"

module ID_Conection_Test_tb();
	
	logic clk; 
	logic rst; 
	logic forward_EN;
	logic writeEn;
	logic [`REG_FILE_ADDR_LEN-1:0] dest;
	logic [`REG_FILE_SIZE-1:0]  writeVal;
	logic [`REG_FILE_ADDR_LEN-1:0] dest_EXE;
	logic [`REG_FILE_ADDR_LEN-1:0] dest_MEM;
	logic WB_EN_EXE; 
	logic WB_EN_MEM;
	logic MEM_R_EN_EXE;
	logic flagZ;
	logic [`WORD_LEN-1:0] instruction;
	
	logic is_imm;
	logic ST;
	logic hazard_detected;
	logic brTaken;
	logic MEM_R_EN;
	logic MEM_W_EN;
	logic WB_EN;
	logic [`REG_FILE_ADDR_LEN-1:0] src1;
	logic [`REG_FILE_ADDR_LEN-1:0] src2;
	logic [`REG_FILE_SIZE-1:0] val1;
	logic [`REG_FILE_SIZE-1:0] val2;
	logic [3:0] branch_comm;
	logic [`EXE_CMD_LEN-1:0] EXE_CMD;
	
	

	ID_Conection_Test ID_C_T(
		.clk(clk),
		.rst(rst),
		.forward_EN(forward_EN),
		.writeEn(writeEn),
		.dest(dest),
		.writeVal(writeVal),
		.dest_EXE(dest_EXE),
		.dest_MEM(dest_MEM),
		.WB_EN_EXE(WB_EN_EXE),
		.WB_EN_MEM(WB_EN_MEM),
		.MEM_R_EN_EXE(MEM_R_EN_EXE),
		.flagZ(flagZ),
		.instruction(instruction),
		
		.is_imm(is_imm),
		.ST(ST),
		.hazard_detected(hazard_detected),
		.brTaken(brTaken), 
		.MEM_R_EN(MEM_R_EN), 
		.MEM_W_EN(MEM_W_EN), 
		.WB_EN(WB_EN), 
		.EXE_CMD(EXE_CMD), 
		.branch_comm(branch_comm), 
		.src1(src1), 
		.src2(src2), 
		.val1(val1), 
		.val2(val2)
	
	);

	 
initial begin
	clk = 0;
	rst = 0;
	#5;
	rst = 1;
	#5;
	rst = 0;

	forward_EN = 1;
	writeEn = 0;
	dest = 0;
	writeVal = 0;
	dest_EXE = 0;
	dest_MEM = 0;
	WB_EN_EXE = 0;
	WB_EN_MEM = 0;
	MEM_R_EN_EXE = 0;

	//Add
	flagZ = 0;
	instruction = 16'b0000000010010011;
	#10;
	
	//Cmp
	flagZ = 0;
	instruction = 16'b0101000010010011;
	#10;

	//Movi
	flagZ = 0;
	instruction = 16'b0110000010010011;
	#10;

	//Movr
	flagZ = 0;
	instruction = 16'b0111000010010011;
	#10;

	//BEQ 0
	flagZ = 0;
	instruction = 16'b1010000010010011;
	#10;

	//BEQ 1
	flagZ = 1;
	instruction = 16'b1010000010010011;
	#10;

	//Load
	flagZ = 0;
	instruction = 16'b1100000010010011;
	#10;

	//Store
	flagZ = 0;
	instruction = 16'b1101000010010011;
	#10; 
	
	 
    end
	 
	 always begin
    #10; clk=~clk;
	 end
	



endmodule 