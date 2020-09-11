	component nios2test is
		port (
			clk_clk       : in  std_logic                    := 'X'; -- clk
			gpio_export   : out std_logic_vector(9 downto 0);        -- export
			reset_reset_n : in  std_logic                    := 'X'  -- reset_n
		);
	end component nios2test;

	u0 : component nios2test
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --   clk.clk
			gpio_export   => CONNECTED_TO_gpio_export,   --  gpio.export
			reset_reset_n => CONNECTED_TO_reset_reset_n  -- reset.reset_n
		);

