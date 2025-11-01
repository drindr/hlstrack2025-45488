set moduleName kpad_32_64_256_32_64_sha256_wrapper_s
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
set C_modelName {kpad<32, 64, 256, 32, 64, sha256_wrapper>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ keyStrm int 32 regular {fifo 0 volatile }  }
	{ eLenStrm int 1 regular {fifo 0 volatile }  }
	{ kipadStrm int 512 regular {fifo 1 volatile }  }
	{ kopadStrm int 512 regular {fifo 1 volatile }  }
	{ eKipadStrm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "keyStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "eLenStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kipadStrm", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "kopadStrm", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "eKipadStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
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
	{ keyStrm_dout sc_in sc_lv 32 signal 0 } 
	{ keyStrm_empty_n sc_in sc_logic 1 signal 0 } 
	{ keyStrm_read sc_out sc_logic 1 signal 0 } 
	{ eLenStrm_dout sc_in sc_lv 1 signal 1 } 
	{ eLenStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ eLenStrm_read sc_out sc_logic 1 signal 1 } 
	{ kipadStrm_din sc_out sc_lv 512 signal 2 } 
	{ kipadStrm_full_n sc_in sc_logic 1 signal 2 } 
	{ kipadStrm_write sc_out sc_logic 1 signal 2 } 
	{ kipadStrm_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ kipadStrm_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ kopadStrm_din sc_out sc_lv 512 signal 3 } 
	{ kopadStrm_full_n sc_in sc_logic 1 signal 3 } 
	{ kopadStrm_write sc_out sc_logic 1 signal 3 } 
	{ kopadStrm_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ kopadStrm_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ eKipadStrm_din sc_out sc_lv 1 signal 4 } 
	{ eKipadStrm_full_n sc_in sc_logic 1 signal 4 } 
	{ eKipadStrm_write sc_out sc_logic 1 signal 4 } 
	{ eKipadStrm_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ eKipadStrm_fifo_cap sc_in sc_lv 3 signal 4 } 
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
 	{ "name": "keyStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keyStrm", "role": "dout" }} , 
 	{ "name": "keyStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyStrm", "role": "empty_n" }} , 
 	{ "name": "keyStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyStrm", "role": "read" }} , 
 	{ "name": "eLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eLenStrm", "role": "dout" }} , 
 	{ "name": "eLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eLenStrm", "role": "empty_n" }} , 
 	{ "name": "eLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eLenStrm", "role": "read" }} , 
 	{ "name": "kipadStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "kipadStrm", "role": "din" }} , 
 	{ "name": "kipadStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kipadStrm", "role": "full_n" }} , 
 	{ "name": "kipadStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kipadStrm", "role": "write" }} , 
 	{ "name": "kipadStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kipadStrm", "role": "num_data_valid" }} , 
 	{ "name": "kipadStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kipadStrm", "role": "fifo_cap" }} , 
 	{ "name": "kopadStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "kopadStrm", "role": "din" }} , 
 	{ "name": "kopadStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kopadStrm", "role": "full_n" }} , 
 	{ "name": "kopadStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kopadStrm", "role": "write" }} , 
 	{ "name": "kopadStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kopadStrm", "role": "num_data_valid" }} , 
 	{ "name": "kopadStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kopadStrm", "role": "fifo_cap" }} , 
 	{ "name": "eKipadStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eKipadStrm", "role": "din" }} , 
 	{ "name": "eKipadStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eKipadStrm", "role": "full_n" }} , 
 	{ "name": "eKipadStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eKipadStrm", "role": "write" }} , 
 	{ "name": "eKipadStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eKipadStrm", "role": "num_data_valid" }} , 
 	{ "name": "eKipadStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eKipadStrm", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "kpad_32_64_256_32_64_sha256_wrapper_s",
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
			{"Name" : "keyStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_kpad_32_64_256_32_64_sha256_wrapper_Pipeline_VITIS_LOOP_120_2_fu_215", "Port" : "keyStrm", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "eLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "eLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kipadStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kipadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kopadStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kopadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eKipadStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eKipadStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_118_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kpad_32_64_256_32_64_sha256_wrapper_Pipeline_VITIS_LOOP_120_2_fu_215", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "kpad_32_64_256_32_64_sha256_wrapper_Pipeline_VITIS_LOOP_120_2",
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
			{"Name" : "keyStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "keyStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_120_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kpad_32_64_256_32_64_sha256_wrapper_Pipeline_VITIS_LOOP_120_2_fu_215.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	kpad_32_64_256_32_64_sha256_wrapper_s {
		keyStrm {Type I LastRead 1 FirstWrite -1}
		eLenStrm {Type I LastRead 1 FirstWrite -1}
		kipadStrm {Type O LastRead -1 FirstWrite 4}
		kopadStrm {Type O LastRead -1 FirstWrite 4}
		eKipadStrm {Type O LastRead -1 FirstWrite 1}}
	kpad_32_64_256_32_64_sha256_wrapper_Pipeline_VITIS_LOOP_120_2 {
		keyStrm {Type I LastRead 1 FirstWrite -1}
		k1_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	keyStrm { ap_fifo {  { keyStrm_dout fifo_data_in 0 32 }  { keyStrm_empty_n fifo_status 0 1 }  { keyStrm_read fifo_port_we 1 1 } } }
	eLenStrm { ap_fifo {  { eLenStrm_dout fifo_data_in 0 1 }  { eLenStrm_empty_n fifo_status 0 1 }  { eLenStrm_read fifo_port_we 1 1 } } }
	kipadStrm { ap_fifo {  { kipadStrm_din fifo_data_in 1 512 }  { kipadStrm_full_n fifo_status 0 1 }  { kipadStrm_write fifo_port_we 1 1 }  { kipadStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { kipadStrm_fifo_cap fifo_update 0 3 } } }
	kopadStrm { ap_fifo {  { kopadStrm_din fifo_data_in 1 512 }  { kopadStrm_full_n fifo_status 0 1 }  { kopadStrm_write fifo_port_we 1 1 }  { kopadStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { kopadStrm_fifo_cap fifo_update 0 3 } } }
	eKipadStrm { ap_fifo {  { eKipadStrm_din fifo_data_in 1 1 }  { eKipadStrm_full_n fifo_status 0 1 }  { eKipadStrm_write fifo_port_we 1 1 }  { eKipadStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { eKipadStrm_fifo_cap fifo_update 0 3 } } }
}
