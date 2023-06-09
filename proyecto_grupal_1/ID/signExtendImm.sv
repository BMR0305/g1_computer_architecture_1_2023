`include "../defines.v"

module signExtendImm (in, out);
  input [7:0] in;
  output [`REG_FILE_SIZE-1:0] out;

  assign out = (in[7] == 1) ? {16'b1111111111111111, in} : {16'b0000000000000000, in};
endmodule // signExtend