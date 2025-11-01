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
    id 108 \
    name kopad2Strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kopad2Strm \
    op interface \
    ports { kopad2Strm_dout { I 512 vector } kopad2Strm_empty_n { I 1 bit } kopad2Strm_read { O 1 bit } kopad2Strm_num_data_valid { I 3 vector } kopad2Strm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name msgHashStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_msgHashStrm \
    op interface \
    ports { msgHashStrm_dout { I 256 vector } msgHashStrm_empty_n { I 1 bit } msgHashStrm_read { O 1 bit } msgHashStrm_num_data_valid { I 3 vector } msgHashStrm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name eMsgHashStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eMsgHashStrm \
    op interface \
    ports { eMsgHashStrm_dout { I 1 vector } eMsgHashStrm_empty_n { I 1 bit } eMsgHashStrm_read { O 1 bit } eMsgHashStrm_num_data_valid { I 3 vector } eMsgHashStrm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name mergeKopadStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mergeKopadStrm \
    op interface \
    ports { mergeKopadStrm_din { O 32 vector } mergeKopadStrm_full_n { I 1 bit } mergeKopadStrm_write { O 1 bit } mergeKopadStrm_num_data_valid { I 32 vector } mergeKopadStrm_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name mergeKopadLenStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mergeKopadLenStrm \
    op interface \
    ports { mergeKopadLenStrm_din { O 64 vector } mergeKopadLenStrm_full_n { I 1 bit } mergeKopadLenStrm_write { O 1 bit } mergeKopadLenStrm_num_data_valid { I 3 vector } mergeKopadLenStrm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name eMergeKopadLenStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eMergeKopadLenStrm \
    op interface \
    ports { eMergeKopadLenStrm_din { O 1 vector } eMergeKopadLenStrm_full_n { I 1 bit } eMergeKopadLenStrm_write { O 1 bit } eMergeKopadLenStrm_num_data_valid { I 3 vector } eMergeKopadLenStrm_fifo_cap { I 3 vector } } \
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


