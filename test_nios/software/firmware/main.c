#include "system.h"
#include "altera_avalon_pio_regs.h"

int main ()
{
	unsigned int leds = 0x300;
	unsigned int i = 0;
	unsigned int j = 10;

	printf("Hello\n");

	while(1)
	{
		IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE, leds);
		for (i=0; i<(ALT_CPU_CPU_FREQ/250); i++); // небольшая задержка
		leds = leds >> 1;
		j--;
		printf("%d\n",j);
		if (j==0)
		{
			leds = 0x300;
			j = 10;
		}
	}
	return 0;
}
