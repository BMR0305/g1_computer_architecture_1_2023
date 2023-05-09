module instructionMem (
  input [13:0] addr,
  output [15:0] instruction);

	logic [3:0] rom [0:16384];
	initial $readmemb("ROMInstructions.mem",rom);
	assign instruction = {rom[addr],rom[addr+1],rom[addr+2],rom[addr+3]};
	
	
endmodule // insttructionMem