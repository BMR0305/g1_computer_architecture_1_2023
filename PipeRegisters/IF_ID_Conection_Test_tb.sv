`include "../defines.v"

module IF_ID_Conection_Test_tb();
	
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
	
	

	IF_ID_Conection_Test IF_ID_C_T(
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
	flagZ = 0;

	 
    end
	 
	 always begin
    #10; clk=~clk;
	 end
	



endmodule 