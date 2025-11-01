set moduleName mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3
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
set cdfgNum 22
set C_modelName {mergeKipad<32, 64, 256, 64>_Pipeline_VITIS_LOOP_171_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ empty int 63 regular  }
	{ msgStrm int 32 regular {fifo 0 volatile }  }
	{ mergeKipadStrm int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "msgStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mergeKipadStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ msgStrm_dout sc_in sc_lv 32 signal 1 } 
	{ msgStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ msgStrm_read sc_out sc_logic 1 signal 1 } 
	{ mergeKipadStrm_din sc_out sc_lv 32 signal 2 } 
	{ mergeKipadStrm_full_n sc_in sc_logic 1 signal 2 } 
	{ mergeKipadStrm_write sc_out sc_logic 1 signal 2 } 
	{ mergeKipadStrm_num_data_valid sc_in sc_lv 8 signal 2 } 
	{ mergeKipadStrm_fifo_cap sc_in sc_lv 8 signal 2 } 
	{ empty sc_in sc_lv 63 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "msgStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "msgStrm", "role": "dout" }} , 
 	{ "name": "msgStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm", "role": "empty_n" }} , 
 	{ "name": "msgStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm", "role": "read" }} , 
 	{ "name": "mergeKipadStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "din" }} , 
 	{ "name": "mergeKipadStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "full_n" }} , 
 	{ "name": "mergeKipadStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "write" }} , 
 	{ "name": "mergeKipadStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "num_data_valid" }} , 
 	{ "name": "mergeKipadStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "fifo_cap" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "msgStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mergeKipadStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_171_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3 {
		empty {Type I LastRead 0 FirstWrite -1}
		msgStrm {Type I LastRead 2 FirstWrite -1}
		mergeKipadStrm {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	empty { ap_none {  { empty in_data 0 63 } } }
	msgStrm { ap_fifo {  { msgStrm_dout fifo_data_in 0 32 }  { msgStrm_empty_n fifo_status 0 1 }  { msgStrm_read fifo_port_we 1 1 } } }
	mergeKipadStrm { ap_fifo {  { mergeKipadStrm_din fifo_data_in 1 32 }  { mergeKipadStrm_full_n fifo_status 0 1 }  { mergeKipadStrm_write fifo_port_we 1 1 }  { mergeKipadStrm_num_data_valid fifo_status_num_data_valid 0 8 }  { mergeKipadStrm_fifo_cap fifo_update 0 8 } } }
}
