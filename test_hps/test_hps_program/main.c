#include "hps_0_arm_a9_0.h"
#include <stdio.h>

#define keys (volatile char *) PIO_BUTTON_BASE
#define leds (char *) PIO_LED_BASE

int main() {
	while (1)
		*leds = *keys;
}
