`timescale 1ns/1ns
  
module image_rom_tb();
  logic clk_a;
  logic clk_b;

  logic rden_a;
  logic rden_b;

  logic [16:0] address_a;
  logic [16:0] address_b;

  logic [23:0] q_a;
  logic [23:0] q_b;

  image_rom dut (
    .aclr_a(1'b0),
    .aclr_b(1'b0),
    .address_a(address_a),
    .address_b(address_b),
    .clock_a(clk_a),
    .clock_b(clk_b),
    .rden_a(rden_a),
    .rden_b(rden_b),
    .q_a(q_a),
    .q_b(q_b)
	);

  initial begin
    clk_a = 0;
    clk_b = 0;

    rden_a = 1;
    rden_b = 1;

    address_a = 0;
    address_b = 0;

    #30;

    address_a = 1;
    address_b = 2;

    #100;
    $stop;
  end

  always #10 clk_a = ~clk_a;
  always #20 clk_b  = ~clk_b;

endmodule