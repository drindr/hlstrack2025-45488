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
    id 73 \
    name nblk_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nblk_strm \
    op interface \
    ports { nblk_strm_dout { I 64 vector } nblk_strm_empty_n { I 1 bit } nblk_strm_read { O 1 bit } nblk_strm_num_data_valid { I 6 vector } nblk_strm_fifo_cap { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name end_nblk_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_end_nblk_strm \
    op interface \
    ports { end_nblk_strm_dout { I 1 vector } end_nblk_strm_empty_n { I 1 bit } end_nblk_strm_read { O 1 bit } end_nblk_strm_num_data_valid { I 6 vector } end_nblk_strm_fifo_cap { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name blk_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_blk_strm \
    op interface \
    ports { blk_strm_dout { I 512 vector } blk_strm_empty_n { I 1 bit } blk_strm_read { O 1 bit } blk_strm_num_data_valid { I 6 vector } blk_strm_fifo_cap { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
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
    id 77 \
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


