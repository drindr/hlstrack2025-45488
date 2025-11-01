# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_fifo_w32_d128_B BINDTYPE {storage} TYPE {fifo} IMPL {bram} ALLOW_PRAGMA 1 INSTNAME {mergeKipadStrm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_fifo_w64_d4_D BINDTYPE {storage} TYPE {fifo} IMPL {lutram} ALLOW_PRAGMA 1 INSTNAME {mergeKipadLenStrm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_fifo_w1_d4_D BINDTYPE {storage} TYPE {fifo} IMPL {lutram} ALLOW_PRAGMA 1 INSTNAME {eMergeKipadLenStrm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_start_for_hash_U0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {start_for_hash_U0_U}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name kipadStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kipadStrm \
    op interface \
    ports { kipadStrm_dout { I 512 vector } kipadStrm_empty_n { I 1 bit } kipadStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name kopadStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kopadStrm \
    op interface \
    ports { kopadStrm_dout { I 512 vector } kopadStrm_empty_n { I 1 bit } kopadStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
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
    id 99 \
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
    id 100 \
    name eKipadStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eKipadStrm \
    op interface \
    ports { eKipadStrm_dout { I 1 vector } eKipadStrm_empty_n { I 1 bit } eKipadStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name kopad2Strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kopad2Strm \
    op interface \
    ports { kopad2Strm_din { O 512 vector } kopad2Strm_full_n { I 1 bit } kopad2Strm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name msgHashStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_msgHashStrm \
    op interface \
    ports { msgHashStrm_din { O 256 vector } msgHashStrm_full_n { I 1 bit } msgHashStrm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name eMsgHashStrm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_eMsgHashStrm \
    op interface \
    ports { eMsgHashStrm_din { O 1 vector } eMsgHashStrm_full_n { I 1 bit } eMsgHashStrm_write { O 1 bit } } \
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


