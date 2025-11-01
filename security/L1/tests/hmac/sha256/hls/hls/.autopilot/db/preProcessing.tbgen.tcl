set moduleName preProcessing
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
set C_modelName {preProcessing}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ mergeKipadStrm int 32 regular {fifo 0 volatile }  }
	{ mergeKipadLenStrm int 64 regular {fifo 0 volatile }  }
	{ eMergeKipadLenStrm int 1 regular {fifo 0 volatile }  }
	{ blk_strm int 512 regular {fifo 1 volatile }  }
	{ nblk_strm int 64 regular {fifo 1 volatile }  }
	{ end_nblk_strm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "mergeKipadStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mergeKipadLenStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "eMergeKipadLenStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "blk_strm", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nblk_strm", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "end_nblk_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
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
	{ mergeKipadStrm_dout sc_in sc_lv 32 signal 0 } 
	{ mergeKipadStrm_empty_n sc_in sc_logic 1 signal 0 } 
	{ mergeKipadStrm_read sc_out sc_logic 1 signal 0 } 
	{ mergeKipadStrm_num_data_valid sc_in sc_lv 8 signal 0 } 
	{ mergeKipadStrm_fifo_cap sc_in sc_lv 8 signal 0 } 
	{ mergeKipadLenStrm_dout sc_in sc_lv 64 signal 1 } 
	{ mergeKipadLenStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ mergeKipadLenStrm_read sc_out sc_logic 1 signal 1 } 
	{ mergeKipadLenStrm_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ mergeKipadLenStrm_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ eMergeKipadLenStrm_dout sc_in sc_lv 1 signal 2 } 
	{ eMergeKipadLenStrm_empty_n sc_in sc_logic 1 signal 2 } 
	{ eMergeKipadLenStrm_read sc_out sc_logic 1 signal 2 } 
	{ eMergeKipadLenStrm_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ eMergeKipadLenStrm_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ blk_strm_din sc_out sc_lv 512 signal 3 } 
	{ blk_strm_full_n sc_in sc_logic 1 signal 3 } 
	{ blk_strm_write sc_out sc_logic 1 signal 3 } 
	{ blk_strm_num_data_valid sc_in sc_lv 6 signal 3 } 
	{ blk_strm_fifo_cap sc_in sc_lv 6 signal 3 } 
	{ nblk_strm_din sc_out sc_lv 64 signal 4 } 
	{ nblk_strm_full_n sc_in sc_logic 1 signal 4 } 
	{ nblk_strm_write sc_out sc_logic 1 signal 4 } 
	{ nblk_strm_num_data_valid sc_in sc_lv 6 signal 4 } 
	{ nblk_strm_fifo_cap sc_in sc_lv 6 signal 4 } 
	{ end_nblk_strm_din sc_out sc_lv 1 signal 5 } 
	{ end_nblk_strm_full_n sc_in sc_logic 1 signal 5 } 
	{ end_nblk_strm_write sc_out sc_logic 1 signal 5 } 
	{ end_nblk_strm_num_data_valid sc_in sc_lv 6 signal 5 } 
	{ end_nblk_strm_fifo_cap sc_in sc_lv 6 signal 5 } 
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
 	{ "name": "mergeKipadStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "dout" }} , 
 	{ "name": "mergeKipadStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "empty_n" }} , 
 	{ "name": "mergeKipadStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "read" }} , 
 	{ "name": "mergeKipadStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "num_data_valid" }} , 
 	{ "name": "mergeKipadStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "fifo_cap" }} , 
 	{ "name": "mergeKipadLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mergeKipadLenStrm", "role": "dout" }} , 
 	{ "name": "mergeKipadLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKipadLenStrm", "role": "empty_n" }} , 
 	{ "name": "mergeKipadLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKipadLenStrm", "role": "read" }} , 
 	{ "name": "mergeKipadLenStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mergeKipadLenStrm", "role": "num_data_valid" }} , 
 	{ "name": "mergeKipadLenStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mergeKipadLenStrm", "role": "fifo_cap" }} , 
 	{ "name": "eMergeKipadLenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eMergeKipadLenStrm", "role": "dout" }} , 
 	{ "name": "eMergeKipadLenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMergeKipadLenStrm", "role": "empty_n" }} , 
 	{ "name": "eMergeKipadLenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMergeKipadLenStrm", "role": "read" }} , 
 	{ "name": "eMergeKipadLenStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eMergeKipadLenStrm", "role": "num_data_valid" }} , 
 	{ "name": "eMergeKipadLenStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eMergeKipadLenStrm", "role": "fifo_cap" }} , 
 	{ "name": "blk_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "blk_strm", "role": "din" }} , 
 	{ "name": "blk_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blk_strm", "role": "full_n" }} , 
 	{ "name": "blk_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blk_strm", "role": "write" }} , 
 	{ "name": "blk_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blk_strm", "role": "num_data_valid" }} , 
 	{ "name": "blk_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blk_strm", "role": "fifo_cap" }} , 
 	{ "name": "nblk_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "nblk_strm", "role": "din" }} , 
 	{ "name": "nblk_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm", "role": "full_n" }} , 
 	{ "name": "nblk_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm", "role": "write" }} , 
 	{ "name": "nblk_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "nblk_strm", "role": "num_data_valid" }} , 
 	{ "name": "nblk_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "nblk_strm", "role": "fifo_cap" }} , 
 	{ "name": "end_nblk_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "din" }} , 
 	{ "name": "end_nblk_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "full_n" }} , 
 	{ "name": "end_nblk_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "write" }} , 
 	{ "name": "end_nblk_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "num_data_valid" }} , 
 	{ "name": "end_nblk_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
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
					{"ID" : "1", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Port" : "mergeKipadStrm", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "3", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280", "Port" : "mergeKipadStrm", "Inst_start_state" : "6", "Inst_end_state" : "24"}]},
			{"Name" : "mergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMergeKipadLenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "eMergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blk_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Port" : "blk_strm", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "LOOP_SHA256_GENENERATE_MAIN", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_FULL_BLKS_fu_271.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280", "Parent" : "0", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_preProcessing_Pipeline_LOOP_SHA256_GEN_COPY_TAIL_AND_ONE_fu_280.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"}]}


set ArgLastReadFirstWriteLatency {
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
		b_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mergeKipadStrm { ap_fifo {  { mergeKipadStrm_dout fifo_data_in 0 32 }  { mergeKipadStrm_empty_n fifo_status 0 1 }  { mergeKipadStrm_read fifo_port_we 1 1 }  { mergeKipadStrm_num_data_valid fifo_status_num_data_valid 0 8 }  { mergeKipadStrm_fifo_cap fifo_update 0 8 } } }
	mergeKipadLenStrm { ap_fifo {  { mergeKipadLenStrm_dout fifo_data_in 0 64 }  { mergeKipadLenStrm_empty_n fifo_status 0 1 }  { mergeKipadLenStrm_read fifo_port_we 1 1 }  { mergeKipadLenStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { mergeKipadLenStrm_fifo_cap fifo_update 0 3 } } }
	eMergeKipadLenStrm { ap_fifo {  { eMergeKipadLenStrm_dout fifo_data_in 0 1 }  { eMergeKipadLenStrm_empty_n fifo_status 0 1 }  { eMergeKipadLenStrm_read fifo_port_we 1 1 }  { eMergeKipadLenStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { eMergeKipadLenStrm_fifo_cap fifo_update 0 3 } } }
	blk_strm { ap_fifo {  { blk_strm_din fifo_data_in 1 512 }  { blk_strm_full_n fifo_status 0 1 }  { blk_strm_write fifo_port_we 1 1 }  { blk_strm_num_data_valid fifo_status_num_data_valid 0 6 }  { blk_strm_fifo_cap fifo_update 0 6 } } }
	nblk_strm { ap_fifo {  { nblk_strm_din fifo_data_in 1 64 }  { nblk_strm_full_n fifo_status 0 1 }  { nblk_strm_write fifo_port_we 1 1 }  { nblk_strm_num_data_valid fifo_status_num_data_valid 0 6 }  { nblk_strm_fifo_cap fifo_update 0 6 } } }
	end_nblk_strm { ap_fifo {  { end_nblk_strm_din fifo_data_in 1 1 }  { end_nblk_strm_full_n fifo_status 0 1 }  { end_nblk_strm_write fifo_port_we 1 1 }  { end_nblk_strm_num_data_valid fifo_status_num_data_valid 0 6 }  { end_nblk_strm_fifo_cap fifo_update 0 6 } } }
}
