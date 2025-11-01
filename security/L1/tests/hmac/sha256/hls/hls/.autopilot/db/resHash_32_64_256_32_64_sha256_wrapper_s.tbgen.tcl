set moduleName resHash_32_64_256_32_64_sha256_wrapper_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
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
set C_modelName {resHash<32, 64, 256, 32, 64, sha256_wrapper>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ kopad2Strm int 512 regular {fifo 0 volatile }  }
	{ msgHashStrm int 256 regular {fifo 0 volatile }  }
	{ eMsgHashStrm int 1 regular {fifo 0 volatile }  }
	{ hshStrm int 256 regular {fifo 1 volatile }  }
	{ eHshStrm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "kopad2Strm", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "msgHashStrm", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "eMsgHashStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "hshStrm", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "eHshStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ kopad2Strm_dout sc_in sc_lv 512 signal 0 } 
	{ kopad2Strm_empty_n sc_in sc_logic 1 signal 0 } 
	{ kopad2Strm_read sc_out sc_logic 1 signal 0 } 
	{ msgHashStrm_dout sc_in sc_lv 256 signal 1 } 
	{ msgHashStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ msgHashStrm_read sc_out sc_logic 1 signal 1 } 
	{ eMsgHashStrm_dout sc_in sc_lv 1 signal 2 } 
	{ eMsgHashStrm_empty_n sc_in sc_logic 1 signal 2 } 
	{ eMsgHashStrm_read sc_out sc_logic 1 signal 2 } 
	{ hshStrm_din sc_out sc_lv 256 signal 3 } 
	{ hshStrm_full_n sc_in sc_logic 1 signal 3 } 
	{ hshStrm_write sc_out sc_logic 1 signal 3 } 
	{ eHshStrm_din sc_out sc_lv 1 signal 4 } 
	{ eHshStrm_full_n sc_in sc_logic 1 signal 4 } 
	{ eHshStrm_write sc_out sc_logic 1 signal 4 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "kopad2Strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "kopad2Strm", "role": "dout" }} , 
 	{ "name": "kopad2Strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kopad2Strm", "role": "empty_n" }} , 
 	{ "name": "kopad2Strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kopad2Strm", "role": "read" }} , 
 	{ "name": "msgHashStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "dout" }} , 
 	{ "name": "msgHashStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "empty_n" }} , 
 	{ "name": "msgHashStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "read" }} , 
 	{ "name": "eMsgHashStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "dout" }} , 
 	{ "name": "eMsgHashStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "empty_n" }} , 
 	{ "name": "eMsgHashStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "read" }} , 
 	{ "name": "hshStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "hshStrm", "role": "din" }} , 
 	{ "name": "hshStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hshStrm", "role": "full_n" }} , 
 	{ "name": "hshStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hshStrm", "role": "write" }} , 
 	{ "name": "eHshStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eHshStrm", "role": "din" }} , 
 	{ "name": "eHshStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eHshStrm", "role": "full_n" }} , 
 	{ "name": "eHshStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eHshStrm", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "26", "27", "28", "29"],
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
		"InputProcess" : [
			{"ID" : "1", "Name" : "mergeKopad_32_64_256_32_64_U0"}],
		"OutputProcess" : [
			{"ID" : "6", "Name" : "hash_1_U0"}],
		"Port" : [
			{"Name" : "kopad2Strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "mergeKopad_32_64_256_32_64_U0", "Port" : "kopad2Strm"}]},
			{"Name" : "msgHashStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "mergeKopad_32_64_256_32_64_U0", "Port" : "msgHashStrm"}]},
			{"Name" : "eMsgHashStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "mergeKopad_32_64_256_32_64_U0", "Port" : "eMsgHashStrm"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "hash_1_U0", "Port" : "hshStrm"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "hash_1_U0", "Port" : "eHshStrm"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mergeKopad_32_64_256_32_64_U0", "Parent" : "0", "Child" : ["2", "4"],
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
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "26", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2_fu_91", "Port" : "mergeKopadStrm", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "4", "SubInstance" : "grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3_fu_98", "Port" : "mergeKopadStrm", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "mergeKopadLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "27", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mergeKopadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMergeKopadLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "28", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eMergeKopadLenStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_213_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mergeKopad_32_64_256_32_64_U0.grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2_fu_91", "Parent" : "1", "Child" : ["3"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.mergeKopad_32_64_256_32_64_U0.grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_220_2_fu_91.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mergeKopad_32_64_256_32_64_U0.grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3_fu_98", "Parent" : "1", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.mergeKopad_32_64_256_32_64_U0.grp_mergeKopad_32_64_256_32_64_Pipeline_VITIS_LOOP_226_3_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hash_1_U0", "Parent" : "0", "Child" : ["7"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_hash_1_U0_U",
		"Port" : [
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "26", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "mergeKopadStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "27", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "mergeKopadLenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eMergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "28", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "eMergeKopadLenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "hshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "eHshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30", "Parent" : "6", "Child" : ["8", "13", "22", "23", "24", "25"],
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
			{"ID" : "8", "Name" : "preProcessing_U0"}],
		"OutputProcess" : [
			{"ID" : "13", "Name" : "sha256Digest_unroll2_256_U0"}],
		"Port" : [
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "preProcessing_U0", "Port" : "mergeKipadStrm"}]},
			{"Name" : "mergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "preProcessing_U0", "Port" : "mergeKipadLenStrm"}]},
			{"Name" : "eMergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "preProcessing_U0", "Port" : "eMergeKipadLenStrm"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "sha256Digest_unroll2_256_U0", "Port" : "msgHashStrm"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "sha256Digest_unroll2_256_U0", "Port" : "eMsgHashStrm"}]}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0", "Parent" : "7", "Child" : ["9", "11"],
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
					{"ID" : "9", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Port" : "mergeKipadStrm", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "11", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280", "Port" : "mergeKipadStrm", "Inst_start_state" : "6", "Inst_end_state" : "24"}]},
			{"Name" : "mergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "eMergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "22", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Port" : "blk_strm", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "23", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "24", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_GENENERATE_MAIN", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Parent" : "8", "Child" : ["10"],
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
	{"ID" : "10", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280", "Parent" : "8", "Child" : ["12"],
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
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0", "Parent" : "7", "Child" : ["14"],
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
		"StartSource" : "8",
		"StartFifo" : "start_for_sha256Digest_unroll2_256_U0_U",
		"Port" : [
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "23", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "24", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "22", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272", "Port" : "blk_strm", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
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
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272", "Parent" : "13", "Child" : ["15", "16", "17", "18", "19", "20", "21"],
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
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U48", "Parent" : "14"},
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U49", "Parent" : "14"},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U50", "Parent" : "14"},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U51", "Parent" : "14"},
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_129_6_32_1_1_U52", "Parent" : "14"},
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U53", "Parent" : "14"},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.blk_strm_U", "Parent" : "7"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.nblk_strm_U", "Parent" : "7"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.end_nblk_strm_U", "Parent" : "7"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hash_1_U0.grp_sha256_top_32_256_s_fu_30.start_for_sha256Digest_unroll2_256_U0_U", "Parent" : "7"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mergeKopadStrm_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mergeKopadLenStrm_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eMergeKopadLenStrm_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_hash_1_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	kopad2Strm { ap_fifo {  { kopad2Strm_dout fifo_data_in 0 512 }  { kopad2Strm_empty_n fifo_status 0 1 }  { kopad2Strm_read fifo_port_we 1 1 } } }
	msgHashStrm { ap_fifo {  { msgHashStrm_dout fifo_data_in 0 256 }  { msgHashStrm_empty_n fifo_status 0 1 }  { msgHashStrm_read fifo_port_we 1 1 } } }
	eMsgHashStrm { ap_fifo {  { eMsgHashStrm_dout fifo_data_in 0 1 }  { eMsgHashStrm_empty_n fifo_status 0 1 }  { eMsgHashStrm_read fifo_port_we 1 1 } } }
	hshStrm { ap_fifo {  { hshStrm_din fifo_data_in 1 256 }  { hshStrm_full_n fifo_status 0 1 }  { hshStrm_write fifo_port_we 1 1 } } }
	eHshStrm { ap_fifo {  { eHshStrm_din fifo_data_in 1 1 }  { eHshStrm_full_n fifo_status 0 1 }  { eHshStrm_write fifo_port_we 1 1 } } }
}
