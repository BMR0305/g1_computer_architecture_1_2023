module adder (
	input [23:0] in1, 
	input [23:0] in2, 
	output [23:0]out);
	
  assign out = in1 + in2;
endmodule // adder