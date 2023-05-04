module register (
  input	clk, 
  input rst, 
  input writeEn,
  input [31:0] regIn,
  output reg [31:0] regOut);

  always @ (posedge clk, posedge rst) begin
    if (rst) regOut <= 0;
    else if (writeEn) regOut <= regIn;
  end
endmodule // register