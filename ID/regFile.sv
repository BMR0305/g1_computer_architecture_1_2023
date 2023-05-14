`include "../defines.v"

module regFile (
  input clk, 
  input rst, 
  input writeEn,
  input [`REG_FILE_ADDR_LEN-1:0] src1, 
  input [`REG_FILE_ADDR_LEN-1:0] src2, 
  input [`REG_FILE_ADDR_LEN-1:0] dest,
  input [`REG_FILE_SIZE-1:0] writeVal,
  output [`REG_FILE_SIZE-1:0] reg1, 
  output [`REG_FILE_SIZE-1:0] reg2);

  reg [`REG_FILE_SIZE-1:0] regMem [0:11];
  integer i;

  always @ (negedge clk, posedge rst) begin
    if (rst) regMem <= '{ default: '0};
    else if (writeEn) regMem[dest] <= writeVal;
  end

  assign reg1 = (regMem[src1]);
  assign reg2 = (regMem[src2]);
endmodule // regFile