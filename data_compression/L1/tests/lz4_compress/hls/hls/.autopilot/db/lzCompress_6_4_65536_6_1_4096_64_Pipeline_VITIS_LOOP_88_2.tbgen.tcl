set moduleName lzCompress_6_4_65536_6_1_4096_64_Pipeline_VITIS_LOOP_88_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
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
set C_modelName {lzCompress<6, 4, 65536, 6, 1, 4096, 64>_Pipeline_VITIS_LOOP_88_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ empty_11 int 8 regular  }
	{ empty_12 int 8 regular  }
	{ empty_13 int 8 regular  }
	{ empty_14 int 8 regular  }
	{ empty int 8 regular  }
	{ boundary int 24 regular  }
	{ inStream int 8 regular {fifo 0 volatile }  }
	{ compressdStream int 32 regular {fifo 1 volatile }  }
	{ outValue_4_out int 8 regular {pointer 1}  }
	{ outValue_3_out int 8 regular {pointer 1}  }
	{ outValue_2_out int 8 regular {pointer 1}  }
	{ outValue_1_out int 8 regular {pointer 1}  }
	{ outValue_out int 8 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "empty_11", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_12", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_13", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_14", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "boundary", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "inStream", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "compressdStream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outValue_4_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outValue_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outValue_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outValue_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outValue_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ empty_11 sc_in sc_lv 8 signal 0 } 
	{ empty_12 sc_in sc_lv 8 signal 1 } 
	{ empty_13 sc_in sc_lv 8 signal 2 } 
	{ empty_14 sc_in sc_lv 8 signal 3 } 
	{ empty sc_in sc_lv 8 signal 4 } 
	{ boundary sc_in sc_lv 24 signal 5 } 
	{ inStream_dout sc_in sc_lv 8 signal 6 } 
	{ inStream_empty_n sc_in sc_logic 1 signal 6 } 
	{ inStream_read sc_out sc_logic 1 signal 6 } 
	{ compressdStream_din sc_out sc_lv 32 signal 7 } 
	{ compressdStream_full_n sc_in sc_logic 1 signal 7 } 
	{ compressdStream_write sc_out sc_logic 1 signal 7 } 
	{ compressdStream_num_data_valid sc_in sc_lv 4 signal 7 } 
	{ compressdStream_fifo_cap sc_in sc_lv 4 signal 7 } 
	{ outValue_4_out sc_out sc_lv 8 signal 8 } 
	{ outValue_4_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ outValue_3_out sc_out sc_lv 8 signal 9 } 
	{ outValue_3_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ outValue_2_out sc_out sc_lv 8 signal 10 } 
	{ outValue_2_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ outValue_1_out sc_out sc_lv 8 signal 11 } 
	{ outValue_1_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ outValue_out sc_out sc_lv 8 signal 12 } 
	{ outValue_out_ap_vld sc_out sc_logic 1 outvld 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "empty_11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "empty_11", "role": "default" }} , 
 	{ "name": "empty_12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "empty_12", "role": "default" }} , 
 	{ "name": "empty_13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "empty_13", "role": "default" }} , 
 	{ "name": "empty_14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "empty_14", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "boundary", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "boundary", "role": "default" }} , 
 	{ "name": "inStream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inStream", "role": "dout" }} , 
 	{ "name": "inStream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream", "role": "empty_n" }} , 
 	{ "name": "inStream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream", "role": "read" }} , 
 	{ "name": "compressdStream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compressdStream", "role": "din" }} , 
 	{ "name": "compressdStream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compressdStream", "role": "full_n" }} , 
 	{ "name": "compressdStream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compressdStream", "role": "write" }} , 
 	{ "name": "compressdStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "compressdStream", "role": "num_data_valid" }} , 
 	{ "name": "compressdStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "compressdStream", "role": "fifo_cap" }} , 
 	{ "name": "outValue_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outValue_4_out", "role": "default" }} , 
 	{ "name": "outValue_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outValue_4_out", "role": "ap_vld" }} , 
 	{ "name": "outValue_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outValue_3_out", "role": "default" }} , 
 	{ "name": "outValue_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outValue_3_out", "role": "ap_vld" }} , 
 	{ "name": "outValue_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outValue_2_out", "role": "default" }} , 
 	{ "name": "outValue_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outValue_2_out", "role": "ap_vld" }} , 
 	{ "name": "outValue_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outValue_1_out", "role": "default" }} , 
 	{ "name": "outValue_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outValue_1_out", "role": "ap_vld" }} , 
 	{ "name": "outValue_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outValue_out", "role": "default" }} , 
 	{ "name": "outValue_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outValue_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dict_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		dict {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "33554433"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "33554433"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	empty_11 { ap_none {  { empty_11 in_data 0 8 } } }
	empty_12 { ap_none {  { empty_12 in_data 0 8 } } }
	empty_13 { ap_none {  { empty_13 in_data 0 8 } } }
	empty_14 { ap_none {  { empty_14 in_data 0 8 } } }
	empty { ap_none {  { empty in_data 0 8 } } }
	boundary { ap_none {  { boundary in_data 0 24 } } }
	inStream { ap_fifo {  { inStream_dout fifo_data_in 0 8 }  { inStream_empty_n fifo_status 0 1 }  { inStream_read fifo_port_we 1 1 } } }
	compressdStream { ap_fifo {  { compressdStream_din fifo_data_in 1 32 }  { compressdStream_full_n fifo_status 0 1 }  { compressdStream_write fifo_port_we 1 1 }  { compressdStream_num_data_valid fifo_status_num_data_valid 0 4 }  { compressdStream_fifo_cap fifo_update 0 4 } } }
	outValue_4_out { ap_vld {  { outValue_4_out out_data 1 8 }  { outValue_4_out_ap_vld out_vld 1 1 } } }
	outValue_3_out { ap_vld {  { outValue_3_out out_data 1 8 }  { outValue_3_out_ap_vld out_vld 1 1 } } }
	outValue_2_out { ap_vld {  { outValue_2_out out_data 1 8 }  { outValue_2_out_ap_vld out_vld 1 1 } } }
	outValue_1_out { ap_vld {  { outValue_1_out out_data 1 8 }  { outValue_1_out_ap_vld out_vld 1 1 } } }
	outValue_out { ap_vld {  { outValue_out out_data 1 8 }  { outValue_out_ap_vld out_vld 1 1 } } }
}
