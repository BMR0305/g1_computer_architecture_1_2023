module instructionMem (
  input [23:0] addr,
  output [15:0] instruction);

	logic [3:0] rom [0:399] = '{default: '0};

	initial $readmemb("ROMInstructions.mem", rom);

	assign instruction = {
		rom[addr[13:0]],
		rom[addr[13:0]+1],
		rom[addr[13:0]+2],
		rom[addr[13:0]+3]
	};
endmodule // insttructionMem