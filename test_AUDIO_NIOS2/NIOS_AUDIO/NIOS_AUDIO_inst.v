	NIOS_AUDIO u0 (
		.audio_ADCDAT   (<connected-to-audio_ADCDAT>),   //     audio.ADCDAT
		.audio_ADCLRCK  (<connected-to-audio_ADCLRCK>),  //          .ADCLRCK
		.audio_BCLK     (<connected-to-audio_BCLK>),     //          .BCLK
		.audio_DACDAT   (<connected-to-audio_DACDAT>),   //          .DACDAT
		.audio_DACLRCK  (<connected-to-audio_DACLRCK>),  //          .DACLRCK
		.audio_clk_clk  (<connected-to-audio_clk_clk>),  // audio_clk.clk
		.clk_clk        (<connected-to-clk_clk>),        //       clk.clk
		.i2c_scl_export (<connected-to-i2c_scl_export>), //   i2c_scl.export
		.i2c_sda_export (<connected-to-i2c_sda_export>), //   i2c_sda.export
		.i_out_export   (<connected-to-i_out_export>),   //     i_out.export
		.reset_reset_n  (<connected-to-reset_reset_n>),  //     reset.reset_n
		.sin_in_export  (<connected-to-sin_in_export>)   //    sin_in.export
	);

