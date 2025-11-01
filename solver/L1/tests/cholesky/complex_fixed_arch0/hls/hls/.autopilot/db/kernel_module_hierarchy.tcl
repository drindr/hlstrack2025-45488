set ModuleHierarchy {[{
"Name" : "kernel_cholesky_0","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_kernel_cholesky_0_Pipeline_read_matrix_rows_read_matrix_cols_fu_44","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "read_matrix_rows_read_matrix_cols","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_s_fu_54","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "row_loop","ID" : "4","Type" : "no",
		"SubLoops" : [
		{"Name" : "col_loop","ID" : "5","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_choleskyAlt_false_3_choleskyTraits_x_complex_x_complex_ap_fixed_Pipeline_sum_s_fu_427","ID" : "6","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "sum_loop","ID" : "7","Type" : "pipeline"},]},]},]},]},
	{"Name" : "grp_kernel_cholesky_0_Pipeline_write_matrix_rows_write_matrix_cols_fu_62","ID" : "8","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "write_matrix_rows_write_matrix_cols","ID" : "9","Type" : "pipeline"},]},]
}]}