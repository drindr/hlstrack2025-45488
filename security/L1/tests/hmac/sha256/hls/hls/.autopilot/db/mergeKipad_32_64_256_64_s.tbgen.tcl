set moduleName mergeKipad_32_64_256_64_s
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
set C_modelName {mergeKipad<32, 64, 256, 64>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ kipadStrm int 512 regular {fifo 0 volatile }  }
	{ kopadStrm int 512 regular {fifo 0 volatile }  }
	{ msgStrm int 32 regular {fifo 0 volatile }  }
	{ lenStrm int 64 regular {fifo 0 volatile }  }
	{ eKipadStrm int 1 regular {fifo 0 volatile }  }
	{ mergeKipadStrm int 32 regular {fifo 1 volatile }  }
	{ mergeKipadLenStrm int 64 regular {fifo 1 volatile }  }
	{ eMergeKipadLenStrm int 1 regular {fifo 1 volatile }  }
	{ kopad2Strm int 512 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "kipadStrm", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "kopadStrm", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "msgStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lenStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "eKipadStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "mergeKipadStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mergeKipadLenStrm", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "eMergeKipadLenStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "kopad2Strm", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 51
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
	{ kipadStrm_dout sc_in sc_lv 512 signal 0 } 
	{ kipadStrm_empty_n sc_in sc_logic 1 signal 0 } 
	{ kipadStrm_read sc_out sc_logic 1 signal 0 } 
	{ kipadStrm_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ kipadStrm_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ kopadStrm_dout sc_in sc_lv 512 signal 1 } 
	{ kopadStrm_empty_n sc_in sc_logic 1 signal 1 } 
	{ kopadStrm_read sc_out sc_logic 1 signal 1 } 
	{ kopadStrm_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ kopadStrm_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ msgStrm_dout sc_in sc_lv 32 signal 2 } 
	{ msgStrm_empty_n sc_in sc_logic 1 signal 2 } 
	{ msgStrm_read sc_out sc_logic 1 signal 2 } 
	{ lenStrm_dout sc_in sc_lv 64 signal 3 } 
	{ lenStrm_empty_n sc_in sc_logic 1 signal 3 } 
	{ lenStrm_read sc_out sc_logic 1 signal 3 } 
	{ eKipadStrm_dout sc_in sc_lv 1 signal 4 } 
	{ eKipadStrm_empty_n sc_in sc_logic 1 signal 4 } 
	{ eKipadStrm_read sc_out sc_logic 1 signal 4 } 
	{ eKipadStrm_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ eKipadStrm_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ mergeKipadStrm_din sc_out sc_lv 32 signal 5 } 
	{ mergeKipadStrm_full_n sc_in sc_logic 1 signal 5 } 
	{ mergeKipadStrm_write sc_out sc_logic 1 signal 5 } 
	{ mergeKipadStrm_num_data_valid sc_in sc_lv 32 signal 5 } 
	{ mergeKipadStrm_fifo_cap sc_in sc_lv 32 signal 5 } 
	{ mergeKipadLenStrm_din sc_out sc_lv 64 signal 6 } 
	{ mergeKipadLenStrm_full_n sc_in sc_logic 1 signal 6 } 
	{ mergeKipadLenStrm_write sc_out sc_logic 1 signal 6 } 
	{ mergeKipadLenStrm_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ mergeKipadLenStrm_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ eMergeKipadLenStrm_din sc_out sc_lv 1 signal 7 } 
	{ eMergeKipadLenStrm_full_n sc_in sc_logic 1 signal 7 } 
	{ eMergeKipadLenStrm_write sc_out sc_logic 1 signal 7 } 
	{ eMergeKipadLenStrm_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ eMergeKipadLenStrm_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ kopad2Strm_din sc_out sc_lv 512 signal 8 } 
	{ kopad2Strm_full_n sc_in sc_logic 1 signal 8 } 
	{ kopad2Strm_write sc_out sc_logic 1 signal 8 } 
	{ kopad2Strm_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ kopad2Strm_fifo_cap sc_in sc_lv 3 signal 8 } 
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
 	{ "name": "kipadStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "kipadStrm", "role": "dout" }} , 
 	{ "name": "kipadStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kipadStrm", "role": "empty_n" }} , 
 	{ "name": "kipadStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kipadStrm", "role": "read" }} , 
 	{ "name": "kipadStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kipadStrm", "role": "num_data_valid" }} , 
 	{ "name": "kipadStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kipadStrm", "role": "fifo_cap" }} , 
 	{ "name": "kopadStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "kopadStrm", "role": "dout" }} , 
 	{ "name": "kopadStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kopadStrm", "role": "empty_n" }} , 
 	{ "name": "kopadStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kopadStrm", "role": "read" }} , 
 	{ "name": "kopadStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kopadStrm", "role": "num_data_valid" }} , 
 	{ "name": "kopadStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kopadStrm", "role": "fifo_cap" }} , 
 	{ "name": "msgStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "msgStrm", "role": "dout" }} , 
 	{ "name": "msgStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm", "role": "empty_n" }} , 
 	{ "name": "msgStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgStrm", "role": "read" }} , 
 	{ "name": "lenStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "lenStrm", "role": "dout" }} , 
 	{ "name": "lenStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lenStrm", "role": "empty_n" }} , 
 	{ "name": "lenStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lenStrm", "role": "read" }} , 
 	{ "name": "eKipadStrm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eKipadStrm", "role": "dout" }} , 
 	{ "name": "eKipadStrm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eKipadStrm", "role": "empty_n" }} , 
 	{ "name": "eKipadStrm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eKipadStrm", "role": "read" }} , 
 	{ "name": "eKipadStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eKipadStrm", "role": "num_data_valid" }} , 
 	{ "name": "eKipadStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eKipadStrm", "role": "fifo_cap" }} , 
 	{ "name": "mergeKipadStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "din" }} , 
 	{ "name": "mergeKipadStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "full_n" }} , 
 	{ "name": "mergeKipadStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "write" }} , 
 	{ "name": "mergeKipadStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "num_data_valid" }} , 
 	{ "name": "mergeKipadStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mergeKipadStrm", "role": "fifo_cap" }} , 
 	{ "name": "mergeKipadLenStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mergeKipadLenStrm", "role": "din" }} , 
 	{ "name": "mergeKipadLenStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKipadLenStrm", "role": "full_n" }} , 
 	{ "name": "mergeKipadLenStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mergeKipadLenStrm", "role": "write" }} , 
 	{ "name": "mergeKipadLenStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mergeKipadLenStrm", "role": "num_data_valid" }} , 
 	{ "name": "mergeKipadLenStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mergeKipadLenStrm", "role": "fifo_cap" }} , 
 	{ "name": "eMergeKipadLenStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eMergeKipadLenStrm", "role": "din" }} , 
 	{ "name": "eMergeKipadLenStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMergeKipadLenStrm", "role": "full_n" }} , 
 	{ "name": "eMergeKipadLenStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMergeKipadLenStrm", "role": "write" }} , 
 	{ "name": "eMergeKipadLenStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eMergeKipadLenStrm", "role": "num_data_valid" }} , 
 	{ "name": "eMergeKipadLenStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eMergeKipadLenStrm", "role": "fifo_cap" }} , 
 	{ "name": "kopad2Strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "kopad2Strm", "role": "din" }} , 
 	{ "name": "kopad2Strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kopad2Strm", "role": "full_n" }} , 
 	{ "name": "kopad2Strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kopad2Strm", "role": "write" }} , 
 	{ "name": "kopad2Strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kopad2Strm", "role": "num_data_valid" }} , 
 	{ "name": "kopad2Strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kopad2Strm", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
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
			{"Name" : "kipadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kipadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kopadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kopadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "msgStrm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133", "Port" : "msgStrm", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "lenStrm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "lenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eKipadStrm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eKipadStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mergeKipadStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2_fu_126", "Port" : "mergeKipadStrm", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "3", "SubInstance" : "grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133", "Port" : "mergeKipadStrm", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "mergeKipadLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eMergeKipadLenStrm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eMergeKipadLenStrm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kopad2Strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "kopad2Strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_152_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2_fu_126", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_162_2_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133", "Parent" : "0", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mergeKipad_32_64_256_64_Pipeline_VITIS_LOOP_171_3_fu_133.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"}]}


set ArgLastReadFirstWriteLatency {
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
		mergeKipadStrm {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	kipadStrm { ap_fifo {  { kipadStrm_dout fifo_data_in 0 512 }  { kipadStrm_empty_n fifo_status 0 1 }  { kipadStrm_read fifo_port_we 1 1 }  { kipadStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { kipadStrm_fifo_cap fifo_update 0 3 } } }
	kopadStrm { ap_fifo {  { kopadStrm_dout fifo_data_in 0 512 }  { kopadStrm_empty_n fifo_status 0 1 }  { kopadStrm_read fifo_port_we 1 1 }  { kopadStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { kopadStrm_fifo_cap fifo_update 0 3 } } }
	msgStrm { ap_fifo {  { msgStrm_dout fifo_data_in 0 32 }  { msgStrm_empty_n fifo_status 0 1 }  { msgStrm_read fifo_port_we 1 1 } } }
	lenStrm { ap_fifo {  { lenStrm_dout fifo_data_in 0 64 }  { lenStrm_empty_n fifo_status 0 1 }  { lenStrm_read fifo_port_we 1 1 } } }
	eKipadStrm { ap_fifo {  { eKipadStrm_dout fifo_data_in 0 1 }  { eKipadStrm_empty_n fifo_status 0 1 }  { eKipadStrm_read fifo_port_we 1 1 }  { eKipadStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { eKipadStrm_fifo_cap fifo_update 0 3 } } }
	mergeKipadStrm { ap_fifo {  { mergeKipadStrm_din fifo_data_in 1 32 }  { mergeKipadStrm_full_n fifo_status 0 1 }  { mergeKipadStrm_write fifo_port_we 1 1 }  { mergeKipadStrm_num_data_valid fifo_status_num_data_valid 0 32 }  { mergeKipadStrm_fifo_cap fifo_update 0 32 } } }
	mergeKipadLenStrm { ap_fifo {  { mergeKipadLenStrm_din fifo_data_in 1 64 }  { mergeKipadLenStrm_full_n fifo_status 0 1 }  { mergeKipadLenStrm_write fifo_port_we 1 1 }  { mergeKipadLenStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { mergeKipadLenStrm_fifo_cap fifo_update 0 3 } } }
	eMergeKipadLenStrm { ap_fifo {  { eMergeKipadLenStrm_din fifo_data_in 1 1 }  { eMergeKipadLenStrm_full_n fifo_status 0 1 }  { eMergeKipadLenStrm_write fifo_port_we 1 1 }  { eMergeKipadLenStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { eMergeKipadLenStrm_fifo_cap fifo_update 0 3 } } }
	kopad2Strm { ap_fifo {  { kopad2Strm_din fifo_data_in 1 512 }  { kopad2Strm_full_n fifo_status 0 1 }  { kopad2Strm_write fifo_port_we 1 1 }  { kopad2Strm_num_data_valid fifo_status_num_data_valid 0 3 }  { kopad2Strm_fifo_cap fifo_update 0 3 } } }
}
