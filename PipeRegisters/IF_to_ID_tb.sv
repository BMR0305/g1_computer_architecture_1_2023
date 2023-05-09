`include "../defines.v"
module IF_to_ID_tb();
	
  logic clk, rst, flush, freeze;
  logic [`WORD_LEN-1:0] instructionIn;

  logic [`WORD_LEN-1:0] instruction;
	

	
	
	IF_to_ID f2d(
		.clk(clk),
		.rst(rst),
		.flush(flush),
		.freeze(freeze),
		.instructionIn(instructionIn),
		.instruction(instruction)
 );
	 
	 
	 initial begin
	 
		clk = 0;

		 rst = 0;
		 #1;
		 rst = 1;
		 #1;
		 rst = 0;
		 
		 flush = 0;
		 freeze = 0;
		 instructionIn = 0;

		 
		 #3;
		 
		 
		 flush = 0;
		 freeze = 0;
		 instructionIn = 1;
		 
		 #15;
		 
		 flush = 0;
		 freeze = 0;
		 instructionIn = 2;
		 
		 #20;
		 
		 flush = 0;
		 freeze = 1;
		 instructionIn = 3;
		 
		 #20;
		 
		 flush = 1;
		 freeze = 0;
		 instructionIn = 4;
		 
		 #20;
	 
	 
    end
	 
	 always begin
    #10 clk=~clk;
	 end
	 
	 

endmodule 