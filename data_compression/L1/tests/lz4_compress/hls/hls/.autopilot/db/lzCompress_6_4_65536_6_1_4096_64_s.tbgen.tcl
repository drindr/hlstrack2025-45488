set moduleName lzCompress_6_4_65536_6_1_4096_64_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 15
set C_modelName {lzCompress<6, 4, 65536, 6, 1, 4096, 64>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ inStream int 8 regular {fifo 0 volatile }  }
	{ compressdStream int 32 regular {fifo 1 volatile }  }
	{ input_size int 32 regular  }
	{ input_size_c2 int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "inStream", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "compressdStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_size_c2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ inStream_dout sc_in sc_lv 8 signal 0 } 
	{ inStream_empty_n sc_in sc_logic 1 signal 0 } 
	{ inStream_read sc_out sc_logic 1 signal 0 } 
	{ compressdStream_din sc_out sc_lv 32 signal 1 } 
	{ compressdStream_full_n sc_in sc_logic 1 signal 1 } 
	{ compressdStream_write sc_out sc_logic 1 signal 1 } 
	{ compressdStream_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ compressdStream_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ input_size sc_in sc_lv 32 signal 2 } 
	{ input_size_c2_din sc_out sc_lv 32 signal 3 } 
	{ input_size_c2_full_n sc_in sc_logic 1 signal 3 } 
	{ input_size_c2_write sc_out sc_logic 1 signal 3 } 
	{ input_size_c2_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ input_size_c2_fifo_cap sc_in sc_lv 3 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "inStream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream", "role": "dout" }} , 
 	{ "name": "inStream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream", "role": "empty_n" }} , 
 	{ "name": "inStream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream", "role": "read" }} , 
 	{ "name": "compressdStream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compressdStream", "role": "din" }} , 
 	{ "name": "compressdStream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compressdStream", "role": "full_n" }} , 
 	{ "name": "compressdStream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compressdStream", "role": "write" }} , 
 	{ "name": "compressdStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "compressdStream", "role": "num_data_valid" }} , 
 	{ "name": "compressdStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "compressdStream", "role": "fifo_cap" }} , 
 	{ "name": "input_size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_size", "role": "default" }} , 
 	{ "name": "input_size_c2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_size_c2", "role": "din" }} , 
 	{ "name": "input_size_c2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_size_c2", "role": "full_n" }} , 
 	{ "name": "input_size_c2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_size_c2", "role": "write" }} , 
 	{ "name": "input_size_c2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_size_c2", "role": "num_data_valid" }} , 
 	{ "name": "input_size_c2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_size_c2", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4"],
		"CDFG" : "lzCompress_6_4_65536_6_1_4096_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "33554512",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_4096_64_Pipeline_VITIS_LOOP_88_2_fu_105", "Port" : "inStream", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "4", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_4096_64_Pipeline_lz_left_bytes_fu_126", "Port" : "inStream", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "compressdStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "compressdStream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_4096_64_Pipeline_VITIS_LOOP_88_2_fu_105", "Port" : "compressdStream", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "4", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_4096_64_Pipeline_lz_left_bytes_fu_126", "Port" : "compressdStream", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "input_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_size_c2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_size_c2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dict", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lzCompress_6_4_65536_6_1_4096_64_Pipeline_VITIS_LOOP_88_2_fu_105", "Port" : "dict", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lzCompress_6_4_65536_6_1_4096_64_Pipeline_VITIS_LOOP_88_2_fu_105", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "lzCompress_6_4_65536_6_1_4096_64_Pipeline_VITIS_LOOP_88_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "33554433",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "boundary", "Type" : "None", "Direction" : "I"},
			{"Name" : "inStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "compressdStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "compressdStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outValue_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outValue_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outValue_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outValue_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outValue_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dict", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_88_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lzCompress_6_4_65536_6_1_4096_64_Pipeline_VITIS_LOOP_88_2_fu_105.dict_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lzCompress_6_4_65536_6_1_4096_64_Pipeline_VITIS_LOOP_88_2_fu_105.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lzCompress_6_4_65536_6_1_4096_64_Pipeline_lz_left_bytes_fu_126", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "lzCompress_6_4_65536_6_1_4096_64_Pipeline_lz_left_bytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inStream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "compressdStream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "compressdStream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "lz_left_bytes", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lzCompress_6_4_65536_6_1_4096_64_Pipeline_lz_left_bytes_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"}]}


set ArgLastReadFirstWriteLatency {
	lzCompress_6_4_65536_6_1_4096_64_s {
		inStream {Type I LastRead 4 FirstWrite -1}
		compressdStream {Type O LastRead -1 FirstWrite 1}
		input_size {Type I LastRead 0 FirstWrite -1}
		input_size_c2 {Type O LastRead -1 FirstWrite 0}
		dict {Type IO LastRead -1 FirstWrite -1}}
	lzCompress_6_4_65536_6_1_4096_64_Pipeline_VITIS_LOOP_88_2 {
		empty_11 {Type I LastRead 0 FirstWrite -1}
		empty_12 {Type I LastRead 0 FirstWrite -1}
		empty_13 {Type I LastRead 0 FirstWrite -1}
		empty_14 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		boundary {Type I LastRead 0 FirstWrite -1}
		inStream {Type I LastRead 2 FirstWrite -1}
		compressdStream {Type O LastRead -1 FirstWrite 4}
		outValue_4_out {Type O LastRead -1 FirstWrite 2}
		outValue_3_out {Type O LastRead -1 FirstWrite 2}
		outValue_2_out {Type O LastRead -1 FirstWrite 2}
		outValue_1_out {Type O LastRead -1 FirstWrite 2}
		outValue_out {Type O LastRead -1 FirstWrite 2}
		dict {Type IO LastRead -1 FirstWrite -1}}
	lzCompress_6_4_65536_6_1_4096_64_Pipeline_lz_left_bytes {
		inStream {Type I LastRead 2 FirstWrite -1}
		compressdStream {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "33554512"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "33554512"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	inStream { ap_fifo {  { inStream_dout fifo_data_in 0 8 }  { inStream_empty_n fifo_status 0 1 }  { inStream_read fifo_port_we 1 1 } } }
	compressdStream { ap_fifo {  { compressdStream_din fifo_data_in 1 32 }  { compressdStream_full_n fifo_status 0 1 }  { compressdStream_write fifo_port_we 1 1 }  { compressdStream_num_data_valid fifo_status_num_data_valid 0 4 }  { compressdStream_fifo_cap fifo_update 0 4 } } }
	input_size { ap_none {  { input_size in_data 0 32 } } }
	input_size_c2 { ap_fifo {  { input_size_c2_din fifo_data_in 1 32 }  { input_size_c2_full_n fifo_status 0 1 }  { input_size_c2_write fifo_port_we 1 1 }  { input_size_c2_num_data_valid fifo_status_num_data_valid 0 3 }  { input_size_c2_fifo_cap fifo_update 0 3 } } }
}
