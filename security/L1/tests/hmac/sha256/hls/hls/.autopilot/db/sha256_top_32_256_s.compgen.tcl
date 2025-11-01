# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_fifo_w512_d32_D BINDTYPE {storage} TYPE {fifo} IMPL {lutram} ALLOW_PRAGMA 1 INSTNAME {blk_strm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_fifo_w64_d32_D BINDTYPE {storage} TYPE {fifo} IMPL {lutram} ALLOW_PRAGMA 1 INSTNAME {nblk_strm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_fifo_w1_d32_D BINDTYPE {storage} TYPE {fifo} IMPL {lutram} ALLOW_PRAGMA 1 INSTNAME {end_nblk_strm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_start_for_sha256Digest_unroll2_256_U0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {start_for_sha256Digest_unroll2_256_U0_U}
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
    id 82 \
    name mergeKopadStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mergeKopadStrm \
    op interface \
    ports { mergeKopadStrm_dout { I 32 vector } mergeKopadStrm_empty_n { I 1 bit } mergeKopadStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name mergeKopadLenStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mergeKopadLenStrm \
    op interface \
    ports { mergeKopadLenStrm_dout { I 64 vector } mergeKopadLenStrm_empty_n { I 1 bit } mergeKopadLenStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name eMergeKopadLenStrm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eMergeKopadLenStrm \
    op interface \
    ports { eMergeKopadLenStrm_dout { I 1 vector } eMergeKopadLenStrm_empty_n { I 1 bit } eMergeKopadLenStrm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
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
    id 86 \
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


