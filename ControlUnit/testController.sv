`include "defines.v"

module testController();
	
	logic [`OP_CODE_LEN-1:0] opCode;
   logic hazard_detected;
	
	logic branchEn;
	logic [`EXE_CMD_LEN-1:0] EXE_CMD;
	logic [1:0] Branch_command;
	logic Is_Imm, ST_or_BNE, WB_EN, MEM_R_EN, MEM_W_EN;

	
	
	controller controllerUnit (
	 .opCode(opCode),
	 .hazard_detected(hazard_detected),
	 .branchEn(branchEn),
	 .EXE_CMD(EXE_CMD),
	 .Branch_command(Branch_command),
	 .Is_Imm(Is_Imm),
	 .ST_or_BNE(ST_or_BNE),
	 .WB_EN(WB_EN),
	 .MEM_R_EN(MEM_R_EN),
	 .MEM_W_EN(MEM_W_EN)
	 );
	 
	 
	 initial begin
	 opCode = 4'b0000;
	 hazard_detected = 1'b0;	 
    end
	 
	 always begin
	 opCode = 4'b0000;
	 hazard_detected = 1'b0;
	 
    #10
	 
	 opCode = 4'b1000;
	 hazard_detected = 1'b0;
	 
	 #10
	 
	 opCode = 4'b1000;
	 hazard_detected = 1'b1;
	 
	 end
	 
	 

endmodule
