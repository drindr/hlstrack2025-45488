set SynModuleInfo {
  {SRCNAME kernel_cholesky_0_Pipeline_read_matrix_rows_read_matrix_cols MODELNAME kernel_cholesky_0_Pipeline_read_matrix_rows_read_matrix_cols RTLNAME kernel_cholesky_0_kernel_cholesky_0_Pipeline_read_matrix_rows_read_matrix_cols
    SUBMODULES {
      {MODELNAME kernel_cholesky_0_flow_control_loop_pipe_sequential_init RTLNAME kernel_cholesky_0_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME kernel_cholesky_0_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {choleskyAlt<false,3,choleskyTraits,x_complex,x_complex<ap_fixed >>_Pipeline_sum_} MODELNAME choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s RTLNAME kernel_cholesky_0_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s
    SUBMODULES {
      {MODELNAME kernel_cholesky_0_sparsemux_7_2_16_1_1 RTLNAME kernel_cholesky_0_sparsemux_7_2_16_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME kernel_cholesky_0_mul_16s_16s_32_1_1 RTLNAME kernel_cholesky_0_mul_16s_16s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {choleskyAlt<false,3,choleskyTraits,x_complex,x_complex<ap_fixed >>} MODELNAME choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s RTLNAME kernel_cholesky_0_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s
    SUBMODULES {
      {MODELNAME kernel_cholesky_0_fpext_32ns_64_2_no_dsp_1 RTLNAME kernel_cholesky_0_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME kernel_cholesky_0_fsqrt_32ns_32ns_32_16_no_dsp_1 RTLNAME kernel_cholesky_0_fsqrt_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME kernel_cholesky_0_mul_34s_33s_67_3_1 RTLNAME kernel_cholesky_0_mul_34s_33s_67_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kernel_cholesky_0_mul_2s_2s_3_1_1 RTLNAME kernel_cholesky_0_mul_2s_2s_3_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME kernel_cholesky_0_mul_2s_2s_2_1_1 RTLNAME kernel_cholesky_0_mul_2s_2s_2_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME kernel_cholesky_0_ctlz_17_17_1_1 RTLNAME kernel_cholesky_0_ctlz_17_17_1_1 BINDTYPE op TYPE ctlz IMPL auto}
      {MODELNAME kernel_cholesky_0_bitselect_1ns_54ns_32s_1_1_1 RTLNAME kernel_cholesky_0_bitselect_1ns_54ns_32s_1_1_1 BINDTYPE op TYPE bitselect IMPL auto}
      {MODELNAME kernel_cholesky_0_sparsemux_7_2_34_1_1 RTLNAME kernel_cholesky_0_sparsemux_7_2_34_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME kernel_cholesky_0_sparsemux_7_2_1_1_1 RTLNAME kernel_cholesky_0_sparsemux_7_2_1_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME kernel_cholesky_0_sdiv_34ns_17s_34_38_seq_1 RTLNAME kernel_cholesky_0_sdiv_34ns_17s_34_38_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 37 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME kernel_cholesky_0_Pipeline_write_matrix_rows_write_matrix_cols MODELNAME kernel_cholesky_0_Pipeline_write_matrix_rows_write_matrix_cols RTLNAME kernel_cholesky_0_kernel_cholesky_0_Pipeline_write_matrix_rows_write_matrix_cols}
  {SRCNAME kernel_cholesky_0 MODELNAME kernel_cholesky_0 RTLNAME kernel_cholesky_0 IS_TOP 1
    SUBMODULES {
      {MODELNAME kernel_cholesky_0_A_re_RAM_AUTO_1R1W RTLNAME kernel_cholesky_0_A_re_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kernel_cholesky_0_L_re_RAM_AUTO_1R1W RTLNAME kernel_cholesky_0_L_re_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
