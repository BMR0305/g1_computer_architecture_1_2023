module register (
  input	clk, 
  input rst, 
  input writeEn,
  input [13:0] regIn,
  output reg [13:0] regOut);

  always @ (posedge clk, posedge rst) begin
    if (rst) regOut <= 0;
    else if (writeEn) regOut <= regIn;
  end
endmodule // register