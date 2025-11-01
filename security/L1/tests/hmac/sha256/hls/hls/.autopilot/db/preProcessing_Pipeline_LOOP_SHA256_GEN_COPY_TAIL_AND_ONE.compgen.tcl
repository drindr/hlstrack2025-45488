# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name mergeKipadStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mergeKipadStrm \
    op interface \
    ports { mergeKipadStrm_dout { I 32 vector } mergeKipadStrm_empty_n { I 1 bit } mergeKipadStrm_read { O 1 bit } mergeKipadStrm_num_data_valid { I 8 vector } mergeKipadStrm_fifo_cap { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name p_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast \
    op interface \
    ports { p_cast { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name len \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_len \
    op interface \
    ports { len { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name b_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_16_out \
    op interface \
    ports { b_16_out { O 32 vector } b_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name b_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_15_out \
    op interface \
    ports { b_15_out { O 32 vector } b_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name b_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_14_out \
    op interface \
    ports { b_14_out { O 32 vector } b_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name b_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_13_out \
    op interface \
    ports { b_13_out { O 32 vector } b_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name b_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_12_out \
    op interface \
    ports { b_12_out { O 32 vector } b_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name b_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_11_out \
    op interface \
    ports { b_11_out { O 32 vector } b_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name b_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_10_out \
    op interface \
    ports { b_10_out { O 32 vector } b_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name b_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_9_out \
    op interface \
    ports { b_9_out { O 32 vector } b_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name b_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_8_out \
    op interface \
    ports { b_8_out { O 32 vector } b_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name b_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_7_out \
    op interface \
    ports { b_7_out { O 32 vector } b_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name b_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_6_out \
    op interface \
    ports { b_6_out { O 32 vector } b_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name b_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_5_out \
    op interface \
    ports { b_5_out { O 32 vector } b_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name b_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_4_out \
    op interface \
    ports { b_4_out { O 32 vector } b_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name b_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_out \
    op interface \
    ports { b_out { O 32 vector } b_out_ap_vld { O 1 bit } } \
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


# flow_control definition:
set InstName test_hmac_sha256_flow_control_loop_pipe_sequential_init_U
set CompName test_hmac_sha256_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix test_hmac_sha256_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


