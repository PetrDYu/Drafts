#include <stdio.h>
#include "system.h"
#include "altera_up_avalon_audio_regs.h"
#include "altera_up_avalon_audio.h"
#include "altera_up_avalon_audio_and_video_config.h"
#include "alt_sys_init.c"
#include "AUDIO.h"
#include <math.h>

#define LINEOUT_DEFUALT_VOL 0x79
#define SINMAX 100


int alt_up_av_config_read_ais(alt_up_av_config_dev *av_config)
{
	if ((IORD_ALT_UP_AV_CONFIG_STATUS(av_config->base) & ALT_UP_AV_CONFIG_STATUS_RDY_MSK) >> ALT_UP_AV_CONFIG_STATUS_RDY_OFST)
			return ((IORD_ALT_UP_AV_CONFIG_STATUS(av_config->base) & ALT_UP_AV_CONFIG_STATUS_AIS_MSK) >> ALT_UP_AV_CONFIG_STATUS_AIS_OFST);
		return -1;
}



int main ()
{
	unsigned int audR, audL;
	//unsigned int audL;
	unsigned int i = 0;
	unsigned int j = SINMAX;

	int k;

	alt_up_audio_dev *audio_dev;

	audio_dev = alt_up_audio_open_dev("/dev/audio_0");

	if ( audio_dev == NULL)
	{
		printf ("Error: could not open audio device\n");
		return -1;
	}
	else
		printf ("Opened audio device\n");

	AUDIO_Init();

	AUDIO_InterfaceActive(FALSE);

	AUDIO_SetInputSource(SOURCE_LINEIN);
	AUDIO_DacEnableSoftMute(TRUE);
	AUDIO_AdcEnableHighPassFilter(FALSE);
	AUDIO_MicMute(TRUE);
	AUDIO_LineInMute(FALSE);
	AUDIO_SetLineInVol(0x17, 0x17);  // max 0x1F, min:0; 0x17: 0dB (assume max input is 2.0v rms)
	AUDIO_SetLineOutVol(LINEOUT_DEFUALT_VOL, LINEOUT_DEFUALT_VOL); // max 7F, min: 30, 0x79: 0 db

	AUDIO_InterfaceActive(TRUE);
	//ALTERA_UP_AVALON_AUDIO_INIT(, "/dev/audio_0");

	//volatile int * audio_ptr = (int *) AUDIO_0_BASE;

	printf("Hello\n");

	/*alt_up_av_config_dev *av_config_dev;

	av_config_dev = alt_up_av_config_open_dev("/dev/audio_and_video_config_0");

	if ( av_config_dev == NULL)
	{
		alt_printf ("Error: could not open audio_config device\n");
		return -1;
	}
	else
		alt_printf ("Opened audio_config device\n");



	//printf()

	printf("ais = %d\n", alt_up_av_config_read_ais(av_config_dev));
	int res = alt_up_av_config_reset(av_config_dev);

	if(res == 0){
	    printf("Reset successful.\n");
	}else{
	    printf("Reset failed.\n");
	}

	//alt_up_av_config_write_audio_cfg_register(av_config_dev, 0xFF, 0x01);

	alt_up_av_config_write_audio_cfg_register(av_config_dev, AUDIO_REG_ACTIVE_CTRL, 0x0000);
	while(!alt_up_av_config_read_ready(av_config_dev));

	alt_up_av_config_write_audio_cfg_register(av_config_dev, AUDIO_REG_LEFT_LINE_IN, 0x0017);
	while(!alt_up_av_config_read_ready(av_config_dev));
	printf ("acknowledge: %d, ready : %d\n", alt_up_av_config_read_acknowledge(av_config_dev), alt_up_av_config_read_ready(av_config_dev));
	alt_up_av_config_write_audio_cfg_register(av_config_dev, AUDIO_REG_RIGHT_LINE_IN, 0x0017);
	while(!alt_up_av_config_read_ready(av_config_dev));
	printf ("acknowledge: %d, ready : %d\n", alt_up_av_config_read_acknowledge(av_config_dev), alt_up_av_config_read_ready(av_config_dev));
	alt_up_av_config_write_audio_cfg_register(av_config_dev, AUDIO_REG_LEFT_HEADPHONE_OUT, 0x005B);
	while(!alt_up_av_config_read_ready(av_config_dev));
	printf ("acknowledge: %d, ready : %d\n", alt_up_av_config_read_acknowledge(av_config_dev), alt_up_av_config_read_ready(av_config_dev));
	alt_up_av_config_write_audio_cfg_register(av_config_dev, AUDIO_REG_RIGHT_HEADPHONE_OUT, 0x005B);
	while(!alt_up_av_config_read_ready(av_config_dev));
	printf ("acknowledge: %d, ready : %d\n", alt_up_av_config_read_acknowledge(av_config_dev), alt_up_av_config_read_ready(av_config_dev));
	alt_up_av_config_write_audio_cfg_register(av_config_dev, AUDIO_REG_ANALOG_AUDIO_PATH_CTRL, 0x0016);
	while(!alt_up_av_config_read_ready(av_config_dev));
	printf ("acknowledge: %d, ready : %d\n", alt_up_av_config_read_acknowledge(av_config_dev), alt_up_av_config_read_ready(av_config_dev));
	alt_up_av_config_write_audio_cfg_register(av_config_dev, AUDIO_REG_DIGITAL_AUDIO_PATH_CTRL, 0x00);
	while(!alt_up_av_config_read_ready(av_config_dev));
	printf ("acknowledge: %d, ready : %d\n", alt_up_av_config_read_acknowledge(av_config_dev), alt_up_av_config_read_ready(av_config_dev));
	alt_up_av_config_write_audio_cfg_register(av_config_dev, AUDIO_REG_AUDIO_DIGITAL_INTERFACE, 0x0042);
	while(!alt_up_av_config_read_ready(av_config_dev));
	printf ("acknowledge: %d, ready : %d\n", alt_up_av_config_read_acknowledge(av_config_dev), alt_up_av_config_read_ready(av_config_dev));
	alt_up_av_config_write_audio_cfg_register(av_config_dev, AUDIO_REG_SAMPLING_CTRL, 0x0002);
	while(!alt_up_av_config_read_ready(av_config_dev));
	printf ("acknowledge: %d, ready : %d\n", alt_up_av_config_read_acknowledge(av_config_dev), alt_up_av_config_read_ready(av_config_dev));

	j = alt_up_av_config_write_audio_cfg_register(av_config_dev, AUDIO_REG_POWER_DOWN_CTRL, 0x0);

	if ( j == 0)
	{
		alt_printf ("Device powered\n");
	}

	while(!alt_up_av_config_read_ready(av_config_dev));
	printf ("acknowledge: %d, ready : %d\n", alt_up_av_config_read_acknowledge(av_config_dev), alt_up_av_config_read_ready(av_config_dev));

	j = alt_up_av_config_write_audio_cfg_register(av_config_dev, AUDIO_REG_ACTIVE_CTRL, 0x0001);

	if ( j == 0)
	{
		alt_printf ("Device active\n");
	}

	while(!alt_up_av_config_read_ready(av_config_dev));

	j = alt_up_av_config_read_acknowledge(av_config_dev);

	printf ("acknowledge: %d\n", j);

	//alt_sys_init();

	if ( alt_up_av_config_read_ready(av_config_dev) == 1)
		{
			alt_printf ("ready\n");
		}*/


	//alt_sys_init();

	while(1)
	{
		//audR = i;
		//printf("audR1 = %d\n", audR);
		//IOWR_ALT_UP_AUDIO_RIGHTDATA(AUDIO_0_BASE+2, audR);
		//*(audio_ptr + 2) = audR;
	//	IOWR_ALT_UP_AUDIO_LEFTDATA(AUDIO_0_BASE, audL);
		//audR = 0;
		//IOWR_ALT_UP_AUDIO_RIGHTDATA(AUDIO_0_BASE+2, audR);
		//audR = *(audio_ptr + 2);

		if(alt_up_audio_write_fifo_space(audio_dev,ALT_UP_AUDIO_LEFT) != 0)
		{
			k = alt_up_audio_write_fifo(audio_dev, &(i), 1, ALT_UP_AUDIO_RIGHT);
			k = alt_up_audio_write_fifo(audio_dev, &(i), 1, ALT_UP_AUDIO_LEFT);
			//printf("audR1 = %d, k1 = %d\n", i, k);
			//for(j=0; j<(ALT_CPU_CPU_FREQ/500); j++);
			/*if (i < j)
			{
				i++;
				if (i == j)
					j = 1;
			}
			else
			{
				i--;
				if (i == j)
					j = SINMAX;
			}*/
			//j = static_cast<unsigned int>(100*sin(i)+200);
		}
		/*while(!(alt_up_audio_read_fifo_avail(audio_dev,ALT_UP_AUDIO_RIGHT) || alt_up_audio_read_fifo_avail(audio_dev,ALT_UP_AUDIO_RIGHT)));
		if((alt_up_audio_read_fifo_avail(audio_dev,ALT_UP_AUDIO_RIGHT) || alt_up_audio_read_fifo_avail(audio_dev,ALT_UP_AUDIO_RIGHT)) != 0)
		{
			k = alt_up_audio_read_fifo(audio_dev, &audR, 1, ALT_UP_AUDIO_RIGHT);
			k = alt_up_audio_read_fifo(audio_dev, &audL, 1, ALT_UP_AUDIO_LEFT);
			//printf("audR2 = %d, k2 = %d\n", audL, k);
			i++;
			//for(j=0; j<(ALT_CPU_CPU_FREQ/500); j++);
		}*/

		/*if(AUDIO_DacFifoNotFull())
		{
			AUDIO_DacFifoSetData(i, i);
			i++;
			printf("audR1 = %d\n", i);
		}

		while(!AUDIO_AdcFifoNotEmpty());
		if(AUDIO_AdcFifoNotEmpty())
		{
			AUDIO_AdcFifoGetData(audL, audR);
			printf("audR2 = %d, audL2 = %d\n", audR, audL);
		}*/
		//for (j = 0; j < 1000000; j++);


		//i++;
		//for(j=0; j<(ALT_CPU_CPU_FREQ/500); j++);
		//printf("%d", alt_up_audio_write_fifo_space(audio_dev,0));
	}
	return 0;
}
