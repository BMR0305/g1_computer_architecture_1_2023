
module IFStage (
  input	clk,
  input rst,
  input brTaken,
  input [23:0] brOffset,
  input freeze,
  output [15:0] instruction);
  

  logic [13:0] adderOut, PC;
  logic [23:0] adderIn1;
  

  my_mux #(.LENGTH(24)) adderInput (
    .in1(24'd4),
    .in2(brOffset),
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
    .addr(PC),
    .instruction(instruction)
  );

  //assign brOffserTimes4 = brOffset << 2;
endmodule // IFStage