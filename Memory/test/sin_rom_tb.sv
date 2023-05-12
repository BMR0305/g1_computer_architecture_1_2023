`timescale 1ns/1ns
  
module sin_rom_tb();
  logic clk;
  logic rden;
  logic [16:0] address;
  logic [23:0] q;

  sin_rom dut (
    .aclr(1'b0),
    .address(address),
    .clock(clk),
    .rden(rden),
    .q(q)
	);

  initial begin
    clk = 0;
    rden = 1;
    address = 0;

    #30;

    address = 1;

    #100;
    $stop;
  end

  always #10 clk = ~clk;
endmodule