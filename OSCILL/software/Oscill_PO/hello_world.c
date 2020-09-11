#include <stdio.h>
#include "alt_types.h"
#include "io.h"
#include "system.h"
#include "altera_up_avalon_video_pixel_buffer_dma.h"


#define SINMAX 100
#define SIZEX 640
#define SIZEY 480
#define NUM_POINT 40

int main()
{

	//unsigned int data[NUM_POINT];


	/*int j = 0, i = 0;

	for (int k = 0; k < NUM_POINT; k++)
	{
		data[k] = i;
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
	}*/

	alt_up_pixel_buffer_dma_dev * pixel_buf_dev;

	pixel_buf_dev = alt_up_pixel_buffer_dma_open_dev ("/dev/video_pixel_buffer_dma_0");
	if( pixel_buf_dev == NULL)
		printf ("Error: could not open pixel buffer device \n");
	else
		printf ("Opened pixel buffer device \n");

	printf("%d\n", pixel_buf_dev);

	/*for (int k = 0; k < SIZEX; k++)
	{
		for(int l = 0; l < SIZEY; l++)
		{
			if(l == (SIZEY/2 + i))
				frame[l][k] = (2^30) - 1;
			else
				frame[l][k] = 0;
		}

	}*/

	while(1)
	{
		alt_up_pixel_buffer_dma_change_back_buffer_address(pixel_buf_dev, 0x00011000);
		alt_up_pixel_buffer_dma_swap_buffers(pixel_buf_dev);
		alt_up_pixel_buffer_dma_clear_screen (pixel_buf_dev,0);

		alt_up_pixel_buffer_dma_draw_box (pixel_buf_dev, 0, 0, 159, 119, 0xF, 0);
	}
	return 0;
}
