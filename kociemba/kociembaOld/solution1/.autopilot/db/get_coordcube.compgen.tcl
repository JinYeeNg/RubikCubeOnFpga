# This script segment is generated automatically by AutoPilot

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
    id 53 \
    name cubiecube_0_cp \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cubiecube_0_cp \
    op interface \
    ports { cubiecube_0_cp_address0 { O 3 vector } cubiecube_0_cp_ce0 { O 1 bit } cubiecube_0_cp_q0 { I 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cubiecube_0_cp'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 54 \
    name cubiecube_0_co \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cubiecube_0_co \
    op interface \
    ports { cubiecube_0_co_address0 { O 3 vector } cubiecube_0_co_ce0 { O 1 bit } cubiecube_0_co_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cubiecube_0_co'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 55 \
    name cubiecube_0_ep \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cubiecube_0_ep \
    op interface \
    ports { cubiecube_0_ep_address0 { O 4 vector } cubiecube_0_ep_ce0 { O 1 bit } cubiecube_0_ep_q0 { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cubiecube_0_ep'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 56 \
    name cubiecube_0_eo \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename cubiecube_0_eo \
    op interface \
    ports { cubiecube_0_eo_address0 { O 4 vector } cubiecube_0_eo_ce0 { O 1 bit } cubiecube_0_eo_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'cubiecube_0_eo'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name result_twist_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_result_twist_0 \
    op interface \
    ports { result_twist_0 { O 16 vector } result_twist_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name result_flip_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_result_flip_0 \
    op interface \
    ports { result_flip_0 { O 16 vector } result_flip_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name result_parity_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_result_parity_0 \
    op interface \
    ports { result_parity_0 { O 16 vector } result_parity_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name result_FRtoBR_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_result_FRtoBR_0 \
    op interface \
    ports { result_FRtoBR_0 { O 16 vector } result_FRtoBR_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name result_URFtoDLF_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_result_URFtoDLF_0 \
    op interface \
    ports { result_URFtoDLF_0 { O 16 vector } result_URFtoDLF_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name result_URtoUL_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_result_URtoUL_0 \
    op interface \
    ports { result_URtoUL_0 { O 16 vector } result_URtoUL_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name result_UBtoDF_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_result_UBtoDF_0 \
    op interface \
    ports { result_UBtoDF_0 { O 16 vector } result_UBtoDF_0_ap_vld { O 1 bit } } \
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


