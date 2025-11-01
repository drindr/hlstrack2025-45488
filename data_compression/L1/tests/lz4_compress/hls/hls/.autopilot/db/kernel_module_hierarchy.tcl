set ModuleHierarchy {[{
"Name" : "lz4CompressEngineRun","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "lzCompress_6_4_65536_6_1_4096_64_U0","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_lzCompress_6_4_65536_6_1_4096_64_Pipeline_VITIS_LOOP_88_2_fu_105","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_88_2","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_lzCompress_6_4_65536_6_1_4096_64_Pipeline_lz_left_bytes_fu_126","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "lz_left_bytes","ID" : "5","Type" : "pipeline"},]},]},
	{"Name" : "lzBestMatchFilter_6_65536_U0","ID" : "6","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter_fu_135","ID" : "7","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "lz_bestMatchFilter","ID" : "8","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "lz_bestMatchFilter_left_over","ID" : "9","Type" : "no"},]},
	{"Name" : "lzBooster_255_16384_64_U0","ID" : "10","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_106","ID" : "11","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "lz_booster","ID" : "12","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "lz_booster_left_bytes","ID" : "13","Type" : "no"},]},
	{"Name" : "lz4Compress_4096_1_U0","ID" : "14","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "lz4CompressPart1_4096_1_U0","ID" : "15","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_lz4CompressPart1_4096_1_Pipeline_lz4_divide_fu_138","ID" : "16","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "lz4_divide","ID" : "17","Type" : "pipeline"},]},]},
		{"Name" : "lz4CompressPart2_U0","ID" : "18","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_lz4CompressPart2_Pipeline_lz4_compress_fu_91","ID" : "19","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "lz4_compress","ID" : "20","Type" : "pipeline"},]},]},]},]
}]}