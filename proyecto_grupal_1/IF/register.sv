module register (
  input	clk, 
  input rst, 
  input writeEn,
  input [23:0] regIn,
  output reg [23:0] regOut = 0);

  always @ (posedge clk, posedge rst) begin
    if (rst) regOut <= 0;
    else if (writeEn) regOut <= regIn;
  end
endmodule // register