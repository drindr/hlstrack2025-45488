// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

extern "C" void AESL_WRAP_test_hmac_sha256 (
hls::stream<int > keyStrm,
hls::stream<int > msgStrm,
hls::stream<int > lenStrm,
hls::stream<int > eLenStrm,
hls::stream<int > hshStrm,
hls::stream<int > eHshStrm);
