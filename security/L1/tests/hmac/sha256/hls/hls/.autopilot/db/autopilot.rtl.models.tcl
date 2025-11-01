set SynModuleInfo {
  {SRCNAME {kpad<32, 64, 256, 32, 64, sha256_wrapper>_Pipeline_VITIS_LOOP_120_2} MODELNAME kpad_32_64_256_32_64_sha256_wrapper_Pipeline_VITIS_LOOP_120_2 RTLNAME test_hmac_sha256_kpad_32_64_256_32_64_sha256_wrapper_Pipeline_VITIS_LOOP_120_2
    SUBMODULES {
      {MODELNAME test_hmac_sha256_flow_control_loop_pipe_sequential_init RTLNAME test_hmac_sha256_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_hmac_sha256_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {kpad<32, 64, 256, 32, 64, sha256_wrapper>} MODELNAME kpad_32_64_256_32_64_sha256_wrapper_s RTLNAME test_hmac_sha256_kpad_32_64_256_32_64_sha256_wrapper_s}
  {SRCNAME {mergeKipad<32, 64, 256, 64>_Pipeline_VITIS_LOOP_162_2} MODELNAME mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2 RTLNAME test_hmac_sha256_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2}
  {SRCNAME {mergeKipad<32, 64, 256, 64>_Pipeline_VITIS_LOOP_171_3} MODELNAME mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3 RTLNAME test_hmac_sha256_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3}
  {SRCNAME {mergeKipad<32, 64, 256, 64>} MODELNAME mergeKipad_32_64_256_64_s RTLNAME test_hmac_sha256_mergeKipad_32_64_256_64_s}
  {SRCNAME preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS MODELNAME preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS RTLNAME test_hmac_sha256_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS}
  {SRCNAME preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE MODELNAME preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE RTLNAME test_hmac_sha256_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE}
  {SRCNAME preProcessing MODELNAME preProcessing RTLNAME test_hmac_sha256_preProcessing}
  {SRCNAME sha256Digest_unroll2<256>_Pipeline_VITIS_LOOP_636_10 MODELNAME sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10 RTLNAME test_hmac_sha256_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10
    SUBMODULES {
      {MODELNAME test_hmac_sha256_sparsemux_33_4_32_1_1 RTLNAME test_hmac_sha256_sparsemux_33_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME test_hmac_sha256_sparsemux_129_6_32_1_1 RTLNAME test_hmac_sha256_sparsemux_129_6_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME sha256Digest_unroll2<256> MODELNAME sha256Digest_unroll2_256_s RTLNAME test_hmac_sha256_sha256Digest_unroll2_256_s}
  {SRCNAME {sha256_top<32, 256>} MODELNAME sha256_top_32_256_s RTLNAME test_hmac_sha256_sha256_top_32_256_s
    SUBMODULES {
      {MODELNAME test_hmac_sha256_fifo_w512_d32_D RTLNAME test_hmac_sha256_fifo_w512_d32_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME blk_strm_U}
      {MODELNAME test_hmac_sha256_fifo_w64_d32_D RTLNAME test_hmac_sha256_fifo_w64_d32_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME nblk_strm_U}
      {MODELNAME test_hmac_sha256_fifo_w1_d32_D RTLNAME test_hmac_sha256_fifo_w1_d32_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME end_nblk_strm_U}
      {MODELNAME test_hmac_sha256_start_for_sha256Digest_unroll2_256_U0 RTLNAME test_hmac_sha256_start_for_sha256Digest_unroll2_256_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_sha256Digest_unroll2_256_U0_U}
    }
  }
  {SRCNAME hash MODELNAME hash RTLNAME test_hmac_sha256_hash}
  {SRCNAME {msgHash<32, 64, 256, 32, 64, sha256_wrapper>} MODELNAME msgHash_32_64_256_32_64_sha256_wrapper_s RTLNAME test_hmac_sha256_msgHash_32_64_256_32_64_sha256_wrapper_s
    SUBMODULES {
      {MODELNAME test_hmac_sha256_fifo_w32_d128_B RTLNAME test_hmac_sha256_fifo_w32_d128_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME mergeKipadStrm_U}
      {MODELNAME test_hmac_sha256_fifo_w64_d4_D RTLNAME test_hmac_sha256_fifo_w64_d4_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME mergeKipadLenStrm_U}
      {MODELNAME test_hmac_sha256_fifo_w1_d4_D RTLNAME test_hmac_sha256_fifo_w1_d4_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME eMergeKipadLenStrm_U}
      {MODELNAME test_hmac_sha256_start_for_hash_U0 RTLNAME test_hmac_sha256_start_for_hash_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_hash_U0_U}
    }
  }
  {SRCNAME {mergeKopad<32, 64, 256, 32, 64>_Pipeline_VITIS_LOOP_220_2} MODELNAME mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2 RTLNAME test_hmac_sha256_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2}
  {SRCNAME {mergeKopad<32, 64, 256, 32, 64>_Pipeline_VITIS_LOOP_226_3} MODELNAME mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3 RTLNAME test_hmac_sha256_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3}
  {SRCNAME {mergeKopad<32, 64, 256, 32, 64>} MODELNAME mergeKopad_32_64_256_32_64_s RTLNAME test_hmac_sha256_mergeKopad_32_64_256_32_64_s}
  {SRCNAME hash.1 MODELNAME hash_1 RTLNAME test_hmac_sha256_hash_1}
  {SRCNAME {resHash<32, 64, 256, 32, 64, sha256_wrapper>} MODELNAME resHash_32_64_256_32_64_sha256_wrapper_s RTLNAME test_hmac_sha256_resHash_32_64_256_32_64_sha256_wrapper_s
    SUBMODULES {
      {MODELNAME test_hmac_sha256_fifo_w32_d4_D RTLNAME test_hmac_sha256_fifo_w32_d4_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME mergeKopadStrm_U}
      {MODELNAME test_hmac_sha256_fifo_w64_d4_D_x RTLNAME test_hmac_sha256_fifo_w64_d4_D_x BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME mergeKopadLenStrm_U}
      {MODELNAME test_hmac_sha256_fifo_w1_d4_D_x RTLNAME test_hmac_sha256_fifo_w1_d4_D_x BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME eMergeKopadLenStrm_U}
      {MODELNAME test_hmac_sha256_start_for_hash_1_U0 RTLNAME test_hmac_sha256_start_for_hash_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_hash_1_U0_U}
    }
  }
  {SRCNAME {hmacDataflow<32, 64, 256, 32, 64, sha256_wrapper>} MODELNAME hmacDataflow_32_64_256_32_64_sha256_wrapper_s RTLNAME test_hmac_sha256_hmacDataflow_32_64_256_32_64_sha256_wrapper_s
    SUBMODULES {
      {MODELNAME test_hmac_sha256_fifo_w512_d4_D RTLNAME test_hmac_sha256_fifo_w512_d4_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME kipadStrm_U}
      {MODELNAME test_hmac_sha256_fifo_w512_d4_D RTLNAME test_hmac_sha256_fifo_w512_d4_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME kopadStrm_U}
      {MODELNAME test_hmac_sha256_fifo_w1_d4_D_x0 RTLNAME test_hmac_sha256_fifo_w1_d4_D_x0 BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME eKipadStrm_U}
      {MODELNAME test_hmac_sha256_fifo_w512_d4_D RTLNAME test_hmac_sha256_fifo_w512_d4_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME kopad2Strm_U}
      {MODELNAME test_hmac_sha256_fifo_w256_d4_D RTLNAME test_hmac_sha256_fifo_w256_d4_D BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME msgHashStrm_U}
      {MODELNAME test_hmac_sha256_fifo_w1_d4_D_x0 RTLNAME test_hmac_sha256_fifo_w1_d4_D_x0 BINDTYPE storage TYPE fifo IMPL lutram ALLOW_PRAGMA 1 INSTNAME eMsgHashStrm_U}
      {MODELNAME test_hmac_sha256_start_for_msgHash_32_64_256_32_64_sha256_wrapper_U0 RTLNAME test_hmac_sha256_start_for_msgHash_32_64_256_32_64_sha256_wrapper_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_msgHash_32_64_256_32_64_sha256_wrapper_U0_U}
      {MODELNAME test_hmac_sha256_start_for_resHash_32_64_256_32_64_sha256_wrapper_U0 RTLNAME test_hmac_sha256_start_for_resHash_32_64_256_32_64_sha256_wrapper_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_resHash_32_64_256_32_64_sha256_wrapper_U0_U}
    }
  }
  {SRCNAME test_hmac_sha256 MODELNAME test_hmac_sha256 RTLNAME test_hmac_sha256 IS_TOP 1}
}
