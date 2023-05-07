`include "../defines.v"

module testController();
	
	logic [`OP_CODE_LEN-1:0] opCode;
   logic hazard_detected;
	
	logic branchEn;
	logic [`EXE_CMD_LEN-1:0] EXE_CMD;
	logic [3:0] Branch_command;
	logic Is_Imm, Is_Str, Is_Ldr, Is_Cmp, WB_EN, MEM_R_EN, MEM_W_EN;

	
	
	controller controllerUnit (
	 .opCode(opCode),
	 .hazard_detected(hazard_detected),
	 .branchEn(branchEn),
	 .EXE_CMD(EXE_CMD),
	 .Branch_command(Branch_command),
	 .Is_Imm(Is_Imm),
	 .Is_Str(Is_Str), 
	 .Is_Ldr(Is_Ldr), 
	 .Is_Cmp(Is_Cmp),
	 .WB_EN(WB_EN),
	 .MEM_R_EN(MEM_R_EN),
	 .MEM_W_EN(MEM_W_EN)
	 );
	 
	 
	 initial begin
	 //CMP
	 opCode = 4'b0101;
	 hazard_detected = 1'b0;
	 
    #10;
	 
	 //LDR
	 opCode = 4'b1100;
	 hazard_detected = 1'b0;
	 
    #10;
	 
	 //STR
	 opCode = 4'b1101;
	 hazard_detected = 1'b0;
	 
    #10;
	 
	 //BEQ
	 opCode = 4'b1010;
	 hazard_detected = 1'b0;
	 
    #10;
		
	 //ADD
	 opCode = 4'b0000;
	 hazard_detected = 1'b0;
	 
    #10;
	 
	 //AND
	 opCode = 4'b1000;
	 hazard_detected = 1'b0;
	 
	 #10;
	 
	 //AND hazard
	 opCode = 4'b1000;
	 hazard_detected = 1'b1;
	 
	 #10;
	 
	 end
	 
	 

endmodule
