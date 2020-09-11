
module oscill_nios (
	audio_ADCDAT,
	audio_ADCLRCK,
	audio_BCLK,
	audio_DACDAT,
	audio_DACLRCK,
	audio_clk_clk,
	audio_config_SDAT,
	audio_config_SCLK,
	clk_clk,
	pio_hex_0_external_connection_export,
	pio_hex_1_external_connection_export,
	pio_hex_2_external_connection_export,
	pio_hex_3_external_connection_export,
	pio_hex_4_external_connection_export,
	pio_hex_5_external_connection_export,
	pio_key_external_connection_export,
	pio_led_external_connection_export,
	pio_sw_external_connection_export,
	reset_reset_n,
	vga_CLK,
	vga_HS,
	vga_VS,
	vga_BLANK,
	vga_SYNC,
	vga_R,
	vga_G,
	vga_B);	

	input		audio_ADCDAT;
	input		audio_ADCLRCK;
	input		audio_BCLK;
	output		audio_DACDAT;
	input		audio_DACLRCK;
	output		audio_clk_clk;
	inout		audio_config_SDAT;
	output		audio_config_SCLK;
	input		clk_clk;
	output	[6:0]	pio_hex_0_external_connection_export;
	output	[6:0]	pio_hex_1_external_connection_export;
	output	[6:0]	pio_hex_2_external_connection_export;
	output	[6:0]	pio_hex_3_external_connection_export;
	output	[6:0]	pio_hex_4_external_connection_export;
	output	[6:0]	pio_hex_5_external_connection_export;
	input	[2:0]	pio_key_external_connection_export;
	output	[9:0]	pio_led_external_connection_export;
	input	[9:0]	pio_sw_external_connection_export;
	input		reset_reset_n;
	output		vga_CLK;
	output		vga_HS;
	output		vga_VS;
	output		vga_BLANK;
	output		vga_SYNC;
	output	[7:0]	vga_R;
	output	[7:0]	vga_G;
	output	[7:0]	vga_B;
endmodule
