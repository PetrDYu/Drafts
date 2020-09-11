# qsys scripting (.tcl) file for NIOS_AUDIO
package require -exact qsys 16.0

create_system {NIOS_AUDIO}

set_project_property DEVICE_FAMILY {Cyclone V}
set_project_property DEVICE {5CSEMA5F31C6}
set_project_property HIDE_FROM_IP_CATALOG {false}

# Instances and instance parameters
# (disabled instances are intentionally culled)
add_instance audio_0 altera_up_avalon_audio 15.1
set_instance_parameter_value audio_0 {avalon_bus_type} {Memory Mapped}
set_instance_parameter_value audio_0 {audio_in} {1}
set_instance_parameter_value audio_0 {audio_out} {1}
set_instance_parameter_value audio_0 {dw} {32}

add_instance audio_and_video_config_0 altera_up_avalon_audio_and_video_config 15.1
set_instance_parameter_value audio_and_video_config_0 {device} {On-Board Peripherals}
set_instance_parameter_value audio_and_video_config_0 {board} {DE1-SoC}
set_instance_parameter_value audio_and_video_config_0 {eai} {1}
set_instance_parameter_value audio_and_video_config_0 {audio_in} {Line In to ADC}
set_instance_parameter_value audio_and_video_config_0 {dac_enable} {1}
set_instance_parameter_value audio_and_video_config_0 {mic_bypass} {0}
set_instance_parameter_value audio_and_video_config_0 {line_in_bypass} {0}
set_instance_parameter_value audio_and_video_config_0 {mic_attenuation} {-6dB}
set_instance_parameter_value audio_and_video_config_0 {data_format} {Left Justified}
set_instance_parameter_value audio_and_video_config_0 {bit_length} {32}
set_instance_parameter_value audio_and_video_config_0 {sampling_rate} {48 kHz}
set_instance_parameter_value audio_and_video_config_0 {video_format} {NTSC}
set_instance_parameter_value audio_and_video_config_0 {d5m_resolution} {2592 x 1944}
set_instance_parameter_value audio_and_video_config_0 {exposure} {0}

add_instance clk_0 clock_source 16.0
set_instance_parameter_value clk_0 {clockFrequency} {50000000.0}
set_instance_parameter_value clk_0 {clockFrequencyKnown} {1}
set_instance_parameter_value clk_0 {resetSynchronousEdges} {NONE}

add_instance jtag_uart_0 altera_avalon_jtag_uart 16.0
set_instance_parameter_value jtag_uart_0 {allowMultipleConnections} {0}
set_instance_parameter_value jtag_uart_0 {hubInstanceID} {0}
set_instance_parameter_value jtag_uart_0 {readBufferDepth} {64}
set_instance_parameter_value jtag_uart_0 {readIRQThreshold} {8}
set_instance_parameter_value jtag_uart_0 {simInputCharacterStream} {}
set_instance_parameter_value jtag_uart_0 {simInteractiveOptions} {NO_INTERACTIVE_WINDOWS}
set_instance_parameter_value jtag_uart_0 {useRegistersForReadBuffer} {0}
set_instance_parameter_value jtag_uart_0 {useRegistersForWriteBuffer} {0}
set_instance_parameter_value jtag_uart_0 {useRelativePathForSimFile} {0}
set_instance_parameter_value jtag_uart_0 {writeBufferDepth} {64}
set_instance_parameter_value jtag_uart_0 {writeIRQThreshold} {8}

add_instance nios2_gen2_0 altera_nios2_gen2 16.0
set_instance_parameter_value nios2_gen2_0 {tmr_enabled} {0}
set_instance_parameter_value nios2_gen2_0 {setting_disable_tmr_inj} {0}
set_instance_parameter_value nios2_gen2_0 {setting_showUnpublishedSettings} {0}
set_instance_parameter_value nios2_gen2_0 {setting_showInternalSettings} {0}
set_instance_parameter_value nios2_gen2_0 {setting_preciseIllegalMemAccessException} {0}
set_instance_parameter_value nios2_gen2_0 {setting_exportPCB} {0}
set_instance_parameter_value nios2_gen2_0 {setting_exportdebuginfo} {0}
set_instance_parameter_value nios2_gen2_0 {setting_clearXBitsLDNonBypass} {1}
set_instance_parameter_value nios2_gen2_0 {setting_bigEndian} {0}
set_instance_parameter_value nios2_gen2_0 {setting_export_large_RAMs} {0}
set_instance_parameter_value nios2_gen2_0 {setting_asic_enabled} {0}
set_instance_parameter_value nios2_gen2_0 {setting_asic_synopsys_translate_on_off} {0}
set_instance_parameter_value nios2_gen2_0 {setting_asic_third_party_synthesis} {0}
set_instance_parameter_value nios2_gen2_0 {setting_asic_add_scan_mode_input} {0}
set_instance_parameter_value nios2_gen2_0 {setting_oci_version} {1}
set_instance_parameter_value nios2_gen2_0 {setting_fast_register_read} {0}
set_instance_parameter_value nios2_gen2_0 {setting_exportHostDebugPort} {0}
set_instance_parameter_value nios2_gen2_0 {setting_oci_export_jtag_signals} {0}
set_instance_parameter_value nios2_gen2_0 {setting_avalonDebugPortPresent} {0}
set_instance_parameter_value nios2_gen2_0 {setting_alwaysEncrypt} {1}
set_instance_parameter_value nios2_gen2_0 {io_regionbase} {0}
set_instance_parameter_value nios2_gen2_0 {io_regionsize} {0}
set_instance_parameter_value nios2_gen2_0 {setting_support31bitdcachebypass} {1}
set_instance_parameter_value nios2_gen2_0 {setting_activateTrace} {0}
set_instance_parameter_value nios2_gen2_0 {setting_allow_break_inst} {0}
set_instance_parameter_value nios2_gen2_0 {setting_activateTestEndChecker} {0}
set_instance_parameter_value nios2_gen2_0 {setting_ecc_sim_test_ports} {0}
set_instance_parameter_value nios2_gen2_0 {setting_disableocitrace} {0}
set_instance_parameter_value nios2_gen2_0 {setting_activateMonitors} {1}
set_instance_parameter_value nios2_gen2_0 {setting_HDLSimCachesCleared} {1}
set_instance_parameter_value nios2_gen2_0 {setting_HBreakTest} {0}
set_instance_parameter_value nios2_gen2_0 {setting_breakslaveoveride} {0}
set_instance_parameter_value nios2_gen2_0 {mpu_useLimit} {0}
set_instance_parameter_value nios2_gen2_0 {mpu_enabled} {0}
set_instance_parameter_value nios2_gen2_0 {mmu_enabled} {0}
set_instance_parameter_value nios2_gen2_0 {mmu_autoAssignTlbPtrSz} {1}
set_instance_parameter_value nios2_gen2_0 {cpuReset} {0}
set_instance_parameter_value nios2_gen2_0 {resetrequest_enabled} {1}
set_instance_parameter_value nios2_gen2_0 {setting_removeRAMinit} {0}
set_instance_parameter_value nios2_gen2_0 {setting_tmr_output_disable} {0}
set_instance_parameter_value nios2_gen2_0 {setting_shadowRegisterSets} {0}
set_instance_parameter_value nios2_gen2_0 {mpu_numOfInstRegion} {8}
set_instance_parameter_value nios2_gen2_0 {mpu_numOfDataRegion} {8}
set_instance_parameter_value nios2_gen2_0 {mmu_TLBMissExcOffset} {0}
set_instance_parameter_value nios2_gen2_0 {resetOffset} {0}
set_instance_parameter_value nios2_gen2_0 {exceptionOffset} {32}
set_instance_parameter_value nios2_gen2_0 {cpuID} {0}
set_instance_parameter_value nios2_gen2_0 {breakOffset} {32}
set_instance_parameter_value nios2_gen2_0 {userDefinedSettings} {}
set_instance_parameter_value nios2_gen2_0 {tracefilename} {}
set_instance_parameter_value nios2_gen2_0 {resetSlave} {onchip_memory2_0.s1}
set_instance_parameter_value nios2_gen2_0 {mmu_TLBMissExcSlave} {None}
set_instance_parameter_value nios2_gen2_0 {exceptionSlave} {onchip_memory2_0.s1}
set_instance_parameter_value nios2_gen2_0 {breakSlave} {None}
set_instance_parameter_value nios2_gen2_0 {setting_interruptControllerType} {Internal}
set_instance_parameter_value nios2_gen2_0 {setting_branchpredictiontype} {Dynamic}
set_instance_parameter_value nios2_gen2_0 {setting_bhtPtrSz} {8}
set_instance_parameter_value nios2_gen2_0 {cpuArchRev} {1}
set_instance_parameter_value nios2_gen2_0 {mul_shift_choice} {0}
set_instance_parameter_value nios2_gen2_0 {mul_32_impl} {2}
set_instance_parameter_value nios2_gen2_0 {mul_64_impl} {0}
set_instance_parameter_value nios2_gen2_0 {shift_rot_impl} {1}
set_instance_parameter_value nios2_gen2_0 {dividerType} {no_div}
set_instance_parameter_value nios2_gen2_0 {mpu_minInstRegionSize} {12}
set_instance_parameter_value nios2_gen2_0 {mpu_minDataRegionSize} {12}
set_instance_parameter_value nios2_gen2_0 {mmu_uitlbNumEntries} {4}
set_instance_parameter_value nios2_gen2_0 {mmu_udtlbNumEntries} {6}
set_instance_parameter_value nios2_gen2_0 {mmu_tlbPtrSz} {7}
set_instance_parameter_value nios2_gen2_0 {mmu_tlbNumWays} {16}
set_instance_parameter_value nios2_gen2_0 {mmu_processIDNumBits} {8}
set_instance_parameter_value nios2_gen2_0 {impl} {Fast}
set_instance_parameter_value nios2_gen2_0 {icache_size} {4096}
set_instance_parameter_value nios2_gen2_0 {fa_cache_line} {2}
set_instance_parameter_value nios2_gen2_0 {fa_cache_linesize} {0}
set_instance_parameter_value nios2_gen2_0 {icache_tagramBlockType} {Automatic}
set_instance_parameter_value nios2_gen2_0 {icache_ramBlockType} {Automatic}
set_instance_parameter_value nios2_gen2_0 {icache_numTCIM} {0}
set_instance_parameter_value nios2_gen2_0 {icache_burstType} {None}
set_instance_parameter_value nios2_gen2_0 {dcache_bursts} {false}
set_instance_parameter_value nios2_gen2_0 {dcache_victim_buf_impl} {ram}
set_instance_parameter_value nios2_gen2_0 {dcache_size} {2048}
set_instance_parameter_value nios2_gen2_0 {dcache_tagramBlockType} {Automatic}
set_instance_parameter_value nios2_gen2_0 {dcache_ramBlockType} {Automatic}
set_instance_parameter_value nios2_gen2_0 {dcache_numTCDM} {0}
set_instance_parameter_value nios2_gen2_0 {setting_exportvectors} {0}
set_instance_parameter_value nios2_gen2_0 {setting_usedesignware} {0}
set_instance_parameter_value nios2_gen2_0 {setting_ecc_present} {0}
set_instance_parameter_value nios2_gen2_0 {setting_ic_ecc_present} {1}
set_instance_parameter_value nios2_gen2_0 {setting_rf_ecc_present} {1}
set_instance_parameter_value nios2_gen2_0 {setting_mmu_ecc_present} {1}
set_instance_parameter_value nios2_gen2_0 {setting_dc_ecc_present} {1}
set_instance_parameter_value nios2_gen2_0 {setting_itcm_ecc_present} {1}
set_instance_parameter_value nios2_gen2_0 {setting_dtcm_ecc_present} {1}
set_instance_parameter_value nios2_gen2_0 {regfile_ramBlockType} {Automatic}
set_instance_parameter_value nios2_gen2_0 {ocimem_ramBlockType} {Automatic}
set_instance_parameter_value nios2_gen2_0 {ocimem_ramInit} {0}
set_instance_parameter_value nios2_gen2_0 {mmu_ramBlockType} {Automatic}
set_instance_parameter_value nios2_gen2_0 {bht_ramBlockType} {Automatic}
set_instance_parameter_value nios2_gen2_0 {cdx_enabled} {0}
set_instance_parameter_value nios2_gen2_0 {mpx_enabled} {0}
set_instance_parameter_value nios2_gen2_0 {debug_enabled} {1}
set_instance_parameter_value nios2_gen2_0 {debug_triggerArming} {1}
set_instance_parameter_value nios2_gen2_0 {debug_debugReqSignals} {0}
set_instance_parameter_value nios2_gen2_0 {debug_assignJtagInstanceID} {0}
set_instance_parameter_value nios2_gen2_0 {debug_jtagInstanceID} {0}
set_instance_parameter_value nios2_gen2_0 {debug_OCIOnchipTrace} {_128}
set_instance_parameter_value nios2_gen2_0 {debug_hwbreakpoint} {0}
set_instance_parameter_value nios2_gen2_0 {debug_datatrigger} {0}
set_instance_parameter_value nios2_gen2_0 {debug_traceType} {none}
set_instance_parameter_value nios2_gen2_0 {debug_traceStorage} {onchip_trace}
set_instance_parameter_value nios2_gen2_0 {master_addr_map} {0}
set_instance_parameter_value nios2_gen2_0 {instruction_master_paddr_base} {0}
set_instance_parameter_value nios2_gen2_0 {instruction_master_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2_0 {flash_instruction_master_paddr_base} {0}
set_instance_parameter_value nios2_gen2_0 {flash_instruction_master_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2_0 {data_master_paddr_base} {0}
set_instance_parameter_value nios2_gen2_0 {data_master_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2_0 {tightly_coupled_instruction_master_0_paddr_base} {0}
set_instance_parameter_value nios2_gen2_0 {tightly_coupled_instruction_master_0_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2_0 {tightly_coupled_instruction_master_1_paddr_base} {0}
set_instance_parameter_value nios2_gen2_0 {tightly_coupled_instruction_master_1_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2_0 {tightly_coupled_instruction_master_2_paddr_base} {0}
set_instance_parameter_value nios2_gen2_0 {tightly_coupled_instruction_master_2_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2_0 {tightly_coupled_instruction_master_3_paddr_base} {0}
set_instance_parameter_value nios2_gen2_0 {tightly_coupled_instruction_master_3_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2_0 {tightly_coupled_data_master_0_paddr_base} {0}
set_instance_parameter_value nios2_gen2_0 {tightly_coupled_data_master_0_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2_0 {tightly_coupled_data_master_1_paddr_base} {0}
set_instance_parameter_value nios2_gen2_0 {tightly_coupled_data_master_1_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2_0 {tightly_coupled_data_master_2_paddr_base} {0}
set_instance_parameter_value nios2_gen2_0 {tightly_coupled_data_master_2_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2_0 {tightly_coupled_data_master_3_paddr_base} {0}
set_instance_parameter_value nios2_gen2_0 {tightly_coupled_data_master_3_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2_0 {instruction_master_high_performance_paddr_base} {0}
set_instance_parameter_value nios2_gen2_0 {instruction_master_high_performance_paddr_size} {0.0}
set_instance_parameter_value nios2_gen2_0 {data_master_high_performance_paddr_base} {0}
set_instance_parameter_value nios2_gen2_0 {data_master_high_performance_paddr_size} {0.0}

add_instance onchip_memory2_0 altera_avalon_onchip_memory2 16.0
set_instance_parameter_value onchip_memory2_0 {allowInSystemMemoryContentEditor} {0}
set_instance_parameter_value onchip_memory2_0 {blockType} {AUTO}
set_instance_parameter_value onchip_memory2_0 {dataWidth} {32}
set_instance_parameter_value onchip_memory2_0 {dataWidth2} {32}
set_instance_parameter_value onchip_memory2_0 {dualPort} {0}
set_instance_parameter_value onchip_memory2_0 {enableDiffWidth} {0}
set_instance_parameter_value onchip_memory2_0 {initMemContent} {1}
set_instance_parameter_value onchip_memory2_0 {initializationFileName} {onchip_mem.hex}
set_instance_parameter_value onchip_memory2_0 {instanceID} {NONE}
set_instance_parameter_value onchip_memory2_0 {memorySize} {32768.0}
set_instance_parameter_value onchip_memory2_0 {readDuringWriteMode} {DONT_CARE}
set_instance_parameter_value onchip_memory2_0 {simAllowMRAMContentsFile} {0}
set_instance_parameter_value onchip_memory2_0 {simMemInitOnlyFilename} {0}
set_instance_parameter_value onchip_memory2_0 {singleClockOperation} {0}
set_instance_parameter_value onchip_memory2_0 {slave1Latency} {1}
set_instance_parameter_value onchip_memory2_0 {slave2Latency} {1}
set_instance_parameter_value onchip_memory2_0 {useNonDefaultInitFile} {0}
set_instance_parameter_value onchip_memory2_0 {copyInitFile} {0}
set_instance_parameter_value onchip_memory2_0 {useShallowMemBlocks} {0}
set_instance_parameter_value onchip_memory2_0 {writable} {1}
set_instance_parameter_value onchip_memory2_0 {ecc_enabled} {0}
set_instance_parameter_value onchip_memory2_0 {resetrequest_enabled} {1}

add_instance sysid_qsys_0 altera_avalon_sysid_qsys 16.0
set_instance_parameter_value sysid_qsys_0 {id} {65793}

add_instance timer_0 altera_avalon_timer 16.0
set_instance_parameter_value timer_0 {alwaysRun} {0}
set_instance_parameter_value timer_0 {counterSize} {32}
set_instance_parameter_value timer_0 {fixedPeriod} {0}
set_instance_parameter_value timer_0 {period} {1}
set_instance_parameter_value timer_0 {periodUnits} {USEC}
set_instance_parameter_value timer_0 {resetOutput} {0}
set_instance_parameter_value timer_0 {snapshot} {1}
set_instance_parameter_value timer_0 {timeoutPulseOutput} {0}
set_instance_parameter_value timer_0 {watchdogPulse} {2}

# exported interfaces
add_interface audio conduit end
set_interface_property audio EXPORT_OF audio_0.external_interface
add_interface audio_config conduit end
set_interface_property audio_config EXPORT_OF audio_and_video_config_0.external_interface
add_interface clk clock sink
set_interface_property clk EXPORT_OF clk_0.clk_in
add_interface reset reset sink
set_interface_property reset EXPORT_OF clk_0.clk_in_reset

# connections and connection parameters
add_connection nios2_gen2_0.data_master audio_0.avalon_audio_slave
set_connection_parameter_value nios2_gen2_0.data_master/audio_0.avalon_audio_slave arbitrationPriority {1}
set_connection_parameter_value nios2_gen2_0.data_master/audio_0.avalon_audio_slave baseAddress {0x00011030}
set_connection_parameter_value nios2_gen2_0.data_master/audio_0.avalon_audio_slave defaultConnection {0}

add_connection nios2_gen2_0.data_master audio_and_video_config_0.avalon_av_config_slave
set_connection_parameter_value nios2_gen2_0.data_master/audio_and_video_config_0.avalon_av_config_slave arbitrationPriority {1}
set_connection_parameter_value nios2_gen2_0.data_master/audio_and_video_config_0.avalon_av_config_slave baseAddress {0x00011020}
set_connection_parameter_value nios2_gen2_0.data_master/audio_and_video_config_0.avalon_av_config_slave defaultConnection {0}

add_connection nios2_gen2_0.data_master jtag_uart_0.avalon_jtag_slave
set_connection_parameter_value nios2_gen2_0.data_master/jtag_uart_0.avalon_jtag_slave arbitrationPriority {1}
set_connection_parameter_value nios2_gen2_0.data_master/jtag_uart_0.avalon_jtag_slave baseAddress {0x00011048}
set_connection_parameter_value nios2_gen2_0.data_master/jtag_uart_0.avalon_jtag_slave defaultConnection {0}

add_connection nios2_gen2_0.data_master sysid_qsys_0.control_slave
set_connection_parameter_value nios2_gen2_0.data_master/sysid_qsys_0.control_slave arbitrationPriority {1}
set_connection_parameter_value nios2_gen2_0.data_master/sysid_qsys_0.control_slave baseAddress {0x00011040}
set_connection_parameter_value nios2_gen2_0.data_master/sysid_qsys_0.control_slave defaultConnection {0}

add_connection nios2_gen2_0.data_master nios2_gen2_0.debug_mem_slave
set_connection_parameter_value nios2_gen2_0.data_master/nios2_gen2_0.debug_mem_slave arbitrationPriority {1}
set_connection_parameter_value nios2_gen2_0.data_master/nios2_gen2_0.debug_mem_slave baseAddress {0x00010800}
set_connection_parameter_value nios2_gen2_0.data_master/nios2_gen2_0.debug_mem_slave defaultConnection {0}

add_connection nios2_gen2_0.data_master onchip_memory2_0.s1
set_connection_parameter_value nios2_gen2_0.data_master/onchip_memory2_0.s1 arbitrationPriority {1}
set_connection_parameter_value nios2_gen2_0.data_master/onchip_memory2_0.s1 baseAddress {0x8000}
set_connection_parameter_value nios2_gen2_0.data_master/onchip_memory2_0.s1 defaultConnection {0}

add_connection nios2_gen2_0.data_master timer_0.s1
set_connection_parameter_value nios2_gen2_0.data_master/timer_0.s1 arbitrationPriority {1}
set_connection_parameter_value nios2_gen2_0.data_master/timer_0.s1 baseAddress {0x00011000}
set_connection_parameter_value nios2_gen2_0.data_master/timer_0.s1 defaultConnection {0}

add_connection nios2_gen2_0.instruction_master nios2_gen2_0.debug_mem_slave
set_connection_parameter_value nios2_gen2_0.instruction_master/nios2_gen2_0.debug_mem_slave arbitrationPriority {1}
set_connection_parameter_value nios2_gen2_0.instruction_master/nios2_gen2_0.debug_mem_slave baseAddress {0x00010800}
set_connection_parameter_value nios2_gen2_0.instruction_master/nios2_gen2_0.debug_mem_slave defaultConnection {0}

add_connection nios2_gen2_0.instruction_master onchip_memory2_0.s1
set_connection_parameter_value nios2_gen2_0.instruction_master/onchip_memory2_0.s1 arbitrationPriority {1}
set_connection_parameter_value nios2_gen2_0.instruction_master/onchip_memory2_0.s1 baseAddress {0x8000}
set_connection_parameter_value nios2_gen2_0.instruction_master/onchip_memory2_0.s1 defaultConnection {0}

add_connection clk_0.clk nios2_gen2_0.clk

add_connection clk_0.clk audio_0.clk

add_connection clk_0.clk jtag_uart_0.clk

add_connection clk_0.clk sysid_qsys_0.clk

add_connection clk_0.clk timer_0.clk

add_connection clk_0.clk audio_and_video_config_0.clk

add_connection clk_0.clk onchip_memory2_0.clk1

add_connection nios2_gen2_0.irq audio_0.interrupt
set_connection_parameter_value nios2_gen2_0.irq/audio_0.interrupt irqNumber {0}

add_connection nios2_gen2_0.irq jtag_uart_0.irq
set_connection_parameter_value nios2_gen2_0.irq/jtag_uart_0.irq irqNumber {1}

add_connection nios2_gen2_0.irq timer_0.irq
set_connection_parameter_value nios2_gen2_0.irq/timer_0.irq irqNumber {2}

add_connection clk_0.clk_reset nios2_gen2_0.reset

add_connection clk_0.clk_reset audio_0.reset

add_connection clk_0.clk_reset jtag_uart_0.reset

add_connection clk_0.clk_reset sysid_qsys_0.reset

add_connection clk_0.clk_reset timer_0.reset

add_connection clk_0.clk_reset audio_and_video_config_0.reset

add_connection clk_0.clk_reset onchip_memory2_0.reset1

# interconnect requirements
set_interconnect_requirement {$system} {qsys_mm.clockCrossingAdapter} {HANDSHAKE}
set_interconnect_requirement {$system} {qsys_mm.maxAdditionalLatency} {1}
set_interconnect_requirement {$system} {qsys_mm.enableEccProtection} {FALSE}
set_interconnect_requirement {$system} {qsys_mm.insertDefaultSlave} {FALSE}

save_system {NIOS_AUDIO.qsys}
