#include <stdio.h>
#include "alt_types.h"
#include "io.h"
#include "system.h"

#define SINMAX 10
#define SIZEX 100
#define SIZEY 50

int main()
{
	//alt_u32 *frame;
	alt_u32 frame[SIZEY][SIZEX];
	//frame = (alt_u32 *)NEW_SDRAM_CONTROLLER_0_BASE;


	//*frame = 0;
	int j = 0, i = 0;

	for (int k = 0; k < SIZEX; k++)
	{
		for(int l = 1; l < SIZEY; l++)
		{
			if(l == (SIZEY/2 + i))
				frame[k][l] = (2^20) - 1;
			else
				frame[k][l] = 0;
		}
		if (i < j)
		{
			i++;
			if (i == j)
				j = 0;
		}
		else
		{
			i--;
			if (i == j)
				j = SINMAX;
		}
		//printf("k = %d\n", k);
	}
	IOWR(VIDEO_DMA_CONTROLLER_BASE, 1, &frame);
	while(IORD(VIDEO_DMA_CONTROLLER_BASE, 3)& 0x01);
	if (!(IORD(VIDEO_DMA_CONTROLLER_BASE, 3)& 0x01))
		printf("change success\n");

	while(1);
	return 0;
}
