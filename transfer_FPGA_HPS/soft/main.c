#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include "hwlib.h"
#include "socal/socal.h"
#include "socal/hps.h"
#include "socal/alt_gpio.h"
	

#define HW_REGS_BASE ( ALT_STM_OFST )
#define HW_REGS_SPAN ( 0x04000000 )
#define HW_REGS_MASK ( HW_REGS_SPAN - 1 )
#define MEM_BASE ( 0x00011000 )

int main() {

	void *virtual_base;
	int fd;
	void *h2p_lw_mem_addr;
	
	int signal = 0;
	

	// map the address space for the LED registers into user space so we can interact with them.
	// we'll actually map in the entire CSR span of the HPS since we want to access various registers within that span

	if( ( fd = open( "/dev/mem", ( O_RDWR | O_SYNC ) ) ) == -1 ) {
		printf( "ERROR: could not open \"/dev/mem\"...\n" );
		return( 1 );
	}

	virtual_base = mmap( NULL, HW_REGS_SPAN, ( PROT_READ | PROT_WRITE ), MAP_SHARED, fd, HW_REGS_BASE );

	if( virtual_base == MAP_FAILED ) {
		printf( "ERROR: mmap() failed...\n" );
		close( fd );
		return( 1 );
	}
	
	h2p_lw_mem_addr = virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + MEM_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	
	signal = *(uint32_t *)h2p_lw_mem_addr;
	printf("%d/n", signal);
	
	while(1)
	{
		
		if (signal != *(uint32_t *)h2p_lw_mem_addr)
			printf("%d/n", signal);
		
		signal = *(uint32_t *)h2p_lw_mem_addr;
	}	
	
	
	if( munmap( virtual_base, HW_REGS_SPAN ) != 0 ) {
		printf( "ERROR: munmap() failed...\n" );
		close( fd );
		return( 1 );
	}

	close( fd );
	
	return 0;
}