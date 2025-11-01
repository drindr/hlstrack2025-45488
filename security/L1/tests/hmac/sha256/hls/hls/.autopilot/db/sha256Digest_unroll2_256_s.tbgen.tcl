set moduleName sha256Digest_unroll2_256_s
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
set C_modelName {sha256Digest_unroll2<256>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ nblk_strm int 64 regular {fifo 0 volatile }  }
	{ end_nblk_strm int 1 regular {fifo 0 volatile }  }
	{ blk_strm int 512 regular {fifo 0 volatile }  }
	{ msgHashStrm int 256 regular {fifo 1 volatile }  }
	{ eMsgHashStrm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "nblk_strm", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "end_nblk_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "blk_strm", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "msgHashStrm", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "eMsgHashStrm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nblk_strm_dout sc_in sc_lv 64 signal 0 } 
	{ nblk_strm_empty_n sc_in sc_logic 1 signal 0 } 
	{ nblk_strm_read sc_out sc_logic 1 signal 0 } 
	{ nblk_strm_num_data_valid sc_in sc_lv 6 signal 0 } 
	{ nblk_strm_fifo_cap sc_in sc_lv 6 signal 0 } 
	{ end_nblk_strm_dout sc_in sc_lv 1 signal 1 } 
	{ end_nblk_strm_empty_n sc_in sc_logic 1 signal 1 } 
	{ end_nblk_strm_read sc_out sc_logic 1 signal 1 } 
	{ end_nblk_strm_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ end_nblk_strm_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ blk_strm_dout sc_in sc_lv 512 signal 2 } 
	{ blk_strm_empty_n sc_in sc_logic 1 signal 2 } 
	{ blk_strm_read sc_out sc_logic 1 signal 2 } 
	{ blk_strm_num_data_valid sc_in sc_lv 6 signal 2 } 
	{ blk_strm_fifo_cap sc_in sc_lv 6 signal 2 } 
	{ msgHashStrm_din sc_out sc_lv 256 signal 3 } 
	{ msgHashStrm_full_n sc_in sc_logic 1 signal 3 } 
	{ msgHashStrm_write sc_out sc_logic 1 signal 3 } 
	{ msgHashStrm_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ msgHashStrm_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ eMsgHashStrm_din sc_out sc_lv 1 signal 4 } 
	{ eMsgHashStrm_full_n sc_in sc_logic 1 signal 4 } 
	{ eMsgHashStrm_write sc_out sc_logic 1 signal 4 } 
	{ eMsgHashStrm_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ eMsgHashStrm_fifo_cap sc_in sc_lv 3 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nblk_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "nblk_strm", "role": "dout" }} , 
 	{ "name": "nblk_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm", "role": "empty_n" }} , 
 	{ "name": "nblk_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nblk_strm", "role": "read" }} , 
 	{ "name": "nblk_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "nblk_strm", "role": "num_data_valid" }} , 
 	{ "name": "nblk_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "nblk_strm", "role": "fifo_cap" }} , 
 	{ "name": "end_nblk_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "dout" }} , 
 	{ "name": "end_nblk_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "empty_n" }} , 
 	{ "name": "end_nblk_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "read" }} , 
 	{ "name": "end_nblk_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "num_data_valid" }} , 
 	{ "name": "end_nblk_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "end_nblk_strm", "role": "fifo_cap" }} , 
 	{ "name": "blk_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "blk_strm", "role": "dout" }} , 
 	{ "name": "blk_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blk_strm", "role": "empty_n" }} , 
 	{ "name": "blk_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blk_strm", "role": "read" }} , 
 	{ "name": "blk_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blk_strm", "role": "num_data_valid" }} , 
 	{ "name": "blk_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "blk_strm", "role": "fifo_cap" }} , 
 	{ "name": "msgHashStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "din" }} , 
 	{ "name": "msgHashStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "full_n" }} , 
 	{ "name": "msgHashStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "write" }} , 
 	{ "name": "msgHashStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "num_data_valid" }} , 
 	{ "name": "msgHashStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "msgHashStrm", "role": "fifo_cap" }} , 
 	{ "name": "eMsgHashStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "din" }} , 
 	{ "name": "eMsgHashStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "full_n" }} , 
 	{ "name": "eMsgHashStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "write" }} , 
 	{ "name": "eMsgHashStrm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "num_data_valid" }} , 
 	{ "name": "eMsgHashStrm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "eMsgHashStrm", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
		"Port" : [
			{"Name" : "nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "end_nblk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "end_nblk_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blk_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272", "Port" : "blk_strm", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U48", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U49", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U50", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U51", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_129_6_32_1_1_U52", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.sparsemux_33_4_32_1_1_U53", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256Digest_unroll2_256_Pipeline_VITIS_LOOP_636_10_fu_272.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
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
	nblk_strm { ap_fifo {  { nblk_strm_dout fifo_data_in 0 64 }  { nblk_strm_empty_n fifo_status 0 1 }  { nblk_strm_read fifo_port_we 1 1 }  { nblk_strm_num_data_valid fifo_status_num_data_valid 0 6 }  { nblk_strm_fifo_cap fifo_update 0 6 } } }
	end_nblk_strm { ap_fifo {  { end_nblk_strm_dout fifo_data_in 0 1 }  { end_nblk_strm_empty_n fifo_status 0 1 }  { end_nblk_strm_read fifo_port_we 1 1 }  { end_nblk_strm_num_data_valid fifo_status_num_data_valid 0 6 }  { end_nblk_strm_fifo_cap fifo_update 0 6 } } }
	blk_strm { ap_fifo {  { blk_strm_dout fifo_data_in 0 512 }  { blk_strm_empty_n fifo_status 0 1 }  { blk_strm_read fifo_port_we 1 1 }  { blk_strm_num_data_valid fifo_status_num_data_valid 0 6 }  { blk_strm_fifo_cap fifo_update 0 6 } } }
	msgHashStrm { ap_fifo {  { msgHashStrm_din fifo_data_in 1 256 }  { msgHashStrm_full_n fifo_status 0 1 }  { msgHashStrm_write fifo_port_we 1 1 }  { msgHashStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { msgHashStrm_fifo_cap fifo_update 0 3 } } }
	eMsgHashStrm { ap_fifo {  { eMsgHashStrm_din fifo_data_in 1 1 }  { eMsgHashStrm_full_n fifo_status 0 1 }  { eMsgHashStrm_write fifo_port_we 1 1 }  { eMsgHashStrm_num_data_valid fifo_status_num_data_valid 0 3 }  { eMsgHashStrm_fifo_cap fifo_update 0 3 } } }
}
