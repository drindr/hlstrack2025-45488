# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_fifo_w512_d4_D BINDTYPE {storage} TYPE {fifo} IMPL {lutram} ALLOW_PRAGMA 1 INSTNAME {kipadStrm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_fifo_w512_d4_D BINDTYPE {storage} TYPE {fifo} IMPL {lutram} ALLOW_PRAGMA 1 INSTNAME {kopadStrm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_fifo_w1_d4_D_x0 BINDTYPE {storage} TYPE {fifo} IMPL {lutram} ALLOW_PRAGMA 1 INSTNAME {eKipadStrm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_fifo_w512_d4_D BINDTYPE {storage} TYPE {fifo} IMPL {lutram} ALLOW_PRAGMA 1 INSTNAME {kopad2Strm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_fifo_w256_d4_D BINDTYPE {storage} TYPE {fifo} IMPL {lutram} ALLOW_PRAGMA 1 INSTNAME {msgHashStrm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_fifo_w1_d4_D_x0 BINDTYPE {storage} TYPE {fifo} IMPL {lutram} ALLOW_PRAGMA 1 INSTNAME {eMsgHashStrm_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_start_for_msgHash_32_64_256_32_64_sha256_wrapper_U0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {start_for_msgHash_32_64_256_32_64_sha256_wrapper_U0_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_hmac_sha256_start_for_resHash_32_64_256_32_64_sha256_wrapper_U0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {start_for_resHash_32_64_256_32_64_sha256_wrapper_U0_U}
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
    id 136 \
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
    id 137 \
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
    id 138 \
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
    id 139 \
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
    id 140 \
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
    id 141 \
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


