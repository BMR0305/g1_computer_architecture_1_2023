module address_sel(
	input [9:0] pixel_x,
	input [8:0] pixel_y,
	input sel,
	output [17:0] address_b
);

	always_comb begin
		if (sel)
			address_b <= (pixel_x + pixel_y * 18'd300) + 18'd90300;
		else
			address_b <= (pixel_x + pixel_y * 18'd300);
	end

endmodule 