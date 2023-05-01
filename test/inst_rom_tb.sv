`timescale 1ns/1ns
  
module inst_rom_tb();
  logic clk;
  logic [8:0] address;
  logic [15:0] q;

  instruction_rom	dut (
    .address(address),
    .clock(clk),
    .q(q)
	);

  initial begin
    clk = 0;
    address = 9'h000;  

    #30; address = 9'h001;
    #50;

    $stop;
  end

  always #10 clk = ~clk;
endmodule