set moduleName hash_1
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
set C_modelName {hash.1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ mergeKopadStrm int 32 regular {fifo 0 volatile }  }
	{ mergeKopadLenStrm int 64 regular {fifo 0 volatile }  }
	{ eMergeKopadLenStrm int 1 regular {fifo 0 volatile }  }
	{ hshStrm int 256 regular {fifo 1 volatile }  }
	{ eHshStrm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "mergeKopadStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mergeKopadLenStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "eMergeKopadLenStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "hshStrm", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "eHshStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mergeKopadStrm_dout sc_in sc_lv 32 signal 0 } 
	{ mergeKopadStrm_empty_n sc_in sc_logic 1 signal 0 } 
	{ mergeKopadStrm_read sc_out sc_logic 1 signal 0 } 
	{ mergeKopadStrm_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ mergeKopadStrm_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ mergeKopadLenStrm_dout sc_in sc_lv 64 signal 1 } 
	{ mergeKopadLenStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ mergeKopadLenStrm_read sc_out sc_logic 1 signal 1 } 
	{ mergeKopadLenStrm_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ mergeKopadLenStrm_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ eMergeKopadLenStrm_dout sc_in sc_lv 1 signal 2 } 
	{ eMergeKopadLenStrm_empty_n sc_in sc_logic 1 signal 2 } 
	{ eMergeKopadLenStrm_read sc_out sc_logic 1 signal 2 } 
	{ eMergeKopadLenStrm_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ eMergeKopadLenStrm_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ hshStrm_din sc_out sc_lv 256 signal 3 } 
	{ hshStrm_full_n sc_in sc_logic 1 signal 3 } 
	{ hshStrm_write sc_out sc_logic 1 signal 3 } 
	{ eHshStrm_din sc_out sc_lv 1 signal 4 } 
	{ eHshStrm_full_n sc_in sc_logic 1 signal 4 } 
	{ eHshStrm_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mergeKopadStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mergeKopadStrm", "role": "dout" }} , 
 	{ "name": "mergeKopadStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKopadStrm", "role": "empty_n" }} , 
 	{ "name": "mergeKopadStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKopadStrm", "role": "read" }} , 
 	{ "name": "mergeKopadStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mergeKopadStrm", "role": "num_data_valid" }} , 
 	{ "name": "mergeKopadStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mergeKopadStrm", "role": "fifo_cap" }} , 
 	{ "name": "mergeKopadLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mergeKopadLenStrm", "role": "dout" }} , 
 	{ "name": "mergeKopadLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKopadLenStrm", "role": "empty_n" }} , 
 	{ "name": "mergeKopadLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKopadLenStrm", "role": "read" }} , 
 	{ "name": "mergeKopadLenStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mergeKopadLenStrm", "role": "num_data_valid" }} , 
 	{ "name": "mergeKopadLenStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mergeKopadLenStrm", "role": "fifo_cap" }} , 
 	{ "name": "eMergeKopadLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eMergeKopadLenStrm", "role": "dout" }} , 
 	{ "name": "eMergeKopadLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMergeKopadLenStrm", "role": "empty_n" }} , 
 	{ "name": "eMergeKopadLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMergeKopadLenStrm", "role": "read" }} , 
 	{ "name": "eMergeKopadLenStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eMergeKopadLenStrm", "role": "num_data_valid" }} , 
 	{ "name": "eMergeKopadLenStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eMergeKopadLenStrm", "role": "fifo_cap" }} , 
 	{ "name": "hshStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "hshStrm", "role": "din" }} , 
 	{ "name": "hshStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hshStrm", "role": "full_n" }} , 
 	{ "name": "hshStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hshStrm", "role": "write" }} , 
 	{ "name": "eHshStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eHshStrm", "role": "din" }} , 
 	{ "name": "eHshStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eHshStrm", "role": "full_n" }} , 
 	{ "name": "eHshStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eHshStrm", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
		"Port" : [
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "mergeKopadStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "mergeKopadLenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eMergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "eMergeKopadLenStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "hshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256_top_32_256_s_fu_30", "Port" : "eHshStrm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30", "Parent" : "0", "Child" : ["2", "7", "16", "17", "18", "19"],
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
			{"ID" : "2", "Name" : "preProcessing_U0"}],
		"OutputProcess" : [
			{"ID" : "7", "Name" : "sha256Digest_unroll2_256_U0"}],
		"Port" : [
			{"Name" : "mergeKopadStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "preProcessing_U0", "Port" : "mergeKipadStrm"}]},
			{"Name" : "mergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "preProcessing_U0", "Port" : "mergeKipadLenStrm"}]},
			{"Name" : "eMergeKopadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "preProcessing_U0", "Port" : "eMergeKipadLenStrm"}]},
			{"Name" : "hshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "sha256Digest_unroll2_256_U0", "Port" : "msgHashStrm"}]},
			{"Name" : "eHshStrm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "sha256Digest_unroll2_256_U0", "Port" : "eMsgHashStrm"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.preProcessing_U0", "Parent" : "1", "Child" : ["3", "5"],
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
					{"ID" : "3", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Port" : "mergeKipadStrm", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "5", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280", "Port" : "mergeKipadStrm", "Inst_start_state" : "6", "Inst_end_state" : "24"}]},
			{"Name" : "mergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "eMergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "16", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Port" : "blk_strm", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "17", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "18", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_GENENERATE_MAIN", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Parent" : "2", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280", "Parent" : "2", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.preProcessing_U0.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0", "Parent" : "1", "Child" : ["8"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_sha256Digest_unroll2_256_U0_U",
		"Port" : [
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "17", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "18", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "16", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272", "Port" : "blk_strm", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272", "Parent" : "7", "Child" : ["9", "10", "11", "12", "13", "14", "15"],
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
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U48", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U49", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U50", "Parent" : "8"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U51", "Parent" : "8"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_129_6_32_1_1_U52", "Parent" : "8"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U53", "Parent" : "8"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.sha256Digest_unroll2_256_U0.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.blk_strm_U", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.nblk_strm_U", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.end_nblk_strm_U", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_top_32_256_s_fu_30.start_for_sha256Digest_unroll2_256_U0_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
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
	mergeKopadStrm { ap_fifo {  { mergeKopadStrm_dout fifo_data_in 0 32 }  { mergeKopadStrm_empty_n fifo_status 0 1 }  { mergeKopadStrm_read fifo_port_we 1 1 }  { mergeKopadStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { mergeKopadStrm_fifo_cap fifo_update 0 3 } } }
	mergeKopadLenStrm { ap_fifo {  { mergeKopadLenStrm_dout fifo_data_in 0 64 }  { mergeKopadLenStrm_empty_n fifo_status 0 1 }  { mergeKopadLenStrm_read fifo_port_we 1 1 }  { mergeKopadLenStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { mergeKopadLenStrm_fifo_cap fifo_update 0 3 } } }
	eMergeKopadLenStrm { ap_fifo {  { eMergeKopadLenStrm_dout fifo_data_in 0 1 }  { eMergeKopadLenStrm_empty_n fifo_status 0 1 }  { eMergeKopadLenStrm_read fifo_port_we 1 1 }  { eMergeKopadLenStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { eMergeKopadLenStrm_fifo_cap fifo_update 0 3 } } }
	hshStrm { ap_fifo {  { hshStrm_din fifo_data_in 1 256 }  { hshStrm_full_n fifo_status 0 1 }  { hshStrm_write fifo_port_we 1 1 } } }
	eHshStrm { ap_fifo {  { eHshStrm_din fifo_data_in 1 1 }  { eHshStrm_full_n fifo_status 0 1 }  { eHshStrm_write fifo_port_we 1 1 } } }
}
