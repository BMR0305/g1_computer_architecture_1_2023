module color_selector(
	input [23:0] color_mem,
	input [9:0] pixel_x,
	input [8:0] pixel_y,
	input [5:0] num_cycle,
	input is_RAM,
	output [23:0] color
);

	always_comb begin
		if ((pixel_x > 299 || pixel_y > 299) /* || (is_RAM && (num_cycle != 0) && (num_cycle != 15) && (num_cycle != 30) && (num_cycle != 45)) */)
			color <= 24'b0;
		else
			color <= color_mem;
	end




endmodule 