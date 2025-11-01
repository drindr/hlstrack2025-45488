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
    id 3 \
    name keyStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_keyStrm \
    op interface \
    ports { keyStrm_dout { I 32 vector } keyStrm_empty_n { I 1 bit } keyStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name eLenStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eLenStrm \
    op interface \
    ports { eLenStrm_dout { I 1 vector } eLenStrm_empty_n { I 1 bit } eLenStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name kipadStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kipadStrm \
    op interface \
    ports { kipadStrm_din { O 512 vector } kipadStrm_full_n { I 1 bit } kipadStrm_write { O 1 bit } kipadStrm_num_data_valid { I 3 vector } kipadStrm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name kopadStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kopadStrm \
    op interface \
    ports { kopadStrm_din { O 512 vector } kopadStrm_full_n { I 1 bit } kopadStrm_write { O 1 bit } kopadStrm_num_data_valid { I 3 vector } kopadStrm_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name eKipadStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eKipadStrm \
    op interface \
    ports { eKipadStrm_din { O 1 vector } eKipadStrm_full_n { I 1 bit } eKipadStrm_write { O 1 bit } eKipadStrm_num_data_valid { I 3 vector } eKipadStrm_fifo_cap { I 3 vector } } \
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


