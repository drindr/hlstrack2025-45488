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
    id 87 \
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
    id 88 \
    name mergeKipadLenStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mergeKipadLenStrm \
    op interface \
    ports { mergeKipadLenStrm_dout { I 64 vector } mergeKipadLenStrm_empty_n { I 1 bit } mergeKipadLenStrm_read { O 1 bit } mergeKipadLenStrm_num_data_valid { I 3 vector } mergeKipadLenStrm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name eMergeKipadLenStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eMergeKipadLenStrm \
    op interface \
    ports { eMergeKipadLenStrm_dout { I 1 vector } eMergeKipadLenStrm_empty_n { I 1 bit } eMergeKipadLenStrm_read { O 1 bit } eMergeKipadLenStrm_num_data_valid { I 3 vector } eMergeKipadLenStrm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name msgHashStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_msgHashStrm \
    op interface \
    ports { msgHashStrm_din { O 256 vector } msgHashStrm_full_n { I 1 bit } msgHashStrm_write { O 1 bit } msgHashStrm_num_data_valid { I 3 vector } msgHashStrm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name eMsgHashStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eMsgHashStrm \
    op interface \
    ports { eMsgHashStrm_din { O 1 vector } eMsgHashStrm_full_n { I 1 bit } eMsgHashStrm_write { O 1 bit } eMsgHashStrm_num_data_valid { I 3 vector } eMsgHashStrm_fifo_cap { I 3 vector } } \
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


