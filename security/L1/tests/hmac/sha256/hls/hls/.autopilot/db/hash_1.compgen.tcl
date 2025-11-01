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
    id 114 \
    name mergeKopadStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mergeKopadStrm \
    op interface \
    ports { mergeKopadStrm_dout { I 32 vector } mergeKopadStrm_empty_n { I 1 bit } mergeKopadStrm_read { O 1 bit } mergeKopadStrm_num_data_valid { I 3 vector } mergeKopadStrm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name mergeKopadLenStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mergeKopadLenStrm \
    op interface \
    ports { mergeKopadLenStrm_dout { I 64 vector } mergeKopadLenStrm_empty_n { I 1 bit } mergeKopadLenStrm_read { O 1 bit } mergeKopadLenStrm_num_data_valid { I 3 vector } mergeKopadLenStrm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name eMergeKopadLenStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eMergeKopadLenStrm \
    op interface \
    ports { eMergeKopadLenStrm_dout { I 1 vector } eMergeKopadLenStrm_empty_n { I 1 bit } eMergeKopadLenStrm_read { O 1 bit } eMergeKopadLenStrm_num_data_valid { I 3 vector } eMergeKopadLenStrm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name hshStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_hshStrm \
    op interface \
    ports { hshStrm_din { O 256 vector } hshStrm_full_n { I 1 bit } hshStrm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name eHshStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eHshStrm \
    op interface \
    ports { eHshStrm_din { O 1 vector } eHshStrm_full_n { I 1 bit } eHshStrm_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


