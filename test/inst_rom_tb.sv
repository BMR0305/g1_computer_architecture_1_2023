`timescale 1ns/1ns
  
module inst_rom_tb();
  logic clk;
  logic [8:0] address;
  logic [15:0] q;

  instruction_rom	dut (
    .clock(clk),
    .address(address),
    .q(q)
	);

  initial begin
    clk = 0;
    address = 16'h0000;  

    #30; address = 16'h0001;
    #50;

    $stop;
  end

  always #10 clk = ~clk;
endmodule