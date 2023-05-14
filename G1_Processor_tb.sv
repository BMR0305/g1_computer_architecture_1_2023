`timescale 10ns/1ns

module G1_Processor_tb();
  logic clk;
  logic rst;
  logic forward_EN;

  G1_Processor dut(

  );

  initial begin
    clk = 0;
    rst = 0;
    forward_EN = 1;

    #1000;
    $stop;
  end

  always #10 clk = ~clk;
endmodule