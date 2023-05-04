
module IFStage (
  input	clk,
  input rst,
  input brTaken,
  input [31:0] brOffset,
  input freeze,
  output [31:0] PC,
  output [31:0] instruction);
  

  logic [31:0] adderIn1, adderOut, brOffserTimes4;
  
  

  my_mux #(.LENGTH(32)) adderInput (
    .in1(32'd4),
    .in2(brOffserTimes4),
    .sel(brTaken),
    .out(adderIn1)
  );

  adder add4 (
    .in1(adderIn1),
    .in2(PC),
    .out(adderOut)
  );

  register PCReg (
    .clk(clk),
    .rst(rst),
    .writeEn(~freeze),
    .regIn(adderOut),
    .regOut(PC)
  );

  instructionMem instructions (
    .rst(rst),
    .addr(PC),
    .instruction(instruction)
  );

  //assign brOffserTimes4 = brOffset << 2;
endmodule // IFStage