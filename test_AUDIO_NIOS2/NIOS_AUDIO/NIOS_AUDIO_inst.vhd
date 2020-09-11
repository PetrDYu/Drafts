	component NIOS_AUDIO is
		port (
			audio_ADCDAT   : in    std_logic                     := 'X';             -- ADCDAT
			audio_ADCLRCK  : in    std_logic                     := 'X';             -- ADCLRCK
			audio_BCLK     : in    std_logic                     := 'X';             -- BCLK
			audio_DACDAT   : out   std_logic;                                        -- DACDAT
			audio_DACLRCK  : in    std_logic                     := 'X';             -- DACLRCK
			audio_clk_clk  : out   std_logic;                                        -- clk
			clk_clk        : in    std_logic                     := 'X';             -- clk
			i2c_scl_export : out   std_logic;                                        -- export
			i2c_sda_export : inout std_logic                     := 'X';             -- export
			i_out_export   : out   std_logic_vector(31 downto 0);                    -- export
			reset_reset_n  : in    std_logic                     := 'X';             -- reset_n
			sin_in_export  : in    std_logic_vector(31 downto 0) := (others => 'X')  -- export
		);
	end component NIOS_AUDIO;

	u0 : component NIOS_AUDIO
		port map (
			audio_ADCDAT   => CONNECTED_TO_audio_ADCDAT,   --     audio.ADCDAT
			audio_ADCLRCK  => CONNECTED_TO_audio_ADCLRCK,  --          .ADCLRCK
			audio_BCLK     => CONNECTED_TO_audio_BCLK,     --          .BCLK
			audio_DACDAT   => CONNECTED_TO_audio_DACDAT,   --          .DACDAT
			audio_DACLRCK  => CONNECTED_TO_audio_DACLRCK,  --          .DACLRCK
			audio_clk_clk  => CONNECTED_TO_audio_clk_clk,  -- audio_clk.clk
			clk_clk        => CONNECTED_TO_clk_clk,        --       clk.clk
			i2c_scl_export => CONNECTED_TO_i2c_scl_export, --   i2c_scl.export
			i2c_sda_export => CONNECTED_TO_i2c_sda_export, --   i2c_sda.export
			i_out_export   => CONNECTED_TO_i_out_export,   --     i_out.export
			reset_reset_n  => CONNECTED_TO_reset_reset_n,  --     reset.reset_n
			sin_in_export  => CONNECTED_TO_sin_in_export   --    sin_in.export
		);

