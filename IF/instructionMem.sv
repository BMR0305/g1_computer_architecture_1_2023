module instructionMem (
  input rst,
  input [31:0] addr,
  output [31:0] instruction);

  wire [$clog2(1024)-1:0] address = addr[$clog2(1024)-1:0];
  reg [8-1:0] instMem [0:1024-1];

  always @ (posedge rst) begin
  	if (rst) begin
        

        instMem[0] <= 8'b10000000; //-- Addi	r1,r0,10
        instMem[1] <= 8'b00100000;
        instMem[2] <= 8'b00000000;
        instMem[3] <= 8'b00001010;

        instMem[4] <= 8'b00000100; //-- Add 	r2,r0,r1
        instMem[5] <= 8'b01000000;
        instMem[6] <= 8'b00001000;
        instMem[7] <= 8'b00000000;

        instMem[8] <= 8'b00001100; //-- sub	r3,r0,r1
        instMem[9] <= 8'b01100000;
        instMem[10] <= 8'b00001000;
        instMem[11] <= 8'b00000000;
        
      end
    end

  assign instruction = {instMem[address], instMem[address + 1], instMem[address + 2], instMem[address + 3]};
endmodule // insttructionMem