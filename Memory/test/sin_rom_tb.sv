`timescale 1ns/1ns
  
module sin_rom_tb();
  logic clk;
  logic rden;
  logic [16:0] address;
  logic [23:0] q;

  sin_rom dut (
    .clock(clk),
    .read_enable(rden),
    .address(address),
    .read_data(q)
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