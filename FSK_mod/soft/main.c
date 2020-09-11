#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include "hwlib.h"
#include "socal/socal.h"
#include "socal/hps.h"
#include "socal/alt_gpio.h"
#include "hps_0.h"

#define HW_REGS_BASE ( ALT_STM_OFST )
#define HW_REGS_SPAN ( 0x04000000 )
#define HW_REGS_MASK ( HW_REGS_SPAN - 1 )

int main() {

	void *virtual_base;
	int fd;
	/*int loop_count;
	int led_direction;
	int led_mask;*/
	float voltage;
	void *h2p_lw_hex_addr [6], *h2p_lw_key_addr;
	int j = 0, i, off = 0;
	int hex[] = {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02, 0x78 ,0x00 ,0x10 ,0x08 ,0x03 ,0x46 ,0x21 ,0x06 ,0x0e};

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
	
	h2p_lw_key_addr = virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + KEY_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_hex_addr [0] = virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + HEX_0_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_hex_addr [1] = virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + HEX_1_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_hex_addr [2] = virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + HEX_2_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_hex_addr [3] = virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + HEX_3_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_hex_addr [4] = virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + HEX_4_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_hex_addr [5] = virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + HEX_5_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	
	printf ("KEY BASE: %x\r\n", KEY_BASE);
	printf ("KEY: %d\n", *(uint32_t *)h2p_lw_key_addr);
	
	while(1)
	{
		
		if (*(uint32_t *)h2p_lw_key_addr != 0xf)
		{
			for (i = 0; i < 6; i++)
				*(uint32_t *) h2p_lw_hex_addr [i] = hex[j];
			j++;
			if (j == 0x10)
				j = 0;
			printf("push\n");
			while (*(uint32_t *)h2p_lw_key_addr != 0xf)
			{
				if (*(uint32_t *)h2p_lw_key_addr == 0x6)
				{
					off = 1;
					break;					
				}
			}
		}
		if (off == 1)
			break;
	}	
	
	
	if( munmap( virtual_base, HW_REGS_SPAN ) != 0 ) {
		printf( "ERROR: munmap() failed...\n" );
		close( fd );
		return( 1 );
	}

	close( fd );
	
	return 0;
}