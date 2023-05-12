module adder (
	input [23:0] in1, 
	input [13:0] in2, 
	output [13:0]out);
	
  assign out = in1 + in2;
endmodule // adder