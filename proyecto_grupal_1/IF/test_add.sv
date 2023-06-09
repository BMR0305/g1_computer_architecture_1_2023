module test_add();

	logic [31:0] in1, in2, out;
	
	adder my_adder (in1, in2, out);
	
	
	
	initial begin 
	
	assign in1 = 32'd1;
	assign in2 = 32'd2;
	
	#5;
	
	end



endmodule
