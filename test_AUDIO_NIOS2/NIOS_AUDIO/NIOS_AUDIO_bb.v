
module NIOS_AUDIO (
	audio_ADCDAT,
	audio_ADCLRCK,
	audio_BCLK,
	audio_DACDAT,
	audio_DACLRCK,
	audio_clk_clk,
	clk_clk,
	i2c_scl_export,
	i2c_sda_export,
	i_out_export,
	reset_reset_n,
	sin_in_export);	

	input		audio_ADCDAT;
	input		audio_ADCLRCK;
	input		audio_BCLK;
	output		audio_DACDAT;
	input		audio_DACLRCK;
	output		audio_clk_clk;
	input		clk_clk;
	output		i2c_scl_export;
	inout		i2c_sda_export;
	output	[31:0]	i_out_export;
	input		reset_reset_n;
	input	[31:0]	sin_in_export;
endmodule
