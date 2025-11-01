set moduleName mergeKopad_32_64_256_32_64_s
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
set cdfgNum 22
set C_modelName {mergeKopad<32, 64, 256, 32, 64>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ kopad2Strm int 512 regular {fifo 0 volatile }  }
	{ msgHashStrm int 256 regular {fifo 0 volatile }  }
	{ eMsgHashStrm int 1 regular {fifo 0 volatile }  }
	{ mergeKopadStrm int 32 regular {fifo 1 volatile }  }
	{ mergeKopadLenStrm int 64 regular {fifo 1 volatile }  }
	{ eMergeKopadLenStrm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "kopad2Strm", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "msgHashStrm", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "eMsgHashStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "mergeKopadStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mergeKopadLenStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "eMergeKopadLenStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 40
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
	{ kopad2Strm_dout sc_in sc_lv 512 signal 0 } 
	{ kopad2Strm_empty_n sc_in sc_logic 1 signal 0 } 
	{ kopad2Strm_read sc_out sc_logic 1 signal 0 } 
	{ kopad2Strm_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ kopad2Strm_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ msgHashStrm_dout sc_in sc_lv 256 signal 1 } 
	{ msgHashStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ msgHashStrm_read sc_out sc_logic 1 signal 1 } 
	{ msgHashStrm_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ msgHashStrm_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ eMsgHashStrm_dout sc_in sc_lv 1 signal 2 } 
	{ eMsgHashStrm_empty_n sc_in sc_logic 1 signal 2 } 
	{ eMsgHashStrm_read sc_out sc_logic 1 signal 2 } 
	{ eMsgHashStrm_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ eMsgHashStrm_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ mergeKopadStrm_din sc_out sc_lv 32 signal 3 } 
	{ mergeKopadStrm_full_n sc_in sc_logic 1 signal 3 } 
	{ mergeKopadStrm_write sc_out sc_logic 1 signal 3 } 
	{ mergeKopadStrm_num_data_valid sc_in sc_lv 32 signal 3 } 
	{ mergeKopadStrm_fifo_cap sc_in sc_lv 32 signal 3 } 
	{ mergeKopadLenStrm_din sc_out sc_lv 64 signal 4 } 
	{ mergeKopadLenStrm_full_n sc_in sc_logic 1 signal 4 } 
	{ mergeKopadLenStrm_write sc_out sc_logic 1 signal 4 } 
	{ mergeKopadLenStrm_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ mergeKopadLenStrm_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ eMergeKopadLenStrm_din sc_out sc_lv 1 signal 5 } 
	{ eMergeKopadLenStrm_full_n sc_in sc_logic 1 signal 5 } 
	{ eMergeKopadLenStrm_write sc_out sc_logic 1 signal 5 } 
	{ eMergeKopadLenStrm_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ eMergeKopadLenStrm_fifo_cap sc_in sc_lv 3 signal 5 } 
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
 	{ "name": "kopad2Strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "kopad2Strm", "role": "dout" }} , 
 	{ "name": "kopad2Strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kopad2Strm", "role": "empty_n" }} , 
 	{ "name": "kopad2Strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kopad2Strm", "role": "read" }} , 
 	{ "name": "kopad2Strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kopad2Strm", "role": "num_data_valid" }} , 
 	{ "name": "kopad2Strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kopad2Strm", "role": "fifo_cap" }} , 
 	{ "name": "msgHashStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "dout" }} , 
 	{ "name": "msgHashStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "empty_n" }} , 
 	{ "name": "msgHashStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "read" }} , 
 	{ "name": "msgHashStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "num_data_valid" }} , 
 	{ "name": "msgHashStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "fifo_cap" }} , 
 	{ "name": "eMsgHashStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "dout" }} , 
 	{ "name": "eMsgHashStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "empty_n" }} , 
 	{ "name": "eMsgHashStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "read" }} , 
 	{ "name": "eMsgHashStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "num_data_valid" }} , 
 	{ "name": "eMsgHashStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "fifo_cap" }} , 
 	{ "name": "mergeKopadStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mergeKopadStrm", "role": "din" }} , 
 	{ "name": "mergeKopadStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKopadStrm", "role": "full_n" }} , 
 	{ "name": "mergeKopadStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKopadStrm", "role": "write" }} , 
 	{ "name": "mergeKopadStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mergeKopadStrm", "role": "num_data_valid" }} , 
 	{ "name": "mergeKopadStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mergeKopadStrm", "role": "fifo_cap" }} , 
 	{ "name": "mergeKopadLenStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mergeKopadLenStrm", "role": "din" }} , 
 	{ "name": "mergeKopadLenStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKopadLenStrm", "role": "full_n" }} , 
 	{ "name": "mergeKopadLenStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKopadLenStrm", "role": "write" }} , 
 	{ "name": "mergeKopadLenStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mergeKopadLenStrm", "role": "num_data_valid" }} , 
 	{ "name": "mergeKopadLenStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mergeKopadLenStrm", "role": "fifo_cap" }} , 
 	{ "name": "eMergeKopadLenStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eMergeKopadLenStrm", "role": "din" }} , 
 	{ "name": "eMergeKopadLenStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMergeKopadLenStrm", "role": "full_n" }} , 
 	{ "name": "eMergeKopadLenStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMergeKopadLenStrm", "role": "write" }} , 
 	{ "name": "eMergeKopadLenStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eMergeKopadLenStrm", "role": "num_data_valid" }} , 
 	{ "name": "eMergeKopadLenStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eMergeKopadLenStrm", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "mergeKopad_32_64_256_32_64_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "kopad2Strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kopad2Strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgHashStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "msgHashStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMsgHashStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eMsgHashStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2_fu_91", "Port" : "mergeKopadStrm", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "3", "SubInstance" : "grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3_fu_98", "Port" : "mergeKopadStrm", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "mergeKopadLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mergeKopadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMergeKopadLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eMergeKopadLenStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_213_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2_fu_91", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "kopad", "Type" : "None", "Direction" : "I"},
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mergeKopadStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_220_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2_fu_91.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3_fu_98", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "msgHash", "Type" : "None", "Direction" : "I"},
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mergeKopadStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_226_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"}]}


set ArgLastReadFirstWriteLatency {
	mergeKopad_32_64_256_32_64_s {
		kopad2Strm {Type I LastRead 1 FirstWrite -1}
		msgHashStrm {Type I LastRead 1 FirstWrite -1}
		eMsgHashStrm {Type I LastRead 1 FirstWrite -1}
		mergeKopadStrm {Type O LastRead -1 FirstWrite 1}
		mergeKopadLenStrm {Type O LastRead -1 FirstWrite 1}
		eMergeKopadLenStrm {Type O LastRead -1 FirstWrite 1}}
	mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2 {
		kopad {Type I LastRead 0 FirstWrite -1}
		mergeKopadStrm {Type O LastRead -1 FirstWrite 1}}
	mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3 {
		msgHash {Type I LastRead 0 FirstWrite -1}
		mergeKopadStrm {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	kopad2Strm { ap_fifo {  { kopad2Strm_dout fifo_data_in 0 512 }  { kopad2Strm_empty_n fifo_status 0 1 }  { kopad2Strm_read fifo_port_we 1 1 }  { kopad2Strm_num_data_valid fifo_status_num_data_valid 0 3 }  { kopad2Strm_fifo_cap fifo_update 0 3 } } }
	msgHashStrm { ap_fifo {  { msgHashStrm_dout fifo_data_in 0 256 }  { msgHashStrm_empty_n fifo_status 0 1 }  { msgHashStrm_read fifo_port_we 1 1 }  { msgHashStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { msgHashStrm_fifo_cap fifo_update 0 3 } } }
	eMsgHashStrm { ap_fifo {  { eMsgHashStrm_dout fifo_data_in 0 1 }  { eMsgHashStrm_empty_n fifo_status 0 1 }  { eMsgHashStrm_read fifo_port_we 1 1 }  { eMsgHashStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { eMsgHashStrm_fifo_cap fifo_update 0 3 } } }
	mergeKopadStrm { ap_fifo {  { mergeKopadStrm_din fifo_data_in 1 32 }  { mergeKopadStrm_full_n fifo_status 0 1 }  { mergeKopadStrm_write fifo_port_we 1 1 }  { mergeKopadStrm_num_data_valid fifo_status_num_data_valid 0 32 }  { mergeKopadStrm_fifo_cap fifo_update 0 32 } } }
	mergeKopadLenStrm { ap_fifo {  { mergeKopadLenStrm_din fifo_data_in 1 64 }  { mergeKopadLenStrm_full_n fifo_status 0 1 }  { mergeKopadLenStrm_write fifo_port_we 1 1 }  { mergeKopadLenStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { mergeKopadLenStrm_fifo_cap fifo_update 0 3 } } }
	eMergeKopadLenStrm { ap_fifo {  { eMergeKopadLenStrm_din fifo_data_in 1 1 }  { eMergeKopadLenStrm_full_n fifo_status 0 1 }  { eMergeKopadLenStrm_write fifo_port_we 1 1 }  { eMergeKopadLenStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { eMergeKopadLenStrm_fifo_cap fifo_update 0 3 } } }
}
