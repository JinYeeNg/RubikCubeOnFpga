# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 231
set hasByteEnable 0
set MemName blockP2_search_soudo
set CoreName ap_simcore_mem
set PortList { 2 1 }
set DataWd 8
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
    id 237 \
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
    id 238 \
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
    id 239 \
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
    id 240 \
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
    id 241 \
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
    id 242 \
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
    id 245 \
    name encode_array \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename encode_array \
    op interface \
    ports { encode_array_address0 { O 5 vector } encode_array_ce0 { O 1 bit } encode_array_we0 { O 1 bit } encode_array_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'encode_array'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name URFtoDLF \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_URFtoDLF \
    op interface \
    ports { URFtoDLF { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name FRtoBR \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_FRtoBR \
    op interface \
    ports { FRtoBR { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name parity \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parity \
    op interface \
    ports { parity { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name URtoUL \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_URtoUL \
    op interface \
    ports { URtoUL { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name UBtoDF \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_UBtoDF \
    op interface \
    ports { UBtoDF { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
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
    id 244 \
    name encode_length \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_encode_length \
    op interface \
    ports { encode_length { O 8 vector } encode_length_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
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
    id 247 \
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
    id 248 \
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
    id 249 \
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
    id 250 \
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
    id 251 \
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
    id 252 \
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
    id 253 \
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
    id 254 \
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
    id 255 \
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
    id 256 \
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
    id 257 \
    name P2Buffer_V_flip \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_flip \
    op interface \
    ports { P2Buffer_V_flip_dout { I 16 vector } P2Buffer_V_flip_empty_n { I 1 bit } P2Buffer_V_flip_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name P2Buffer_V_twist \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_twist \
    op interface \
    ports { P2Buffer_V_twist_dout { I 16 vector } P2Buffer_V_twist_empty_n { I 1 bit } P2Buffer_V_twist_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name P2Buffer_V_slice \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_slice \
    op interface \
    ports { P2Buffer_V_slice_dout { I 16 vector } P2Buffer_V_slice_empty_n { I 1 bit } P2Buffer_V_slice_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name P2Buffer_V_parity \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_parity \
    op interface \
    ports { P2Buffer_V_parity_dout { I 1 vector } P2Buffer_V_parity_empty_n { I 1 bit } P2Buffer_V_parity_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name P2Buffer_V_URFtoDLF \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_URFtoDLF \
    op interface \
    ports { P2Buffer_V_URFtoDLF_dout { I 16 vector } P2Buffer_V_URFtoDLF_empty_n { I 1 bit } P2Buffer_V_URFtoDLF_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name P2Buffer_V_FRtoBR \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_FRtoBR \
    op interface \
    ports { P2Buffer_V_FRtoBR_dout { I 16 vector } P2Buffer_V_FRtoBR_empty_n { I 1 bit } P2Buffer_V_FRtoBR_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name P2Buffer_V_URtoDF \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_URtoDF \
    op interface \
    ports { P2Buffer_V_URtoDF_dout { I 16 vector } P2Buffer_V_URtoDF_empty_n { I 1 bit } P2Buffer_V_URtoDF_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name P2Buffer_V_depthPhas \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_depthPhas \
    op interface \
    ports { P2Buffer_V_depthPhas_dout { I 8 vector } P2Buffer_V_depthPhas_empty_n { I 1 bit } P2Buffer_V_depthPhas_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name P2Buffer_V_n \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_n \
    op interface \
    ports { P2Buffer_V_n_dout { I 8 vector } P2Buffer_V_n_empty_n { I 1 bit } P2Buffer_V_n_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name P2Buffer_V_i_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_0 \
    op interface \
    ports { P2Buffer_V_i_0_dout { I 8 vector } P2Buffer_V_i_0_empty_n { I 1 bit } P2Buffer_V_i_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name P2Buffer_V_i_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_1 \
    op interface \
    ports { P2Buffer_V_i_1_dout { I 8 vector } P2Buffer_V_i_1_empty_n { I 1 bit } P2Buffer_V_i_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name P2Buffer_V_i_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_2 \
    op interface \
    ports { P2Buffer_V_i_2_dout { I 8 vector } P2Buffer_V_i_2_empty_n { I 1 bit } P2Buffer_V_i_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name P2Buffer_V_i_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_3 \
    op interface \
    ports { P2Buffer_V_i_3_dout { I 8 vector } P2Buffer_V_i_3_empty_n { I 1 bit } P2Buffer_V_i_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name P2Buffer_V_i_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_4 \
    op interface \
    ports { P2Buffer_V_i_4_dout { I 8 vector } P2Buffer_V_i_4_empty_n { I 1 bit } P2Buffer_V_i_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name P2Buffer_V_i_5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_5 \
    op interface \
    ports { P2Buffer_V_i_5_dout { I 8 vector } P2Buffer_V_i_5_empty_n { I 1 bit } P2Buffer_V_i_5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name P2Buffer_V_i_6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_6 \
    op interface \
    ports { P2Buffer_V_i_6_dout { I 8 vector } P2Buffer_V_i_6_empty_n { I 1 bit } P2Buffer_V_i_6_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name P2Buffer_V_i_7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_7 \
    op interface \
    ports { P2Buffer_V_i_7_dout { I 8 vector } P2Buffer_V_i_7_empty_n { I 1 bit } P2Buffer_V_i_7_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name P2Buffer_V_i_8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_8 \
    op interface \
    ports { P2Buffer_V_i_8_dout { I 8 vector } P2Buffer_V_i_8_empty_n { I 1 bit } P2Buffer_V_i_8_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name P2Buffer_V_i_9 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_9 \
    op interface \
    ports { P2Buffer_V_i_9_dout { I 8 vector } P2Buffer_V_i_9_empty_n { I 1 bit } P2Buffer_V_i_9_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name P2Buffer_V_i_10 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_10 \
    op interface \
    ports { P2Buffer_V_i_10_dout { I 8 vector } P2Buffer_V_i_10_empty_n { I 1 bit } P2Buffer_V_i_10_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name P2Buffer_V_i_11 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_11 \
    op interface \
    ports { P2Buffer_V_i_11_dout { I 8 vector } P2Buffer_V_i_11_empty_n { I 1 bit } P2Buffer_V_i_11_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name P2Buffer_V_i_12 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_12 \
    op interface \
    ports { P2Buffer_V_i_12_dout { I 8 vector } P2Buffer_V_i_12_empty_n { I 1 bit } P2Buffer_V_i_12_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name P2Buffer_V_i_13 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_13 \
    op interface \
    ports { P2Buffer_V_i_13_dout { I 8 vector } P2Buffer_V_i_13_empty_n { I 1 bit } P2Buffer_V_i_13_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name P2Buffer_V_i_14 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_14 \
    op interface \
    ports { P2Buffer_V_i_14_dout { I 8 vector } P2Buffer_V_i_14_empty_n { I 1 bit } P2Buffer_V_i_14_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name P2Buffer_V_i_15 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_15 \
    op interface \
    ports { P2Buffer_V_i_15_dout { I 8 vector } P2Buffer_V_i_15_empty_n { I 1 bit } P2Buffer_V_i_15_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name P2Buffer_V_i_16 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_16 \
    op interface \
    ports { P2Buffer_V_i_16_dout { I 8 vector } P2Buffer_V_i_16_empty_n { I 1 bit } P2Buffer_V_i_16_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name P2Buffer_V_i_17 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_17 \
    op interface \
    ports { P2Buffer_V_i_17_dout { I 8 vector } P2Buffer_V_i_17_empty_n { I 1 bit } P2Buffer_V_i_17_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name P2Buffer_V_i_18 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_18 \
    op interface \
    ports { P2Buffer_V_i_18_dout { I 8 vector } P2Buffer_V_i_18_empty_n { I 1 bit } P2Buffer_V_i_18_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name P2Buffer_V_i_19 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_19 \
    op interface \
    ports { P2Buffer_V_i_19_dout { I 8 vector } P2Buffer_V_i_19_empty_n { I 1 bit } P2Buffer_V_i_19_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name P2Buffer_V_i_20 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_20 \
    op interface \
    ports { P2Buffer_V_i_20_dout { I 8 vector } P2Buffer_V_i_20_empty_n { I 1 bit } P2Buffer_V_i_20_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name P2Buffer_V_i_21 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_21 \
    op interface \
    ports { P2Buffer_V_i_21_dout { I 8 vector } P2Buffer_V_i_21_empty_n { I 1 bit } P2Buffer_V_i_21_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name P2Buffer_V_i_22 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_22 \
    op interface \
    ports { P2Buffer_V_i_22_dout { I 8 vector } P2Buffer_V_i_22_empty_n { I 1 bit } P2Buffer_V_i_22_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name P2Buffer_V_i_23 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_23 \
    op interface \
    ports { P2Buffer_V_i_23_dout { I 8 vector } P2Buffer_V_i_23_empty_n { I 1 bit } P2Buffer_V_i_23_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name P2Buffer_V_i_24 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_24 \
    op interface \
    ports { P2Buffer_V_i_24_dout { I 8 vector } P2Buffer_V_i_24_empty_n { I 1 bit } P2Buffer_V_i_24_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name P2Buffer_V_i_25 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_25 \
    op interface \
    ports { P2Buffer_V_i_25_dout { I 8 vector } P2Buffer_V_i_25_empty_n { I 1 bit } P2Buffer_V_i_25_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name P2Buffer_V_i_26 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_26 \
    op interface \
    ports { P2Buffer_V_i_26_dout { I 8 vector } P2Buffer_V_i_26_empty_n { I 1 bit } P2Buffer_V_i_26_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name P2Buffer_V_i_27 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_27 \
    op interface \
    ports { P2Buffer_V_i_27_dout { I 8 vector } P2Buffer_V_i_27_empty_n { I 1 bit } P2Buffer_V_i_27_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name P2Buffer_V_i_28 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_28 \
    op interface \
    ports { P2Buffer_V_i_28_dout { I 8 vector } P2Buffer_V_i_28_empty_n { I 1 bit } P2Buffer_V_i_28_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name P2Buffer_V_i_29 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_29 \
    op interface \
    ports { P2Buffer_V_i_29_dout { I 8 vector } P2Buffer_V_i_29_empty_n { I 1 bit } P2Buffer_V_i_29_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name P2Buffer_V_i_30 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P2Buffer_V_i_30 \
    op interface \
    ports { P2Buffer_V_i_30_dout { I 8 vector } P2Buffer_V_i_30_empty_n { I 1 bit } P2Buffer_V_i_30_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name a \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_a \
    op interface \
    ports { a { O 32 vector } a_ap_vld { O 1 bit } } \
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


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
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
    id -3 \
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


