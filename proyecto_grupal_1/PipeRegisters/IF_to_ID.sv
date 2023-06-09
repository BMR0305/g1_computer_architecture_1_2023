`include "../defines.v"

module IF_to_ID (
  input clk, rst, flush, freeze,
  input [`WORD_LEN-1:0] instructionIn,
  output reg [`WORD_LEN-1:0] instruction);

  always @ (posedge clk, posedge rst) begin
    if (rst) begin
      instruction <= 0;
    end
    else begin
      if (~freeze) begin
        if (flush) begin
          instruction <= 0;
        end
        else begin
          instruction <= instructionIn;
        end
      end
    end
  end
endmodule 