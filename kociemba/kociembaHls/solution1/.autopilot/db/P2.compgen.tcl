# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 139
set hasByteEnable 0
set MemName P2_label3_0
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 3
set AddrRange 10
set AddrWd 4
set TrueReset 0
set IsROM 1
set ROMData { "000" "000" "000" "001" "010" "011" "011" "011" "100" "101" }
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
set ID 140
set hasByteEnable 0
set MemName P2_label3_1
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 2
set AddrRange 10
set AddrWd 4
set TrueReset 0
set IsROM 1
set ROMData { "01" "10" "11" "10" "10" "01" "10" "11" "10" "10" }
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
set ID 141
set hasByteEnable 0
set MemName P2_parityMove
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 1
set AddrRange 36
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1" "0" "1" "1" "0" "1" "1" "0" "1" "1" "0" "1" "1" "0" "1" "1" "0" "1" "0" "1" "0" "0" "1" "0" "0" "1" "0" "0" "1" "0" "0" "1" "0" "0" "1" "0" }
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
    id 142 \
    name P3Buffer_0_parity \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P3Buffer_0_parity \
    op interface \
    ports { P3Buffer_0_parity_address0 { O 10 vector } P3Buffer_0_parity_ce0 { O 1 bit } P3Buffer_0_parity_we0 { O 1 bit } P3Buffer_0_parity_d0 { O 1 vector } P3Buffer_0_parity_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P3Buffer_0_parity'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name P3Buffer_0_URFtoDLF \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P3Buffer_0_URFtoDLF \
    op interface \
    ports { P3Buffer_0_URFtoDLF_address0 { O 10 vector } P3Buffer_0_URFtoDLF_ce0 { O 1 bit } P3Buffer_0_URFtoDLF_we0 { O 1 bit } P3Buffer_0_URFtoDLF_d0 { O 16 vector } P3Buffer_0_URFtoDLF_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P3Buffer_0_URFtoDLF'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name P3Buffer_0_FRtoBR \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P3Buffer_0_FRtoBR \
    op interface \
    ports { P3Buffer_0_FRtoBR_address0 { O 10 vector } P3Buffer_0_FRtoBR_ce0 { O 1 bit } P3Buffer_0_FRtoBR_we0 { O 1 bit } P3Buffer_0_FRtoBR_d0 { O 16 vector } P3Buffer_0_FRtoBR_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P3Buffer_0_FRtoBR'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name P3Buffer_0_URtoDF \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P3Buffer_0_URtoDF \
    op interface \
    ports { P3Buffer_0_URtoDF_address0 { O 10 vector } P3Buffer_0_URtoDF_ce0 { O 1 bit } P3Buffer_0_URtoDF_we0 { O 1 bit } P3Buffer_0_URtoDF_d0 { O 16 vector } P3Buffer_0_URtoDF_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P3Buffer_0_URtoDF'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 146 \
    name P3Buffer_0_n \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P3Buffer_0_n \
    op interface \
    ports { P3Buffer_0_n_address0 { O 10 vector } P3Buffer_0_n_ce0 { O 1 bit } P3Buffer_0_n_we0 { O 1 bit } P3Buffer_0_n_d0 { O 8 vector } P3Buffer_0_n_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P3Buffer_0_n'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name P3Buffer_0_i \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P3Buffer_0_i \
    op interface \
    ports { P3Buffer_0_i_address0 { O 15 vector } P3Buffer_0_i_ce0 { O 1 bit } P3Buffer_0_i_we0 { O 1 bit } P3Buffer_0_i_d0 { O 8 vector } P3Buffer_0_i_q0 { I 8 vector } P3Buffer_0_i_address1 { O 15 vector } P3Buffer_0_i_ce1 { O 1 bit } P3Buffer_0_i_we1 { O 1 bit } P3Buffer_0_i_d1 { O 8 vector } P3Buffer_0_i_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P3Buffer_0_i'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 161 \
    name search_sol_i \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename search_sol_i \
    op interface \
    ports { search_sol_i_address0 { O 5 vector } search_sol_i_ce0 { O 1 bit } search_sol_i_we0 { O 1 bit } search_sol_i_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'search_sol_i'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name P3Start_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P3Start_read \
    op interface \
    ports { P3Start_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name P3End_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P3End_read \
    op interface \
    ports { P3End_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name depthPhase1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_depthPhase1 \
    op interface \
    ports { depthPhase1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name depthPhase2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_depthPhase2 \
    op interface \
    ports { depthPhase2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
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
    id 153 \
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
    id 154 \
    name URFtoDLF_Move2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_URFtoDLF_Move2 \
    op interface \
    ports { m_axi_URFtoDLF_Move2_AWVALID { O 1 bit } m_axi_URFtoDLF_Move2_AWREADY { I 1 bit } m_axi_URFtoDLF_Move2_AWADDR { O 32 vector } m_axi_URFtoDLF_Move2_AWID { O 1 vector } m_axi_URFtoDLF_Move2_AWLEN { O 32 vector } m_axi_URFtoDLF_Move2_AWSIZE { O 3 vector } m_axi_URFtoDLF_Move2_AWBURST { O 2 vector } m_axi_URFtoDLF_Move2_AWLOCK { O 2 vector } m_axi_URFtoDLF_Move2_AWCACHE { O 4 vector } m_axi_URFtoDLF_Move2_AWPROT { O 3 vector } m_axi_URFtoDLF_Move2_AWQOS { O 4 vector } m_axi_URFtoDLF_Move2_AWREGION { O 4 vector } m_axi_URFtoDLF_Move2_AWUSER { O 1 vector } m_axi_URFtoDLF_Move2_WVALID { O 1 bit } m_axi_URFtoDLF_Move2_WREADY { I 1 bit } m_axi_URFtoDLF_Move2_WDATA { O 16 vector } m_axi_URFtoDLF_Move2_WSTRB { O 2 vector } m_axi_URFtoDLF_Move2_WLAST { O 1 bit } m_axi_URFtoDLF_Move2_WID { O 1 vector } m_axi_URFtoDLF_Move2_WUSER { O 1 vector } m_axi_URFtoDLF_Move2_ARVALID { O 1 bit } m_axi_URFtoDLF_Move2_ARREADY { I 1 bit } m_axi_URFtoDLF_Move2_ARADDR { O 32 vector } m_axi_URFtoDLF_Move2_ARID { O 1 vector } m_axi_URFtoDLF_Move2_ARLEN { O 32 vector } m_axi_URFtoDLF_Move2_ARSIZE { O 3 vector } m_axi_URFtoDLF_Move2_ARBURST { O 2 vector } m_axi_URFtoDLF_Move2_ARLOCK { O 2 vector } m_axi_URFtoDLF_Move2_ARCACHE { O 4 vector } m_axi_URFtoDLF_Move2_ARPROT { O 3 vector } m_axi_URFtoDLF_Move2_ARQOS { O 4 vector } m_axi_URFtoDLF_Move2_ARREGION { O 4 vector } m_axi_URFtoDLF_Move2_ARUSER { O 1 vector } m_axi_URFtoDLF_Move2_RVALID { I 1 bit } m_axi_URFtoDLF_Move2_RREADY { O 1 bit } m_axi_URFtoDLF_Move2_RDATA { I 16 vector } m_axi_URFtoDLF_Move2_RLAST { I 1 bit } m_axi_URFtoDLF_Move2_RID { I 1 vector } m_axi_URFtoDLF_Move2_RUSER { I 1 vector } m_axi_URFtoDLF_Move2_RRESP { I 2 vector } m_axi_URFtoDLF_Move2_BVALID { I 1 bit } m_axi_URFtoDLF_Move2_BREADY { O 1 bit } m_axi_URFtoDLF_Move2_BRESP { I 2 vector } m_axi_URFtoDLF_Move2_BID { I 1 vector } m_axi_URFtoDLF_Move2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name URFtoDLF_Move2_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_URFtoDLF_Move2_offset \
    op interface \
    ports { URFtoDLF_Move2_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name URtoDF_Move2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_URtoDF_Move2 \
    op interface \
    ports { m_axi_URtoDF_Move2_AWVALID { O 1 bit } m_axi_URtoDF_Move2_AWREADY { I 1 bit } m_axi_URtoDF_Move2_AWADDR { O 32 vector } m_axi_URtoDF_Move2_AWID { O 1 vector } m_axi_URtoDF_Move2_AWLEN { O 32 vector } m_axi_URtoDF_Move2_AWSIZE { O 3 vector } m_axi_URtoDF_Move2_AWBURST { O 2 vector } m_axi_URtoDF_Move2_AWLOCK { O 2 vector } m_axi_URtoDF_Move2_AWCACHE { O 4 vector } m_axi_URtoDF_Move2_AWPROT { O 3 vector } m_axi_URtoDF_Move2_AWQOS { O 4 vector } m_axi_URtoDF_Move2_AWREGION { O 4 vector } m_axi_URtoDF_Move2_AWUSER { O 1 vector } m_axi_URtoDF_Move2_WVALID { O 1 bit } m_axi_URtoDF_Move2_WREADY { I 1 bit } m_axi_URtoDF_Move2_WDATA { O 16 vector } m_axi_URtoDF_Move2_WSTRB { O 2 vector } m_axi_URtoDF_Move2_WLAST { O 1 bit } m_axi_URtoDF_Move2_WID { O 1 vector } m_axi_URtoDF_Move2_WUSER { O 1 vector } m_axi_URtoDF_Move2_ARVALID { O 1 bit } m_axi_URtoDF_Move2_ARREADY { I 1 bit } m_axi_URtoDF_Move2_ARADDR { O 32 vector } m_axi_URtoDF_Move2_ARID { O 1 vector } m_axi_URtoDF_Move2_ARLEN { O 32 vector } m_axi_URtoDF_Move2_ARSIZE { O 3 vector } m_axi_URtoDF_Move2_ARBURST { O 2 vector } m_axi_URtoDF_Move2_ARLOCK { O 2 vector } m_axi_URtoDF_Move2_ARCACHE { O 4 vector } m_axi_URtoDF_Move2_ARPROT { O 3 vector } m_axi_URtoDF_Move2_ARQOS { O 4 vector } m_axi_URtoDF_Move2_ARREGION { O 4 vector } m_axi_URtoDF_Move2_ARUSER { O 1 vector } m_axi_URtoDF_Move2_RVALID { I 1 bit } m_axi_URtoDF_Move2_RREADY { O 1 bit } m_axi_URtoDF_Move2_RDATA { I 16 vector } m_axi_URtoDF_Move2_RLAST { I 1 bit } m_axi_URtoDF_Move2_RID { I 1 vector } m_axi_URtoDF_Move2_RUSER { I 1 vector } m_axi_URtoDF_Move2_RRESP { I 2 vector } m_axi_URtoDF_Move2_BVALID { I 1 bit } m_axi_URtoDF_Move2_BREADY { O 1 bit } m_axi_URtoDF_Move2_BRESP { I 2 vector } m_axi_URtoDF_Move2_BID { I 1 vector } m_axi_URtoDF_Move2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name URtoDF_Move2_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_URtoDF_Move2_offset \
    op interface \
    ports { URtoDF_Move2_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name Slice_URFtoDLF_Parity_Prun2_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Slice_URFtoDLF_Parity_Prun2_offset \
    op interface \
    ports { Slice_URFtoDLF_Parity_Prun2_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name Slice_URtoDF_Parity_Prun2_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Slice_URtoDF_Parity_Prun2_offset \
    op interface \
    ports { Slice_URtoDF_Parity_Prun2_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name search_sol_depthPhas \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_search_sol_depthPhas \
    op interface \
    ports { search_sol_depthPhas { O 8 vector } search_sol_depthPhas_ap_vld { O 1 bit } } \
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
    ports { ap_return { O 1 vector } } \
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


