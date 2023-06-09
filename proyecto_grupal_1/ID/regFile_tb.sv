`include "../defines.v"

module regFile_tb();
	
	logic clk;
	logic rst;
	logic writeEn;
	logic [`REG_FILE_ADDR_LEN-1:0] src1; 
   logic [`REG_FILE_ADDR_LEN-1:0] src2; 
   logic [`REG_FILE_ADDR_LEN-1:0] dest;
   logic [`REG_FILE_SIZE-1:0] writeVal;
   logic [`REG_FILE_SIZE-1:0] reg1, reg2;
	
regFile rF(
	.clk(clk),
	.rst(rst),
	.writeEn(writeEn),
	.src1(src1),
	.src2(src2),
	.dest(dest),
	.writeVal(writeVal),
	.reg1(reg1),
	.reg2(reg2)
	);
	 
	 
	 initial begin
	 clk = 0;
	 rst = 0;
	 #5;
	 rst = 1;
	 #5;
	 rst = 0;
	 
	 //Read
	 src1 = 1;
	 src2 = 2;
	 //Write
	 writeEn = 1;
	 dest = 1;
	 writeVal = 2;
	 
	 #12;
	 
	 //Read
	 src1 = 1;
	 src2 = 2;
	 //Write
	 writeEn = 0;
	 dest = 1;
	 writeVal = 6;
	 
	 #20;
	 
	 //Read
	 src1 = 1;
	 src2 = 2;
	 //Write
	 writeEn = 1;
	 dest = 2;
	 writeVal = 8;
	 
	 #12;
	 
	 //Read
	 src1 = 1;
	 src2 = 2;
	 //Write
	 writeEn = 1;
	 dest = 2;
	 writeVal = 9;
	 
	 #12;
	
	 
    end
	 
	 always begin
    #10; clk=~clk;
	 end
	



endmodule 