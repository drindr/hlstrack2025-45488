create_project prj -part xc7z020-clg484-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/yxh/fpga-amd2025/solver/L1/tests/cholesky/complex_fixed_arch0/hls/hls/syn/verilog/kernel_cholesky_0_fsqrt_32ns_32ns_32_16_no_dsp_1_ip.tcl"
source "/home/yxh/fpga-amd2025/solver/L1/tests/cholesky/complex_fixed_arch0/hls/hls/syn/verilog/kernel_cholesky_0_fpext_32ns_64_2_no_dsp_1_ip.tcl"
