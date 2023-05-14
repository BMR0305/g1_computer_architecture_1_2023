`timescale 1ns / 1ps

module D_FF_tb();
  logic CLK, RST;
  logic [3:0] D;
  logic [3:0] Q;

  D_FF #(.NUM_BITS(4)) dut(
    .CLK(CLK),
    .RST(RST),
    .D(D),
    .Q(Q)
  );

  initial begin
    RST = 0;
    CLK = 0;

    D = 4'b0000;
    #29;

    D = 4'b0001;

    #20;

    D = 4'b0010;

    #20;

    D = 4'b0011;

    #20;

    D = 4'b0100;

    #100;
    $stop;
  end

  always #10 CLK = ~CLK;
endmodule