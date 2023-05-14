module Decode_Execute (
  input clk, rst,
  // Valores a registrar por Decode
  input MEM_R_EN_IN, MEM_W_EN_IN, WB_EN_IN, brTaken_in,
  input [3:0] EXE_CMD_IN,
  input [31:0] src1_in, src2_in,
  input [31:0] reg2In, val1In, val2In,
  // Valores desde Decode
  output reg brTaken, MEM_R_EN, MEM_W_EN, WB_EN, ST,
  output reg [31:0] EXE_CMD,
  output reg [31:0] src1, src2,
  output reg [31:0] val1, val2
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
    end
  end
endmodule 