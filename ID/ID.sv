`include "../defines.v"

module ID (hazard_detected, flagZ, is_imm_out, ST, instruction, reg1, reg2, src1, src2, val1, val2, brTaken, EXE_CMD, MEM_R_EN, MEM_W_EN, WB_EN, branch_comm);
  input hazard_detected, flagZ;
  input [`WORD_LEN-1:0] instruction; 
  input [`REG_FILE_SIZE-1:0] reg1, reg2;
  output brTaken, MEM_R_EN, MEM_W_EN, WB_EN, is_imm_out, ST;
  output [3:0] branch_comm;
  output [`EXE_CMD_LEN-1:0] EXE_CMD;
  output [`REG_FILE_ADDR_LEN-1:0] src1, src2;
  output [`REG_FILE_SIZE-1:0] val1, val2;

  wire branchEn;
  wire Is_Imm, ST, Is_Str, Is_Ldr, Is_Cmp;
  wire [`REG_FILE_SIZE-1:0] signExt_Imm, signExt_Brnch, signExtMux;

  controller controller(
    // INPUT
    .opCode(instruction[15:12]),
	 .hazard_detected(hazard_detected),
	 // OUTPUT
    .branchEn(branchEn),
    .EXE_CMD(EXE_CMD),
    .Branch_command(branch_comm),
	 .Is_Imm(Is_Imm),
	 .Is_Str(Is_Str), 
	 .Is_Ldr(Is_Ldr), 
	 .Is_Cmp(Is_Cmp),
	 .WB_EN(WB_EN),
	 .MEM_R_EN(MEM_R_EN),
	 .MEM_W_EN(MEM_W_EN)
  );
  
    my_mux_3 #(.LENGTH(`REG_FILE_ADDR_LEN)) mux_src1 ( // determins the register source 1 for register file
    .in1(instruction[7:4]),
    .in2(instruction[11:8]),
	 .in3(4'b1111),
    .sel({Is_Imm || branchEn, Is_Cmp}),
    .out(src1)
  );

  my_mux #(.LENGTH(`REG_FILE_SIZE)) mux_val1 ( // determins whether val1 is from the reg file or 0
    .in1(reg1),
    .in2(24'b000000000000000000000000),
    .sel(branchEn || Is_Imm),
    .out(val1)
  );

  

  my_mux_3 #(.LENGTH(`REG_FILE_ADDR_LEN)) mux_src2 ( // determins the register source 2 for register file
    .in1(instruction[3:0]),
    .in2(instruction[7:4]),
	 .in3(4'b1111),
    .sel({ST || Is_Imm || branchEn, Is_Cmp}),
    .out(src2)
  );

  my_mux #(.LENGTH(`REG_FILE_SIZE)) mux_val2 ( // determins whether val2 is from the reg file or the immediate value
    .in1(reg2),
    .in2(signExtMux),
    .sel(branchEn || Is_Imm),
    .out(val2)
  );


  signExtendImm signExtend_I(
    .in(instruction[7:0]),
    .out(signExt_Imm)
  );
  
  signExtendBranch signExtend_B(
    .in(instruction[11:0]),
    .out(signExt_Brnch)
  );
  
  
	my_mux #(.LENGTH(`REG_FILE_SIZE)) mux_signExtend ( // determins whether val2 is from the reg file or the immediate value
		 .in1(signExt_Imm),
		 .in2(signExt_Brnch),
		 .sel(branchEn),
		 .out(signExtMux)
	);

  conditionChecker conditionChecker (
    .flag(flagZ),
    .branch_comm(branch_comm),
    .brCond(brTaken)
  );

  assign is_imm_out = Is_Imm;
  assign ST = Is_Str || Is_Ldr;
  assign dest = instruction[11:8];
endmodule // IDStage