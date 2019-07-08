# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 82
set hasByteEnable 0
set MemName totalDepth_paritymb6
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
set ClkPeriod 12
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
set ID 83
set hasByteEnable 0
set MemName totalDepth_searchncg
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 16
set AddrRange 31
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
set ClkPeriod 12
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
set ID 84
set hasByteEnable 0
set MemName totalDepth_searchocq
set CoreName ap_simcore_mem
set PortList { 2 0 }
set DataWd 4
set AddrRange 31
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
set ClkPeriod 12
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
    id 85 \
    name search_0_ax \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename search_0_ax \
    op interface \
    ports { search_0_ax_address0 { O 5 vector } search_0_ax_ce0 { O 1 bit } search_0_ax_we0 { O 1 bit } search_0_ax_d0 { O 32 vector } search_0_ax_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'search_0_ax'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 86 \
    name search_0_po \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename search_0_po \
    op interface \
    ports { search_0_po_address0 { O 5 vector } search_0_po_ce0 { O 1 bit } search_0_po_we0 { O 1 bit } search_0_po_d0 { O 32 vector } search_0_po_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'search_0_po'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 87 \
    name search_0_parity \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename search_0_parity \
    op interface \
    ports { search_0_parity_address0 { O 5 vector } search_0_parity_ce0 { O 1 bit } search_0_parity_we0 { O 1 bit } search_0_parity_d0 { O 32 vector } search_0_parity_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'search_0_parity'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 88 \
    name search_0_URFtoDLF \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename search_0_URFtoDLF \
    op interface \
    ports { search_0_URFtoDLF_address0 { O 5 vector } search_0_URFtoDLF_ce0 { O 1 bit } search_0_URFtoDLF_we0 { O 1 bit } search_0_URFtoDLF_d0 { O 32 vector } search_0_URFtoDLF_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'search_0_URFtoDLF'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 89 \
    name search_0_FRtoBR \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename search_0_FRtoBR \
    op interface \
    ports { search_0_FRtoBR_address0 { O 5 vector } search_0_FRtoBR_ce0 { O 1 bit } search_0_FRtoBR_we0 { O 1 bit } search_0_FRtoBR_d0 { O 32 vector } search_0_FRtoBR_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'search_0_FRtoBR'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 90 \
    name search_0_URtoUL \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename search_0_URtoUL \
    op interface \
    ports { search_0_URtoUL_address0 { O 5 vector } search_0_URtoUL_ce0 { O 1 bit } search_0_URtoUL_we0 { O 1 bit } search_0_URtoUL_d0 { O 32 vector } search_0_URtoUL_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'search_0_URtoUL'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 91 \
    name search_0_UBtoDF \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename search_0_UBtoDF \
    op interface \
    ports { search_0_UBtoDF_address0 { O 5 vector } search_0_UBtoDF_ce0 { O 1 bit } search_0_UBtoDF_we0 { O 1 bit } search_0_UBtoDF_d0 { O 32 vector } search_0_UBtoDF_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'search_0_UBtoDF'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name depthPhase1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_depthPhase1 \
    op interface \
    ports { depthPhase1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name maxDepth \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_maxDepth \
    op interface \
    ports { maxDepth { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
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
    id 95 \
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
    id 96 \
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
    id 97 \
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
    id 98 \
    name URtoUL_Move2_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_URtoUL_Move2_offset \
    op interface \
    ports { URtoUL_Move2_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name UBtoDF_Move2_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_UBtoDF_Move2_offset \
    op interface \
    ports { UBtoDF_Move2_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name MergeURtoULandUBtoDF2_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_MergeURtoULandUBtoDF2_offset \
    op interface \
    ports { MergeURtoULandUBtoDF2_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
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
    id 102 \
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


