set moduleName test_hmac_sha256
set isTopModule 1
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
set C_modelName {test_hmac_sha256}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ keyStrm int 32 regular {fifo 0 volatile }  }
	{ msgStrm int 32 regular {fifo 0 volatile }  }
	{ lenStrm int 64 regular {fifo 0 volatile }  }
	{ eLenStrm int 1 regular {fifo 0 volatile }  }
	{ hshStrm int 256 regular {fifo 1 volatile }  }
	{ eHshStrm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "keyStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "msgStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lenStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "eLenStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "hshStrm", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "eHshStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ keyStrm_dout sc_in sc_lv 32 signal 0 } 
	{ keyStrm_empty_n sc_in sc_logic 1 signal 0 } 
	{ keyStrm_read sc_out sc_logic 1 signal 0 } 
	{ msgStrm_dout sc_in sc_lv 32 signal 1 } 
	{ msgStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ msgStrm_read sc_out sc_logic 1 signal 1 } 
	{ lenStrm_dout sc_in sc_lv 64 signal 2 } 
	{ lenStrm_empty_n sc_in sc_logic 1 signal 2 } 
	{ lenStrm_read sc_out sc_logic 1 signal 2 } 
	{ eLenStrm_dout sc_in sc_lv 1 signal 3 } 
	{ eLenStrm_empty_n sc_in sc_logic 1 signal 3 } 
	{ eLenStrm_read sc_out sc_logic 1 signal 3 } 
	{ hshStrm_din sc_out sc_lv 256 signal 4 } 
	{ hshStrm_full_n sc_in sc_logic 1 signal 4 } 
	{ hshStrm_write sc_out sc_logic 1 signal 4 } 
	{ eHshStrm_din sc_out sc_lv 1 signal 5 } 
	{ eHshStrm_full_n sc_in sc_logic 1 signal 5 } 
	{ eHshStrm_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "keyStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keyStrm", "role": "dout" }} , 
 	{ "name": "keyStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyStrm", "role": "empty_n" }} , 
 	{ "name": "keyStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyStrm", "role": "read" }} , 
 	{ "name": "msgStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "msgStrm", "role": "dout" }} , 
 	{ "name": "msgStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm", "role": "empty_n" }} , 
 	{ "name": "msgStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm", "role": "read" }} , 
 	{ "name": "lenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lenStrm", "role": "dout" }} , 
 	{ "name": "lenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lenStrm", "role": "empty_n" }} , 
 	{ "name": "lenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lenStrm", "role": "read" }} , 
 	{ "name": "eLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eLenStrm", "role": "dout" }} , 
 	{ "name": "eLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eLenStrm", "role": "empty_n" }} , 
 	{ "name": "eLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eLenStrm", "role": "read" }} , 
 	{ "name": "hshStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "hshStrm", "role": "din" }} , 
 	{ "name": "hshStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hshStrm", "role": "full_n" }} , 
 	{ "name": "hshStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hshStrm", "role": "write" }} , 
 	{ "name": "eHshStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eHshStrm", "role": "din" }} , 
 	{ "name": "eHshStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eHshStrm", "role": "full_n" }} , 
 	{ "name": "eHshStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eHshStrm", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "test_hmac_sha256",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "keyStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38", "Port" : "keyStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38", "Port" : "msgStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "lenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38", "Port" : "lenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38", "Port" : "eLenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38", "Port" : "hshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38", "Port" : "eHshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38", "Parent" : "0", "Child" : ["2", "5", "35", "65", "66", "67", "68", "69", "70", "71", "72"],
		"CDFG" : "hmacDataflow_32_64_256_32_64_sha256_wrapper_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "kpad_32_64_256_32_64_sha256_wrapper_U0"}],
		"OutputProcess" : [
			{"ID" : "35", "Name" : "resHash_32_64_256_32_64_sha256_wrapper_U0"}],
		"Port" : [
			{"Name" : "keyStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "kpad_32_64_256_32_64_sha256_wrapper_U0", "Port" : "keyStrm"}]},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "msgHash_32_64_256_32_64_sha256_wrapper_U0", "Port" : "msgStrm"}]},
			{"Name" : "lenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "msgHash_32_64_256_32_64_sha256_wrapper_U0", "Port" : "lenStrm"}]},
			{"Name" : "eLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "kpad_32_64_256_32_64_sha256_wrapper_U0", "Port" : "eLenStrm"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "resHash_32_64_256_32_64_sha256_wrapper_U0", "Port" : "hshStrm"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "resHash_32_64_256_32_64_sha256_wrapper_U0", "Port" : "eHshStrm"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.kpad_32_64_256_32_64_sha256_wrapper_U0", "Parent" : "1", "Child" : ["3"],
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
					{"ID" : "3", "SubInstance" : "grp_kpad_32_64_256_32_64_sha256_wrapper_Pipeline_VITIS_LOOP_120_2_fu_215", "Port" : "keyStrm", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "eLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "eLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kipadStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5","6"], "DependentChan" : "65", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kipadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kopadStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5","6"], "DependentChan" : "66", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kopadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eKipadStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5","6"], "DependentChan" : "67", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eKipadStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_118_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.kpad_32_64_256_32_64_sha256_wrapper_U0.grp_kpad_32_64_256_32_64_sha256_wrapper_Pipeline_VITIS_LOOP_120_2_fu_215", "Parent" : "2", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.kpad_32_64_256_32_64_sha256_wrapper_U0.grp_kpad_32_64_256_32_64_sha256_wrapper_Pipeline_VITIS_LOOP_120_2_fu_215.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0", "Parent" : "1", "Child" : ["6", "11", "31", "32", "33", "34"],
		"CDFG" : "msgHash_32_64_256_32_64_sha256_wrapper_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_msgHash_32_64_256_32_64_sha256_wrapper_U0_U",
		"InputProcess" : [
			{"ID" : "6", "Name" : "mergeKipad_32_64_256_64_U0"}],
		"OutputProcess" : [
			{"ID" : "6", "Name" : "mergeKipad_32_64_256_64_U0"},
			{"ID" : "11", "Name" : "hash_U0"}],
		"Port" : [
			{"Name" : "kipadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "65", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "kipadStrm"}]},
			{"Name" : "kopadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "66", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "kopadStrm"}]},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "msgStrm"}]},
			{"Name" : "lenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "lenStrm"}]},
			{"Name" : "eKipadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "67", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "eKipadStrm"}]},
			{"Name" : "kopad2Strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35","36"], "DependentChan" : "68", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mergeKipad_32_64_256_64_U0", "Port" : "kopad2Strm"}]},
			{"Name" : "msgHashStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35","36"], "DependentChan" : "69", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "hash_U0", "Port" : "msgHashStrm"}]},
			{"Name" : "eMsgHashStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35","36"], "DependentChan" : "70", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "hash_U0", "Port" : "eMsgHashStrm"}]}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipad_32_64_256_64_U0", "Parent" : "5", "Child" : ["7", "9"],
		"CDFG" : "mergeKipad_32_64_256_64_s",
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
			{"Name" : "kipadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "65", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kipadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kopadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "66", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kopadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133", "Port" : "msgStrm", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "lenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "lenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eKipadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "67", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eKipadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "31", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2_fu_126", "Port" : "mergeKipadStrm", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "9", "SubInstance" : "grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133", "Port" : "mergeKipadStrm", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "mergeKipadLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "32", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMergeKipadLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "33", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eMergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kopad2Strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35","36"], "DependentChan" : "68", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kopad2Strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_152_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipad_32_64_256_64_U0.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2_fu_126", "Parent" : "6", "Child" : ["8"],
		"CDFG" : "mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2",
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
			{"Name" : "kipad", "Type" : "None", "Direction" : "I"},
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mergeKipadStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_162_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipad_32_64_256_64_U0.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipad_32_64_256_64_U0.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133", "Parent" : "6", "Child" : ["10"],
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
	{"ID" : "10", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipad_32_64_256_64_U0.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0", "Parent" : "5", "Child" : ["12"],
		"CDFG" : "hash",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "6",
		"StartFifo" : "start_for_hash_U0_U",
		"Port" : [
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "31", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha256_top_32_256_s_fu_32", "Port" : "mergeKopadStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "32", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha256_top_32_256_s_fu_32", "Port" : "mergeKopadLenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eMergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "33", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha256_top_32_256_s_fu_32", "Port" : "eMergeKopadLenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "msgHashStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35","36"], "DependentChan" : "69", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha256_top_32_256_s_fu_32", "Port" : "hshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eMsgHashStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35","36"], "DependentChan" : "70", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_sha256_top_32_256_s_fu_32", "Port" : "eHshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32", "Parent" : "11", "Child" : ["13", "18", "27", "28", "29", "30"],
		"CDFG" : "sha256_top_32_256_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "13", "Name" : "preProcessing_U0"}],
		"OutputProcess" : [
			{"ID" : "18", "Name" : "sha256Digest_unroll2_256_U0"}],
		"Port" : [
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "preProcessing_U0", "Port" : "mergeKipadStrm"}]},
			{"Name" : "mergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "preProcessing_U0", "Port" : "mergeKipadLenStrm"}]},
			{"Name" : "eMergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "preProcessing_U0", "Port" : "eMergeKipadLenStrm"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "sha256Digest_unroll2_256_U0", "Port" : "msgHashStrm"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "sha256Digest_unroll2_256_U0", "Port" : "eMsgHashStrm"}]}]},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0", "Parent" : "12", "Child" : ["14", "16"],
		"CDFG" : "preProcessing",
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
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mergeKipadStrm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Port" : "mergeKipadStrm", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "16", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280", "Port" : "mergeKipadStrm", "Inst_start_state" : "6", "Inst_end_state" : "24"}]},
			{"Name" : "mergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "eMergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "27", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Port" : "blk_strm", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "28", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["18"], "DependentChan" : "29", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_GENENERATE_MAIN", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "14", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Parent" : "13", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280", "Parent" : "13", "Child" : ["17"],
		"CDFG" : "preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mergeKipadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_GEN_COPY_TAIL_AND_ONE", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_unroll2_256_U0", "Parent" : "12", "Child" : ["19"],
		"CDFG" : "sha256Digest_unroll2_256_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"StartSource" : "13",
		"StartFifo" : "start_for_sha256Digest_unroll2_256_U0_U",
		"Port" : [
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "28", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "29", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "27", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272", "Port" : "blk_strm", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "msgHashStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "msgHashStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMsgHashStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "eMsgHashStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_609_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_590_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "19", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272", "Parent" : "18", "Child" : ["20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "135", "EstimateLatencyMax" : "135",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "g", "Type" : "None", "Direction" : "I"},
			{"Name" : "f", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "None", "Direction" : "I"},
			{"Name" : "d", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln65225_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln652_124_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln652_223_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln652_322_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln65321_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln653_120_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln653_219_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln653_318_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_636_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U48", "Parent" : "19"},
	{"ID" : "21", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U49", "Parent" : "19"},
	{"ID" : "22", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U50", "Parent" : "19"},
	{"ID" : "23", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U51", "Parent" : "19"},
	{"ID" : "24", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_129_6_32_1_1_U52", "Parent" : "19"},
	{"ID" : "25", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U53", "Parent" : "19"},
	{"ID" : "26", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.blk_strm_U", "Parent" : "12"},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.nblk_strm_U", "Parent" : "12"},
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.end_nblk_strm_U", "Parent" : "12"},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.hash_U0.grp_sha256_top_32_256_s_fu_32.start_for_sha256Digest_unroll2_256_U0_U", "Parent" : "12"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipadStrm_U", "Parent" : "5"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.mergeKipadLenStrm_U", "Parent" : "5"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.eMergeKipadLenStrm_U", "Parent" : "5"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHash_32_64_256_32_64_sha256_wrapper_U0.start_for_hash_U0_U", "Parent" : "5"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0", "Parent" : "1", "Child" : ["36", "41", "61", "62", "63", "64"],
		"CDFG" : "resHash_32_64_256_32_64_sha256_wrapper_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "5",
		"StartFifo" : "start_for_resHash_32_64_256_32_64_sha256_wrapper_U0_U",
		"InputProcess" : [
			{"ID" : "36", "Name" : "mergeKopad_32_64_256_32_64_U0"}],
		"OutputProcess" : [
			{"ID" : "41", "Name" : "hash_1_U0"}],
		"Port" : [
			{"Name" : "kopad2Strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5","6"], "DependentChan" : "68", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "mergeKopad_32_64_256_32_64_U0", "Port" : "kopad2Strm"}]},
			{"Name" : "msgHashStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5","11"], "DependentChan" : "69", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "mergeKopad_32_64_256_32_64_U0", "Port" : "msgHashStrm"}]},
			{"Name" : "eMsgHashStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5","11"], "DependentChan" : "70", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "mergeKopad_32_64_256_32_64_U0", "Port" : "eMsgHashStrm"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "hash_1_U0", "Port" : "hshStrm"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "hash_1_U0", "Port" : "eHshStrm"}]}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.mergeKopad_32_64_256_32_64_U0", "Parent" : "35", "Child" : ["37", "39"],
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
			{"Name" : "kopad2Strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5","6"], "DependentChan" : "68", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kopad2Strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgHashStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5","11"], "DependentChan" : "69", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "msgHashStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMsgHashStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5","11"], "DependentChan" : "70", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eMsgHashStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "61", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2_fu_91", "Port" : "mergeKopadStrm", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "39", "SubInstance" : "grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3_fu_98", "Port" : "mergeKopadStrm", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "mergeKopadLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "62", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mergeKopadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMergeKopadLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41"], "DependentChan" : "63", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eMergeKopadLenStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_213_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.mergeKopad_32_64_256_32_64_U0.grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2_fu_91", "Parent" : "36", "Child" : ["38"],
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
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.mergeKopad_32_64_256_32_64_U0.grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2_fu_91.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.mergeKopad_32_64_256_32_64_U0.grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3_fu_98", "Parent" : "36", "Child" : ["40"],
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
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.mergeKopad_32_64_256_32_64_U0.grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0", "Parent" : "35", "Child" : ["42"],
		"CDFG" : "hash_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "36",
		"StartFifo" : "start_for_hash_1_U0_U",
		"Port" : [
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["36"], "DependentChan" : "61", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "mergeKopadStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["36"], "DependentChan" : "62", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "mergeKopadLenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eMergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["36"], "DependentChan" : "63", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "eMergeKopadLenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "hshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "eHshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30", "Parent" : "41", "Child" : ["43", "48", "57", "58", "59", "60"],
		"CDFG" : "sha256_top_32_256_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "43", "Name" : "preProcessing_U0"}],
		"OutputProcess" : [
			{"ID" : "48", "Name" : "sha256Digest_unroll2_256_U0"}],
		"Port" : [
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "preProcessing_U0", "Port" : "mergeKipadStrm"}]},
			{"Name" : "mergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "preProcessing_U0", "Port" : "mergeKipadLenStrm"}]},
			{"Name" : "eMergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "preProcessing_U0", "Port" : "eMergeKipadLenStrm"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "sha256Digest_unroll2_256_U0", "Port" : "msgHashStrm"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "sha256Digest_unroll2_256_U0", "Port" : "eMsgHashStrm"}]}]},
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0", "Parent" : "42", "Child" : ["44", "46"],
		"CDFG" : "preProcessing",
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
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mergeKipadStrm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Port" : "mergeKipadStrm", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "46", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280", "Port" : "mergeKipadStrm", "Inst_start_state" : "6", "Inst_end_state" : "24"}]},
			{"Name" : "mergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "eMergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["48"], "DependentChan" : "57", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Port" : "blk_strm", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["48"], "DependentChan" : "58", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["48"], "DependentChan" : "59", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_GENENERATE_MAIN", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "44", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Parent" : "43", "Child" : ["45"],
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
	{"ID" : "45", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271.flow_control_loop_pipe_sequential_init_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280", "Parent" : "43", "Child" : ["47"],
		"CDFG" : "preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mergeKipadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_GEN_COPY_TAIL_AND_ONE", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0", "Parent" : "42", "Child" : ["49"],
		"CDFG" : "sha256Digest_unroll2_256_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"StartSource" : "43",
		"StartFifo" : "start_for_sha256Digest_unroll2_256_U0_U",
		"Port" : [
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["43"], "DependentChan" : "58", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["43"], "DependentChan" : "59", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["43"], "DependentChan" : "57", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272", "Port" : "blk_strm", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "msgHashStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "msgHashStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMsgHashStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "eMsgHashStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_609_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_590_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "49", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272", "Parent" : "48", "Child" : ["50", "51", "52", "53", "54", "55", "56"],
		"CDFG" : "sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "135", "EstimateLatencyMax" : "135",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "g", "Type" : "None", "Direction" : "I"},
			{"Name" : "f", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "None", "Direction" : "I"},
			{"Name" : "d", "Type" : "None", "Direction" : "I"},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln65225_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln652_124_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln652_223_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln652_322_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln65321_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln653_120_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln653_219_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln653_318_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_636_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U48", "Parent" : "49"},
	{"ID" : "51", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U49", "Parent" : "49"},
	{"ID" : "52", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U50", "Parent" : "49"},
	{"ID" : "53", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U51", "Parent" : "49"},
	{"ID" : "54", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_129_6_32_1_1_U52", "Parent" : "49"},
	{"ID" : "55", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U53", "Parent" : "49"},
	{"ID" : "56", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.blk_strm_U", "Parent" : "42"},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.nblk_strm_U", "Parent" : "42"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.end_nblk_strm_U", "Parent" : "42"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.hash_1_U0.grp_sha256_top_32_256_s_fu_30.start_for_sha256Digest_unroll2_256_U0_U", "Parent" : "42"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.mergeKopadStrm_U", "Parent" : "35"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.mergeKopadLenStrm_U", "Parent" : "35"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.eMergeKopadLenStrm_U", "Parent" : "35"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.resHash_32_64_256_32_64_sha256_wrapper_U0.start_for_hash_1_U0_U", "Parent" : "35"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.kipadStrm_U", "Parent" : "1"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.kopadStrm_U", "Parent" : "1"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.eKipadStrm_U", "Parent" : "1"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.kopad2Strm_U", "Parent" : "1"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.msgHashStrm_U", "Parent" : "1"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.eMsgHashStrm_U", "Parent" : "1"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.start_for_msgHash_32_64_256_32_64_sha256_wrapper_U0_U", "Parent" : "1"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hmacDataflow_32_64_256_32_64_sha256_wrapper_s_fu_38.start_for_resHash_32_64_256_32_64_sha256_wrapper_U0_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	test_hmac_sha256 {
		keyStrm {Type I LastRead 1 FirstWrite -1}
		msgStrm {Type I LastRead 2 FirstWrite -1}
		lenStrm {Type I LastRead 1 FirstWrite -1}
		eLenStrm {Type I LastRead 1 FirstWrite -1}
		hshStrm {Type O LastRead -1 FirstWrite 2}
		eHshStrm {Type O LastRead -1 FirstWrite 1}}
	hmacDataflow_32_64_256_32_64_sha256_wrapper_s {
		keyStrm {Type I LastRead 1 FirstWrite -1}
		msgStrm {Type I LastRead 2 FirstWrite -1}
		lenStrm {Type I LastRead 1 FirstWrite -1}
		eLenStrm {Type I LastRead 1 FirstWrite -1}
		hshStrm {Type O LastRead -1 FirstWrite 2}
		eHshStrm {Type O LastRead -1 FirstWrite 1}}
	kpad_32_64_256_32_64_sha256_wrapper_s {
		keyStrm {Type I LastRead 1 FirstWrite -1}
		eLenStrm {Type I LastRead 1 FirstWrite -1}
		kipadStrm {Type O LastRead -1 FirstWrite 4}
		kopadStrm {Type O LastRead -1 FirstWrite 4}
		eKipadStrm {Type O LastRead -1 FirstWrite 1}}
	kpad_32_64_256_32_64_sha256_wrapper_Pipeline_VITIS_LOOP_120_2 {
		keyStrm {Type I LastRead 1 FirstWrite -1}
		k1_out {Type O LastRead -1 FirstWrite 0}}
	msgHash_32_64_256_32_64_sha256_wrapper_s {
		kipadStrm {Type I LastRead 1 FirstWrite -1}
		kopadStrm {Type I LastRead 5 FirstWrite -1}
		msgStrm {Type I LastRead 2 FirstWrite -1}
		lenStrm {Type I LastRead 1 FirstWrite -1}
		eKipadStrm {Type I LastRead 1 FirstWrite -1}
		kopad2Strm {Type O LastRead -1 FirstWrite 5}
		msgHashStrm {Type O LastRead -1 FirstWrite 2}
		eMsgHashStrm {Type O LastRead -1 FirstWrite 1}}
	mergeKipad_32_64_256_64_s {
		kipadStrm {Type I LastRead 1 FirstWrite -1}
		kopadStrm {Type I LastRead 5 FirstWrite -1}
		msgStrm {Type I LastRead 2 FirstWrite -1}
		lenStrm {Type I LastRead 1 FirstWrite -1}
		eKipadStrm {Type I LastRead 1 FirstWrite -1}
		mergeKipadStrm {Type O LastRead -1 FirstWrite 1}
		mergeKipadLenStrm {Type O LastRead -1 FirstWrite 2}
		eMergeKipadLenStrm {Type O LastRead -1 FirstWrite 1}
		kopad2Strm {Type O LastRead -1 FirstWrite 5}}
	mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2 {
		kipad {Type I LastRead 0 FirstWrite -1}
		mergeKipadStrm {Type O LastRead -1 FirstWrite 1}}
	mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3 {
		empty {Type I LastRead 0 FirstWrite -1}
		msgStrm {Type I LastRead 2 FirstWrite -1}
		mergeKipadStrm {Type O LastRead -1 FirstWrite 2}}
	hash {
		mergeKipadStrm {Type I LastRead 20 FirstWrite -1}
		mergeKipadLenStrm {Type I LastRead 1 FirstWrite -1}
		eMergeKipadLenStrm {Type I LastRead 22 FirstWrite -1}
		msgHashStrm {Type O LastRead -1 FirstWrite 2}
		eMsgHashStrm {Type O LastRead -1 FirstWrite 1}}
	sha256_top_32_256_s {
		mergeKopadStrm {Type I LastRead 20 FirstWrite -1}
		mergeKopadLenStrm {Type I LastRead 1 FirstWrite -1}
		eMergeKopadLenStrm {Type I LastRead 22 FirstWrite -1}
		hshStrm {Type O LastRead -1 FirstWrite 2}
		eHshStrm {Type O LastRead -1 FirstWrite 1}}
	preProcessing {
		mergeKipadStrm {Type I LastRead 20 FirstWrite -1}
		mergeKipadLenStrm {Type I LastRead 1 FirstWrite -1}
		eMergeKipadLenStrm {Type I LastRead 22 FirstWrite -1}
		blk_strm {Type O LastRead -1 FirstWrite 5}
		nblk_strm {Type O LastRead -1 FirstWrite 2}
		end_nblk_strm {Type O LastRead -1 FirstWrite 1}}
	preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS {
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		mergeKipadStrm {Type I LastRead 17 FirstWrite -1}
		blk_strm {Type O LastRead -1 FirstWrite 17}}
	preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE {
		mergeKipadStrm {Type I LastRead 1 FirstWrite -1}
		p_cast {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		b_16_out {Type O LastRead -1 FirstWrite 0}
		b_15_out {Type O LastRead -1 FirstWrite 0}
		b_14_out {Type O LastRead -1 FirstWrite 0}
		b_13_out {Type O LastRead -1 FirstWrite 0}
		b_12_out {Type O LastRead -1 FirstWrite 0}
		b_11_out {Type O LastRead -1 FirstWrite 0}
		b_10_out {Type O LastRead -1 FirstWrite 0}
		b_9_out {Type O LastRead -1 FirstWrite 0}
		b_8_out {Type O LastRead -1 FirstWrite 0}
		b_7_out {Type O LastRead -1 FirstWrite 0}
		b_6_out {Type O LastRead -1 FirstWrite 0}
		b_5_out {Type O LastRead -1 FirstWrite 0}
		b_4_out {Type O LastRead -1 FirstWrite 0}
		b_out {Type O LastRead -1 FirstWrite 0}}
	sha256Digest_unroll2_256_s {
		nblk_strm {Type I LastRead 1 FirstWrite -1}
		end_nblk_strm {Type I LastRead 2 FirstWrite -1}
		blk_strm {Type I LastRead 1 FirstWrite -1}
		msgHashStrm {Type O LastRead -1 FirstWrite 2}
		eMsgHashStrm {Type O LastRead -1 FirstWrite 1}}
	sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10 {
		h {Type I LastRead 0 FirstWrite -1}
		g {Type I LastRead 0 FirstWrite -1}
		f {Type I LastRead 0 FirstWrite -1}
		e_s {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}
		d {Type I LastRead 0 FirstWrite -1}
		blk_strm {Type I LastRead 1 FirstWrite -1}
		add_ln65225_out {Type O LastRead -1 FirstWrite 5}
		add_ln652_124_out {Type O LastRead -1 FirstWrite 5}
		add_ln652_223_out {Type O LastRead -1 FirstWrite 5}
		add_ln652_322_out {Type O LastRead -1 FirstWrite 5}
		add_ln65321_out {Type O LastRead -1 FirstWrite 5}
		add_ln653_120_out {Type O LastRead -1 FirstWrite 5}
		add_ln653_219_out {Type O LastRead -1 FirstWrite 5}
		add_ln653_318_out {Type O LastRead -1 FirstWrite 5}}
	resHash_32_64_256_32_64_sha256_wrapper_s {
		kopad2Strm {Type I LastRead 1 FirstWrite -1}
		msgHashStrm {Type I LastRead 1 FirstWrite -1}
		eMsgHashStrm {Type I LastRead 1 FirstWrite -1}
		hshStrm {Type O LastRead -1 FirstWrite 2}
		eHshStrm {Type O LastRead -1 FirstWrite 1}}
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
		mergeKopadStrm {Type O LastRead -1 FirstWrite 1}}
	hash_1 {
		mergeKopadStrm {Type I LastRead 20 FirstWrite -1}
		mergeKopadLenStrm {Type I LastRead 1 FirstWrite -1}
		eMergeKopadLenStrm {Type I LastRead 22 FirstWrite -1}
		hshStrm {Type O LastRead -1 FirstWrite 2}
		eHshStrm {Type O LastRead -1 FirstWrite 1}}
	sha256_top_32_256_s {
		mergeKopadStrm {Type I LastRead 20 FirstWrite -1}
		mergeKopadLenStrm {Type I LastRead 1 FirstWrite -1}
		eMergeKopadLenStrm {Type I LastRead 22 FirstWrite -1}
		hshStrm {Type O LastRead -1 FirstWrite 2}
		eHshStrm {Type O LastRead -1 FirstWrite 1}}
	preProcessing {
		mergeKipadStrm {Type I LastRead 20 FirstWrite -1}
		mergeKipadLenStrm {Type I LastRead 1 FirstWrite -1}
		eMergeKipadLenStrm {Type I LastRead 22 FirstWrite -1}
		blk_strm {Type O LastRead -1 FirstWrite 5}
		nblk_strm {Type O LastRead -1 FirstWrite 2}
		end_nblk_strm {Type O LastRead -1 FirstWrite 1}}
	preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS {
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		mergeKipadStrm {Type I LastRead 17 FirstWrite -1}
		blk_strm {Type O LastRead -1 FirstWrite 17}}
	preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE {
		mergeKipadStrm {Type I LastRead 1 FirstWrite -1}
		p_cast {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		b_16_out {Type O LastRead -1 FirstWrite 0}
		b_15_out {Type O LastRead -1 FirstWrite 0}
		b_14_out {Type O LastRead -1 FirstWrite 0}
		b_13_out {Type O LastRead -1 FirstWrite 0}
		b_12_out {Type O LastRead -1 FirstWrite 0}
		b_11_out {Type O LastRead -1 FirstWrite 0}
		b_10_out {Type O LastRead -1 FirstWrite 0}
		b_9_out {Type O LastRead -1 FirstWrite 0}
		b_8_out {Type O LastRead -1 FirstWrite 0}
		b_7_out {Type O LastRead -1 FirstWrite 0}
		b_6_out {Type O LastRead -1 FirstWrite 0}
		b_5_out {Type O LastRead -1 FirstWrite 0}
		b_4_out {Type O LastRead -1 FirstWrite 0}
		b_out {Type O LastRead -1 FirstWrite 0}}
	sha256Digest_unroll2_256_s {
		nblk_strm {Type I LastRead 1 FirstWrite -1}
		end_nblk_strm {Type I LastRead 2 FirstWrite -1}
		blk_strm {Type I LastRead 1 FirstWrite -1}
		msgHashStrm {Type O LastRead -1 FirstWrite 2}
		eMsgHashStrm {Type O LastRead -1 FirstWrite 1}}
	sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10 {
		h {Type I LastRead 0 FirstWrite -1}
		g {Type I LastRead 0 FirstWrite -1}
		f {Type I LastRead 0 FirstWrite -1}
		e_s {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}
		d {Type I LastRead 0 FirstWrite -1}
		blk_strm {Type I LastRead 1 FirstWrite -1}
		add_ln65225_out {Type O LastRead -1 FirstWrite 5}
		add_ln652_124_out {Type O LastRead -1 FirstWrite 5}
		add_ln652_223_out {Type O LastRead -1 FirstWrite 5}
		add_ln652_322_out {Type O LastRead -1 FirstWrite 5}
		add_ln65321_out {Type O LastRead -1 FirstWrite 5}
		add_ln653_120_out {Type O LastRead -1 FirstWrite 5}
		add_ln653_219_out {Type O LastRead -1 FirstWrite 5}
		add_ln653_318_out {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	keyStrm { ap_fifo {  { keyStrm_dout fifo_data_in 0 32 }  { keyStrm_empty_n fifo_status 0 1 }  { keyStrm_read fifo_port_we 1 1 } } }
	msgStrm { ap_fifo {  { msgStrm_dout fifo_data_in 0 32 }  { msgStrm_empty_n fifo_status 0 1 }  { msgStrm_read fifo_port_we 1 1 } } }
	lenStrm { ap_fifo {  { lenStrm_dout fifo_data_in 0 64 }  { lenStrm_empty_n fifo_status 0 1 }  { lenStrm_read fifo_port_we 1 1 } } }
	eLenStrm { ap_fifo {  { eLenStrm_dout fifo_data_in 0 1 }  { eLenStrm_empty_n fifo_status 0 1 }  { eLenStrm_read fifo_port_we 1 1 } } }
	hshStrm { ap_fifo {  { hshStrm_din fifo_data_in 1 256 }  { hshStrm_full_n fifo_status 0 1 }  { hshStrm_write fifo_port_we 1 1 } } }
	eHshStrm { ap_fifo {  { eHshStrm_din fifo_data_in 1 1 }  { eHshStrm_full_n fifo_status 0 1 }  { eHshStrm_write fifo_port_we 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	keyStrm { fifo_read 1 no_conditional }
	msgStrm { fifo_read 1 no_conditional }
	lenStrm { fifo_read 1 no_conditional }
	eLenStrm { fifo_read 1 no_conditional }
	hshStrm { fifo_write 1 no_conditional }
	eHshStrm { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
