	component oscill_nios is
		port (
			audio_ADCDAT                         : in    std_logic                    := 'X';             -- ADCDAT
			audio_ADCLRCK                        : in    std_logic                    := 'X';             -- ADCLRCK
			audio_BCLK                           : in    std_logic                    := 'X';             -- BCLK
			audio_DACDAT                         : out   std_logic;                                       -- DACDAT
			audio_DACLRCK                        : in    std_logic                    := 'X';             -- DACLRCK
			audio_clk_clk                        : out   std_logic;                                       -- clk
			audio_config_SDAT                    : inout std_logic                    := 'X';             -- SDAT
			audio_config_SCLK                    : out   std_logic;                                       -- SCLK
			clk_clk                              : in    std_logic                    := 'X';             -- clk
			pio_hex_0_external_connection_export : out   std_logic_vector(6 downto 0);                    -- export
			pio_hex_1_external_connection_export : out   std_logic_vector(6 downto 0);                    -- export
			pio_hex_2_external_connection_export : out   std_logic_vector(6 downto 0);                    -- export
			pio_hex_3_external_connection_export : out   std_logic_vector(6 downto 0);                    -- export
			pio_hex_4_external_connection_export : out   std_logic_vector(6 downto 0);                    -- export
			pio_hex_5_external_connection_export : out   std_logic_vector(6 downto 0);                    -- export
			pio_key_external_connection_export   : in    std_logic_vector(2 downto 0) := (others => 'X'); -- export
			pio_led_external_connection_export   : out   std_logic_vector(9 downto 0);                    -- export
			pio_sw_external_connection_export    : in    std_logic_vector(9 downto 0) := (others => 'X'); -- export
			reset_reset_n                        : in    std_logic                    := 'X';             -- reset_n
			vga_CLK                              : out   std_logic;                                       -- CLK
			vga_HS                               : out   std_logic;                                       -- HS
			vga_VS                               : out   std_logic;                                       -- VS
			vga_BLANK                            : out   std_logic;                                       -- BLANK
			vga_SYNC                             : out   std_logic;                                       -- SYNC
			vga_R                                : out   std_logic_vector(7 downto 0);                    -- R
			vga_G                                : out   std_logic_vector(7 downto 0);                    -- G
			vga_B                                : out   std_logic_vector(7 downto 0)                     -- B
		);
	end component oscill_nios;

	u0 : component oscill_nios
		port map (
			audio_ADCDAT                         => CONNECTED_TO_audio_ADCDAT,                         --                         audio.ADCDAT
			audio_ADCLRCK                        => CONNECTED_TO_audio_ADCLRCK,                        --                              .ADCLRCK
			audio_BCLK                           => CONNECTED_TO_audio_BCLK,                           --                              .BCLK
			audio_DACDAT                         => CONNECTED_TO_audio_DACDAT,                         --                              .DACDAT
			audio_DACLRCK                        => CONNECTED_TO_audio_DACLRCK,                        --                              .DACLRCK
			audio_clk_clk                        => CONNECTED_TO_audio_clk_clk,                        --                     audio_clk.clk
			audio_config_SDAT                    => CONNECTED_TO_audio_config_SDAT,                    --                  audio_config.SDAT
			audio_config_SCLK                    => CONNECTED_TO_audio_config_SCLK,                    --                              .SCLK
			clk_clk                              => CONNECTED_TO_clk_clk,                              --                           clk.clk
			pio_hex_0_external_connection_export => CONNECTED_TO_pio_hex_0_external_connection_export, -- pio_hex_0_external_connection.export
			pio_hex_1_external_connection_export => CONNECTED_TO_pio_hex_1_external_connection_export, -- pio_hex_1_external_connection.export
			pio_hex_2_external_connection_export => CONNECTED_TO_pio_hex_2_external_connection_export, -- pio_hex_2_external_connection.export
			pio_hex_3_external_connection_export => CONNECTED_TO_pio_hex_3_external_connection_export, -- pio_hex_3_external_connection.export
			pio_hex_4_external_connection_export => CONNECTED_TO_pio_hex_4_external_connection_export, -- pio_hex_4_external_connection.export
			pio_hex_5_external_connection_export => CONNECTED_TO_pio_hex_5_external_connection_export, -- pio_hex_5_external_connection.export
			pio_key_external_connection_export   => CONNECTED_TO_pio_key_external_connection_export,   --   pio_key_external_connection.export
			pio_led_external_connection_export   => CONNECTED_TO_pio_led_external_connection_export,   --   pio_led_external_connection.export
			pio_sw_external_connection_export    => CONNECTED_TO_pio_sw_external_connection_export,    --    pio_sw_external_connection.export
			reset_reset_n                        => CONNECTED_TO_reset_reset_n,                        --                         reset.reset_n
			vga_CLK                              => CONNECTED_TO_vga_CLK,                              --                           vga.CLK
			vga_HS                               => CONNECTED_TO_vga_HS,                               --                              .HS
			vga_VS                               => CONNECTED_TO_vga_VS,                               --                              .VS
			vga_BLANK                            => CONNECTED_TO_vga_BLANK,                            --                              .BLANK
			vga_SYNC                             => CONNECTED_TO_vga_SYNC,                             --                              .SYNC
			vga_R                                => CONNECTED_TO_vga_R,                                --                              .R
			vga_G                                => CONNECTED_TO_vga_G,                                --                              .G
			vga_B                                => CONNECTED_TO_vga_B                                 --                              .B
		);

