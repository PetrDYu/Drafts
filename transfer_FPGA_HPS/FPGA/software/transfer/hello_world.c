#include <stdio.h>
#include "altera_avalon_pio_regs.h"
#include "system.h"

#define MEM_BASE ( 0x00015000 )

int main()
{

	int sig;

	sig = IORD_ALTERA_AVALON_PIO_DATA(SIGNAL_0_BASE);
	IOWR(MEM_BASE, 0, sig);

  return 0;
}
