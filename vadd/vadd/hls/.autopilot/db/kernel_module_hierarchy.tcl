set ModuleHierarchy {[{
"Name" : "vadd", "RefName" : "vadd","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc_U0", "RefName" : "entry_proc","ID" : "1","Type" : "sequential"},
	{"Name" : "load_data_U0", "RefName" : "load_data","ID" : "2","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_41_1","RefName" : "VITIS_LOOP_41_1","ID" : "3","Type" : "no"},]},
	{"Name" : "load_data_1_U0", "RefName" : "load_data_1","ID" : "4","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_41_1","RefName" : "VITIS_LOOP_41_1","ID" : "5","Type" : "no"},]},
	{"Name" : "compute_add_U0", "RefName" : "compute_add","ID" : "6","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_49_1","RefName" : "VITIS_LOOP_49_1","ID" : "7","Type" : "no"},]},
	{"Name" : "store_data_U0", "RefName" : "store_data","ID" : "8","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_60_1","RefName" : "VITIS_LOOP_60_1","ID" : "9","Type" : "no"},]},]
}]}