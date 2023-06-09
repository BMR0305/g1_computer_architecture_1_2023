module Decode_Execute (
  input clk, rst,
  // Valores a registrar por Decode
  input [3:0] dest_in,
  input MEM_R_EN_IN, MEM_W_EN_IN, WB_EN_IN, brTaken_in,
  input [3:0] EXE_CMD_IN,
  input [3:0] src1_in, src2_in,
  input [23:0] reg2In, val1In, val2In,
  // Valores desde Decode
  output reg brTaken, MEM_R_EN, MEM_W_EN, WB_EN,
  output reg [3:0] EXE_CMD,
  output reg [3:0] src1, src2,
  output reg [23:0] val1, val2, reg2Out, ST,
  output reg [3:0] dest_out
  );

  always @ (posedge clk) begin
    if (rst) begin
      {MEM_R_EN, MEM_W_EN, WB_EN, EXE_CMD, ST, val1, val2, brTaken, src1, src2} <= 0;
    end
    else begin
      MEM_R_EN <= MEM_R_EN_IN;
      MEM_W_EN <= MEM_W_EN_IN;
      WB_EN <= WB_EN_IN;
      ST <= reg2In;
      EXE_CMD <= EXE_CMD_IN;
      val1 <= val1In;
      val2 <= val2In;
      brTaken <= brTaken_in;
      src1 <= src1_in;
      src2 <= src2_in;
      dest_out <= dest_in;
      reg2Out <= reg2In;
    end
  end
endmodule 