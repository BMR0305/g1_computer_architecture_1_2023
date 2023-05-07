`timescale 1ns/1ns
  
module inst_rom_tb();
  logic clk;
  logic [13:0] address;
  logic [3:0] q;

  instruction_rom	dut (
    .address(address),
    .clock(clk),
    .q(q)
	);

  initial begin
    clk = 0;
    address = 14'h0;  

    #30; 
    
    address = 14'h1;

    #20; 

    address = 14'h2;

    #20;

    address = 14'h3;

    #50;

    $stop;
  end

  always #10 clk = ~clk;
endmodule