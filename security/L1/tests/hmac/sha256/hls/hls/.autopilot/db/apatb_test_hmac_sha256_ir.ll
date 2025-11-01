; ModuleID = '/home/yxh/fpga-amd2025/security/L1/tests/hmac/sha256/hls/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ap_uint<32>, 0>" = type { %"struct.ap_uint<32>" }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"class.hls::stream<ap_uint<64>, 0>" = type { %"struct.ap_uint<64>" }
%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }
%"class.hls::stream<ap_uint<256>, 0>" = type { %"struct.ap_uint<256>" }
%"struct.ap_uint<256>" = type { %"struct.ap_int_base<256, false>" }
%"struct.ap_int_base<256, false>" = type { %"struct.ssdm_int<256, false>" }
%"struct.ssdm_int<256, false>" = type { i256 }
%"class.hls::stream<bool, 0>" = type { i1 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_test_hmac_sha256_ir(%"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %keyStrm, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %msgStrm, %"class.hls::stream<ap_uint<64>, 0>"* noalias nocapture nonnull dereferenceable(8) %lenStrm, %"class.hls::stream<bool, 0>"* noalias nocapture nonnull dereferenceable(1) %eLenStrm, %"class.hls::stream<ap_uint<256>, 0>"* noalias nocapture nonnull dereferenceable(32) %hshStrm, %"class.hls::stream<bool, 0>"* noalias nocapture nonnull dereferenceable(1) %eHshStrm) local_unnamed_addr #1 {
entry:
  %keyStrm_copy = alloca i32, align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(i32* %keyStrm_copy, i32 0) ]
  %msgStrm_copy = alloca i32, align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(i32* %msgStrm_copy, i32 0) ]
  %lenStrm_copy = alloca i64, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i64* %lenStrm_copy, i32 0) ]
  %eLenStrm_copy = alloca i1, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i1* %eLenStrm_copy, i32 0) ]
  %hshStrm_copy = alloca i256, align 512
  call void @llvm.sideeffect() #10 [ "stream_interface"(i256* %hshStrm_copy, i32 0) ]
  %eHshStrm_copy = alloca i1, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i1* %eHshStrm_copy, i32 0) ]
  call fastcc void @copy_in(%"class.hls::stream<ap_uint<32>, 0>"* nonnull %keyStrm, i32* nonnull align 512 %keyStrm_copy, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %msgStrm, i32* nonnull align 512 %msgStrm_copy, %"class.hls::stream<ap_uint<64>, 0>"* nonnull %lenStrm, i64* nonnull align 512 %lenStrm_copy, %"class.hls::stream<bool, 0>"* nonnull %eLenStrm, i1* nonnull align 512 %eLenStrm_copy, %"class.hls::stream<ap_uint<256>, 0>"* nonnull %hshStrm, i256* nonnull align 512 %hshStrm_copy, %"class.hls::stream<bool, 0>"* nonnull %eHshStrm, i1* nonnull align 512 %eHshStrm_copy)
  call void @apatb_test_hmac_sha256_hw(i32* %keyStrm_copy, i32* %msgStrm_copy, i64* %lenStrm_copy, i1* %eLenStrm_copy, i256* %hshStrm_copy, i1* %eHshStrm_copy)
  call void @copy_back(%"class.hls::stream<ap_uint<32>, 0>"* %keyStrm, i32* %keyStrm_copy, %"class.hls::stream<ap_uint<32>, 0>"* %msgStrm, i32* %msgStrm_copy, %"class.hls::stream<ap_uint<64>, 0>"* %lenStrm, i64* %lenStrm_copy, %"class.hls::stream<bool, 0>"* %eLenStrm, i1* %eLenStrm_copy, %"class.hls::stream<ap_uint<256>, 0>"* %hshStrm, i256* %hshStrm_copy, %"class.hls::stream<bool, 0>"* %eHshStrm, i1* %eHshStrm_copy)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="0", i32* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="2", i32* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<ap_uint<64>, 0>"* noalias "unpacked"="4", i64* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<bool, 0>"* noalias "unpacked"="6", i1* noalias nocapture align 512 "unpacked"="7.0", %"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="8", i256* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<bool, 0>"* noalias "unpacked"="10", i1* noalias nocapture align 512 "unpacked"="11.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.169"(i32* align 512 %1, %"class.hls::stream<ap_uint<32>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.169"(i32* align 512 %3, %"class.hls::stream<ap_uint<32>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<64>, 0>.142"(i64* align 512 %5, %"class.hls::stream<ap_uint<64>, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(i1* align 512 %7, %"class.hls::stream<bool, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>.120"(i256* align 512 %9, %"class.hls::stream<ap_uint<256>, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(i1* align 512 %11, %"class.hls::stream<bool, 0>"* %10)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<64>, 0>"(%"class.hls::stream<ap_uint<64>, 0>"* noalias "unpacked"="0" %dst, i64* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<64>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<64>, 0>"(%"class.hls::stream<ap_uint<64>, 0>"* nonnull %dst, i64* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<64>, 0>"(%"class.hls::stream<ap_uint<64>, 0>"* noalias nocapture "unpacked"="0", i64* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #4 {
entry:
  %2 = alloca i64
  %3 = alloca %"class.hls::stream<ap_uint<64>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i64* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i64* %2 to i8*
  %7 = bitcast i64* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile i64, i64* %2
  %.ivi = insertvalue %"class.hls::stream<ap_uint<64>, 0>" undef, i64 %8, 0, 0, 0, 0
  store %"class.hls::stream<ap_uint<64>, 0>" %.ivi, %"class.hls::stream<ap_uint<64>, 0>"* %3
  %9 = bitcast %"class.hls::stream<ap_uint<64>, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<ap_uint<64>, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %9, i8* %10)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>"(%"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="0" %dst, i256* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<256>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<256>, 0>"(%"class.hls::stream<ap_uint<256>, 0>"* nonnull %dst, i256* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<256>, 0>"(%"class.hls::stream<ap_uint<256>, 0>"* noalias nocapture "unpacked"="0", i256* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #4 {
entry:
  %2 = alloca i256
  %3 = alloca %"class.hls::stream<ap_uint<256>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i256* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_32(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i256* %2 to i8*
  %7 = bitcast i256* %1 to i8*
  call void @fpga_fifo_pop_32(i8* %6, i8* %7)
  %8 = load volatile i256, i256* %2
  %.ivi = insertvalue %"class.hls::stream<ap_uint<256>, 0>" undef, i256 %8, 0, 0, 0, 0
  store %"class.hls::stream<ap_uint<256>, 0>" %.ivi, %"class.hls::stream<ap_uint<256>, 0>"* %3
  %9 = bitcast %"class.hls::stream<ap_uint<256>, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<ap_uint<256>, 0>"* %0 to i8*
  call void @fpga_fifo_push_32(i8* %9, i8* %10)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="0", i32* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="2", i32* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<ap_uint<64>, 0>"* noalias "unpacked"="4", i64* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<bool, 0>"* noalias "unpacked"="6", i1* noalias nocapture align 512 "unpacked"="7.0", %"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="8", i256* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<bool, 0>"* noalias "unpacked"="10", i1* noalias nocapture align 512 "unpacked"="11.0") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %0, i32* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<64>, 0>"(%"class.hls::stream<ap_uint<64>, 0>"* %4, i64* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.101"(%"class.hls::stream<bool, 0>"* %6, i1* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>"(%"class.hls::stream<ap_uint<256>, 0>"* %8, i256* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.101"(%"class.hls::stream<bool, 0>"* %10, i1* align 512 %11)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.101"(%"class.hls::stream<bool, 0>"* noalias "unpacked"="0" %dst, i1* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<bool, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.104"(%"class.hls::stream<bool, 0>"* nonnull %dst, i1* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.104"(%"class.hls::stream<bool, 0>"* noalias nocapture "unpacked"="0", i1* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #4 {
entry:
  %2 = alloca i1
  %3 = alloca %"class.hls::stream<bool, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i1* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i1* %2 to i8*
  %7 = bitcast i1* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %6, i8* %7)
  %8 = bitcast i1* %2 to i8*
  %9 = load i8, i8* %8
  %10 = trunc i8 %9 to i1
  %.ivi = insertvalue %"class.hls::stream<bool, 0>" undef, i1 %10, 0
  store %"class.hls::stream<bool, 0>" %.ivi, %"class.hls::stream<bool, 0>"* %3
  %11 = bitcast %"class.hls::stream<bool, 0>"* %3 to i8*
  %12 = bitcast %"class.hls::stream<bool, 0>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %11, i8* %12)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(i1* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<bool, 0>"* noalias "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<bool, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.116"(i1* align 512 %dst, %"class.hls::stream<bool, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.116"(i1* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<bool, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<bool, 0>"
  %3 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<bool, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<bool, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<bool, 0>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<bool, 0>", %"class.hls::stream<bool, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<bool, 0>" %8, 0
  store i1 %.evi, i1* %3
  %9 = bitcast i1* %3 to i8*
  %10 = bitcast i1* %0 to i8*
  call void @fpga_fifo_push_1(i8* %9, i8* %10)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>.120"(i256* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<256>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<256>, 0>.123"(i256* align 512 %dst, %"class.hls::stream<ap_uint<256>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<256>, 0>.123"(i256* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_uint<256>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<256>, 0>"
  %3 = alloca i256
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<256>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_32(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<256>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<256>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_32(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<256>, 0>", %"class.hls::stream<ap_uint<256>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_uint<256>, 0>" %8, 0, 0, 0, 0
  store i256 %.evi, i256* %3
  %9 = bitcast i256* %3 to i8*
  %10 = bitcast i256* %0 to i8*
  call void @fpga_fifo_push_32(i8* %9, i8* %10)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<64>, 0>.142"(i64* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_uint<64>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<64>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<64>, 0>.145"(i64* align 512 %dst, %"class.hls::stream<ap_uint<64>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<64>, 0>.145"(i64* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_uint<64>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<64>, 0>"
  %3 = alloca i64
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<64>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<64>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<64>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<64>, 0>", %"class.hls::stream<ap_uint<64>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_uint<64>, 0>" %8, 0, 0, 0, 0
  store i64 %.evi, i64* %3
  %9 = bitcast i64* %3 to i8*
  %10 = bitcast i64* %0 to i8*
  call void @fpga_fifo_push_8(i8* %9, i8* %10)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="0" %dst, i32* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.160"(%"class.hls::stream<ap_uint<32>, 0>"* nonnull %dst, i32* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.160"(%"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture "unpacked"="0", i32* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #4 {
entry:
  %2 = alloca i32
  %3 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i32* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i32* %2 to i8*
  %7 = bitcast i32* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile i32, i32* %2
  %.ivi = insertvalue %"class.hls::stream<ap_uint<32>, 0>" undef, i32 %8, 0, 0, 0, 0
  store %"class.hls::stream<ap_uint<32>, 0>" %.ivi, %"class.hls::stream<ap_uint<32>, 0>"* %3
  %9 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %9, i8* %10)
  br label %empty, !llvm.loop !12

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.169"(i32* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.172"(i32* align 512 %dst, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.172"(i32* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  %3 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<32>, 0>", %"class.hls::stream<ap_uint<32>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_uint<32>, 0>" %8, 0, 0, 0, 0
  store i32 %.evi, i32* %3
  %9 = bitcast i32* %3 to i8*
  %10 = bitcast i32* %0 to i8*
  call void @fpga_fifo_push_4(i8* %9, i8* %10)
  br label %empty, !llvm.loop !13

ret:                                              ; preds = %empty
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_test_hmac_sha256_hw(i32*, i32*, i64*, i1*, i256*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="0", i32* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="2", i32* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<ap_uint<64>, 0>"* noalias "unpacked"="4", i64* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<bool, 0>"* noalias "unpacked"="6", i1* noalias nocapture align 512 "unpacked"="7.0", %"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="8", i256* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<bool, 0>"* noalias "unpacked"="10", i1* noalias nocapture align 512 "unpacked"="11.0") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %0, i32* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<64>, 0>"(%"class.hls::stream<ap_uint<64>, 0>"* %4, i64* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.101"(%"class.hls::stream<bool, 0>"* %6, i1* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>"(%"class.hls::stream<ap_uint<256>, 0>"* %8, i256* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.101"(%"class.hls::stream<bool, 0>"* %10, i1* align 512 %11)
  ret void
}

declare void @test_hmac_sha256_hw_stub(%"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<64>, 0>"* noalias nocapture nonnull, %"class.hls::stream<bool, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<256>, 0>"* noalias nocapture nonnull, %"class.hls::stream<bool, 0>"* noalias nocapture nonnull)

define void @test_hmac_sha256_hw_stub_wrapper(i32*, i32*, i64*, i1*, i256*, i1*) #6 {
entry:
  %6 = call i8* @malloc(i64 4)
  %7 = bitcast i8* %6 to %"class.hls::stream<ap_uint<32>, 0>"*
  %8 = call i8* @malloc(i64 4)
  %9 = bitcast i8* %8 to %"class.hls::stream<ap_uint<32>, 0>"*
  %10 = call i8* @malloc(i64 8)
  %11 = bitcast i8* %10 to %"class.hls::stream<ap_uint<64>, 0>"*
  %12 = call i8* @malloc(i64 1)
  %13 = bitcast i8* %12 to %"class.hls::stream<bool, 0>"*
  %14 = call i8* @malloc(i64 32)
  %15 = bitcast i8* %14 to %"class.hls::stream<ap_uint<256>, 0>"*
  %16 = call i8* @malloc(i64 1)
  %17 = bitcast i8* %16 to %"class.hls::stream<bool, 0>"*
  call void @copy_out(%"class.hls::stream<ap_uint<32>, 0>"* %7, i32* %0, %"class.hls::stream<ap_uint<32>, 0>"* %9, i32* %1, %"class.hls::stream<ap_uint<64>, 0>"* %11, i64* %2, %"class.hls::stream<bool, 0>"* %13, i1* %3, %"class.hls::stream<ap_uint<256>, 0>"* %15, i256* %4, %"class.hls::stream<bool, 0>"* %17, i1* %5)
  call void @test_hmac_sha256_hw_stub(%"class.hls::stream<ap_uint<32>, 0>"* %7, %"class.hls::stream<ap_uint<32>, 0>"* %9, %"class.hls::stream<ap_uint<64>, 0>"* %11, %"class.hls::stream<bool, 0>"* %13, %"class.hls::stream<ap_uint<256>, 0>"* %15, %"class.hls::stream<bool, 0>"* %17)
  call void @copy_in(%"class.hls::stream<ap_uint<32>, 0>"* %7, i32* %0, %"class.hls::stream<ap_uint<32>, 0>"* %9, i32* %1, %"class.hls::stream<ap_uint<64>, 0>"* %11, i64* %2, %"class.hls::stream<bool, 0>"* %13, i1* %3, %"class.hls::stream<ap_uint<256>, 0>"* %15, i256* %4, %"class.hls::stream<bool, 0>"* %17, i1* %5)
  call void @free(i8* %6)
  call void @free(i8* %8)
  call void @free(i8* %10)
  call void @free(i8* %12)
  call void @free(i8* %14)
  call void @free(i8* %16)
  ret void
}

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }
attributes #7 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="64" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="8" "xlx.source"="user" }
attributes #10 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="256" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
