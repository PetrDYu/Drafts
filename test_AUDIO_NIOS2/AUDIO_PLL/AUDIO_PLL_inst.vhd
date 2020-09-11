	component AUDIO_PLL is
		port (
			audio_pll_0_audio_clk_clk      : out std_logic;        -- clk
			audio_pll_0_ref_clk_clk        : in  std_logic := 'X'; -- clk
			audio_pll_0_ref_reset_reset    : in  std_logic := 'X'; -- reset
			audio_pll_0_reset_source_reset : out std_logic         -- reset
		);
	end component AUDIO_PLL;

	u0 : component AUDIO_PLL
		port map (
			audio_pll_0_audio_clk_clk      => CONNECTED_TO_audio_pll_0_audio_clk_clk,      --    audio_pll_0_audio_clk.clk
			audio_pll_0_ref_clk_clk        => CONNECTED_TO_audio_pll_0_ref_clk_clk,        --      audio_pll_0_ref_clk.clk
			audio_pll_0_ref_reset_reset    => CONNECTED_TO_audio_pll_0_ref_reset_reset,    --    audio_pll_0_ref_reset.reset
			audio_pll_0_reset_source_reset => CONNECTED_TO_audio_pll_0_reset_source_reset  -- audio_pll_0_reset_source.reset
		);

