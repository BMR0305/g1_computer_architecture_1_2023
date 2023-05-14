module Memory_HDMI_Conection(      
		///////// FPGA /////////
      input              FPGA_CLK1_50,
      input              FPGA_CLK2_50,
      input              FPGA_CLK3_50,

      ///////// HDMI /////////
      inout              HDMI_I2C_SCL,
      inout              HDMI_I2C_SDA,
      inout              HDMI_I2S,
      inout              HDMI_LRCLK,
      inout              HDMI_MCLK,
      inout              HDMI_SCLK,
      output             HDMI_TX_CLK,
      output      [23:0] HDMI_TX_D,
      output             HDMI_TX_DE,
      output             HDMI_TX_HS,
      input              HDMI_TX_INT,
      output             HDMI_TX_VS,

      ///////// KEY /////////
      input       [1:0]  KEY,

      ///////// LED /////////
      output      [7:0]  LED,

      ///////// SW /////////
      input       [3:0]  SW);
		
		logic [23:0] color;
		logic [23:0] color_mem;
		reg   [9:0] pixel_x;
		reg   [8:0] pixel_y;
		reg   [5:0] num_cycle;
		logic [23:0] result;
		logic [17:0] address_b;


	HDMIController HDMIController(
		///////// FPGA /////////
      .FPGA_CLK1_50(FPGA_CLK1_50),
      .FPGA_CLK2_50(FPGA_CLK2_50),
      .FPGA_CLK3_50(FPGA_CLK3_50),

      ///////// HDMI /////////
      .HDMI_I2C_SCL(HDMI_I2C_SCL),
      .HDMI_I2C_SDA(HDMI_I2C_SDA),
      .HDMI_I2S(HDMI_I2S),
      .HDMI_LRCLK(HDMI_LRCLK),
      .HDMI_MCLK(HDMI_MCLK),
      .HDMI_SCLK(HDMI_SCLK),
      .HDMI_TX_CLK(HDMI_TX_CLK),
      .HDMI_TX_D(HDMI_TX_D),
      .HDMI_TX_DE(HDMI_TX_DE),
      .HDMI_TX_HS(HDMI_TX_HS),
      .HDMI_TX_INT(HDMI_TX_INT),
      .HDMI_TX_VS(HDMI_TX_VS),

      ///////// KEY /////////
      .KEY(KEY),

      ///////// LED /////////
      .LED(LED),

      ///////// SW /////////
      .SW(SW),
		
		// X, Y, color
		.color(color),
		
		.pixel_x(pixel_x),
		.pixel_y(pixel_y),
		
		.num_cycle(num_cycle)
	);
	
	address_sel a_s(
		.pixel_x(pixel_x),
		.pixel_y(pixel_y),
		.sel(SW[3]),
		.address_b(address_b)
	);
	
	color_selector c_s(
		.color_mem(color_mem),
		.pixel_x(pixel_x),
		.pixel_y(pixel_y),
		.num_cycle(num_cycle),
		.is_RAM(SW[3]),
		.color(color)
	);
	
	memory_stage m_s(
	  .rst(1'b0),
	  .clk_a(1'b0),
	  .clk_b(FPGA_CLK2_50),
	  .read_enable(1'b0),
	  .write_enable(1'b0),
	  .mem_to_reg(1'b0),
	  .alu_result(1'b0),
	  .address_b(address_b),
	  .write_data_a(1'b0),
	  .result(result),
	  .read_data_b(color_mem)
	);
	
	





endmodule 