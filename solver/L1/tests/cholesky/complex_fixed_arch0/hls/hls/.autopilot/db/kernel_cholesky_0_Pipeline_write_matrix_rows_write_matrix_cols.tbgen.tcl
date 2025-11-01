set moduleName kernel_cholesky_0_Pipeline_write_matrix_rows_write_matrix_cols
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
set cdfgNum 7
set C_modelName {kernel_cholesky_0_Pipeline_write_matrix_rows_write_matrix_cols}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict L_re { MEM_WIDTH 16 MEM_SIZE 18 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict L_im { MEM_WIDTH 16 MEM_SIZE 18 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ L_re int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ L_im int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ matrixLStrm int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "L_re", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "L_im", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "matrixLStrm", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ matrixLStrm_din sc_out sc_lv 32 signal 2 } 
	{ matrixLStrm_full_n sc_in sc_logic 1 signal 2 } 
	{ matrixLStrm_write sc_out sc_logic 1 signal 2 } 
	{ L_re_address0 sc_out sc_lv 4 signal 0 } 
	{ L_re_ce0 sc_out sc_logic 1 signal 0 } 
	{ L_re_q0 sc_in sc_lv 16 signal 0 } 
	{ L_im_address0 sc_out sc_lv 4 signal 1 } 
	{ L_im_ce0 sc_out sc_logic 1 signal 1 } 
	{ L_im_q0 sc_in sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "matrixLStrm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "matrixLStrm", "role": "din" }} , 
 	{ "name": "matrixLStrm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matrixLStrm", "role": "full_n" }} , 
 	{ "name": "matrixLStrm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matrixLStrm", "role": "write" }} , 
 	{ "name": "L_re_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "L_re", "role": "address0" }} , 
 	{ "name": "L_re_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_re", "role": "ce0" }} , 
 	{ "name": "L_re_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "L_re", "role": "q0" }} , 
 	{ "name": "L_im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "L_im", "role": "address0" }} , 
 	{ "name": "L_im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "L_im", "role": "ce0" }} , 
 	{ "name": "L_im_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "L_im", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "kernel_cholesky_0_Pipeline_write_matrix_rows_write_matrix_cols",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "L_re", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L_im", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "matrixLStrm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "matrixLStrm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "write_matrix_rows_write_matrix_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kernel_cholesky_0_Pipeline_write_matrix_rows_write_matrix_cols {
		L_re {Type I LastRead 2 FirstWrite -1}
		L_im {Type I LastRead 2 FirstWrite -1}
		matrixLStrm {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "13"}
	, {"Name" : "Interval", "Min" : "13", "Max" : "13"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	L_re { ap_memory {  { L_re_address0 mem_address 1 4 }  { L_re_ce0 mem_ce 1 1 }  { L_re_q0 mem_dout 0 16 } } }
	L_im { ap_memory {  { L_im_address0 mem_address 1 4 }  { L_im_ce0 mem_ce 1 1 }  { L_im_q0 mem_dout 0 16 } } }
	matrixLStrm { ap_fifo {  { matrixLStrm_din fifo_data_in 1 32 }  { matrixLStrm_full_n fifo_status 0 1 }  { matrixLStrm_write fifo_port_we 1 1 } } }
}
