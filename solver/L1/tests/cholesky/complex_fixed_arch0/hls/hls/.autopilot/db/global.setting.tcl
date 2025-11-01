
set TopModule "kernel_cholesky_0"
set ClockPeriod 7
set ClockList ap_clk
set AxiliteClockList {}
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 1
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix kernel_cholesky_0_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z020:-clg484:-1
set SourceFiles {sc {} c ../../../kernel/kernel_cholesky_0.cpp}
set SourceFlags {sc {} c {{-DMATRIX_DIM=3 -DMATRIX_LOWER_TRIANGULAR=0 -DSEL_ARCH=0 -D_DATA_PATH=/home/yxh/fpga-amd2025/solver/L1/tests/cholesky/datas/. -I/home/yxh/fpga-amd2025/solver/L1/tests/cholesky/complex_fixed_arch0 -I/home/yxh/fpga-amd2025/solver/L1/tests/cholesky/host/. -I/home/yxh/fpga-amd2025/solver/L1/tests/cholesky/kernel/. -I/home/yxh/fpga-amd2025/solver/L1/tests/cholesky/. -I/home/yxh/fpga-amd2025/solver/L1/tests/. -I/home/yxh/fpga-amd2025/solver/L1/include/. -I/home/yxh/fpga-amd2025/solver/L1/include/hw -I/home/yxh/fpga-amd2025/solver/L2/include -I/home/yxh/fpga-amd2025/solver/../utils/L1/include/.}}}
set DirectiveFile {}
set TBFiles {verilog /home/yxh/fpga-amd2025/solver/L1/tests/cholesky/host/test_cholesky.cpp bc /home/yxh/fpga-amd2025/solver/L1/tests/cholesky/host/test_cholesky.cpp vhdl /home/yxh/fpga-amd2025/solver/L1/tests/cholesky/host/test_cholesky.cpp sc /home/yxh/fpga-amd2025/solver/L1/tests/cholesky/host/test_cholesky.cpp cas /home/yxh/fpga-amd2025/solver/L1/tests/cholesky/host/test_cholesky.cpp c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile {}
set ApsFile hls.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq}}}
set HPFPO 0
