`timescale 1ns/1ns
  
module data_ram_tb();
  logic rst;

  logic clk_a;
  logic clk_b;

  logic rden_a;
  logic rden_b;

  logic wren_a;
  logic wren_b;

  logic [16:0] address_a;
  logic [16:0] address_b;

  logic [23:0] data_a;
  logic [23:0] data_b;

  logic [23:0] q_a;
  logic [23:0] q_b;

  data_ram dut (
    .aclr_a(rst),
    .aclr_b(rst),
    .address_a(address_a),
    .address_b(address_b),
    .clock_a(clk_a),
    .clock_b(clk_b),
    .data_a(data_a),
    .data_b(data_b),
    .rden_a(rden_a),
    .rden_b(rden_b),
    .wren_a(wren_a),
    .wren_b(wren_b),
    .q_a(q_a),
    .q_b(q_b)
	);

  initial begin
    rst = 0; 

    clk_a = 0;
    clk_b = 0;

    rden_a = 1;
    rden_b = 1;

    wren_a = 0;
    wren_b = 0;

    address_a = 0;
    address_b = 0;

    data_a = 0;
    data_b = 0;

    #30;

    address_a = 1;
    address_b = 2;

    #100;
    $stop;
  end

  always #10 clk_a = ~clk_a;
  always #30 clk_b  = ~clk_b;

endmodule