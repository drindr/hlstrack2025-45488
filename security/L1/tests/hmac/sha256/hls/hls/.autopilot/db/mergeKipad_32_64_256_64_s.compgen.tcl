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
    id 13 \
    name kipadStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kipadStrm \
    op interface \
    ports { kipadStrm_dout { I 512 vector } kipadStrm_empty_n { I 1 bit } kipadStrm_read { O 1 bit } kipadStrm_num_data_valid { I 3 vector } kipadStrm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name kopadStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kopadStrm \
    op interface \
    ports { kopadStrm_dout { I 512 vector } kopadStrm_empty_n { I 1 bit } kopadStrm_read { O 1 bit } kopadStrm_num_data_valid { I 3 vector } kopadStrm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name msgStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_msgStrm \
    op interface \
    ports { msgStrm_dout { I 32 vector } msgStrm_empty_n { I 1 bit } msgStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name lenStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lenStrm \
    op interface \
    ports { lenStrm_dout { I 64 vector } lenStrm_empty_n { I 1 bit } lenStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name eKipadStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eKipadStrm \
    op interface \
    ports { eKipadStrm_dout { I 1 vector } eKipadStrm_empty_n { I 1 bit } eKipadStrm_read { O 1 bit } eKipadStrm_num_data_valid { I 3 vector } eKipadStrm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name mergeKipadStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mergeKipadStrm \
    op interface \
    ports { mergeKipadStrm_din { O 32 vector } mergeKipadStrm_full_n { I 1 bit } mergeKipadStrm_write { O 1 bit } mergeKipadStrm_num_data_valid { I 32 vector } mergeKipadStrm_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name mergeKipadLenStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mergeKipadLenStrm \
    op interface \
    ports { mergeKipadLenStrm_din { O 64 vector } mergeKipadLenStrm_full_n { I 1 bit } mergeKipadLenStrm_write { O 1 bit } mergeKipadLenStrm_num_data_valid { I 3 vector } mergeKipadLenStrm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name eMergeKipadLenStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eMergeKipadLenStrm \
    op interface \
    ports { eMergeKipadLenStrm_din { O 1 vector } eMergeKipadLenStrm_full_n { I 1 bit } eMergeKipadLenStrm_write { O 1 bit } eMergeKipadLenStrm_num_data_valid { I 3 vector } eMergeKipadLenStrm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name kopad2Strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kopad2Strm \
    op interface \
    ports { kopad2Strm_din { O 512 vector } kopad2Strm_full_n { I 1 bit } kopad2Strm_write { O 1 bit } kopad2Strm_num_data_valid { I 3 vector } kopad2Strm_fifo_cap { I 3 vector } } \
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


