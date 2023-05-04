

module my_mux #(parameter integer LENGTH) (
	input [LENGTH-1:0]in1, 
	input [LENGTH-1:0]in2, 
	input sel, 
	output [LENGTH-1:0] out );
	
  assign out = (sel == 0) ? in1 : in2;
endmodule // mxu

