module testIf();
	
	logic clk;
	logic rst;
	logic brTaken;
	logic [23:0] brOffset;
	logic freeze;
	
	logic [15:0] instruction;
	

	
	
	IFStage ifS (
	 .clk(clk),
	 .rst(rst),
	 .brTaken(brTaken),
	 .brOffset(brOffset),
	 .freeze(freeze),
	 .instruction(instruction) );
	 
	 
	 initial begin
	 
	 clk = 0;
	 
	 brTaken = 0;
	 brOffset = 0;
	 freeze = 0;
	 rst = 0;
	 #1;
	 rst = 1;
	 #1;
	 rst = 0;
	
	 
    end
	 
	 always begin
    #10 clk=~clk;
	 end
	 
	 

endmodule
