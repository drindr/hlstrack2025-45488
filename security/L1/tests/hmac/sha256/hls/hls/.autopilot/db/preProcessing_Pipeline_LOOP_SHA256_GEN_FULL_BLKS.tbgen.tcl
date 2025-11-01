set moduleName preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS
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
set C_modelName {preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ trunc_ln int 58 regular  }
	{ mergeKipadStrm int 32 regular {fifo 0 volatile }  }
	{ blk_strm int 512 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 58, "direction" : "READONLY"} , 
 	{ "Name" : "mergeKipadStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "blk_strm", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mergeKipadStrm_dout sc_in sc_lv 32 signal 1 } 
	{ mergeKipadStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ mergeKipadStrm_read sc_out sc_logic 1 signal 1 } 
	{ mergeKipadStrm_num_data_valid sc_in sc_lv 8 signal 1 } 
	{ mergeKipadStrm_fifo_cap sc_in sc_lv 8 signal 1 } 
	{ blk_strm_din sc_out sc_lv 512 signal 2 } 
	{ blk_strm_full_n sc_in sc_logic 1 signal 2 } 
	{ blk_strm_write sc_out sc_logic 1 signal 2 } 
	{ blk_strm_num_data_valid sc_in sc_lv 6 signal 2 } 
	{ blk_strm_fifo_cap sc_in sc_lv 6 signal 2 } 
	{ trunc_ln sc_in sc_lv 58 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mergeKipadStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "dout" }} , 
 	{ "name": "mergeKipadStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "empty_n" }} , 
 	{ "name": "mergeKipadStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "read" }} , 
 	{ "name": "mergeKipadStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "num_data_valid" }} , 
 	{ "name": "mergeKipadStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "fifo_cap" }} , 
 	{ "name": "blk_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "blk_strm", "role": "din" }} , 
 	{ "name": "blk_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blk_strm", "role": "full_n" }} , 
 	{ "name": "blk_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blk_strm", "role": "write" }} , 
 	{ "name": "blk_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blk_strm", "role": "num_data_valid" }} , 
 	{ "name": "blk_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blk_strm", "role": "fifo_cap" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":58, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mergeKipadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_GEN_FULL_BLKS", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS {
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		mergeKipadStrm {Type I LastRead 17 FirstWrite -1}
		blk_strm {Type O LastRead -1 FirstWrite 17}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	trunc_ln { ap_none {  { trunc_ln in_data 0 58 } } }
	mergeKipadStrm { ap_fifo {  { mergeKipadStrm_dout fifo_data_in 0 32 }  { mergeKipadStrm_empty_n fifo_status 0 1 }  { mergeKipadStrm_read fifo_port_we 1 1 }  { mergeKipadStrm_num_data_valid fifo_status_num_data_valid 0 8 }  { mergeKipadStrm_fifo_cap fifo_update 0 8 } } }
	blk_strm { ap_fifo {  { blk_strm_din fifo_data_in 1 512 }  { blk_strm_full_n fifo_status 0 1 }  { blk_strm_write fifo_port_we 1 1 }  { blk_strm_num_data_valid fifo_status_num_data_valid 0 6 }  { blk_strm_fifo_cap fifo_update 0 6 } } }
}
