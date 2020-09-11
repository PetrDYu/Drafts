module	VGA_BITSTREAM	(	//	Read Out Side
						oRed,
						oGreen,
						oBlue,
						iVGA_X,
						iVGA_Y,
						iVGA_CLK,
						//	Control Signals
						iRST_n,
						iColor_SW	);
//	Read Out Side
output	reg	[7:0]	oRed;
output	reg	[7:0]	oGreen;
output	reg	[7:0]	oBlue;
input	[9:0]		iVGA_X;
input	[9:0]		iVGA_Y;
input				iVGA_CLK;
//	Control Signals
input				iRST_n;
input				iColor_SW;

always@(posedge iVGA_CLK or negedge iRST_n)
begin
	if(!iRST_n)
	begin
		oRed	<=	0;
		oGreen	<=	0;
		oBlue	<=	0;
	end
	else
	begin
		if(iColor_SW == 1)
		begin
			if (iVGA_Y<120)
			begin
				oRed	<=	(iVGA_X<40)						?			0	:
							(iVGA_X>=40 && iVGA_X<80)		?			16	:
							(iVGA_X>=80 && iVGA_X<120)		?			32	:
							(iVGA_X>=120 && iVGA_X<160)		?			48	:
							(iVGA_X>=160 && iVGA_X<200)		?			64	:
							(iVGA_X>=200 && iVGA_X<240)		?			80	:
							(iVGA_X>=240 && iVGA_X<280)		?			96	:
							(iVGA_X>=280 && iVGA_X<320)		?			112	:
							(iVGA_X>=320 && iVGA_X<360)		?			128	:
							(iVGA_X>=360 && iVGA_X<400)		?			144	:
							(iVGA_X>=400 && iVGA_X<440)		?			160	:
							(iVGA_X>=440 && iVGA_X<480 )	?			176	:
							(iVGA_X>=480 && iVGA_X<520 )	?			192	:
							(iVGA_X>=520 && iVGA_X<560 )	?			208	:
							(iVGA_X>=560 && iVGA_X<600 )	?			224	:
																		240	;
				oGreen	<=	0;	
				oBlue	<=	0;
			end
			else if (iVGA_Y>=120 && iVGA_Y<240)
			begin
				oRed	<=	0;
				oGreen	<=	(iVGA_X<40)						?			240	:
							(iVGA_X>=40 && iVGA_X<80)		?			224	:
							(iVGA_X>=80 && iVGA_X<120)		?			208	:
							(iVGA_X>=120 && iVGA_X<160)		?			192	:
							(iVGA_X>=160 && iVGA_X<200)		?			176	:
							(iVGA_X>=200 && iVGA_X<240)		?			160	:
							(iVGA_X>=240 && iVGA_X<280)		?			144	:
							(iVGA_X>=280 && iVGA_X<320)		?			128	:
							(iVGA_X>=320 && iVGA_X<360)		?			112	:
							(iVGA_X>=360 && iVGA_X<400)		?			96	:
							(iVGA_X>=400 && iVGA_X<440)		?			80	:
							(iVGA_X>=440 && iVGA_X<480 )	?			64	:
							(iVGA_X>=480 && iVGA_X<520 )	?			48	:
							(iVGA_X>=520 && iVGA_X<560 )	?			32	:
							(iVGA_X>=560 && iVGA_X<600 )	?			16	:
																		0	;
				oBlue	<=	0;
			end
			else if (iVGA_Y>=240 && iVGA_Y<360)
			begin
				oRed	<=	0;
				oGreen	<=	0;
				oBlue	<=	(iVGA_X<40)						?			0	:
							(iVGA_X>=40 && iVGA_X<80)		?			16	:
							(iVGA_X>=80 && iVGA_X<120)		?			32	:
							(iVGA_X>=120 && iVGA_X<160)		?			48	:
							(iVGA_X>=160 && iVGA_X<200)		?			64	:
							(iVGA_X>=200 && iVGA_X<240)		?			80	:
							(iVGA_X>=240 && iVGA_X<280)		?			96	:
							(iVGA_X>=280 && iVGA_X<320)		?			112	:
							(iVGA_X>=320 && iVGA_X<360)		?			128	:
							(iVGA_X>=360 && iVGA_X<400)		?			144	:
							(iVGA_X>=400 && iVGA_X<440)		?			160	:
							(iVGA_X>=440 && iVGA_X<480 )	?			176	:
							(iVGA_X>=480 && iVGA_X<520 )	?			192	:
							(iVGA_X>=520 && iVGA_X<560 )	?			208	:
							(iVGA_X>=560 && iVGA_X<600 )	?			224	:
																		240	;
			end
			else
			begin
				oRed	<=	(iVGA_X<40)						?			240	:
							(iVGA_X>=40 && iVGA_X<80)		?			224	:
							(iVGA_X>=80 && iVGA_X<120)		?			208	:
							(iVGA_X>=120 && iVGA_X<160)		?			192	:
							(iVGA_X>=160 && iVGA_X<200)		?			176	:
							(iVGA_X>=200 && iVGA_X<240)		?			160	:
							(iVGA_X>=240 && iVGA_X<280)		?			144	:
							(iVGA_X>=280 && iVGA_X<320)		?			128	:
							(iVGA_X>=320 && iVGA_X<360)		?			112	:
							(iVGA_X>=360 && iVGA_X<400)		?			96	:
							(iVGA_X>=400 && iVGA_X<440)		?			80	:
							(iVGA_X>=440 && iVGA_X<480 )	?			64	:
							(iVGA_X>=480 && iVGA_X<520 )	?			48	:
							(iVGA_X>=520 && iVGA_X<560 )	?			32	:
							(iVGA_X>=560 && iVGA_X<600 )	?			16	:
																		0	;
							
				oGreen	<=	(iVGA_X<40)						?			240	:
							(iVGA_X>=40 && iVGA_X<80)		?			224	:
							(iVGA_X>=80 && iVGA_X<120)		?			208	:
							(iVGA_X>=120 && iVGA_X<160)		?			192	:
							(iVGA_X>=160 && iVGA_X<200)		?			176	:
							(iVGA_X>=200 && iVGA_X<240)		?			160	:
							(iVGA_X>=240 && iVGA_X<280)		?			144	:
							(iVGA_X>=280 && iVGA_X<320)		?			128	:
							(iVGA_X>=320 && iVGA_X<360)		?			112	:
							(iVGA_X>=360 && iVGA_X<400)		?			96	:
							(iVGA_X>=400 && iVGA_X<440)		?			80	:
							(iVGA_X>=440 && iVGA_X<480 )	?			64	:
							(iVGA_X>=480 && iVGA_X<520 )	?			48	:
							(iVGA_X>=520 && iVGA_X<560 )	?			32	:
							(iVGA_X>=560 && iVGA_X<600 )	?			16	:
																		0	;
		
				oBlue	<=	(iVGA_X<40)						?			240	:
							(iVGA_X>=40 && iVGA_X<80)		?			224	:
							(iVGA_X>=80 && iVGA_X<120)		?			208	:
							(iVGA_X>=120 && iVGA_X<160)		?			192	:
							(iVGA_X>=160 && iVGA_X<200)		?			176	:
							(iVGA_X>=200 && iVGA_X<240)		?			160	:
							(iVGA_X>=240 && iVGA_X<280)		?			144	:
							(iVGA_X>=280 && iVGA_X<320)		?			128	:
							(iVGA_X>=320 && iVGA_X<360)		?			112	:
							(iVGA_X>=360 && iVGA_X<400)		?			96	:
							(iVGA_X>=400 && iVGA_X<440)		?			80	:
							(iVGA_X>=440 && iVGA_X<480 )	?			64	:
							(iVGA_X>=480 && iVGA_X<520 )	?			48	:
							(iVGA_X>=520 && iVGA_X<560 )	?			32	:
							(iVGA_X>=560 && iVGA_X<600 )	?			16	:
																		0	;
		
			end
		end
		else
		begin
			oRed	<=	(iVGA_Y<120)					?			48	:
						(iVGA_Y>=120 && iVGA_Y<240)		?			112	:
						(iVGA_Y>=240 && iVGA_Y<360)		?			176	:
																	240	;
			oGreen	<=	(iVGA_X<80)						?			16	:
						(iVGA_X>=80 && iVGA_X<160)		?			48	:
						(iVGA_X>=160 && iVGA_X<240)		?			80	:
						(iVGA_X>=240 && iVGA_X<320)		?			112	:
						(iVGA_X>=320 && iVGA_X<400)		?			144	:
						(iVGA_X>=400 && iVGA_X<480)		?			176	:
						(iVGA_X>=480 && iVGA_X<560)		?			208	:
																	240	;
			oBlue	<=	(iVGA_Y<60)						?			240	:
						(iVGA_Y>=60 && iVGA_Y<120)		?			208	:
						(iVGA_Y>=120 && iVGA_Y<180)		?			176	:
						(iVGA_Y>=180 && iVGA_Y<240)		?			144	:
						(iVGA_Y>=240 && iVGA_Y<300)		?			112	:
						(iVGA_Y>=300 && iVGA_Y<360)		?			80	:
						(iVGA_Y>=360 && iVGA_Y<420)		?			48	:
																	16	;
		end
	end
end

endmodule

