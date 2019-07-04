# This script segment is generated automatically by AutoPilot

set id 64
set name solution_mac_mulaqcK
set corename simcore_mac
set op mac
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 16
set in0_signed 1
set in1_width 10
set in1_signed 0
set in2_width 31
set in2_signed 0
set out_width 33
set exp i0*i1+i2
set arg_lists {i0 {16 1 +} i1 {10 0 +} m {25 1 +} i2 {31 0 +} p {33 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 65
set name solution_mul_mul_rcU
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 18
set in0_signed 0
set in1_width 16
set in1_signed 1
set out_width 34
set exp i0*i1
set arg_lists {i0 {18 0 +} i1 {16 1 +} p {34 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 66
set name solution_mac_mulasc4
set corename simcore_mac
set op mac
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 10
set in0_signed 0
set in1_width 16
set in1_signed 1
set in2_width 15
set in2_signed 1
set out_width 25
set exp i0*i1+i2
set arg_lists {i0 {10 0 +} i1 {16 1 +} m {25 1 +} i2 {15 1 +} p {25 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 71
set hasByteEnable 0
set MemName parallel_v2_twistmb6
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 16
set AddrRange 18
set AddrWd 5
set impl_style block
set TrueReset 0
set IsROM 0
set ROMData { }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.322
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 72
set hasByteEnable 0
set MemName parallel_v2_label_0
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 3
set AddrRange 18
set AddrWd 5
set TrueReset 0
set IsROM 1
set ROMData { "000" "000" "000" "001" "001" "001" "010" "010" "010" "011" "011" "011" "100" "100" "100" "101" "101" "101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 73
set hasByteEnable 0
set MemName parallel_v2_label_1
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 2
set AddrRange 18
set AddrWd 5
set TrueReset 0
set IsROM 1
set ROMData { "01" "10" "11" "01" "10" "11" "01" "10" "11" "01" "10" "11" "01" "10" "11" "01" "10" "11" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 74
set hasByteEnable 0
set MemName parallel_v2_searcpcA
set CoreName ap_simcore_mem
set PortList { 2 1 }
set DataWd 8
set AddrRange 31
set AddrWd 5
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.322
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 75 \
    name P1Buffer_0_flip \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P1Buffer_0_flip \
    op interface \
    ports { P1Buffer_0_flip_address0 { O 13 vector } P1Buffer_0_flip_ce0 { O 1 bit } P1Buffer_0_flip_we0 { O 1 bit } P1Buffer_0_flip_d0 { O 16 vector } P1Buffer_0_flip_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P1Buffer_0_flip'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 76 \
    name P1Buffer_0_twist \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P1Buffer_0_twist \
    op interface \
    ports { P1Buffer_0_twist_address0 { O 13 vector } P1Buffer_0_twist_ce0 { O 1 bit } P1Buffer_0_twist_we0 { O 1 bit } P1Buffer_0_twist_d0 { O 16 vector } P1Buffer_0_twist_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P1Buffer_0_twist'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 77 \
    name P1Buffer_0_slice \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P1Buffer_0_slice \
    op interface \
    ports { P1Buffer_0_slice_address0 { O 13 vector } P1Buffer_0_slice_ce0 { O 1 bit } P1Buffer_0_slice_we0 { O 1 bit } P1Buffer_0_slice_d0 { O 16 vector } P1Buffer_0_slice_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P1Buffer_0_slice'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 78 \
    name P1Buffer_0_depthPha \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P1Buffer_0_depthPha \
    op interface \
    ports { P1Buffer_0_depthPha_address0 { O 13 vector } P1Buffer_0_depthPha_ce0 { O 1 bit } P1Buffer_0_depthPha_we0 { O 1 bit } P1Buffer_0_depthPha_d0 { O 8 vector } P1Buffer_0_depthPha_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P1Buffer_0_depthPha'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 79 \
    name P1Buffer_0_n \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P1Buffer_0_n \
    op interface \
    ports { P1Buffer_0_n_address0 { O 13 vector } P1Buffer_0_n_ce0 { O 1 bit } P1Buffer_0_n_we0 { O 1 bit } P1Buffer_0_n_d0 { O 8 vector } P1Buffer_0_n_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P1Buffer_0_n'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 80 \
    name P1Buffer_0_i \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P1Buffer_0_i \
    op interface \
    ports { P1Buffer_0_i_address0 { O 18 vector } P1Buffer_0_i_ce0 { O 1 bit } P1Buffer_0_i_we0 { O 1 bit } P1Buffer_0_i_d0 { O 8 vector } P1Buffer_0_i_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P1Buffer_0_i'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name P1Start_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P1Start_read \
    op interface \
    ports { P1Start_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name P1End_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P1End_read \
    op interface \
    ports { P1End_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name first_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_first_read \
    op interface \
    ports { first_read { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name depthPhase1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_depthPhase1 \
    op interface \
    ports { depthPhase1 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name twistMove2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_twistMove2 \
    op interface \
    ports { m_axi_twistMove2_AWVALID { O 1 bit } m_axi_twistMove2_AWREADY { I 1 bit } m_axi_twistMove2_AWADDR { O 32 vector } m_axi_twistMove2_AWID { O 1 vector } m_axi_twistMove2_AWLEN { O 32 vector } m_axi_twistMove2_AWSIZE { O 3 vector } m_axi_twistMove2_AWBURST { O 2 vector } m_axi_twistMove2_AWLOCK { O 2 vector } m_axi_twistMove2_AWCACHE { O 4 vector } m_axi_twistMove2_AWPROT { O 3 vector } m_axi_twistMove2_AWQOS { O 4 vector } m_axi_twistMove2_AWREGION { O 4 vector } m_axi_twistMove2_AWUSER { O 1 vector } m_axi_twistMove2_WVALID { O 1 bit } m_axi_twistMove2_WREADY { I 1 bit } m_axi_twistMove2_WDATA { O 16 vector } m_axi_twistMove2_WSTRB { O 2 vector } m_axi_twistMove2_WLAST { O 1 bit } m_axi_twistMove2_WID { O 1 vector } m_axi_twistMove2_WUSER { O 1 vector } m_axi_twistMove2_ARVALID { O 1 bit } m_axi_twistMove2_ARREADY { I 1 bit } m_axi_twistMove2_ARADDR { O 32 vector } m_axi_twistMove2_ARID { O 1 vector } m_axi_twistMove2_ARLEN { O 32 vector } m_axi_twistMove2_ARSIZE { O 3 vector } m_axi_twistMove2_ARBURST { O 2 vector } m_axi_twistMove2_ARLOCK { O 2 vector } m_axi_twistMove2_ARCACHE { O 4 vector } m_axi_twistMove2_ARPROT { O 3 vector } m_axi_twistMove2_ARQOS { O 4 vector } m_axi_twistMove2_ARREGION { O 4 vector } m_axi_twistMove2_ARUSER { O 1 vector } m_axi_twistMove2_RVALID { I 1 bit } m_axi_twistMove2_RREADY { O 1 bit } m_axi_twistMove2_RDATA { I 16 vector } m_axi_twistMove2_RLAST { I 1 bit } m_axi_twistMove2_RID { I 1 vector } m_axi_twistMove2_RUSER { I 1 vector } m_axi_twistMove2_RRESP { I 2 vector } m_axi_twistMove2_BVALID { I 1 bit } m_axi_twistMove2_BREADY { O 1 bit } m_axi_twistMove2_BRESP { I 2 vector } m_axi_twistMove2_BID { I 1 vector } m_axi_twistMove2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name twistMove2_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_twistMove2_offset \
    op interface \
    ports { twistMove2_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name flipMove2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_flipMove2 \
    op interface \
    ports { m_axi_flipMove2_AWVALID { O 1 bit } m_axi_flipMove2_AWREADY { I 1 bit } m_axi_flipMove2_AWADDR { O 32 vector } m_axi_flipMove2_AWID { O 1 vector } m_axi_flipMove2_AWLEN { O 32 vector } m_axi_flipMove2_AWSIZE { O 3 vector } m_axi_flipMove2_AWBURST { O 2 vector } m_axi_flipMove2_AWLOCK { O 2 vector } m_axi_flipMove2_AWCACHE { O 4 vector } m_axi_flipMove2_AWPROT { O 3 vector } m_axi_flipMove2_AWQOS { O 4 vector } m_axi_flipMove2_AWREGION { O 4 vector } m_axi_flipMove2_AWUSER { O 1 vector } m_axi_flipMove2_WVALID { O 1 bit } m_axi_flipMove2_WREADY { I 1 bit } m_axi_flipMove2_WDATA { O 16 vector } m_axi_flipMove2_WSTRB { O 2 vector } m_axi_flipMove2_WLAST { O 1 bit } m_axi_flipMove2_WID { O 1 vector } m_axi_flipMove2_WUSER { O 1 vector } m_axi_flipMove2_ARVALID { O 1 bit } m_axi_flipMove2_ARREADY { I 1 bit } m_axi_flipMove2_ARADDR { O 32 vector } m_axi_flipMove2_ARID { O 1 vector } m_axi_flipMove2_ARLEN { O 32 vector } m_axi_flipMove2_ARSIZE { O 3 vector } m_axi_flipMove2_ARBURST { O 2 vector } m_axi_flipMove2_ARLOCK { O 2 vector } m_axi_flipMove2_ARCACHE { O 4 vector } m_axi_flipMove2_ARPROT { O 3 vector } m_axi_flipMove2_ARQOS { O 4 vector } m_axi_flipMove2_ARREGION { O 4 vector } m_axi_flipMove2_ARUSER { O 1 vector } m_axi_flipMove2_RVALID { I 1 bit } m_axi_flipMove2_RREADY { O 1 bit } m_axi_flipMove2_RDATA { I 16 vector } m_axi_flipMove2_RLAST { I 1 bit } m_axi_flipMove2_RID { I 1 vector } m_axi_flipMove2_RUSER { I 1 vector } m_axi_flipMove2_RRESP { I 2 vector } m_axi_flipMove2_BVALID { I 1 bit } m_axi_flipMove2_BREADY { O 1 bit } m_axi_flipMove2_BRESP { I 2 vector } m_axi_flipMove2_BID { I 1 vector } m_axi_flipMove2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name flipMove2_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_flipMove2_offset \
    op interface \
    ports { flipMove2_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name FRtoBR_Move2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_FRtoBR_Move2 \
    op interface \
    ports { m_axi_FRtoBR_Move2_AWVALID { O 1 bit } m_axi_FRtoBR_Move2_AWREADY { I 1 bit } m_axi_FRtoBR_Move2_AWADDR { O 32 vector } m_axi_FRtoBR_Move2_AWID { O 1 vector } m_axi_FRtoBR_Move2_AWLEN { O 32 vector } m_axi_FRtoBR_Move2_AWSIZE { O 3 vector } m_axi_FRtoBR_Move2_AWBURST { O 2 vector } m_axi_FRtoBR_Move2_AWLOCK { O 2 vector } m_axi_FRtoBR_Move2_AWCACHE { O 4 vector } m_axi_FRtoBR_Move2_AWPROT { O 3 vector } m_axi_FRtoBR_Move2_AWQOS { O 4 vector } m_axi_FRtoBR_Move2_AWREGION { O 4 vector } m_axi_FRtoBR_Move2_AWUSER { O 1 vector } m_axi_FRtoBR_Move2_WVALID { O 1 bit } m_axi_FRtoBR_Move2_WREADY { I 1 bit } m_axi_FRtoBR_Move2_WDATA { O 16 vector } m_axi_FRtoBR_Move2_WSTRB { O 2 vector } m_axi_FRtoBR_Move2_WLAST { O 1 bit } m_axi_FRtoBR_Move2_WID { O 1 vector } m_axi_FRtoBR_Move2_WUSER { O 1 vector } m_axi_FRtoBR_Move2_ARVALID { O 1 bit } m_axi_FRtoBR_Move2_ARREADY { I 1 bit } m_axi_FRtoBR_Move2_ARADDR { O 32 vector } m_axi_FRtoBR_Move2_ARID { O 1 vector } m_axi_FRtoBR_Move2_ARLEN { O 32 vector } m_axi_FRtoBR_Move2_ARSIZE { O 3 vector } m_axi_FRtoBR_Move2_ARBURST { O 2 vector } m_axi_FRtoBR_Move2_ARLOCK { O 2 vector } m_axi_FRtoBR_Move2_ARCACHE { O 4 vector } m_axi_FRtoBR_Move2_ARPROT { O 3 vector } m_axi_FRtoBR_Move2_ARQOS { O 4 vector } m_axi_FRtoBR_Move2_ARREGION { O 4 vector } m_axi_FRtoBR_Move2_ARUSER { O 1 vector } m_axi_FRtoBR_Move2_RVALID { I 1 bit } m_axi_FRtoBR_Move2_RREADY { O 1 bit } m_axi_FRtoBR_Move2_RDATA { I 16 vector } m_axi_FRtoBR_Move2_RLAST { I 1 bit } m_axi_FRtoBR_Move2_RID { I 1 vector } m_axi_FRtoBR_Move2_RUSER { I 1 vector } m_axi_FRtoBR_Move2_RRESP { I 2 vector } m_axi_FRtoBR_Move2_BVALID { I 1 bit } m_axi_FRtoBR_Move2_BREADY { O 1 bit } m_axi_FRtoBR_Move2_BRESP { I 2 vector } m_axi_FRtoBR_Move2_BID { I 1 vector } m_axi_FRtoBR_Move2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name FRtoBR_Move2_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_FRtoBR_Move2_offset \
    op interface \
    ports { FRtoBR_Move2_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name Slice_Twist_Prun2_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Slice_Twist_Prun2_offset \
    op interface \
    ports { Slice_Twist_Prun2_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name Slice_Flip_Prun2_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Slice_Flip_Prun2_offset \
    op interface \
    ports { Slice_Flip_Prun2_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name P2Buffer_V_flip \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_flip \
    op interface \
    ports { P2Buffer_V_flip_din { O 16 vector } P2Buffer_V_flip_full_n { I 1 bit } P2Buffer_V_flip_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name P2Buffer_V_twist \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_twist \
    op interface \
    ports { P2Buffer_V_twist_din { O 16 vector } P2Buffer_V_twist_full_n { I 1 bit } P2Buffer_V_twist_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name P2Buffer_V_slice \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_slice \
    op interface \
    ports { P2Buffer_V_slice_din { O 16 vector } P2Buffer_V_slice_full_n { I 1 bit } P2Buffer_V_slice_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name P2Buffer_V_parity \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_parity \
    op interface \
    ports { P2Buffer_V_parity_din { O 1 vector } P2Buffer_V_parity_full_n { I 1 bit } P2Buffer_V_parity_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name P2Buffer_V_URFtoDLF \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_URFtoDLF \
    op interface \
    ports { P2Buffer_V_URFtoDLF_din { O 16 vector } P2Buffer_V_URFtoDLF_full_n { I 1 bit } P2Buffer_V_URFtoDLF_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name P2Buffer_V_FRtoBR \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_FRtoBR \
    op interface \
    ports { P2Buffer_V_FRtoBR_din { O 16 vector } P2Buffer_V_FRtoBR_full_n { I 1 bit } P2Buffer_V_FRtoBR_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name P2Buffer_V_URtoDF \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_URtoDF \
    op interface \
    ports { P2Buffer_V_URtoDF_din { O 16 vector } P2Buffer_V_URtoDF_full_n { I 1 bit } P2Buffer_V_URtoDF_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name P2Buffer_V_depthPhas \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_depthPhas \
    op interface \
    ports { P2Buffer_V_depthPhas_din { O 8 vector } P2Buffer_V_depthPhas_full_n { I 1 bit } P2Buffer_V_depthPhas_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name P2Buffer_V_n \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_n \
    op interface \
    ports { P2Buffer_V_n_din { O 8 vector } P2Buffer_V_n_full_n { I 1 bit } P2Buffer_V_n_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name P2Buffer_V_i_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_0 \
    op interface \
    ports { P2Buffer_V_i_0_din { O 8 vector } P2Buffer_V_i_0_full_n { I 1 bit } P2Buffer_V_i_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name P2Buffer_V_i_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_1 \
    op interface \
    ports { P2Buffer_V_i_1_din { O 8 vector } P2Buffer_V_i_1_full_n { I 1 bit } P2Buffer_V_i_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name P2Buffer_V_i_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_2 \
    op interface \
    ports { P2Buffer_V_i_2_din { O 8 vector } P2Buffer_V_i_2_full_n { I 1 bit } P2Buffer_V_i_2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name P2Buffer_V_i_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_3 \
    op interface \
    ports { P2Buffer_V_i_3_din { O 8 vector } P2Buffer_V_i_3_full_n { I 1 bit } P2Buffer_V_i_3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name P2Buffer_V_i_4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_4 \
    op interface \
    ports { P2Buffer_V_i_4_din { O 8 vector } P2Buffer_V_i_4_full_n { I 1 bit } P2Buffer_V_i_4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name P2Buffer_V_i_5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_5 \
    op interface \
    ports { P2Buffer_V_i_5_din { O 8 vector } P2Buffer_V_i_5_full_n { I 1 bit } P2Buffer_V_i_5_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name P2Buffer_V_i_6 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_6 \
    op interface \
    ports { P2Buffer_V_i_6_din { O 8 vector } P2Buffer_V_i_6_full_n { I 1 bit } P2Buffer_V_i_6_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name P2Buffer_V_i_7 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_7 \
    op interface \
    ports { P2Buffer_V_i_7_din { O 8 vector } P2Buffer_V_i_7_full_n { I 1 bit } P2Buffer_V_i_7_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name P2Buffer_V_i_8 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_8 \
    op interface \
    ports { P2Buffer_V_i_8_din { O 8 vector } P2Buffer_V_i_8_full_n { I 1 bit } P2Buffer_V_i_8_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name P2Buffer_V_i_9 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_9 \
    op interface \
    ports { P2Buffer_V_i_9_din { O 8 vector } P2Buffer_V_i_9_full_n { I 1 bit } P2Buffer_V_i_9_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name P2Buffer_V_i_10 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_10 \
    op interface \
    ports { P2Buffer_V_i_10_din { O 8 vector } P2Buffer_V_i_10_full_n { I 1 bit } P2Buffer_V_i_10_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name P2Buffer_V_i_11 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_11 \
    op interface \
    ports { P2Buffer_V_i_11_din { O 8 vector } P2Buffer_V_i_11_full_n { I 1 bit } P2Buffer_V_i_11_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name P2Buffer_V_i_12 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_12 \
    op interface \
    ports { P2Buffer_V_i_12_din { O 8 vector } P2Buffer_V_i_12_full_n { I 1 bit } P2Buffer_V_i_12_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name P2Buffer_V_i_13 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_13 \
    op interface \
    ports { P2Buffer_V_i_13_din { O 8 vector } P2Buffer_V_i_13_full_n { I 1 bit } P2Buffer_V_i_13_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name P2Buffer_V_i_14 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_14 \
    op interface \
    ports { P2Buffer_V_i_14_din { O 8 vector } P2Buffer_V_i_14_full_n { I 1 bit } P2Buffer_V_i_14_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name P2Buffer_V_i_15 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_15 \
    op interface \
    ports { P2Buffer_V_i_15_din { O 8 vector } P2Buffer_V_i_15_full_n { I 1 bit } P2Buffer_V_i_15_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name P2Buffer_V_i_16 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_16 \
    op interface \
    ports { P2Buffer_V_i_16_din { O 8 vector } P2Buffer_V_i_16_full_n { I 1 bit } P2Buffer_V_i_16_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name P2Buffer_V_i_17 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_17 \
    op interface \
    ports { P2Buffer_V_i_17_din { O 8 vector } P2Buffer_V_i_17_full_n { I 1 bit } P2Buffer_V_i_17_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name P2Buffer_V_i_18 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_18 \
    op interface \
    ports { P2Buffer_V_i_18_din { O 8 vector } P2Buffer_V_i_18_full_n { I 1 bit } P2Buffer_V_i_18_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name P2Buffer_V_i_19 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_19 \
    op interface \
    ports { P2Buffer_V_i_19_din { O 8 vector } P2Buffer_V_i_19_full_n { I 1 bit } P2Buffer_V_i_19_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name P2Buffer_V_i_20 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_20 \
    op interface \
    ports { P2Buffer_V_i_20_din { O 8 vector } P2Buffer_V_i_20_full_n { I 1 bit } P2Buffer_V_i_20_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name P2Buffer_V_i_21 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_21 \
    op interface \
    ports { P2Buffer_V_i_21_din { O 8 vector } P2Buffer_V_i_21_full_n { I 1 bit } P2Buffer_V_i_21_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name P2Buffer_V_i_22 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_22 \
    op interface \
    ports { P2Buffer_V_i_22_din { O 8 vector } P2Buffer_V_i_22_full_n { I 1 bit } P2Buffer_V_i_22_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name P2Buffer_V_i_23 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_23 \
    op interface \
    ports { P2Buffer_V_i_23_din { O 8 vector } P2Buffer_V_i_23_full_n { I 1 bit } P2Buffer_V_i_23_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name P2Buffer_V_i_24 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_24 \
    op interface \
    ports { P2Buffer_V_i_24_din { O 8 vector } P2Buffer_V_i_24_full_n { I 1 bit } P2Buffer_V_i_24_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name P2Buffer_V_i_25 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_25 \
    op interface \
    ports { P2Buffer_V_i_25_din { O 8 vector } P2Buffer_V_i_25_full_n { I 1 bit } P2Buffer_V_i_25_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name P2Buffer_V_i_26 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_26 \
    op interface \
    ports { P2Buffer_V_i_26_din { O 8 vector } P2Buffer_V_i_26_full_n { I 1 bit } P2Buffer_V_i_26_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name P2Buffer_V_i_27 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_27 \
    op interface \
    ports { P2Buffer_V_i_27_din { O 8 vector } P2Buffer_V_i_27_full_n { I 1 bit } P2Buffer_V_i_27_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name P2Buffer_V_i_28 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_28 \
    op interface \
    ports { P2Buffer_V_i_28_din { O 8 vector } P2Buffer_V_i_28_full_n { I 1 bit } P2Buffer_V_i_28_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name P2Buffer_V_i_29 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_29 \
    op interface \
    ports { P2Buffer_V_i_29_din { O 8 vector } P2Buffer_V_i_29_full_n { I 1 bit } P2Buffer_V_i_29_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name P2Buffer_V_i_30 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_30 \
    op interface \
    ports { P2Buffer_V_i_30_din { O 8 vector } P2Buffer_V_i_30_full_n { I 1 bit } P2Buffer_V_i_30_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 32 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


