`include "../defines.v"

module signExtendBranch (in, out);
  input [11:0] in;
  output [`REG_FILE_SIZE-1:0] out;

  assign out = (in[11] == 1) ? {12'b111111111111, in} : {12'b000000000000, in};
endmodule // signExtend