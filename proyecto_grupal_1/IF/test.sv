module testIF(output [31:0]instruction);
	
	logic clk;
	logic rst;
	logic brTaken;
	logic [31:0] brOffset;
	logic freeze;
	
	logic [31:0] PC;
	
	
	initial begin
    clk=1;
    repeat(4) #10 clk=~clk;
  end
	
	
	IFStage ifS (
	 .clk(clk),
	 .rst(rst),
	 .brTaken(brTaken),
	 .brOffset(brOffset),
	 .freeze(freeze),
	 .PC(PC),
	 .instruction(instruction) );
	 
	 
	 initial begin
	 
	 rst = 0;
	 brTaken = 0;
	 brOffset = 32'd0;
	 freeze = 0;
	 
	 
	 #10 $display("Instruccion: %b", instruction);
	 
    end
	 
	 

endmodule

