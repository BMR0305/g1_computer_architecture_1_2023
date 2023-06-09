`include "defines.v"
module hazard_detection_tb();
	logic [`REG_FILE_ADDR_LEN-1:0] src1_ID, src2_ID, dest_EXE, dest_MEM;
	logic [3:0] op;
	logic forward_EN, WB_EN_EXE, WB_EN_MEM, is_imm, ST, MEM_R_EN_EXE, hazard_detected;
	
	hazard_detection h_d(
		.src1_ID(src1_ID),
		.src2_ID(src2_ID),
		.dest_EXE(dest_EXE),
		.dest_MEM(dest_MEM),
		.op(op),
		.WB_EN_EXE(WB_EN_EXE),
		.WB_EN_MEM(WB_EN_MEM),
		.MEM_R_EN_EXE(MEM_R_EN_EXE),
		.forward_EN(forward_EN),
		.is_imm(is_imm),
		.ST(ST),
		.hazard_detected(hazard_detected)
	);
	
	initial begin
		//Sin adelantamiento
		//ADD R2, R4, R5
		//ADD R1, R4, R5
		//ADD R2, R1, R1
		src1_ID = 4'b0001;
		src2_ID = 4'b0001;
		dest_EXE = 4'b0001;
		dest_MEM = 4'b0010;
		op = 4'b0000;
		forward_EN = 0;
		WB_EN_EXE = 1;
		WB_EN_MEM = 1;
		is_imm = 0; 
		ST = 0;
		MEM_R_EN_EXE = 0;
		
		#10;

		//Con adelantamiento
		//ADD R2, R4, R5
		//ADD R1, R4, R5
		//ADD R2, R1, R1
		src1_ID = 4'b0001;
		src2_ID = 4'b0001;
		dest_EXE = 4'b0001;
		dest_MEM = 4'b0010;
		op = 4'b0000;
		forward_EN = 1;
		WB_EN_EXE = 1;
		WB_EN_MEM = 1;
		is_imm = 0; 
		ST = 0;
		MEM_R_EN_EXE = 0;
		
		#10;
		
		//ADD R2, R4, R5
		//ADD R1, R4, R5
		//MOVI R2, 0x150
		src1_ID = 4'b0000;
		src2_ID = 4'b0000;
		dest_EXE = 4'b0001;
		dest_MEM = 4'b0010;
		op = 4'b0110;
		forward_EN = 1;
		WB_EN_EXE = 1;
		WB_EN_MEM = 1;
		is_imm = 1; 
		ST = 0;
		MEM_R_EN_EXE = 0;
		
		#10;

		//ADD R1, R4, R5
		//ADD R2, R4, R5
		//MOV3 R2, R1
		src1_ID = 4'b0001;
		src2_ID = 4'b0000;
		dest_EXE = 4'b0010;
		dest_MEM = 4'b0001;
		op = 4'b0111;
		forward_EN = 1;
		WB_EN_EXE = 1;
		WB_EN_MEM = 1;
		is_imm = 0; 
		ST = 0;
		MEM_R_EN_EXE = 0;
		
		#10;

		//ADD R1, R4, R5
		//ADD R2, R4, R5
		//STR R2, [R1]
		src1_ID = 4'b0001;
		src2_ID = 4'b0000;
		dest_EXE = 4'b0010;
		dest_MEM = 4'b0001;
		op = 4'b1101;
		forward_EN = 1;
		WB_EN_EXE = 1;
		WB_EN_MEM = 1;
		is_imm = 0; 
		ST = 1;
		MEM_R_EN_EXE = 0;
		
		#10;
		
		
	end
endmodule 