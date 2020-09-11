/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'niosII' in SOPC Builder design 'oscill_nios'
 * SOPC Builder design path: ../../oscill_nios.sopcinfo
 *
 * Generated: Mon Apr 27 04:16:11 MSK 2020
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00100820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "fast"
#define ALT_CPU_DATA_ADDR_WIDTH 0x15
#define ALT_CPU_DCACHE_BYPASS_MASK 0x80000000
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 2048
#define ALT_CPU_EXCEPTION_ADDR 0x00080020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 1
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_EXTRA_EXCEPTION_INFO
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 4096
#define ALT_CPU_INITDA_SUPPORTED
#define ALT_CPU_INST_ADDR_WIDTH 0x15
#define ALT_CPU_NAME "niosII"
#define ALT_CPU_NUM_OF_SHADOW_REG_SETS 0
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x00080000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00100820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 0x15
#define NIOS2_DCACHE_BYPASS_MASK 0x80000000
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 2048
#define NIOS2_EXCEPTION_ADDR 0x00080020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_EXTRA_EXCEPTION_INFO
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 4096
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 0x15
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x00080000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_NIOS2_GEN2
#define __ALTERA_UP_AVALON_AUDIO
#define __ALTERA_UP_AVALON_AUDIO_AND_VIDEO_CONFIG
#define __ALTERA_UP_AVALON_VIDEO_PIXEL_BUFFER_DMA


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone V"
#define ALT_IRQ_BASE NULL
#define ALT_LEGACY_INTERRUPT_API_PRESENT
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x1010d0
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x1010d0
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x1010d0
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "oscill_nios"


/*
 * audio_transf configuration
 *
 */

#define ALT_MODULE_CLASS_audio_transf altera_up_avalon_audio
#define AUDIO_TRANSF_BASE 0x1010b0
#define AUDIO_TRANSF_IRQ 1
#define AUDIO_TRANSF_IRQ_INTERRUPT_CONTROLLER_ID 0
#define AUDIO_TRANSF_NAME "/dev/audio_transf"
#define AUDIO_TRANSF_SPAN 16
#define AUDIO_TRANSF_TYPE "altera_up_avalon_audio"


/*
 * av_config configuration
 *
 */

#define ALT_MODULE_CLASS_av_config altera_up_avalon_audio_and_video_config
#define AV_CONFIG_BASE 0x1010a0
#define AV_CONFIG_IRQ -1
#define AV_CONFIG_IRQ_INTERRUPT_CONTROLLER_ID -1
#define AV_CONFIG_NAME "/dev/av_config"
#define AV_CONFIG_SPAN 16
#define AV_CONFIG_TYPE "altera_up_avalon_audio_and_video_config"


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x1010d0
#define JTAG_UART_IRQ 0
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * onchip_memory configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory altera_avalon_onchip_memory2
#define ONCHIP_MEMORY_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY_BASE 0x80000
#define ONCHIP_MEMORY_CONTENTS_INFO ""
#define ONCHIP_MEMORY_DUAL_PORT 0
#define ONCHIP_MEMORY_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_INIT_CONTENTS_FILE "oscill_nios_onchip_memory"
#define ONCHIP_MEMORY_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY_INSTANCE_ID "NONE"
#define ONCHIP_MEMORY_IRQ -1
#define ONCHIP_MEMORY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY_NAME "/dev/onchip_memory"
#define ONCHIP_MEMORY_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY_SIZE_VALUE 320000
#define ONCHIP_MEMORY_SPAN 320000
#define ONCHIP_MEMORY_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY_WRITABLE 1


/*
 * pio_hex_0 configuration
 *
 */

#define ALT_MODULE_CLASS_pio_hex_0 altera_avalon_pio
#define PIO_HEX_0_BASE 0x101060
#define PIO_HEX_0_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_HEX_0_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_HEX_0_CAPTURE 0
#define PIO_HEX_0_DATA_WIDTH 7
#define PIO_HEX_0_DO_TEST_BENCH_WIRING 0
#define PIO_HEX_0_DRIVEN_SIM_VALUE 0
#define PIO_HEX_0_EDGE_TYPE "NONE"
#define PIO_HEX_0_FREQ 50000000
#define PIO_HEX_0_HAS_IN 0
#define PIO_HEX_0_HAS_OUT 1
#define PIO_HEX_0_HAS_TRI 0
#define PIO_HEX_0_IRQ -1
#define PIO_HEX_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_HEX_0_IRQ_TYPE "NONE"
#define PIO_HEX_0_NAME "/dev/pio_hex_0"
#define PIO_HEX_0_RESET_VALUE 0
#define PIO_HEX_0_SPAN 16
#define PIO_HEX_0_TYPE "altera_avalon_pio"


/*
 * pio_hex_1 configuration
 *
 */

#define ALT_MODULE_CLASS_pio_hex_1 altera_avalon_pio
#define PIO_HEX_1_BASE 0x101040
#define PIO_HEX_1_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_HEX_1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_HEX_1_CAPTURE 0
#define PIO_HEX_1_DATA_WIDTH 7
#define PIO_HEX_1_DO_TEST_BENCH_WIRING 0
#define PIO_HEX_1_DRIVEN_SIM_VALUE 0
#define PIO_HEX_1_EDGE_TYPE "NONE"
#define PIO_HEX_1_FREQ 50000000
#define PIO_HEX_1_HAS_IN 0
#define PIO_HEX_1_HAS_OUT 1
#define PIO_HEX_1_HAS_TRI 0
#define PIO_HEX_1_IRQ -1
#define PIO_HEX_1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_HEX_1_IRQ_TYPE "NONE"
#define PIO_HEX_1_NAME "/dev/pio_hex_1"
#define PIO_HEX_1_RESET_VALUE 0
#define PIO_HEX_1_SPAN 16
#define PIO_HEX_1_TYPE "altera_avalon_pio"


/*
 * pio_hex_2 configuration
 *
 */

#define ALT_MODULE_CLASS_pio_hex_2 altera_avalon_pio
#define PIO_HEX_2_BASE 0x101030
#define PIO_HEX_2_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_HEX_2_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_HEX_2_CAPTURE 0
#define PIO_HEX_2_DATA_WIDTH 7
#define PIO_HEX_2_DO_TEST_BENCH_WIRING 0
#define PIO_HEX_2_DRIVEN_SIM_VALUE 0
#define PIO_HEX_2_EDGE_TYPE "NONE"
#define PIO_HEX_2_FREQ 50000000
#define PIO_HEX_2_HAS_IN 0
#define PIO_HEX_2_HAS_OUT 1
#define PIO_HEX_2_HAS_TRI 0
#define PIO_HEX_2_IRQ -1
#define PIO_HEX_2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_HEX_2_IRQ_TYPE "NONE"
#define PIO_HEX_2_NAME "/dev/pio_hex_2"
#define PIO_HEX_2_RESET_VALUE 0
#define PIO_HEX_2_SPAN 16
#define PIO_HEX_2_TYPE "altera_avalon_pio"


/*
 * pio_hex_3 configuration
 *
 */

#define ALT_MODULE_CLASS_pio_hex_3 altera_avalon_pio
#define PIO_HEX_3_BASE 0x101020
#define PIO_HEX_3_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_HEX_3_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_HEX_3_CAPTURE 0
#define PIO_HEX_3_DATA_WIDTH 7
#define PIO_HEX_3_DO_TEST_BENCH_WIRING 0
#define PIO_HEX_3_DRIVEN_SIM_VALUE 0
#define PIO_HEX_3_EDGE_TYPE "NONE"
#define PIO_HEX_3_FREQ 50000000
#define PIO_HEX_3_HAS_IN 0
#define PIO_HEX_3_HAS_OUT 1
#define PIO_HEX_3_HAS_TRI 0
#define PIO_HEX_3_IRQ -1
#define PIO_HEX_3_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_HEX_3_IRQ_TYPE "NONE"
#define PIO_HEX_3_NAME "/dev/pio_hex_3"
#define PIO_HEX_3_RESET_VALUE 0
#define PIO_HEX_3_SPAN 16
#define PIO_HEX_3_TYPE "altera_avalon_pio"


/*
 * pio_hex_4 configuration
 *
 */

#define ALT_MODULE_CLASS_pio_hex_4 altera_avalon_pio
#define PIO_HEX_4_BASE 0x101010
#define PIO_HEX_4_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_HEX_4_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_HEX_4_CAPTURE 0
#define PIO_HEX_4_DATA_WIDTH 7
#define PIO_HEX_4_DO_TEST_BENCH_WIRING 0
#define PIO_HEX_4_DRIVEN_SIM_VALUE 0
#define PIO_HEX_4_EDGE_TYPE "NONE"
#define PIO_HEX_4_FREQ 50000000
#define PIO_HEX_4_HAS_IN 0
#define PIO_HEX_4_HAS_OUT 1
#define PIO_HEX_4_HAS_TRI 0
#define PIO_HEX_4_IRQ -1
#define PIO_HEX_4_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_HEX_4_IRQ_TYPE "NONE"
#define PIO_HEX_4_NAME "/dev/pio_hex_4"
#define PIO_HEX_4_RESET_VALUE 0
#define PIO_HEX_4_SPAN 16
#define PIO_HEX_4_TYPE "altera_avalon_pio"


/*
 * pio_hex_5 configuration
 *
 */

#define ALT_MODULE_CLASS_pio_hex_5 altera_avalon_pio
#define PIO_HEX_5_BASE 0x101000
#define PIO_HEX_5_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_HEX_5_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_HEX_5_CAPTURE 0
#define PIO_HEX_5_DATA_WIDTH 7
#define PIO_HEX_5_DO_TEST_BENCH_WIRING 0
#define PIO_HEX_5_DRIVEN_SIM_VALUE 0
#define PIO_HEX_5_EDGE_TYPE "NONE"
#define PIO_HEX_5_FREQ 50000000
#define PIO_HEX_5_HAS_IN 0
#define PIO_HEX_5_HAS_OUT 1
#define PIO_HEX_5_HAS_TRI 0
#define PIO_HEX_5_IRQ -1
#define PIO_HEX_5_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_HEX_5_IRQ_TYPE "NONE"
#define PIO_HEX_5_NAME "/dev/pio_hex_5"
#define PIO_HEX_5_RESET_VALUE 0
#define PIO_HEX_5_SPAN 16
#define PIO_HEX_5_TYPE "altera_avalon_pio"


/*
 * pio_key configuration
 *
 */

#define ALT_MODULE_CLASS_pio_key altera_avalon_pio
#define PIO_KEY_BASE 0x101080
#define PIO_KEY_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_KEY_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_KEY_CAPTURE 0
#define PIO_KEY_DATA_WIDTH 3
#define PIO_KEY_DO_TEST_BENCH_WIRING 0
#define PIO_KEY_DRIVEN_SIM_VALUE 0
#define PIO_KEY_EDGE_TYPE "NONE"
#define PIO_KEY_FREQ 50000000
#define PIO_KEY_HAS_IN 1
#define PIO_KEY_HAS_OUT 0
#define PIO_KEY_HAS_TRI 0
#define PIO_KEY_IRQ -1
#define PIO_KEY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_KEY_IRQ_TYPE "NONE"
#define PIO_KEY_NAME "/dev/pio_key"
#define PIO_KEY_RESET_VALUE 0
#define PIO_KEY_SPAN 16
#define PIO_KEY_TYPE "altera_avalon_pio"


/*
 * pio_led configuration
 *
 */

#define ALT_MODULE_CLASS_pio_led altera_avalon_pio
#define PIO_LED_BASE 0x101070
#define PIO_LED_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_LED_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_LED_CAPTURE 0
#define PIO_LED_DATA_WIDTH 10
#define PIO_LED_DO_TEST_BENCH_WIRING 0
#define PIO_LED_DRIVEN_SIM_VALUE 0
#define PIO_LED_EDGE_TYPE "NONE"
#define PIO_LED_FREQ 50000000
#define PIO_LED_HAS_IN 0
#define PIO_LED_HAS_OUT 1
#define PIO_LED_HAS_TRI 0
#define PIO_LED_IRQ -1
#define PIO_LED_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_LED_IRQ_TYPE "NONE"
#define PIO_LED_NAME "/dev/pio_led"
#define PIO_LED_RESET_VALUE 0
#define PIO_LED_SPAN 16
#define PIO_LED_TYPE "altera_avalon_pio"


/*
 * pio_sw configuration
 *
 */

#define ALT_MODULE_CLASS_pio_sw altera_avalon_pio
#define PIO_SW_BASE 0x101050
#define PIO_SW_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_SW_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_SW_CAPTURE 0
#define PIO_SW_DATA_WIDTH 10
#define PIO_SW_DO_TEST_BENCH_WIRING 0
#define PIO_SW_DRIVEN_SIM_VALUE 0
#define PIO_SW_EDGE_TYPE "NONE"
#define PIO_SW_FREQ 50000000
#define PIO_SW_HAS_IN 1
#define PIO_SW_HAS_OUT 0
#define PIO_SW_HAS_TRI 0
#define PIO_SW_IRQ -1
#define PIO_SW_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_SW_IRQ_TYPE "NONE"
#define PIO_SW_NAME "/dev/pio_sw"
#define PIO_SW_RESET_VALUE 0
#define PIO_SW_SPAN 16
#define PIO_SW_TYPE "altera_avalon_pio"


/*
 * sysid_qsys configuration
 *
 */

#define ALT_MODULE_CLASS_sysid_qsys altera_avalon_sysid_qsys
#define SYSID_QSYS_BASE 0x1010c8
#define SYSID_QSYS_ID 19088743
#define SYSID_QSYS_IRQ -1
#define SYSID_QSYS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_QSYS_NAME "/dev/sysid_qsys"
#define SYSID_QSYS_SPAN 8
#define SYSID_QSYS_TIMESTAMP 1587946023
#define SYSID_QSYS_TYPE "altera_avalon_sysid_qsys"


/*
 * video_pixel_buffer_dma_0 configuration
 *
 */

#define ALT_MODULE_CLASS_video_pixel_buffer_dma_0 altera_up_avalon_video_pixel_buffer_dma
#define VIDEO_PIXEL_BUFFER_DMA_0_BASE 0x101090
#define VIDEO_PIXEL_BUFFER_DMA_0_IRQ -1
#define VIDEO_PIXEL_BUFFER_DMA_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define VIDEO_PIXEL_BUFFER_DMA_0_NAME "/dev/video_pixel_buffer_dma_0"
#define VIDEO_PIXEL_BUFFER_DMA_0_SPAN 16
#define VIDEO_PIXEL_BUFFER_DMA_0_TYPE "altera_up_avalon_video_pixel_buffer_dma"

#endif /* __SYSTEM_H_ */
