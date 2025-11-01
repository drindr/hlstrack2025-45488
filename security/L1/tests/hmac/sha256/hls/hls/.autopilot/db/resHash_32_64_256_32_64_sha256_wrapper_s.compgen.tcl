# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_fifo_w32_d4_D BINDTYPE {storage} TYPE {fifo} IMPL {lutram} ALLOW_PRAGMA 1 INSTNAME {mergeKopadStrm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_fifo_w64_d4_D_x BINDTYPE {storage} TYPE {fifo} IMPL {lutram} ALLOW_PRAGMA 1 INSTNAME {mergeKopadLenStrm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_fifo_w1_d4_D_x BINDTYPE {storage} TYPE {fifo} IMPL {lutram} ALLOW_PRAGMA 1 INSTNAME {eMergeKopadLenStrm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_start_for_hash_1_U0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {start_for_hash_1_U0_U}
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
    id 123 \
    name kopad2Strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kopad2Strm \
    op interface \
    ports { kopad2Strm_dout { I 512 vector } kopad2Strm_empty_n { I 1 bit } kopad2Strm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name msgHashStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_msgHashStrm \
    op interface \
    ports { msgHashStrm_dout { I 256 vector } msgHashStrm_empty_n { I 1 bit } msgHashStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name eMsgHashStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eMsgHashStrm \
    op interface \
    ports { eMsgHashStrm_dout { I 1 vector } eMsgHashStrm_empty_n { I 1 bit } eMsgHashStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
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
    id 127 \
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


