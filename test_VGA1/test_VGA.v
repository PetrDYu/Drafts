
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module test_VGA(

	//////////// CLOCK //////////
	input 		          		CLOCK2_50,
	input 		          		CLOCK3_50,
	input 		          		CLOCK4_50,
	input 		          		CLOCK_50,

	//////////// SDRAM //////////
	output		    [12:0]		DRAM_ADDR,
	output		     [1:0]		DRAM_BA,
	output		          		DRAM_CAS_N,
	output		          		DRAM_CKE,
	output		          		DRAM_CLK,
	output		          		DRAM_CS_N,
	inout 		    [15:0]		DRAM_DQ,
	output		          		DRAM_LDQM,
	output		          		DRAM_RAS_N,
	output		          		DRAM_UDQM,
	output		          		DRAM_WE_N,

	//////////// SEG7 //////////
	output		     [6:0]		HEX0,
	output		     [6:0]		HEX1,
	output		     [6:0]		HEX2,
	output		     [6:0]		HEX3,
	output		     [6:0]		HEX4,
	output		     [6:0]		HEX5,

	//////////// KEY //////////
	input 		     [3:0]		KEY,

	//////////// LED //////////
	output		     [9:0]		LEDR,

	//////////// SW //////////
	input 		     [9:0]		SW,

	//////////// VGA //////////
	output		          		VGA_BLANK_N,
	output		     [7:0]		VGA_B,
	output		          		VGA_CLK,
	output		     [7:0]		VGA_G,
	output		          		VGA_HS,
	output		     [7:0]		VGA_R,
	output		          		VGA_SYNC_N,
	output		          		VGA_VS

	/*//////////// HPS //////////
	inout 		          		HPS_CONV_USB_N,
	output		    [14:0]		HPS_DDR3_ADDR,
	output		     [2:0]		HPS_DDR3_BA,
	output		          		HPS_DDR3_CAS_N,
	output		          		HPS_DDR3_CKE,
	output		          		HPS_DDR3_CK_N,
	output		          		HPS_DDR3_CK_P,
	output		          		HPS_DDR3_CS_N,
	output		     [3:0]		HPS_DDR3_DM,
	inout 		    [31:0]		HPS_DDR3_DQ,
	inout 		     [3:0]		HPS_DDR3_DQS_N,
	inout 		     [3:0]		HPS_DDR3_DQS_P,
	output		          		HPS_DDR3_ODT,
	output		          		HPS_DDR3_RAS_N,
	output		          		HPS_DDR3_RESET_N,
	input 		          		HPS_DDR3_RZQ,
	output		          		HPS_DDR3_WE_N,
	output		          		HPS_ENET_GTX_CLK,
	inout 		          		HPS_ENET_INT_N,
	output		          		HPS_ENET_MDC,
	inout 		          		HPS_ENET_MDIO,
	input 		          		HPS_ENET_RX_CLK,
	input 		     [3:0]		HPS_ENET_RX_DATA,
	input 		          		HPS_ENET_RX_DV,
	output		     [3:0]		HPS_ENET_TX_DATA,
	output		          		HPS_ENET_TX_EN,
	inout 		     [3:0]		HPS_FLASH_DATA,
	output		          		HPS_FLASH_DCLK,
	output		          		HPS_FLASH_NCSO,
	inout 		     [1:0]		HPS_GPIO,
	inout 		          		HPS_GSENSOR_INT,
	inout 		          		HPS_I2C1_SCLK,
	inout 		          		HPS_I2C1_SDAT,
	inout 		          		HPS_I2C2_SCLK,
	inout 		          		HPS_I2C2_SDAT,
	inout 		          		HPS_I2C_CONTROL,
	inout 		          		HPS_KEY,
	inout 		          		HPS_LED,
	output		          		HPS_SD_CLK,
	inout 		          		HPS_SD_CMD,
	inout 		     [3:0]		HPS_SD_DATA,
	output		          		HPS_SPIM_CLK,
	input 		          		HPS_SPIM_MISO,
	output		          		HPS_SPIM_MOSI,
	inout 		          		HPS_SPIM_SS,
	input 		          		HPS_UART_RX,
	output		          		HPS_UART_TX,
	input 		          		HPS_USB_CLKOUT,
	inout 		     [7:0]		HPS_USB_DATA,
	input 		          		HPS_USB_DIR,
	input 		          		HPS_USB_NXT,
	output		          		HPS_USB_STP*/
);



//=======================================================
//  REG/WIRE declarations
//=======================================================

wire H_SYNC_CLK;
wire V_SYNC_CLK;
wire RESET;
wire [10:0]Current_X;
wire [10:0]Current_Y;
wire SYNC_COLOR;
reg	[3:0]	iVGA_R;
reg	[3:0]	iVGA_G;
reg	[3:0]	iVGA_B;
wire	[3:0]	irVGA_R;
wire	[3:0]	irVGA_G;
wire	[3:0]	irVGA_B;

//reg	[3:0]	irVGA_R;
//reg	[3:0]	irVGA_G;
//reg	[3:0]	irVGA_B;


/*always @(posedge CLOCK_50)
begin

		irVGA_R[3:0] = 4'd13;
		irVGA_G[3:0] = 4'b0;
		irVGA_B[3:0] = 4'b0;
		
end*/

assign irVGA_R[3:0] = iVGA_R[3:0];
assign irVGA_G[3:0] = iVGA_G[3:0];
assign irVGA_B[3:0] = iVGA_B[3:0];
assign RESET = KEY[0];
assign VGA_HS = H_SYNC_CLK;
assign VGA_VS = V_SYNC_CLK;
VGA_PLL		u1
		(	.refclk(CLOCK_50),
			.rst(KEY0),
			.outclk_0(VGA_CLK)
		);
VGA_SYNC u2
(	.CLK(VGA_CLK),
	.H_SYNC_CLK(H_SYNC_CLK),
	.V_SYNC_CLK(V_SYNC_CLK),
	.SYNC_RST_N(KEY[0]),
	.oCurrent_X(Current_X),
	.oCurrent_Y(Current_Y),
	.oSYNC_COLOR(SYNC_COLOR));
VGA_OUT u3
(
.oVGA_R(VGA_R[3:0]),
.oVGA_G(VGA_G[3:0]),
.oVGA_B(VGA_B[3:0]),
.iVGA_R(iVGA_R[3:0]),
.iVGA_G(iVGA_G[3:0]),
.iVGA_B(iVGA_B[3:0]),
.VGA_CLK(VGA_CLK),
.Current_X(Current_X),
.Current_Y(Current_Y),
.SYNC_COLOR(SYNC_COLOR),
.RESET(RESET)
);
VGA_BITSTREAM u4(.oRed(irVGA_R),
						.oGreen(irVGA_G),
						.oBlue(irVGA_B),
						.iVGA_X(Current_X),
						.iVGA_Y(Current_Y),
						.iVGA_CLK(VGA_CLK),
						.iRST_n(RESET),
						.iColor_SW(SW[0]));


//=======================================================
//  Structural coding
//=======================================================



endmodule