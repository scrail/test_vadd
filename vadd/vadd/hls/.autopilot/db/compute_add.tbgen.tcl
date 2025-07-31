set moduleName compute_add
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
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
set cdfgNum 8
set C_modelName {compute_add}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in1_stream int 32 regular {fifo 0 volatile }  }
	{ in2_stream int 32 regular {fifo 0 volatile }  }
	{ out_stream int 32 regular {fifo 1 volatile }  }
	{ size int 32 regular {fifo 0}  }
	{ size_c int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in1_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in2_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "size", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ in1_stream_dout sc_in sc_lv 32 signal 0 } 
	{ in1_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ in1_stream_read sc_out sc_logic 1 signal 0 } 
	{ in1_stream_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ in1_stream_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ in2_stream_dout sc_in sc_lv 32 signal 1 } 
	{ in2_stream_empty_n sc_in sc_logic 1 signal 1 } 
	{ in2_stream_read sc_out sc_logic 1 signal 1 } 
	{ in2_stream_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ in2_stream_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ out_stream_din sc_out sc_lv 32 signal 2 } 
	{ out_stream_full_n sc_in sc_logic 1 signal 2 } 
	{ out_stream_write sc_out sc_logic 1 signal 2 } 
	{ out_stream_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ out_stream_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ size_dout sc_in sc_lv 32 signal 3 } 
	{ size_empty_n sc_in sc_logic 1 signal 3 } 
	{ size_read sc_out sc_logic 1 signal 3 } 
	{ size_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ size_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ size_c_din sc_out sc_lv 32 signal 4 } 
	{ size_c_full_n sc_in sc_logic 1 signal 4 } 
	{ size_c_write sc_out sc_logic 1 signal 4 } 
	{ size_c_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ size_c_fifo_cap sc_in sc_lv 3 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1_stream", "role": "dout" }} , 
 	{ "name": "in1_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1_stream", "role": "empty_n" }} , 
 	{ "name": "in1_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1_stream", "role": "read" }} , 
 	{ "name": "in1_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1_stream", "role": "num_data_valid" }} , 
 	{ "name": "in1_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in1_stream", "role": "fifo_cap" }} , 
 	{ "name": "in2_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in2_stream", "role": "dout" }} , 
 	{ "name": "in2_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2_stream", "role": "empty_n" }} , 
 	{ "name": "in2_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2_stream", "role": "read" }} , 
 	{ "name": "in2_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in2_stream", "role": "num_data_valid" }} , 
 	{ "name": "in2_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in2_stream", "role": "fifo_cap" }} , 
 	{ "name": "out_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream", "role": "din" }} , 
 	{ "name": "out_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream", "role": "full_n" }} , 
 	{ "name": "out_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream", "role": "write" }} , 
 	{ "name": "out_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_stream", "role": "num_data_valid" }} , 
 	{ "name": "out_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_stream", "role": "fifo_cap" }} , 
 	{ "name": "size_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size", "role": "dout" }} , 
 	{ "name": "size_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size", "role": "empty_n" }} , 
 	{ "name": "size_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size", "role": "read" }} , 
 	{ "name": "size_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size", "role": "num_data_valid" }} , 
 	{ "name": "size_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size", "role": "fifo_cap" }} , 
 	{ "name": "size_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_c", "role": "din" }} , 
 	{ "name": "size_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_c", "role": "full_n" }} , 
 	{ "name": "size_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_c", "role": "write" }} , 
 	{ "name": "size_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_c", "role": "num_data_valid" }} , 
 	{ "name": "size_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "size_c", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	compute_add {
		in1_stream {Type I LastRead 1 FirstWrite -1}
		in2_stream {Type I LastRead 1 FirstWrite -1}
		out_stream {Type O LastRead -1 FirstWrite 1}
		size {Type I LastRead 0 FirstWrite -1}
		size_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in1_stream { ap_fifo {  { in1_stream_dout fifo_data_in 0 32 }  { in1_stream_empty_n fifo_status 0 1 }  { in1_stream_read fifo_port_we 1 1 }  { in1_stream_num_data_valid fifo_status_num_data_valid 0 3 }  { in1_stream_fifo_cap fifo_update 0 3 } } }
	in2_stream { ap_fifo {  { in2_stream_dout fifo_data_in 0 32 }  { in2_stream_empty_n fifo_status 0 1 }  { in2_stream_read fifo_port_we 1 1 }  { in2_stream_num_data_valid fifo_status_num_data_valid 0 3 }  { in2_stream_fifo_cap fifo_update 0 3 } } }
	out_stream { ap_fifo {  { out_stream_din fifo_data_in 1 32 }  { out_stream_full_n fifo_status 0 1 }  { out_stream_write fifo_port_we 1 1 }  { out_stream_num_data_valid fifo_status_num_data_valid 0 3 }  { out_stream_fifo_cap fifo_update 0 3 } } }
	size { ap_fifo {  { size_dout fifo_data_in 0 32 }  { size_empty_n fifo_status 0 1 }  { size_read fifo_port_we 1 1 }  { size_num_data_valid fifo_status_num_data_valid 0 3 }  { size_fifo_cap fifo_update 0 3 } } }
	size_c { ap_fifo {  { size_c_din fifo_data_in 1 32 }  { size_c_full_n fifo_status 0 1 }  { size_c_write fifo_port_we 1 1 }  { size_c_num_data_valid fifo_status_num_data_valid 0 3 }  { size_c_fifo_cap fifo_update 0 3 } } }
}
