; ModuleID = 'main.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-suse-linux"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type { i32 (...)**, i32 }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type { %"class.std::locale::facet", %struct.__locale_struct*, i8, i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet" }
%"class.std::num_get" = type { %"class.std::locale::facet" }
%"class.std::allocator.3" = type { i8 }
%struct.Program = type { i32, i32, %"class.std::vector", %"class.std::map" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<Instruction, std::allocator<Instruction> >::_Vector_impl" }
%"struct.std::_Vector_base<Instruction, std::allocator<Instruction> >::_Vector_impl" = type { %struct.Instruction*, %struct.Instruction*, %struct.Instruction* }
%struct.Instruction = type { i8, %union.anon }
%union.anon = type { i32 }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::basic_string<char>, std::pair<const std::basic_string<char>, int>, std::_Select1st<std::pair<const std::basic_string<char>, int> >, std::less<std::basic_string<char> >, std::allocator<std::pair<const std::basic_string<char>, int> > >::_Rb_tree_impl" = type { %"struct.std::less", %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"class.std::basic_string" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%struct.VM = type { %struct.Program*, i32, i32, i32, i8, %"class.std::stack", %"class.std::stack.9", i32*, float*, float*, float*, [113 x i32], [113 x double] }
%"class.std::stack" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl" }
%"struct.std::_Deque_base<int, std::allocator<int> >::_Deque_impl" = type { i32**, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { i32*, i32*, i32*, i32** }
%"class.std::stack.9" = type { %"class.std::deque.10" }
%"class.std::deque.10" = type { %"class.std::_Deque_base.11" }
%"class.std::_Deque_base.11" = type { %"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl" }
%"struct.std::_Deque_base<std::pair<int, int>, std::allocator<std::pair<int, int> > >::_Deque_impl" = type { %"struct.std::pair"**, i64, %"struct.std::_Deque_iterator.15", %"struct.std::_Deque_iterator.15" }
%"struct.std::pair" = type { i32, i32 }
%"struct.std::_Deque_iterator.15" = type { %"struct.std::pair"*, %"struct.std::pair"*, %"struct.std::pair"*, %"struct.std::pair"** }
%union.SDL_Event = type { %struct.SDL_TouchFingerEvent, [8 x i8] }
%struct.SDL_TouchFingerEvent = type { i32, i32, i64, i64, float, float, float, float, float }
%struct.SDL_Window = type opaque
%struct.SDL_Renderer = type opaque
%struct.SDL_Surface = type { i32, %struct.SDL_PixelFormat*, i32, i32, i32, i8*, i8*, i32, i8*, %struct.SDL_Rect, %struct.SDL_BlitMap*, i32 }
%struct.SDL_PixelFormat = type { i32, %struct.SDL_Palette*, i8, i8, [2 x i8], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.SDL_PixelFormat* }
%struct.SDL_Palette = type { i32, %struct.SDL_Color*, i32, i32 }
%struct.SDL_Color = type { i8, i8, i8, i8 }
%struct.SDL_Rect = type { i32, i32, i32, i32 }
%struct.SDL_BlitMap = type opaque
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep_base" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep_base" = type { i64, i64, i32 }
%struct.SDL_Texture = type opaque
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.std::pair.16" }
%"struct.std::pair.16" = type { %"class.std::basic_string", i32 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, i8*, i64, i8, i8, i8, i8, i8*, i8*, i8, %"class.std::codecvt"*, i8*, i64, i8*, i8* }
%union.pthread_mutex_t = type { %"struct.<anonymous union>::__pthread_mutex_s" }
%"struct.<anonymous union>::__pthread_mutex_s" = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::__basic_file" = type { %struct._IO_FILE*, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__mbstate_t = type { i32, %union.anon.23 }
%union.anon.23 = type { i32 }
%"class.std::codecvt" = type { %"class.std::__codecvt_abstract_base", %struct.__locale_struct* }
%"class.std::__codecvt_abstract_base" = type { %"class.std::locale::facet" }
%"class.std::basic_istringstream" = type { %"class.std::basic_istream.base", %"class.std::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::basic_string" }
%"class.std::vector.24" = type { %"struct.std::_Vector_base.25" }
%"struct.std::_Vector_base.25" = type { %"struct.std::_Vector_base<std::basic_string<char>, std::allocator<std::basic_string<char> > >::_Vector_impl" }
%"struct.std::_Vector_base<std::basic_string<char>, std::allocator<std::basic_string<char> > >::_Vector_impl" = type { %"class.std::basic_string"*, %"class.std::basic_string"*, %"class.std::basic_string"* }
%"class.std::istream_iterator" = type { %"class.std::basic_istream"*, %"class.std::basic_string", i8 }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%struct.timespec = type { i64, i64 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str = private unnamed_addr constant [5 x i8] c"GLSL\00", align 1
@.str1 = private unnamed_addr constant [20 x i8] c"../tests/test2.byte\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str2 = private unnamed_addr constant [4 x i8] c" ms\00", align 1
@_ZNSs4_Rep20_S_empty_rep_storageE = external global [0 x i64]
@.str3 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"ms (\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"ms)\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream"
@.str8 = private unnamed_addr constant [30 x i8] c"VM: Unhandled bytecode at IP \00", align 1
@.str9 = private unnamed_addr constant [24 x i8] c"Memory usage estimate: \00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"kB\00", align 1
@.str11 = private unnamed_addr constant [16 x i8] c"Error opening: \00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"FUNC\00", align 1
@.str13 = private unnamed_addr constant [5 x i8] c"CALL\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"LDC\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"LDC2\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"LDC3\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"LDC4\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"POP\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"POP2\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"POP3\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"POP4\00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c"DUP\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"DUP2\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"DUP3\00", align 1
@.str25 = private unnamed_addr constant [5 x i8] c"DUPS\00", align 1
@.str26 = private unnamed_addr constant [6 x i8] c"DUPS2\00", align 1
@.str27 = private unnamed_addr constant [6 x i8] c"DUPS3\00", align 1
@.str28 = private unnamed_addr constant [4 x i8] c"NEG\00", align 1
@.str29 = private unnamed_addr constant [5 x i8] c"NEG2\00", align 1
@.str30 = private unnamed_addr constant [5 x i8] c"NEG3\00", align 1
@.str31 = private unnamed_addr constant [5 x i8] c"NEG4\00", align 1
@.str32 = private unnamed_addr constant [5 x i8] c"SQRT\00", align 1
@.str33 = private unnamed_addr constant [4 x i8] c"RCP\00", align 1
@.str34 = private unnamed_addr constant [4 x i8] c"EXP\00", align 1
@.str35 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str36 = private unnamed_addr constant [5 x i8] c"ADD2\00", align 1
@.str37 = private unnamed_addr constant [5 x i8] c"ADD3\00", align 1
@.str38 = private unnamed_addr constant [5 x i8] c"ADD4\00", align 1
@.str39 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str40 = private unnamed_addr constant [5 x i8] c"SUB2\00", align 1
@.str41 = private unnamed_addr constant [5 x i8] c"SUB3\00", align 1
@.str42 = private unnamed_addr constant [5 x i8] c"SUB4\00", align 1
@.str43 = private unnamed_addr constant [4 x i8] c"MUL\00", align 1
@.str44 = private unnamed_addr constant [5 x i8] c"MUL2\00", align 1
@.str45 = private unnamed_addr constant [5 x i8] c"MUL3\00", align 1
@.str46 = private unnamed_addr constant [5 x i8] c"MUL4\00", align 1
@.str47 = private unnamed_addr constant [6 x i8] c"MULS2\00", align 1
@.str48 = private unnamed_addr constant [6 x i8] c"MULS3\00", align 1
@.str49 = private unnamed_addr constant [6 x i8] c"MULS4\00", align 1
@.str50 = private unnamed_addr constant [4 x i8] c"DIV\00", align 1
@.str51 = private unnamed_addr constant [5 x i8] c"DIV2\00", align 1
@.str52 = private unnamed_addr constant [5 x i8] c"DIV3\00", align 1
@.str53 = private unnamed_addr constant [5 x i8] c"DIV4\00", align 1
@.str54 = private unnamed_addr constant [4 x i8] c"MOD\00", align 1
@.str55 = private unnamed_addr constant [5 x i8] c"MOD2\00", align 1
@.str56 = private unnamed_addr constant [5 x i8] c"MOD3\00", align 1
@.str57 = private unnamed_addr constant [5 x i8] c"MOD4\00", align 1
@.str58 = private unnamed_addr constant [4 x i8] c"POW\00", align 1
@.str59 = private unnamed_addr constant [5 x i8] c"POW2\00", align 1
@.str60 = private unnamed_addr constant [5 x i8] c"POW3\00", align 1
@.str61 = private unnamed_addr constant [5 x i8] c"POW4\00", align 1
@.str62 = private unnamed_addr constant [4 x i8] c"MAD\00", align 1
@.str63 = private unnamed_addr constant [5 x i8] c"MAD2\00", align 1
@.str64 = private unnamed_addr constant [5 x i8] c"MAD3\00", align 1
@.str65 = private unnamed_addr constant [5 x i8] c"MAD4\00", align 1
@.str66 = private unnamed_addr constant [4 x i8] c"MIN\00", align 1
@.str67 = private unnamed_addr constant [5 x i8] c"MIN2\00", align 1
@.str68 = private unnamed_addr constant [5 x i8] c"MIN3\00", align 1
@.str69 = private unnamed_addr constant [5 x i8] c"MIN4\00", align 1
@.str70 = private unnamed_addr constant [4 x i8] c"MAX\00", align 1
@.str71 = private unnamed_addr constant [5 x i8] c"MAX2\00", align 1
@.str72 = private unnamed_addr constant [5 x i8] c"MAX3\00", align 1
@.str73 = private unnamed_addr constant [5 x i8] c"MAX4\00", align 1
@.str74 = private unnamed_addr constant [4 x i8] c"MIX\00", align 1
@.str75 = private unnamed_addr constant [5 x i8] c"MIX2\00", align 1
@.str76 = private unnamed_addr constant [5 x i8] c"MIX3\00", align 1
@.str77 = private unnamed_addr constant [5 x i8] c"MIX4\00", align 1
@.str78 = private unnamed_addr constant [6 x i8] c"MIXS2\00", align 1
@.str79 = private unnamed_addr constant [6 x i8] c"MIXS3\00", align 1
@.str80 = private unnamed_addr constant [6 x i8] c"MIXS4\00", align 1
@.str81 = private unnamed_addr constant [6 x i8] c"CLAMP\00", align 1
@.str82 = private unnamed_addr constant [7 x i8] c"CLAMP2\00", align 1
@.str83 = private unnamed_addr constant [7 x i8] c"CLAMP3\00", align 1
@.str84 = private unnamed_addr constant [7 x i8] c"CLAMP4\00", align 1
@.str85 = private unnamed_addr constant [5 x i8] c"STEP\00", align 1
@.str86 = private unnamed_addr constant [11 x i8] c"SMOOTHSTEP\00", align 1
@.str87 = private unnamed_addr constant [12 x i8] c"SMOOTHSTEPR\00", align 1
@.str88 = private unnamed_addr constant [4 x i8] c"SIN\00", align 1
@.str89 = private unnamed_addr constant [5 x i8] c"SIN2\00", align 1
@.str90 = private unnamed_addr constant [5 x i8] c"SIN3\00", align 1
@.str91 = private unnamed_addr constant [5 x i8] c"SIN4\00", align 1
@.str92 = private unnamed_addr constant [4 x i8] c"COS\00", align 1
@.str93 = private unnamed_addr constant [5 x i8] c"COS2\00", align 1
@.str94 = private unnamed_addr constant [5 x i8] c"COS3\00", align 1
@.str95 = private unnamed_addr constant [5 x i8] c"COS4\00", align 1
@.str96 = private unnamed_addr constant [5 x i8] c"ATAN\00", align 1
@.str97 = private unnamed_addr constant [4 x i8] c"LEN\00", align 1
@.str98 = private unnamed_addr constant [5 x i8] c"LEN2\00", align 1
@.str99 = private unnamed_addr constant [5 x i8] c"LEN3\00", align 1
@.str100 = private unnamed_addr constant [5 x i8] c"LEN4\00", align 1
@.str101 = private unnamed_addr constant [4 x i8] c"ABS\00", align 1
@.str102 = private unnamed_addr constant [5 x i8] c"ABS2\00", align 1
@.str103 = private unnamed_addr constant [5 x i8] c"ABS3\00", align 1
@.str104 = private unnamed_addr constant [5 x i8] c"ABS4\00", align 1
@.str105 = private unnamed_addr constant [4 x i8] c"DP2\00", align 1
@.str106 = private unnamed_addr constant [4 x i8] c"DP3\00", align 1
@.str107 = private unnamed_addr constant [6 x i8] c"NORM3\00", align 1
@.str108 = private unnamed_addr constant [5 x i8] c"LOAD\00", align 1
@.str109 = private unnamed_addr constant [6 x i8] c"LOAD2\00", align 1
@.str110 = private unnamed_addr constant [6 x i8] c"LOAD3\00", align 1
@.str111 = private unnamed_addr constant [6 x i8] c"LOAD4\00", align 1
@.str112 = private unnamed_addr constant [6 x i8] c"STORE\00", align 1
@.str113 = private unnamed_addr constant [7 x i8] c"STORE2\00", align 1
@.str114 = private unnamed_addr constant [7 x i8] c"STORE3\00", align 1
@.str115 = private unnamed_addr constant [7 x i8] c"STORE4\00", align 1
@.str116 = private unnamed_addr constant [7 x i8] c"RETURN\00", align 1
@.str117 = private unnamed_addr constant [7 x i8] c"REPEAT\00", align 1
@.str118 = private unnamed_addr constant [10 x i8] c"ENDREPEAT\00", align 1
@.str119 = private unnamed_addr constant [6 x i8] c"SLOTS\00", align 1
@.str120 = private unnamed_addr constant [6 x i8] c"STACK\00", align 1
@.str121 = private unnamed_addr constant [6 x i8] c"Line \00", align 1
@.str122 = private unnamed_addr constant [23 x i8] c": Unhandled bytecode: \00", align 1
@_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE = external unnamed_addr constant [10 x i8*]
@_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE = external unnamed_addr constant [4 x i8*]
@_ZTVSt13basic_filebufIcSt11char_traitsIcEE = external unnamed_addr constant [16 x i8*]
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant [16 x i8*]
@_ZTVSt19basic_istringstreamIcSt11char_traitsIcESaIcEE = external unnamed_addr constant [10 x i8*]
@_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE = external unnamed_addr constant [4 x i8*]
@_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE = external unnamed_addr constant [16 x i8*]
@.str123 = private unnamed_addr constant [28 x i8] c"vector::_M_emplace_back_aux\00", align 1
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant [4 x i8*]
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: nounwind optsize readnone uwtable
define float @_Z3modff(float %a, float %b) #3 {
  %1 = fdiv float %a, %b
  %2 = tail call float @floorf(float %1) #16
  %3 = fmul float %2, %b
  %4 = fsub float %a, %3
  ret float %4
}

; Function Attrs: nounwind optsize uwtable
define float @_Z8modStoreRff(float* nocapture %a, float %b) #4 {
  %1 = load float* %a, align 4, !tbaa !1
  %2 = fdiv float %1, %b
  %3 = tail call float @floorf(float %2) #16
  %4 = fmul float %3, %b
  %5 = fsub float %1, %4
  store float %5, float* %a, align 4, !tbaa !1
  ret float %5
}

; Function Attrs: nounwind optsize readnone uwtable
define float @_Z5clampfff(float %a, float %b, float %c) #3 {
  %1 = fcmp olt float %a, %b
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = fcmp ogt float %a, %c
  %4 = select i1 %3, float %c, float %a
  br label %5

; <label>:5                                       ; preds = %0, %2
  %6 = phi float [ %4, %2 ], [ %b, %0 ]
  ret float %6
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @_Z5toIntf(float %in) #3 {
  %1 = fpext float %in to double
  %2 = fmul double %1, 2.550000e+02
  %3 = fptosi double %2 to i32
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = icmp sgt i32 %3, 255
  %7 = select i1 %6, i32 255, i32 %3
  br label %8

; <label>:8                                       ; preds = %5, %0
  %9 = phi i32 [ 0, %0 ], [ %7, %5 ]
  ret i32 %9
}

; Function Attrs: optsize uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #5 {
  %1 = alloca %"class.std::allocator.3", align 1
  %2 = alloca %"class.std::allocator.3", align 1
  %program = alloca %struct.Program, align 8
  %3 = alloca %"class.std::basic_string", align 8
  %4 = alloca %"class.std::allocator.3", align 1
  %vm = alloca %struct.VM, align 8
  %event = alloca %union.SDL_Event, align 8
  %5 = call i32 @SDL_Init(i32 33) #17
  %6 = call %struct.SDL_Window* @SDL_CreateWindow(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 800, i32 450, i32 4) #17
  %7 = call %struct.SDL_Renderer* @SDL_CreateRenderer(%struct.SDL_Window* %6, i32 -1, i32 0) #17
  %8 = call %struct.SDL_Surface* @SDL_GetWindowSurface(%struct.SDL_Window* %6) #17
  %9 = bitcast %struct.Program* %program to i8*
  call void @llvm.lifetime.start(i64 80, i8* %9) #2
  %10 = getelementptr inbounds %struct.Program* %program, i64 0, i32 2
  %11 = bitcast %"class.std::vector"* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 24, i32 8, i1 false) #2
  %12 = getelementptr inbounds %struct.Program* %program, i64 0, i32 3, i32 0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.Program* %program, i64 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %14 = bitcast %"struct.std::_Rb_tree_node_base"* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 40, i32 8, i1 false) #2
  store %"struct.std::_Rb_tree_node_base"* %12, %"struct.std::_Rb_tree_node_base"** %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.Program* %program, i64 0, i32 3, i32 0, i32 0, i32 1, i32 3
  store %"struct.std::_Rb_tree_node_base"* %12, %"struct.std::_Rb_tree_node_base"** %15, align 8, !tbaa !12
  %16 = icmp eq i32 %argc, 2
  br i1 %16, label %17, label %20

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds i8** %argv, i64 1
  %19 = load i8** %18, align 8, !tbaa !13
  br label %20

; <label>:20                                      ; preds = %0, %17
  %21 = phi i8* [ %19, %17 ], [ getelementptr inbounds ([20 x i8]* @.str1, i64 0, i64 0), %0 ]
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %3, i8* %21, %"class.std::allocator.3"* %4) #17
          to label %22 unwind label %57

; <label>:22                                      ; preds = %20
  invoke void @_ZN7Program5parseESs(%struct.Program* %program, %"class.std::basic_string"* %3) #17
          to label %23 unwind label %61

; <label>:23                                      ; preds = %22
  %24 = getelementptr inbounds %"class.std::allocator.3"* %2, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %24) #2
  %25 = getelementptr inbounds %"class.std::basic_string"* %3, i64 0, i32 0, i32 0
  %26 = load i8** %25, align 8, !tbaa !14
  %27 = getelementptr inbounds i8* %26, i64 -24
  %28 = bitcast i8* %27 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %28, %"class.std::allocator.3"* %2) #18
  call void @llvm.lifetime.end(i64 1, i8* %24) #2
  %29 = bitcast %struct.VM* %vm to i8*
  call void @llvm.lifetime.start(i64 1576, i8* %29) #2
  invoke void @_ZN2VMC2ER7Programi(%struct.VM* %vm, %struct.Program* %program, i32 360000) #17
          to label %.preheader31 unwind label %70

.preheader31:                                     ; preds = %23
  %30 = getelementptr inbounds %struct.VM* %vm, i64 0, i32 1
  %31 = load i32* %30, align 8, !tbaa !17
  %32 = shl i32 %31, 2
  %33 = getelementptr inbounds %struct.VM* %vm, i64 0, i32 10
  %34 = load float** %33, align 8, !tbaa !25
  %35 = mul nsw i32 %31, 5
  %36 = mul nsw i32 %31, 6
  %37 = mul nsw i32 %31, 7
  %38 = sext i32 %32 to i64
  %39 = sext i32 %35 to i64
  %40 = sext i32 %36 to i64
  %41 = sext i32 %37 to i64
  br label %.preheader29

.preheader29:                                     ; preds = %76, %.preheader31
  %indvars.iv43 = phi i64 [ 0, %.preheader31 ], [ %indvars.iv.next44, %76 ]
  %42 = mul nsw i64 %indvars.iv43, 800
  %43 = trunc i64 %indvars.iv43 to i32
  %44 = sitofp i32 %43 to float
  br label %45

; <label>:45                                      ; preds = %45, %.preheader29
  %indvars.iv40 = phi i64 [ 0, %.preheader29 ], [ %indvars.iv.next41, %45 ]
  %46 = add nsw i64 %indvars.iv40, %42
  %47 = trunc i64 %indvars.iv40 to i32
  %48 = sitofp i32 %47 to float
  %49 = add nsw i64 %38, %46
  %50 = getelementptr inbounds float* %34, i64 %49
  store float %48, float* %50, align 4, !tbaa !1
  %51 = add nsw i64 %39, %46
  %52 = getelementptr inbounds float* %34, i64 %51
  store float %44, float* %52, align 4, !tbaa !1
  %53 = add nsw i64 %40, %46
  %54 = getelementptr inbounds float* %34, i64 %53
  store float 8.000000e+02, float* %54, align 4, !tbaa !1
  %55 = add nsw i64 %41, %46
  %56 = getelementptr inbounds float* %34, i64 %55
  store float 4.500000e+02, float* %56, align 4, !tbaa !1
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond42 = icmp eq i64 %indvars.iv.next41, 800
  br i1 %exitcond42, label %76, label %45

; <label>:57                                      ; preds = %20
  %58 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %59 = extractvalue { i8*, i32 } %58, 0
  %60 = extractvalue { i8*, i32 } %58, 1
  br label %200

; <label>:61                                      ; preds = %22
  %62 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %63 = extractvalue { i8*, i32 } %62, 0
  %64 = extractvalue { i8*, i32 } %62, 1
  %65 = getelementptr inbounds %"class.std::allocator.3"* %1, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %65) #2
  %66 = getelementptr inbounds %"class.std::basic_string"* %3, i64 0, i32 0, i32 0
  %67 = load i8** %66, align 8, !tbaa !14
  %68 = getelementptr inbounds i8* %67, i64 -24
  %69 = bitcast i8* %68 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %69, %"class.std::allocator.3"* %1) #18
  call void @llvm.lifetime.end(i64 1, i8* %65) #2
  br label %200

; <label>:70                                      ; preds = %23
  %71 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %72 = extractvalue { i8*, i32 } %71, 0
  %73 = extractvalue { i8*, i32 } %71, 1
  br label %200

.loopexit:                                        ; preds = %84
  %lpad.loopexit = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  br label %.nonloopexit

.nonloopexit.loopexit:                            ; preds = %.loopexit18
  %lpad.loopexit20 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  br label %.nonloopexit

.nonloopexit.nonloopexit.loopexit:                ; preds = %91, %172, %173, %175, %177, %179, %181, %182, %183, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.noexc, %.noexc9, %93, %_ZNSolsEd.exit
  %lpad.loopexit24 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  br label %.nonloopexit

.nonloopexit.nonloopexit.nonloopexit:             ; preds = %77, %187, %188, %189
  %lpad.nonloopexit = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  br label %.nonloopexit

.nonloopexit:                                     ; preds = %.nonloopexit.loopexit, %.nonloopexit.nonloopexit.nonloopexit, %.nonloopexit.nonloopexit.loopexit, %.loopexit
  %lpad.phi = phi { i8*, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit20, %.nonloopexit.loopexit ], [ %lpad.loopexit24, %.nonloopexit.nonloopexit.loopexit ], [ %lpad.nonloopexit, %.nonloopexit.nonloopexit.nonloopexit ]
  %74 = extractvalue { i8*, i32 } %lpad.phi, 0
  %75 = extractvalue { i8*, i32 } %lpad.phi, 1
  call void @_ZN2VMD2Ev(%struct.VM* %vm) #18
  br label %200

; <label>:76                                      ; preds = %45
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %exitcond45 = icmp eq i64 %indvars.iv.next44, 450
  br i1 %exitcond45, label %77, label %.preheader29

; <label>:77                                      ; preds = %76
  %78 = invoke i32 @SDL_GetTicks() #17
          to label %79 unwind label %.nonloopexit.nonloopexit.nonloopexit

; <label>:79                                      ; preds = %77
  %80 = zext i32 %78 to i64
  %81 = bitcast %union.SDL_Event* %event to i8*
  %82 = getelementptr inbounds %union.SDL_Event* %event, i64 0, i32 0, i32 0
  br label %83

; <label>:83                                      ; preds = %79, %184
  %last.027 = phi i64 [ %80, %79 ], [ %94, %184 ]
  %running.026 = phi i8 [ 1, %79 ], [ %running.1, %184 ]
  call void @llvm.lifetime.start(i64 56, i8* %81) #2
  br label %84

; <label>:84                                      ; preds = %88, %83
  %running.1 = phi i8 [ %running.026, %83 ], [ %.running.1, %88 ]
  %85 = invoke i32 @SDL_PollEvent(%union.SDL_Event* %event) #17
          to label %86 unwind label %.loopexit

; <label>:86                                      ; preds = %84
  %87 = icmp eq i32 %85, 0
  br i1 %87, label %91, label %88

; <label>:88                                      ; preds = %86
  %89 = load i32* %82, align 8, !tbaa !26
  %90 = icmp eq i32 %89, 256
  %.running.1 = select i1 %90, i8 0, i8 %running.1
  br label %84

; <label>:91                                      ; preds = %86
  %92 = invoke i32 @SDL_GetTicks() #17
          to label %93 unwind label %.nonloopexit.nonloopexit.loopexit

; <label>:93                                      ; preds = %91
  %94 = zext i32 %92 to i64
  %95 = sub nsw i64 %94, %last.027
  %96 = sitofp i64 %95 to double
  %97 = invoke %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* @_ZSt4cout, double %96) #17
          to label %_ZNSolsEd.exit unwind label %.nonloopexit.nonloopexit.loopexit

_ZNSolsEd.exit:                                   ; preds = %93
  %98 = invoke %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* %97, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i64 3) #17
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.nonloopexit.nonloopexit.loopexit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEd.exit
  %99 = bitcast %"class.std::basic_ostream"* %97 to i8**
  %100 = load i8** %99, align 8, !tbaa !27
  %101 = getelementptr i8* %100, i64 -24
  %102 = bitcast i8* %101 to i64*
  %103 = load i64* %102, align 8
  %104 = bitcast %"class.std::basic_ostream"* %97 to i8*
  %105 = getelementptr inbounds i8* %104, i64 %103
  %106 = bitcast i8* %105 to %"class.std::basic_ios"*
  %107 = invoke signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %106, i8 signext 10) #17
          to label %.noexc unwind label %.nonloopexit.nonloopexit.loopexit

.noexc:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %108 = invoke %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* %97, i8 signext %107) #17
          to label %.noexc9 unwind label %.nonloopexit.nonloopexit.loopexit

.noexc9:                                          ; preds = %.noexc
  %109 = invoke %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* %108) #17
          to label %_ZNSolsEPFRSoS_E.exit.preheader unwind label %.nonloopexit.nonloopexit.loopexit

_ZNSolsEPFRSoS_E.exit.preheader:                  ; preds = %.noexc9
  %110 = sub nsw i64 %94, %80
  %111 = sitofp i64 %110 to double
  %112 = fmul double %111, 1.000000e-03
  %113 = fptrunc double %112 to float
  %114 = load i32* %30, align 8, !tbaa !17
  %115 = mul nsw i32 %114, 9
  %116 = load float** %33, align 8, !tbaa !25
  %117 = sext i32 %115 to i64
  br label %.preheader

.preheader:                                       ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNSolsEPFRSoS_E.exit.preheader
  %indvars.iv34 = phi i64 [ 0, %_ZNSolsEPFRSoS_E.exit.preheader ], [ %indvars.iv.next35, %_ZNSolsEPFRSoS_E.exit ]
  %118 = mul nsw i64 %indvars.iv34, 800
  %broadcast.splatinsert51 = insertelement <2 x float> undef, float %113, i32 0
  %broadcast.splat52 = shufflevector <2 x float> %broadcast.splatinsert51, <2 x float> undef, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader
  %index = phi i64 [ 0, %.preheader ], [ %index.next, %vector.body ]
  %.lhs = add i64 %index, %118
  %119 = add i64 %.lhs, %117
  %120 = getelementptr inbounds float* %116, i64 %119
  %121 = bitcast float* %120 to <2 x float>*
  store <2 x float> %broadcast.splat52, <2 x float>* %121, align 4
  %index.next = add i64 %index, 2
  %122 = icmp eq i64 %index.next, 800
  br i1 %122, label %_ZNSolsEPFRSoS_E.exit, label %vector.body, !llvm.loop !29

_ZNSolsEPFRSoS_E.exit:                            ; preds = %vector.body
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond36 = icmp eq i64 %indvars.iv.next35, 450
  br i1 %exitcond36, label %.loopexit18, label %.preheader

.loopexit18:                                      ; preds = %_ZNSolsEPFRSoS_E.exit, %124
  %123 = invoke zeroext i1 @_ZN2VM4stepEv(%struct.VM* %vm) #17
          to label %124 unwind label %.nonloopexit.loopexit

; <label>:124                                     ; preds = %.loopexit18
  br i1 %123, label %.loopexit18, label %125

; <label>:125                                     ; preds = %124
  %126 = call i8* @llvm.stacksave()
  %127 = alloca [1080000 x i8], align 16
  %128 = load float** %33, align 8, !tbaa !25
  %129 = load i32* %30, align 8, !tbaa !17
  %130 = shl i32 %129, 1
  %131 = sext i32 %129 to i64
  %132 = sext i32 %130 to i64
  br label %133

; <label>:133                                     ; preds = %_Z5toIntf.exit, %125
  %indvars.iv37 = phi i64 [ 0, %125 ], [ %indvars.iv.next38, %_Z5toIntf.exit ]
  %134 = getelementptr inbounds float* %128, i64 %indvars.iv37
  %135 = load float* %134, align 4, !tbaa !1
  %136 = fpext float %135 to double
  %137 = fmul double %136, 2.550000e+02
  %138 = fptosi double %137 to i32
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %_Z5toIntf.exit8, label %140

; <label>:140                                     ; preds = %133
  %141 = icmp sgt i32 %138, 255
  %142 = trunc i32 %138 to i8
  %phitmp = select i1 %141, i8 -1, i8 %142
  br label %_Z5toIntf.exit8

_Z5toIntf.exit8:                                  ; preds = %133, %140
  %143 = phi i8 [ 0, %133 ], [ %phitmp, %140 ]
  %144 = mul nsw i64 %indvars.iv37, 3
  %145 = getelementptr inbounds [1080000 x i8]* %127, i64 0, i64 %144
  store i8 %143, i8* %145, align 1, !tbaa !32
  %146 = add nsw i64 %131, %indvars.iv37
  %147 = getelementptr inbounds float* %128, i64 %146
  %148 = load float* %147, align 4, !tbaa !1
  %149 = fpext float %148 to double
  %150 = fmul double %149, 2.550000e+02
  %151 = fptosi double %150 to i32
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %_Z5toIntf.exit7, label %153

; <label>:153                                     ; preds = %_Z5toIntf.exit8
  %154 = icmp sgt i32 %151, 255
  %155 = trunc i32 %151 to i8
  %phitmp14 = select i1 %154, i8 -1, i8 %155
  br label %_Z5toIntf.exit7

_Z5toIntf.exit7:                                  ; preds = %_Z5toIntf.exit8, %153
  %156 = phi i8 [ 0, %_Z5toIntf.exit8 ], [ %phitmp14, %153 ]
  %157 = add nsw i64 %144, 1
  %158 = getelementptr inbounds [1080000 x i8]* %127, i64 0, i64 %157
  store i8 %156, i8* %158, align 1, !tbaa !32
  %159 = add nsw i64 %132, %indvars.iv37
  %160 = getelementptr inbounds float* %128, i64 %159
  %161 = load float* %160, align 4, !tbaa !1
  %162 = fpext float %161 to double
  %163 = fmul double %162, 2.550000e+02
  %164 = fptosi double %163 to i32
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %_Z5toIntf.exit, label %166

; <label>:166                                     ; preds = %_Z5toIntf.exit7
  %167 = icmp sgt i32 %164, 255
  %168 = trunc i32 %164 to i8
  %phitmp15 = select i1 %167, i8 -1, i8 %168
  br label %_Z5toIntf.exit

_Z5toIntf.exit:                                   ; preds = %_Z5toIntf.exit7, %166
  %169 = phi i8 [ 0, %_Z5toIntf.exit7 ], [ %phitmp15, %166 ]
  %170 = add nsw i64 %144, 2
  %171 = getelementptr inbounds [1080000 x i8]* %127, i64 0, i64 %170
  store i8 %169, i8* %171, align 1, !tbaa !32
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond39 = icmp eq i64 %indvars.iv.next38, 360000
  br i1 %exitcond39, label %172, label %133

; <label>:172                                     ; preds = %_Z5toIntf.exit
  invoke void @_ZN2VM5resetEv(%struct.VM* %vm) #17
          to label %173 unwind label %.nonloopexit.nonloopexit.loopexit

; <label>:173                                     ; preds = %172
  %.sub = getelementptr inbounds [1080000 x i8]* %127, i64 0, i64 0
  %174 = invoke %struct.SDL_Surface* @SDL_CreateRGBSurfaceFrom(i8* %.sub, i32 800, i32 450, i32 24, i32 2400, i32 255, i32 65280, i32 16711680, i32 0) #17
          to label %175 unwind label %.nonloopexit.nonloopexit.loopexit

; <label>:175                                     ; preds = %173
  %176 = invoke %struct.SDL_Texture* @SDL_CreateTextureFromSurface(%struct.SDL_Renderer* %7, %struct.SDL_Surface* %174) #17
          to label %177 unwind label %.nonloopexit.nonloopexit.loopexit

; <label>:177                                     ; preds = %175
  %178 = invoke i32 @SDL_RenderClear(%struct.SDL_Renderer* %7) #17
          to label %179 unwind label %.nonloopexit.nonloopexit.loopexit

; <label>:179                                     ; preds = %177
  %180 = invoke i32 @SDL_RenderCopy(%struct.SDL_Renderer* %7, %struct.SDL_Texture* %176, %struct.SDL_Rect* null, %struct.SDL_Rect* null) #17
          to label %181 unwind label %.nonloopexit.nonloopexit.loopexit

; <label>:181                                     ; preds = %179
  invoke void @SDL_RenderPresent(%struct.SDL_Renderer* %7) #17
          to label %182 unwind label %.nonloopexit.nonloopexit.loopexit

; <label>:182                                     ; preds = %181
  invoke void @SDL_FreeSurface(%struct.SDL_Surface* %174) #17
          to label %183 unwind label %.nonloopexit.nonloopexit.loopexit

; <label>:183                                     ; preds = %182
  invoke void @SDL_DestroyTexture(%struct.SDL_Texture* %176) #17
          to label %184 unwind label %.nonloopexit.nonloopexit.loopexit

; <label>:184                                     ; preds = %183
  call void @llvm.stackrestore(i8* %126)
  call void @llvm.lifetime.end(i64 56, i8* %81) #2
  %185 = and i8 %running.1, 1
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %83

; <label>:187                                     ; preds = %184
  invoke void @SDL_DestroyRenderer(%struct.SDL_Renderer* %7) #17
          to label %188 unwind label %.nonloopexit.nonloopexit.nonloopexit

; <label>:188                                     ; preds = %187
  invoke void @SDL_DestroyWindow(%struct.SDL_Window* %6) #17
          to label %189 unwind label %.nonloopexit.nonloopexit.nonloopexit

; <label>:189                                     ; preds = %188
  invoke void @SDL_Quit() #17
          to label %190 unwind label %.nonloopexit.nonloopexit.nonloopexit

; <label>:190                                     ; preds = %189
  call void @_ZN2VMD2Ev(%struct.VM* %vm) #18
  call void @llvm.lifetime.end(i64 1576, i8* %29) #2
  %191 = getelementptr inbounds %struct.Program* %program, i64 0, i32 3, i32 0
  %192 = getelementptr inbounds %struct.Program* %program, i64 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %193 = load %"struct.std::_Rb_tree_node_base"** %192, align 8, !tbaa !33
  %194 = bitcast %"struct.std::_Rb_tree_node_base"* %193 to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %191, %"struct.std::_Rb_tree_node"* %194) #18
  %195 = getelementptr inbounds %struct.Program* %program, i64 0, i32 2, i32 0, i32 0, i32 0
  %196 = load %struct.Instruction** %195, align 8, !tbaa !35
  %197 = icmp eq %struct.Instruction* %196, null
  br i1 %197, label %_ZN7ProgramD2Ev.exit6, label %198

; <label>:198                                     ; preds = %190
  %199 = getelementptr inbounds %struct.Instruction* %196, i64 0, i32 0
  call void @_ZdlPv(i8* %199) #18
  br label %_ZN7ProgramD2Ev.exit6

_ZN7ProgramD2Ev.exit6:                            ; preds = %190, %198
  call void @llvm.lifetime.end(i64 80, i8* %9) #2
  ret i32 0

; <label>:200                                     ; preds = %57, %61, %.nonloopexit, %70
  %.15 = phi i32 [ %75, %.nonloopexit ], [ %73, %70 ], [ %64, %61 ], [ %60, %57 ]
  %.1 = phi i8* [ %74, %.nonloopexit ], [ %72, %70 ], [ %63, %61 ], [ %59, %57 ]
  %201 = getelementptr inbounds %struct.Program* %program, i64 0, i32 3, i32 0
  %202 = getelementptr inbounds %struct.Program* %program, i64 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %203 = load %"struct.std::_Rb_tree_node_base"** %202, align 8, !tbaa !33
  %204 = bitcast %"struct.std::_Rb_tree_node_base"* %203 to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %201, %"struct.std::_Rb_tree_node"* %204) #18
  %205 = getelementptr inbounds %struct.Program* %program, i64 0, i32 2, i32 0, i32 0, i32 0
  %206 = load %struct.Instruction** %205, align 8, !tbaa !35
  %207 = icmp eq %struct.Instruction* %206, null
  br i1 %207, label %_ZN7ProgramD2Ev.exit, label %208

; <label>:208                                     ; preds = %200
  %209 = getelementptr inbounds %struct.Instruction* %206, i64 0, i32 0
  call void @_ZdlPv(i8* %209) #18
  br label %_ZN7ProgramD2Ev.exit

_ZN7ProgramD2Ev.exit:                             ; preds = %200, %208
  %210 = insertvalue { i8*, i32 } undef, i8* %.1, 0
  %211 = insertvalue { i8*, i32 } %210, i32 %.15, 1
  resume { i8*, i32 } %211
}

; Function Attrs: optsize
declare i32 @SDL_Init(i32) #0

; Function Attrs: optsize
declare %struct.SDL_Window* @SDL_CreateWindow(i8*, i32, i32, i32, i32, i32) #0

; Function Attrs: optsize
declare %struct.SDL_Renderer* @SDL_CreateRenderer(%struct.SDL_Window*, i32, i32) #0

; Function Attrs: optsize
declare %struct.SDL_Surface* @SDL_GetWindowSurface(%struct.SDL_Window*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZN7Program5parseESs(%struct.Program* %this, %"class.std::basic_string"* nocapture readonly %filename) #5 align 2 {
  %1 = alloca %"class.std::allocator.3", align 1
  %2 = alloca %"class.std::allocator.3", align 1
  %3 = alloca %"class.std::allocator.3", align 1
  %4 = alloca %"class.std::allocator.3", align 1
  %5 = alloca %"class.std::allocator.3", align 1
  %6 = alloca %"class.std::allocator.3", align 1
  %7 = alloca %"class.std::allocator.3", align 1
  %8 = alloca %"class.std::allocator.3", align 1
  %9 = alloca %"class.std::allocator.3", align 1
  %10 = alloca %"class.std::allocator.3", align 1
  %11 = alloca %"class.std::allocator.3", align 1
  %12 = alloca %"class.std::allocator.3", align 1
  %13 = alloca %"class.std::allocator.3", align 1
  %14 = alloca %"class.std::allocator.3", align 1
  %15 = alloca %"class.std::allocator.3", align 1
  %16 = alloca %"class.std::allocator.3", align 1
  %17 = alloca %"class.std::allocator.3", align 1
  %18 = alloca %"class.std::allocator.3", align 1
  %19 = alloca %"class.std::allocator.3", align 1
  %20 = alloca %"class.std::allocator.3", align 1
  %21 = alloca %"class.std::allocator.3", align 1
  %22 = alloca %"class.std::allocator.3", align 1
  %23 = alloca %"class.std::allocator.3", align 1
  %24 = alloca %"class.std::allocator.3", align 1
  %25 = alloca %"class.std::allocator.3", align 1
  %26 = alloca %"class.std::allocator.3", align 1
  %27 = alloca %"class.std::allocator.3", align 1
  %28 = alloca %"class.std::allocator.3", align 1
  %29 = alloca %"class.std::allocator.3", align 1
  %30 = alloca %"class.std::allocator.3", align 1
  %31 = alloca %"class.std::allocator.3", align 1
  %32 = alloca %"class.std::allocator.3", align 1
  %33 = alloca %"class.std::allocator.3", align 1
  %34 = alloca %"class.std::allocator.3", align 1
  %35 = alloca %"class.std::allocator.3", align 1
  %36 = alloca %"class.std::allocator.3", align 1
  %37 = alloca %"class.std::allocator.3", align 1
  %38 = alloca %"class.std::allocator.3", align 1
  %input = alloca %"class.std::basic_ifstream", align 8
  %line = alloca %"class.std::basic_string", align 8
  %iss = alloca %"class.std::basic_istringstream", align 8
  %tokens = alloca %"class.std::vector.24", align 8
  %39 = alloca %"class.std::istream_iterator", align 8
  %40 = alloca %"class.std::istream_iterator", align 8
  %41 = alloca %"struct.std::pair.16", align 8
  %42 = alloca %struct.Instruction, align 4
  %43 = alloca %struct.Instruction, align 4
  %44 = alloca %"class.std::basic_string", align 8
  %45 = alloca %struct.Instruction, align 4
  %46 = alloca %"class.std::basic_string", align 8
  %47 = alloca %struct.Instruction, align 4
  %48 = alloca %"class.std::basic_string", align 8
  %49 = alloca %struct.Instruction, align 4
  %50 = alloca %"class.std::basic_string", align 8
  %51 = alloca %struct.Instruction, align 4
  %52 = alloca %struct.Instruction, align 4
  %53 = alloca %struct.Instruction, align 4
  %54 = alloca %struct.Instruction, align 4
  %55 = alloca %struct.Instruction, align 4
  %56 = alloca %struct.Instruction, align 4
  %57 = alloca %struct.Instruction, align 4
  %58 = alloca %struct.Instruction, align 4
  %59 = alloca %struct.Instruction, align 4
  %60 = alloca %struct.Instruction, align 4
  %61 = alloca %struct.Instruction, align 4
  %62 = alloca %struct.Instruction, align 4
  %63 = alloca %struct.Instruction, align 4
  %64 = alloca %struct.Instruction, align 4
  %65 = alloca %struct.Instruction, align 4
  %66 = alloca %struct.Instruction, align 4
  %67 = alloca %struct.Instruction, align 4
  %68 = alloca %struct.Instruction, align 4
  %69 = alloca %struct.Instruction, align 4
  %70 = alloca %struct.Instruction, align 4
  %71 = alloca %struct.Instruction, align 4
  %72 = alloca %struct.Instruction, align 4
  %73 = alloca %struct.Instruction, align 4
  %74 = alloca %struct.Instruction, align 4
  %75 = alloca %struct.Instruction, align 4
  %76 = alloca %struct.Instruction, align 4
  %77 = alloca %struct.Instruction, align 4
  %78 = alloca %struct.Instruction, align 4
  %79 = alloca %struct.Instruction, align 4
  %80 = alloca %struct.Instruction, align 4
  %81 = alloca %struct.Instruction, align 4
  %82 = alloca %struct.Instruction, align 4
  %83 = alloca %struct.Instruction, align 4
  %84 = alloca %struct.Instruction, align 4
  %85 = alloca %struct.Instruction, align 4
  %86 = alloca %struct.Instruction, align 4
  %87 = alloca %struct.Instruction, align 4
  %88 = alloca %struct.Instruction, align 4
  %89 = alloca %struct.Instruction, align 4
  %90 = alloca %struct.Instruction, align 4
  %91 = alloca %struct.Instruction, align 4
  %92 = alloca %struct.Instruction, align 4
  %93 = alloca %struct.Instruction, align 4
  %94 = alloca %struct.Instruction, align 4
  %95 = alloca %struct.Instruction, align 4
  %96 = alloca %struct.Instruction, align 4
  %97 = alloca %struct.Instruction, align 4
  %98 = alloca %struct.Instruction, align 4
  %99 = alloca %struct.Instruction, align 4
  %100 = alloca %struct.Instruction, align 4
  %101 = alloca %struct.Instruction, align 4
  %102 = alloca %struct.Instruction, align 4
  %103 = alloca %struct.Instruction, align 4
  %104 = alloca %struct.Instruction, align 4
  %105 = alloca %struct.Instruction, align 4
  %106 = alloca %struct.Instruction, align 4
  %107 = alloca %struct.Instruction, align 4
  %108 = alloca %struct.Instruction, align 4
  %109 = alloca %struct.Instruction, align 4
  %110 = alloca %struct.Instruction, align 4
  %111 = alloca %struct.Instruction, align 4
  %112 = alloca %struct.Instruction, align 4
  %113 = alloca %struct.Instruction, align 4
  %114 = alloca %struct.Instruction, align 4
  %115 = alloca %struct.Instruction, align 4
  %116 = alloca %struct.Instruction, align 4
  %117 = alloca %struct.Instruction, align 4
  %118 = alloca %struct.Instruction, align 4
  %119 = alloca %struct.Instruction, align 4
  %120 = alloca %struct.Instruction, align 4
  %121 = alloca %struct.Instruction, align 4
  %122 = alloca %struct.Instruction, align 4
  %123 = alloca %struct.Instruction, align 4
  %124 = alloca %struct.Instruction, align 4
  %125 = alloca %struct.Instruction, align 4
  %126 = alloca %struct.Instruction, align 4
  %127 = alloca %struct.Instruction, align 4
  %128 = alloca %struct.Instruction, align 4
  %129 = alloca %struct.Instruction, align 4
  %130 = alloca %struct.Instruction, align 4
  %131 = alloca %struct.Instruction, align 4
  %132 = alloca %struct.Instruction, align 4
  %133 = alloca %struct.Instruction, align 4
  %134 = alloca %struct.Instruction, align 4
  %135 = alloca %struct.Instruction, align 4
  %136 = alloca %struct.Instruction, align 4
  %137 = alloca %struct.Instruction, align 4
  %138 = alloca %struct.Instruction, align 4
  %139 = alloca %struct.Instruction, align 4
  %140 = alloca %struct.Instruction, align 4
  %141 = alloca %"class.std::basic_string", align 8
  %142 = alloca %struct.Instruction, align 4
  %143 = alloca %"class.std::basic_string", align 8
  %144 = alloca %struct.Instruction, align 4
  %145 = alloca %"class.std::basic_string", align 8
  %146 = alloca %struct.Instruction, align 4
  %147 = alloca %"class.std::basic_string", align 8
  %148 = alloca %struct.Instruction, align 4
  %149 = alloca %"class.std::basic_string", align 8
  %150 = alloca %struct.Instruction, align 4
  %151 = alloca %"class.std::basic_string", align 8
  %152 = alloca %struct.Instruction, align 4
  %153 = alloca %"class.std::basic_string", align 8
  %154 = alloca %struct.Instruction, align 4
  %155 = alloca %"class.std::basic_string", align 8
  %156 = alloca %struct.Instruction, align 4
  %157 = alloca %struct.Instruction, align 4
  %158 = alloca %"class.std::basic_string", align 8
  %159 = alloca %struct.Instruction, align 4
  %160 = alloca %"class.std::basic_string", align 8
  %161 = alloca %"class.std::basic_string", align 8
  %162 = bitcast %"class.std::basic_ifstream"* %input to i8*
  call void @llvm.lifetime.start(i64 520, i8* %162) #2
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKSsSt13_Ios_Openmode(%"class.std::basic_ifstream"* %input, %"class.std::basic_string"* %filename, i32 8) #17
  %163 = bitcast %"class.std::basic_ifstream"* %input to i8**
  %164 = load i8** %163, align 8, !tbaa !27
  %165 = getelementptr i8* %164, i64 -24
  %166 = bitcast i8* %165 to i64*
  %167 = load i64* %166, align 8
  %.sum = add i64 %167, 32
  %168 = getelementptr inbounds i8* %162, i64 %.sum
  %169 = bitcast i8* %168 to i32*
  %170 = load i32* %169, align 4, !tbaa !38
  %171 = and i32 %170, 1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %.preheader, label %352

.preheader:                                       ; preds = %0
  %173 = icmp eq i32 %170, 0
  br i1 %173, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %174 = getelementptr inbounds %"class.std::basic_string"* %line, i64 0, i32 0, i32 0
  %175 = bitcast %"class.std::basic_ifstream"* %input to %"class.std::basic_istream"*
  %176 = getelementptr inbounds %"class.std::allocator.3"* %33, i64 0, i32 0
  %177 = bitcast %"class.std::basic_istringstream"* %iss to i8*
  %178 = bitcast %"class.std::vector.24"* %tokens to i8*
  %179 = bitcast %"class.std::basic_istringstream"* %iss to %"class.std::basic_istream"*
  %180 = getelementptr inbounds %"class.std::istream_iterator"* %40, i64 0, i32 0
  %181 = getelementptr inbounds %"class.std::istream_iterator"* %40, i64 0, i32 1, i32 0, i32 0
  %182 = getelementptr inbounds %"class.std::istream_iterator"* %40, i64 0, i32 2
  %183 = getelementptr inbounds %"class.std::allocator.3"* %37, i64 0, i32 0
  %184 = getelementptr inbounds %"class.std::allocator.3"* %36, i64 0, i32 0
  %185 = getelementptr inbounds %"class.std::istream_iterator"* %39, i64 0, i32 1, i32 0, i32 0
  %186 = getelementptr inbounds %"class.std::vector.24"* %tokens, i64 0, i32 0, i32 0, i32 0
  %187 = getelementptr inbounds %"class.std::vector.24"* %tokens, i64 0, i32 0, i32 0, i32 1
  %188 = getelementptr inbounds %"class.std::basic_istringstream"* %iss, i64 0, i32 2, i32 0
  %189 = getelementptr inbounds %struct.Program* %this, i64 0, i32 2, i32 0, i32 0, i32 1
  %190 = getelementptr inbounds %struct.Program* %this, i64 0, i32 2, i32 0, i32 0, i32 0
  %191 = getelementptr inbounds %"struct.std::pair.16"* %41, i64 0, i32 0
  %192 = getelementptr inbounds %"struct.std::pair.16"* %41, i64 0, i32 1
  %193 = getelementptr inbounds %struct.Program* %this, i64 0, i32 3, i32 0
  %194 = getelementptr inbounds %"class.std::allocator.3"* %32, i64 0, i32 0
  %195 = getelementptr inbounds %"struct.std::pair.16"* %41, i64 0, i32 0, i32 0, i32 0
  %196 = getelementptr inbounds %struct.Program* %this, i64 0, i32 2
  %197 = getelementptr inbounds %struct.Instruction* %42, i64 0, i32 0
  %198 = getelementptr inbounds %struct.Instruction* %42, i64 0, i32 1, i32 0
  %199 = getelementptr inbounds %struct.Instruction* %43, i64 0, i32 0
  %200 = getelementptr inbounds %struct.Instruction* %43, i64 0, i32 1
  %201 = bitcast %union.anon* %200 to float*
  %202 = getelementptr inbounds %"class.std::allocator.3"* %30, i64 0, i32 0
  %203 = getelementptr inbounds %"class.std::basic_string"* %44, i64 0, i32 0, i32 0
  %204 = getelementptr inbounds %struct.Instruction* %45, i64 0, i32 0
  %205 = getelementptr inbounds %struct.Instruction* %45, i64 0, i32 1
  %206 = bitcast %union.anon* %205 to float*
  %207 = getelementptr inbounds %"class.std::allocator.3"* %26, i64 0, i32 0
  %208 = getelementptr inbounds %"class.std::basic_string"* %46, i64 0, i32 0, i32 0
  %209 = getelementptr inbounds %struct.Instruction* %47, i64 0, i32 0
  %210 = getelementptr inbounds %struct.Instruction* %47, i64 0, i32 1
  %211 = bitcast %union.anon* %210 to float*
  %212 = getelementptr inbounds %"class.std::allocator.3"* %22, i64 0, i32 0
  %213 = getelementptr inbounds %"class.std::basic_string"* %48, i64 0, i32 0, i32 0
  %214 = getelementptr inbounds %struct.Instruction* %49, i64 0, i32 0
  %215 = getelementptr inbounds %struct.Instruction* %49, i64 0, i32 1
  %216 = bitcast %union.anon* %215 to float*
  %217 = getelementptr inbounds %"class.std::allocator.3"* %19, i64 0, i32 0
  %218 = getelementptr inbounds %"class.std::basic_string"* %50, i64 0, i32 0, i32 0
  %219 = getelementptr inbounds %struct.Instruction* %51, i64 0, i32 0
  %220 = getelementptr inbounds %struct.Instruction* %52, i64 0, i32 0
  %221 = getelementptr inbounds %struct.Instruction* %53, i64 0, i32 0
  %222 = getelementptr inbounds %struct.Instruction* %54, i64 0, i32 0
  %223 = getelementptr inbounds %struct.Instruction* %55, i64 0, i32 0
  %224 = getelementptr inbounds %struct.Instruction* %56, i64 0, i32 0
  %225 = getelementptr inbounds %struct.Instruction* %57, i64 0, i32 0
  %226 = getelementptr inbounds %struct.Instruction* %58, i64 0, i32 0
  %227 = getelementptr inbounds %struct.Instruction* %59, i64 0, i32 0
  %228 = getelementptr inbounds %struct.Instruction* %60, i64 0, i32 0
  %229 = getelementptr inbounds %struct.Instruction* %61, i64 0, i32 0
  %230 = getelementptr inbounds %struct.Instruction* %62, i64 0, i32 0
  %231 = getelementptr inbounds %struct.Instruction* %63, i64 0, i32 0
  %232 = getelementptr inbounds %struct.Instruction* %64, i64 0, i32 0
  %233 = getelementptr inbounds %struct.Instruction* %65, i64 0, i32 0
  %234 = getelementptr inbounds %struct.Instruction* %66, i64 0, i32 0
  %235 = getelementptr inbounds %struct.Instruction* %67, i64 0, i32 0
  %236 = getelementptr inbounds %struct.Instruction* %68, i64 0, i32 0
  %237 = getelementptr inbounds %struct.Instruction* %69, i64 0, i32 0
  %238 = getelementptr inbounds %struct.Instruction* %70, i64 0, i32 0
  %239 = getelementptr inbounds %struct.Instruction* %71, i64 0, i32 0
  %240 = getelementptr inbounds %struct.Instruction* %72, i64 0, i32 0
  %241 = getelementptr inbounds %struct.Instruction* %73, i64 0, i32 0
  %242 = getelementptr inbounds %struct.Instruction* %74, i64 0, i32 0
  %243 = getelementptr inbounds %struct.Instruction* %75, i64 0, i32 0
  %244 = getelementptr inbounds %struct.Instruction* %76, i64 0, i32 0
  %245 = getelementptr inbounds %struct.Instruction* %77, i64 0, i32 0
  %246 = getelementptr inbounds %struct.Instruction* %78, i64 0, i32 0
  %247 = getelementptr inbounds %struct.Instruction* %79, i64 0, i32 0
  %248 = getelementptr inbounds %struct.Instruction* %80, i64 0, i32 0
  %249 = getelementptr inbounds %struct.Instruction* %81, i64 0, i32 0
  %250 = getelementptr inbounds %struct.Instruction* %82, i64 0, i32 0
  %251 = getelementptr inbounds %struct.Instruction* %83, i64 0, i32 0
  %252 = getelementptr inbounds %struct.Instruction* %84, i64 0, i32 0
  %253 = getelementptr inbounds %struct.Instruction* %85, i64 0, i32 0
  %254 = getelementptr inbounds %struct.Instruction* %86, i64 0, i32 0
  %255 = getelementptr inbounds %struct.Instruction* %87, i64 0, i32 0
  %256 = getelementptr inbounds %struct.Instruction* %88, i64 0, i32 0
  %257 = getelementptr inbounds %struct.Instruction* %89, i64 0, i32 0
  %258 = getelementptr inbounds %struct.Instruction* %90, i64 0, i32 0
  %259 = getelementptr inbounds %struct.Instruction* %91, i64 0, i32 0
  %260 = getelementptr inbounds %struct.Instruction* %92, i64 0, i32 0
  %261 = getelementptr inbounds %struct.Instruction* %93, i64 0, i32 0
  %262 = getelementptr inbounds %struct.Instruction* %94, i64 0, i32 0
  %263 = getelementptr inbounds %struct.Instruction* %95, i64 0, i32 0
  %264 = getelementptr inbounds %struct.Instruction* %96, i64 0, i32 0
  %265 = getelementptr inbounds %struct.Instruction* %97, i64 0, i32 0
  %266 = getelementptr inbounds %struct.Instruction* %98, i64 0, i32 0
  %267 = getelementptr inbounds %struct.Instruction* %99, i64 0, i32 0
  %268 = getelementptr inbounds %struct.Instruction* %100, i64 0, i32 0
  %269 = getelementptr inbounds %struct.Instruction* %101, i64 0, i32 0
  %270 = getelementptr inbounds %struct.Instruction* %102, i64 0, i32 0
  %271 = getelementptr inbounds %struct.Instruction* %103, i64 0, i32 0
  %272 = getelementptr inbounds %struct.Instruction* %104, i64 0, i32 0
  %273 = getelementptr inbounds %struct.Instruction* %105, i64 0, i32 0
  %274 = getelementptr inbounds %struct.Instruction* %106, i64 0, i32 0
  %275 = getelementptr inbounds %struct.Instruction* %107, i64 0, i32 0
  %276 = getelementptr inbounds %struct.Instruction* %108, i64 0, i32 0
  %277 = getelementptr inbounds %struct.Instruction* %109, i64 0, i32 0
  %278 = getelementptr inbounds %struct.Instruction* %110, i64 0, i32 0
  %279 = getelementptr inbounds %struct.Instruction* %111, i64 0, i32 0
  %280 = getelementptr inbounds %struct.Instruction* %112, i64 0, i32 0
  %281 = getelementptr inbounds %struct.Instruction* %113, i64 0, i32 0
  %282 = getelementptr inbounds %struct.Instruction* %114, i64 0, i32 0
  %283 = getelementptr inbounds %struct.Instruction* %115, i64 0, i32 0
  %284 = getelementptr inbounds %struct.Instruction* %116, i64 0, i32 0
  %285 = getelementptr inbounds %struct.Instruction* %117, i64 0, i32 0
  %286 = getelementptr inbounds %struct.Instruction* %118, i64 0, i32 0
  %287 = getelementptr inbounds %struct.Instruction* %119, i64 0, i32 0
  %288 = getelementptr inbounds %struct.Instruction* %120, i64 0, i32 0
  %289 = getelementptr inbounds %struct.Instruction* %121, i64 0, i32 0
  %290 = getelementptr inbounds %struct.Instruction* %122, i64 0, i32 0
  %291 = getelementptr inbounds %struct.Instruction* %123, i64 0, i32 0
  %292 = getelementptr inbounds %struct.Instruction* %124, i64 0, i32 0
  %293 = getelementptr inbounds %struct.Instruction* %125, i64 0, i32 0
  %294 = getelementptr inbounds %struct.Instruction* %126, i64 0, i32 0
  %295 = getelementptr inbounds %struct.Instruction* %127, i64 0, i32 0
  %296 = getelementptr inbounds %struct.Instruction* %128, i64 0, i32 0
  %297 = getelementptr inbounds %struct.Instruction* %129, i64 0, i32 0
  %298 = getelementptr inbounds %struct.Instruction* %130, i64 0, i32 0
  %299 = getelementptr inbounds %struct.Instruction* %131, i64 0, i32 0
  %300 = getelementptr inbounds %struct.Instruction* %132, i64 0, i32 0
  %301 = getelementptr inbounds %struct.Instruction* %133, i64 0, i32 0
  %302 = getelementptr inbounds %struct.Instruction* %134, i64 0, i32 0
  %303 = getelementptr inbounds %struct.Instruction* %135, i64 0, i32 0
  %304 = getelementptr inbounds %struct.Instruction* %136, i64 0, i32 0
  %305 = getelementptr inbounds %struct.Instruction* %137, i64 0, i32 0
  %306 = getelementptr inbounds %struct.Instruction* %138, i64 0, i32 0
  %307 = getelementptr inbounds %struct.Instruction* %139, i64 0, i32 0
  %308 = getelementptr inbounds %struct.Instruction* %140, i64 0, i32 0
  %309 = getelementptr inbounds %struct.Instruction* %140, i64 0, i32 1, i32 0
  %310 = getelementptr inbounds %"class.std::allocator.3"* %1, i64 0, i32 0
  %311 = getelementptr inbounds %"class.std::basic_string"* %141, i64 0, i32 0, i32 0
  %312 = getelementptr inbounds %struct.Instruction* %142, i64 0, i32 0
  %313 = getelementptr inbounds %struct.Instruction* %142, i64 0, i32 1, i32 0
  %314 = getelementptr inbounds %"class.std::allocator.3"* %3, i64 0, i32 0
  %315 = getelementptr inbounds %"class.std::basic_string"* %143, i64 0, i32 0, i32 0
  %316 = getelementptr inbounds %struct.Instruction* %144, i64 0, i32 0
  %317 = getelementptr inbounds %struct.Instruction* %144, i64 0, i32 1, i32 0
  %318 = getelementptr inbounds %"class.std::allocator.3"* %5, i64 0, i32 0
  %319 = getelementptr inbounds %"class.std::basic_string"* %145, i64 0, i32 0, i32 0
  %320 = getelementptr inbounds %struct.Instruction* %146, i64 0, i32 0
  %321 = getelementptr inbounds %struct.Instruction* %146, i64 0, i32 1, i32 0
  %322 = getelementptr inbounds %"class.std::allocator.3"* %7, i64 0, i32 0
  %323 = getelementptr inbounds %"class.std::basic_string"* %147, i64 0, i32 0, i32 0
  %324 = getelementptr inbounds %struct.Instruction* %148, i64 0, i32 0
  %325 = getelementptr inbounds %struct.Instruction* %148, i64 0, i32 1, i32 0
  %326 = getelementptr inbounds %"class.std::allocator.3"* %9, i64 0, i32 0
  %327 = getelementptr inbounds %"class.std::basic_string"* %149, i64 0, i32 0, i32 0
  %328 = getelementptr inbounds %struct.Instruction* %150, i64 0, i32 0
  %329 = getelementptr inbounds %struct.Instruction* %150, i64 0, i32 1, i32 0
  %330 = getelementptr inbounds %"class.std::allocator.3"* %11, i64 0, i32 0
  %331 = getelementptr inbounds %"class.std::basic_string"* %151, i64 0, i32 0, i32 0
  %332 = getelementptr inbounds %struct.Instruction* %152, i64 0, i32 0
  %333 = getelementptr inbounds %struct.Instruction* %152, i64 0, i32 1, i32 0
  %334 = getelementptr inbounds %"class.std::allocator.3"* %13, i64 0, i32 0
  %335 = getelementptr inbounds %"class.std::basic_string"* %153, i64 0, i32 0, i32 0
  %336 = getelementptr inbounds %struct.Instruction* %154, i64 0, i32 0
  %337 = getelementptr inbounds %struct.Instruction* %154, i64 0, i32 1, i32 0
  %338 = getelementptr inbounds %"class.std::allocator.3"* %15, i64 0, i32 0
  %339 = getelementptr inbounds %"class.std::basic_string"* %155, i64 0, i32 0, i32 0
  %340 = getelementptr inbounds %struct.Instruction* %156, i64 0, i32 0
  %341 = getelementptr inbounds %struct.Instruction* %157, i64 0, i32 0
  %342 = getelementptr inbounds %struct.Instruction* %157, i64 0, i32 1, i32 0
  %343 = getelementptr inbounds %"class.std::allocator.3"* %17, i64 0, i32 0
  %344 = getelementptr inbounds %"class.std::basic_string"* %158, i64 0, i32 0, i32 0
  %345 = getelementptr inbounds %struct.Instruction* %159, i64 0, i32 0
  %346 = getelementptr inbounds %struct.Program* %this, i64 0, i32 0
  %347 = getelementptr inbounds %"class.std::allocator.3"* %23, i64 0, i32 0
  %348 = getelementptr inbounds %"class.std::basic_string"* %160, i64 0, i32 0, i32 0
  %349 = getelementptr inbounds %struct.Program* %this, i64 0, i32 1
  %350 = getelementptr inbounds %"class.std::allocator.3"* %27, i64 0, i32 0
  %351 = getelementptr inbounds %"class.std::basic_string"* %161, i64 0, i32 0, i32 0
  %.pre = load i8** %163, align 8, !tbaa !27
  br label %375

; <label>:352                                     ; preds = %0
  %353 = invoke %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([16 x i8]* @.str11, i64 0, i64 0), i64 15) #17
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %371

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %352
  %354 = getelementptr inbounds %"class.std::basic_string"* %filename, i64 0, i32 0, i32 0
  %355 = load i8** %354, align 8, !tbaa !14
  %356 = getelementptr inbounds i8* %355, i64 -24
  %357 = bitcast i8* %356 to i64*
  %358 = load i64* %357, align 8, !tbaa !44
  %359 = invoke %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* @_ZSt4cout, i8* %355, i64 %358) #17
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.exit unwind label %371

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %360 = bitcast %"class.std::basic_ostream"* %359 to i8**
  %361 = load i8** %360, align 8, !tbaa !27
  %362 = getelementptr i8* %361, i64 -24
  %363 = bitcast i8* %362 to i64*
  %364 = load i64* %363, align 8
  %365 = bitcast %"class.std::basic_ostream"* %359 to i8*
  %366 = getelementptr inbounds i8* %365, i64 %364
  %367 = bitcast i8* %366 to %"class.std::basic_ios"*
  %368 = invoke signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %367, i8 signext 10) #17
          to label %.noexc unwind label %371

.noexc:                                           ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.exit
  %369 = invoke %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* %359, i8 signext %368) #17
          to label %.noexc9 unwind label %371

.noexc9:                                          ; preds = %.noexc
  %370 = invoke %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* %369) #17
          to label %.critedge unwind label %371

; <label>:371                                     ; preds = %.noexc9, %.noexc, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %352
  %372 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %373 = extractvalue { i8*, i32 } %372, 0
  %374 = extractvalue { i8*, i32 } %372, 1
  br label %1475

; <label>:375                                     ; preds = %.lr.ph, %1457
  %376 = phi i8* [ %.pre, %.lr.ph ], [ %1461, %1457 ]
  %lineNum.0494 = phi i32 [ 1, %.lr.ph ], [ %phitmp, %1457 ]
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %174, align 8, !tbaa !46
  %377 = getelementptr i8* %376, i64 -24
  %378 = bitcast i8* %377 to i64*
  %379 = load i64* %378, align 8
  %380 = getelementptr inbounds i8* %162, i64 %379
  %381 = bitcast i8* %380 to %"class.std::basic_ios"*
  %382 = invoke signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %381, i8 signext 10) #17
          to label %.noexc12 unwind label %398

.noexc12:                                         ; preds = %375
  %383 = invoke %"class.std::basic_istream"* @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_ES4_(%"class.std::basic_istream"* %175, %"class.std::basic_string"* %line, i8 signext %382) #17
          to label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E.exit unwind label %398

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E.exit: ; preds = %.noexc12
  %384 = load i8** %174, align 8, !tbaa !14
  %385 = getelementptr inbounds i8* %384, i64 -24
  %386 = bitcast i8* %385 to i64*
  %387 = load i64* %386, align 8, !tbaa !44
  %388 = icmp eq i64 %387, 0
  br i1 %388, label %1457, label %389

; <label>:389                                     ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E.exit
  %390 = getelementptr inbounds i8* %384, i64 -8
  %391 = bitcast i8* %390 to i32*
  %392 = load i32* %391, align 4, !tbaa !47
  %393 = icmp slt i32 %392, 0
  br i1 %393, label %_ZNSsixEm.exit, label %394

; <label>:394                                     ; preds = %389
  invoke void @_ZNSs12_M_leak_hardEv(%"class.std::basic_string"* %line) #17
          to label %.noexc14 unwind label %398

.noexc14:                                         ; preds = %394
  %.pre.i = load i8** %174, align 8, !tbaa !14
  br label %_ZNSsixEm.exit

_ZNSsixEm.exit:                                   ; preds = %.noexc14, %389
  %395 = phi i8* [ %384, %389 ], [ %.pre.i, %.noexc14 ]
  %396 = load i8* %395, align 1, !tbaa !32
  %397 = icmp eq i8 %396, 35
  br i1 %397, label %1457, label %402

; <label>:398                                     ; preds = %394, %.noexc12, %375, %402
  %399 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %400 = extractvalue { i8*, i32 } %399, 0
  %401 = extractvalue { i8*, i32 } %399, 1
  br label %1470

; <label>:402                                     ; preds = %_ZNSsixEm.exit
  call void @llvm.lifetime.start(i64 360, i8* %177) #2
  invoke void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKSsSt13_Ios_Openmode(%"class.std::basic_istringstream"* %iss, %"class.std::basic_string"* %line, i32 8) #17
          to label %403 unwind label %398

; <label>:403                                     ; preds = %402
  call void @llvm.memset.p0i8.i64(i8* %178, i8 0, i64 24, i32 8, i1 false) #2
  invoke void @_ZNSt16istream_iteratorISscSt11char_traitsIcElEC2ERSi(%"class.std::istream_iterator"* %39, %"class.std::basic_istream"* %179) #17
          to label %404 unwind label %416

; <label>:404                                     ; preds = %403
  store %"class.std::basic_istream"* null, %"class.std::basic_istream"** %180, align 8, !tbaa !48
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %181, align 8, !tbaa !46
  store i8 0, i8* %182, align 8, !tbaa !50
  %405 = invoke %"class.std::vector.24"* @_ZSt4copyISt16istream_iteratorISscSt11char_traitsIcElESt20back_insert_iteratorISt6vectorISsSaISsEEEET0_T_SA_S9_(%"class.std::istream_iterator"* %39, %"class.std::istream_iterator"* %40, %"class.std::vector.24"* %tokens) #17
          to label %406 unwind label %420

; <label>:406                                     ; preds = %404
  call void @llvm.lifetime.start(i64 1, i8* %183) #2
  %407 = load i8** %181, align 8, !tbaa !14
  %408 = getelementptr inbounds i8* %407, i64 -24
  %409 = bitcast i8* %408 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %409, %"class.std::allocator.3"* %37) #18
  call void @llvm.lifetime.end(i64 1, i8* %183) #2
  call void @llvm.lifetime.start(i64 1, i8* %184) #2
  %410 = load i8** %185, align 8, !tbaa !14
  %411 = getelementptr inbounds i8* %410, i64 -24
  %412 = bitcast i8* %411 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %412, %"class.std::allocator.3"* %36) #18
  call void @llvm.lifetime.end(i64 1, i8* %184) #2
  %413 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %414 = load %"class.std::basic_string"** %187, align 8, !tbaa !54
  %415 = icmp eq %"class.std::basic_string"* %413, %414
  br i1 %415, label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit, label %432

; <label>:416                                     ; preds = %924, %923, %929, %918, %930, %917, %935, %912, %936, %911, %941, %906, %942, %905, %947, %900, %948, %899, %953, %894, %954, %893, %959, %888, %960, %887, %965, %882, %966, %881, %971, %876, %972, %875, %977, %870, %978, %869, %983, %864, %984, %863, %989, %858, %990, %857, %995, %852, %996, %851, %1001, %846, %1002, %845, %1007, %840, %1008, %839, %1013, %834, %1014, %833, %1019, %828, %1020, %827, %1025, %822, %1026, %821, %1031, %816, %1032, %815, %1037, %810, %1038, %809, %1043, %804, %1044, %803, %1049, %798, %1050, %797, %1055, %792, %1056, %791, %1061, %786, %1062, %785, %1067, %780, %1072, %779, %1073, %774, %1078, %773, %1079, %768, %1084, %767, %1085, %762, %1090, %761, %1091, %756, %1096, %755, %1097, %750, %1102, %749, %1103, %744, %1108, %743, %1109, %738, %1114, %737, %1115, %732, %1120, %731, %1121, %726, %1126, %725, %1127, %720, %719, %714, %713, %708, %1155, %707, %702, %701, %696, %695, %1183, %690, %689, %684, %683, %678, %1211, %677, %672, %671, %666, %665, %1239, %660, %659, %654, %653, %648, %1267, %647, %642, %641, %636, %635, %1295, %630, %629, %624, %623, %618, %1323, %617, %612, %611, %606, %605, %1351, %600, %1356, %599, %1357, %594, %593, %588, %1385, %1390, %560, %1391, %532, %1413, %504, %1434, %1437, %476, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34, %470, %.noexc23, %.noexc22, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.exit30, %459, %437, %432, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36, %1417, %1397, %1369, %1335, %1307, %1279, %1251, %1223, %1195, %1167, %1139, %572, %544, %516, %488, %403
  %417 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %418 = extractvalue { i8*, i32 } %417, 0
  %419 = extractvalue { i8*, i32 } %417, 1
  br label %1469

; <label>:420                                     ; preds = %404
  %421 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %422 = extractvalue { i8*, i32 } %421, 0
  %423 = extractvalue { i8*, i32 } %421, 1
  %424 = getelementptr inbounds %"class.std::allocator.3"* %35, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %424) #2
  %425 = load i8** %181, align 8, !tbaa !14
  %426 = getelementptr inbounds i8* %425, i64 -24
  %427 = bitcast i8* %426 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %427, %"class.std::allocator.3"* %35) #18
  call void @llvm.lifetime.end(i64 1, i8* %424) #2
  %428 = getelementptr inbounds %"class.std::allocator.3"* %34, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %428) #2
  %429 = load i8** %185, align 8, !tbaa !14
  %430 = getelementptr inbounds i8* %429, i64 -24
  %431 = bitcast i8* %430 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %431, %"class.std::allocator.3"* %34) #18
  call void @llvm.lifetime.end(i64 1, i8* %428) #2
  br label %1469

; <label>:432                                     ; preds = %406
  %433 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %413, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0)) #17
          to label %434 unwind label %416

; <label>:434                                     ; preds = %432
  %435 = icmp eq i32 %433, 0
  %436 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  br i1 %435, label %437, label %459

; <label>:437                                     ; preds = %434
  %438 = getelementptr inbounds %"class.std::basic_string"* %436, i64 1
  %439 = load %struct.Instruction** %189, align 8, !tbaa !55
  %440 = load %struct.Instruction** %190, align 8, !tbaa !35
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %191, %"class.std::basic_string"* %438) #17
          to label %441 unwind label %416

; <label>:441                                     ; preds = %437
  %442 = ptrtoint %struct.Instruction* %440 to i64
  %443 = ptrtoint %struct.Instruction* %439 to i64
  %444 = sub i64 %443, %442
  %445 = lshr exact i64 %444, 3
  %446 = trunc i64 %445 to i32
  store i32 %446, i32* %192, align 8, !tbaa !56
  %447 = invoke { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE16_M_insert_uniqueIRKS2_EES0_ISt17_Rb_tree_iteratorIS2_EbEOT_(%"class.std::_Rb_tree"* %193, %"struct.std::pair.16"* %41) #17
          to label %_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE6insertERKS4_.exit unwind label %451

_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE6insertERKS4_.exit: ; preds = %441
  call void @llvm.lifetime.start(i64 1, i8* %194) #2
  %448 = load i8** %195, align 8, !tbaa !14
  %449 = getelementptr inbounds i8* %448, i64 -24
  %450 = bitcast i8* %449 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %450, %"class.std::allocator.3"* %32) #18
  call void @llvm.lifetime.end(i64 1, i8* %194) #2
  br label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit

; <label>:451                                     ; preds = %441
  %452 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %453 = extractvalue { i8*, i32 } %452, 0
  %454 = extractvalue { i8*, i32 } %452, 1
  %455 = getelementptr inbounds %"class.std::allocator.3"* %31, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %455) #2
  %456 = load i8** %195, align 8, !tbaa !14
  %457 = getelementptr inbounds i8* %456, i64 -24
  %458 = bitcast i8* %457 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %458, %"class.std::allocator.3"* %31) #18
  call void @llvm.lifetime.end(i64 1, i8* %455) #2
  br label %1469

; <label>:459                                     ; preds = %434
  %460 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %436, i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0)) #17
          to label %461 unwind label %416

; <label>:461                                     ; preds = %459
  %462 = icmp eq i32 %460, 0
  br i1 %462, label %463, label %._crit_edge

._crit_edge:                                      ; preds = %461
  %.pre498 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  br label %476

; <label>:463                                     ; preds = %461
  %464 = load %"class.std::basic_string"** %187, align 8, !tbaa !54
  %465 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %466 = ptrtoint %"class.std::basic_string"* %464 to i64
  %467 = ptrtoint %"class.std::basic_string"* %465 to i64
  %468 = sub i64 %466, %467
  %469 = icmp eq i64 %468, 16
  br i1 %469, label %470, label %476

; <label>:470                                     ; preds = %463
  %471 = getelementptr inbounds %"class.std::basic_string"* %465, i64 1
  %472 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1_(%"class.std::_Rb_tree"* %193, %"class.std::basic_string"* %471) #18
  %473 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %472, i64 1, i32 1
  %474 = bitcast %"struct.std::_Rb_tree_node_base"** %473 to i32*
  %475 = load i32* %474, align 4, !tbaa !56
  store i8 104, i8* %197, align 4, !tbaa !58
  store i32 %475, i32* %198, align 4, !tbaa !26
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %42) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:476                                     ; preds = %._crit_edge, %463
  %477 = phi %"class.std::basic_string"* [ %.pre498, %._crit_edge ], [ %465, %463 ]
  %478 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %477, i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0)) #17
          to label %479 unwind label %416

; <label>:479                                     ; preds = %476
  %480 = icmp eq i32 %478, 0
  br i1 %480, label %481, label %._crit_edge499

._crit_edge499:                                   ; preds = %479
  %.pre500 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  br label %504

; <label>:481                                     ; preds = %479
  %482 = load %"class.std::basic_string"** %187, align 8, !tbaa !54
  %483 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %484 = ptrtoint %"class.std::basic_string"* %482 to i64
  %485 = ptrtoint %"class.std::basic_string"* %483 to i64
  %486 = sub i64 %484, %485
  %487 = icmp eq i64 %486, 16
  br i1 %487, label %488, label %504

; <label>:488                                     ; preds = %481
  %489 = getelementptr inbounds %"class.std::basic_string"* %483, i64 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %44, %"class.std::basic_string"* %489) #17
          to label %490 unwind label %416

; <label>:490                                     ; preds = %488
  %491 = invoke float @_Z2toIfET_Ss(%"class.std::basic_string"* %44) #17
          to label %492 unwind label %496

; <label>:492                                     ; preds = %490
  store i8 4, i8* %199, align 4, !tbaa !58
  store float %491, float* %201, align 4, !tbaa !1
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %43) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit38 unwind label %496

_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit38: ; preds = %492
  call void @llvm.lifetime.start(i64 1, i8* %202) #2
  %493 = load i8** %203, align 8, !tbaa !14
  %494 = getelementptr inbounds i8* %493, i64 -24
  %495 = bitcast i8* %494 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %495, %"class.std::allocator.3"* %30) #18
  call void @llvm.lifetime.end(i64 1, i8* %202) #2
  br label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit

; <label>:496                                     ; preds = %492, %490
  %497 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %498 = extractvalue { i8*, i32 } %497, 0
  %499 = extractvalue { i8*, i32 } %497, 1
  %500 = getelementptr inbounds %"class.std::allocator.3"* %29, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %500) #2
  %501 = load i8** %203, align 8, !tbaa !14
  %502 = getelementptr inbounds i8* %501, i64 -24
  %503 = bitcast i8* %502 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %503, %"class.std::allocator.3"* %29) #18
  call void @llvm.lifetime.end(i64 1, i8* %500) #2
  br label %1469

; <label>:504                                     ; preds = %._crit_edge499, %481
  %505 = phi %"class.std::basic_string"* [ %.pre500, %._crit_edge499 ], [ %483, %481 ]
  %506 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %505, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0)) #17
          to label %507 unwind label %416

; <label>:507                                     ; preds = %504
  %508 = icmp eq i32 %506, 0
  br i1 %508, label %509, label %._crit_edge501

._crit_edge501:                                   ; preds = %507
  %.pre502 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  br label %532

; <label>:509                                     ; preds = %507
  %510 = load %"class.std::basic_string"** %187, align 8, !tbaa !54
  %511 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %512 = ptrtoint %"class.std::basic_string"* %510 to i64
  %513 = ptrtoint %"class.std::basic_string"* %511 to i64
  %514 = sub i64 %512, %513
  %515 = icmp eq i64 %514, 16
  br i1 %515, label %516, label %532

; <label>:516                                     ; preds = %509
  %517 = getelementptr inbounds %"class.std::basic_string"* %511, i64 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %46, %"class.std::basic_string"* %517) #17
          to label %518 unwind label %416

; <label>:518                                     ; preds = %516
  %519 = invoke float @_Z2toIfET_Ss(%"class.std::basic_string"* %46) #17
          to label %520 unwind label %524

; <label>:520                                     ; preds = %518
  store i8 5, i8* %204, align 4, !tbaa !58
  store float %519, float* %206, align 4, !tbaa !1
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %45) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit42 unwind label %524

_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit42: ; preds = %520
  call void @llvm.lifetime.start(i64 1, i8* %207) #2
  %521 = load i8** %208, align 8, !tbaa !14
  %522 = getelementptr inbounds i8* %521, i64 -24
  %523 = bitcast i8* %522 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %523, %"class.std::allocator.3"* %26) #18
  call void @llvm.lifetime.end(i64 1, i8* %207) #2
  br label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit

; <label>:524                                     ; preds = %520, %518
  %525 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %526 = extractvalue { i8*, i32 } %525, 0
  %527 = extractvalue { i8*, i32 } %525, 1
  %528 = getelementptr inbounds %"class.std::allocator.3"* %25, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %528) #2
  %529 = load i8** %208, align 8, !tbaa !14
  %530 = getelementptr inbounds i8* %529, i64 -24
  %531 = bitcast i8* %530 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %531, %"class.std::allocator.3"* %25) #18
  call void @llvm.lifetime.end(i64 1, i8* %528) #2
  br label %1469

; <label>:532                                     ; preds = %._crit_edge501, %509
  %533 = phi %"class.std::basic_string"* [ %.pre502, %._crit_edge501 ], [ %511, %509 ]
  %534 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %533, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0)) #17
          to label %535 unwind label %416

; <label>:535                                     ; preds = %532
  %536 = icmp eq i32 %534, 0
  br i1 %536, label %537, label %._crit_edge503

._crit_edge503:                                   ; preds = %535
  %.pre504 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  br label %560

; <label>:537                                     ; preds = %535
  %538 = load %"class.std::basic_string"** %187, align 8, !tbaa !54
  %539 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %540 = ptrtoint %"class.std::basic_string"* %538 to i64
  %541 = ptrtoint %"class.std::basic_string"* %539 to i64
  %542 = sub i64 %540, %541
  %543 = icmp eq i64 %542, 16
  br i1 %543, label %544, label %560

; <label>:544                                     ; preds = %537
  %545 = getelementptr inbounds %"class.std::basic_string"* %539, i64 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %48, %"class.std::basic_string"* %545) #17
          to label %546 unwind label %416

; <label>:546                                     ; preds = %544
  %547 = invoke float @_Z2toIfET_Ss(%"class.std::basic_string"* %48) #17
          to label %548 unwind label %552

; <label>:548                                     ; preds = %546
  store i8 6, i8* %209, align 4, !tbaa !58
  store float %547, float* %211, align 4, !tbaa !1
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %47) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit48 unwind label %552

_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit48: ; preds = %548
  call void @llvm.lifetime.start(i64 1, i8* %212) #2
  %549 = load i8** %213, align 8, !tbaa !14
  %550 = getelementptr inbounds i8* %549, i64 -24
  %551 = bitcast i8* %550 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %551, %"class.std::allocator.3"* %22) #18
  call void @llvm.lifetime.end(i64 1, i8* %212) #2
  br label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit

; <label>:552                                     ; preds = %548, %546
  %553 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %554 = extractvalue { i8*, i32 } %553, 0
  %555 = extractvalue { i8*, i32 } %553, 1
  %556 = getelementptr inbounds %"class.std::allocator.3"* %21, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %556) #2
  %557 = load i8** %213, align 8, !tbaa !14
  %558 = getelementptr inbounds i8* %557, i64 -24
  %559 = bitcast i8* %558 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %559, %"class.std::allocator.3"* %21) #18
  call void @llvm.lifetime.end(i64 1, i8* %556) #2
  br label %1469

; <label>:560                                     ; preds = %._crit_edge503, %537
  %561 = phi %"class.std::basic_string"* [ %.pre504, %._crit_edge503 ], [ %539, %537 ]
  %562 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %561, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0)) #17
          to label %563 unwind label %416

; <label>:563                                     ; preds = %560
  %564 = icmp eq i32 %562, 0
  br i1 %564, label %565, label %._crit_edge505

._crit_edge505:                                   ; preds = %563
  %.pre506 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  br label %588

; <label>:565                                     ; preds = %563
  %566 = load %"class.std::basic_string"** %187, align 8, !tbaa !54
  %567 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %568 = ptrtoint %"class.std::basic_string"* %566 to i64
  %569 = ptrtoint %"class.std::basic_string"* %567 to i64
  %570 = sub i64 %568, %569
  %571 = icmp eq i64 %570, 16
  br i1 %571, label %572, label %588

; <label>:572                                     ; preds = %565
  %573 = getelementptr inbounds %"class.std::basic_string"* %567, i64 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %50, %"class.std::basic_string"* %573) #17
          to label %574 unwind label %416

; <label>:574                                     ; preds = %572
  %575 = invoke float @_Z2toIfET_Ss(%"class.std::basic_string"* %50) #17
          to label %576 unwind label %580

; <label>:576                                     ; preds = %574
  store i8 7, i8* %214, align 4, !tbaa !58
  store float %575, float* %216, align 4, !tbaa !1
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %49) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit58 unwind label %580

_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit58: ; preds = %576
  call void @llvm.lifetime.start(i64 1, i8* %217) #2
  %577 = load i8** %218, align 8, !tbaa !14
  %578 = getelementptr inbounds i8* %577, i64 -24
  %579 = bitcast i8* %578 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %579, %"class.std::allocator.3"* %19) #18
  call void @llvm.lifetime.end(i64 1, i8* %217) #2
  br label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit

; <label>:580                                     ; preds = %576, %574
  %581 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %582 = extractvalue { i8*, i32 } %581, 0
  %583 = extractvalue { i8*, i32 } %581, 1
  %584 = getelementptr inbounds %"class.std::allocator.3"* %18, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %584) #2
  %585 = load i8** %218, align 8, !tbaa !14
  %586 = getelementptr inbounds i8* %585, i64 -24
  %587 = bitcast i8* %586 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %587, %"class.std::allocator.3"* %18) #18
  call void @llvm.lifetime.end(i64 1, i8* %584) #2
  br label %1469

; <label>:588                                     ; preds = %._crit_edge505, %565
  %589 = phi %"class.std::basic_string"* [ %.pre506, %._crit_edge505 ], [ %567, %565 ]
  %590 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %589, i8* getelementptr inbounds ([4 x i8]* @.str18, i64 0, i64 0)) #17
          to label %591 unwind label %416

; <label>:591                                     ; preds = %588
  %592 = icmp eq i32 %590, 0
  br i1 %592, label %593, label %594

; <label>:593                                     ; preds = %591
  store i8 12, i8* %219, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %51) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:594                                     ; preds = %591
  %595 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %596 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %595, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0)) #17
          to label %597 unwind label %416

; <label>:597                                     ; preds = %594
  %598 = icmp eq i32 %596, 0
  br i1 %598, label %599, label %600

; <label>:599                                     ; preds = %597
  store i8 13, i8* %220, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %52) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:600                                     ; preds = %597
  %601 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %602 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %601, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0)) #17
          to label %603 unwind label %416

; <label>:603                                     ; preds = %600
  %604 = icmp eq i32 %602, 0
  br i1 %604, label %605, label %606

; <label>:605                                     ; preds = %603
  store i8 14, i8* %221, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %53) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:606                                     ; preds = %603
  %607 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %608 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %607, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0)) #17
          to label %609 unwind label %416

; <label>:609                                     ; preds = %606
  %610 = icmp eq i32 %608, 0
  br i1 %610, label %611, label %612

; <label>:611                                     ; preds = %609
  store i8 15, i8* %222, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %54) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:612                                     ; preds = %609
  %613 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %614 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %613, i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0)) #17
          to label %615 unwind label %416

; <label>:615                                     ; preds = %612
  %616 = icmp eq i32 %614, 0
  br i1 %616, label %617, label %618

; <label>:617                                     ; preds = %615
  store i8 16, i8* %223, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %55) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:618                                     ; preds = %615
  %619 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %620 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %619, i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0)) #17
          to label %621 unwind label %416

; <label>:621                                     ; preds = %618
  %622 = icmp eq i32 %620, 0
  br i1 %622, label %623, label %624

; <label>:623                                     ; preds = %621
  store i8 17, i8* %224, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %56) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:624                                     ; preds = %621
  %625 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %626 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %625, i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0)) #17
          to label %627 unwind label %416

; <label>:627                                     ; preds = %624
  %628 = icmp eq i32 %626, 0
  br i1 %628, label %629, label %630

; <label>:629                                     ; preds = %627
  store i8 18, i8* %225, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %57) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:630                                     ; preds = %627
  %631 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %632 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %631, i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0)) #17
          to label %633 unwind label %416

; <label>:633                                     ; preds = %630
  %634 = icmp eq i32 %632, 0
  br i1 %634, label %635, label %636

; <label>:635                                     ; preds = %633
  store i8 19, i8* %226, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %58) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:636                                     ; preds = %633
  %637 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %638 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %637, i8* getelementptr inbounds ([6 x i8]* @.str26, i64 0, i64 0)) #17
          to label %639 unwind label %416

; <label>:639                                     ; preds = %636
  %640 = icmp eq i32 %638, 0
  br i1 %640, label %641, label %642

; <label>:641                                     ; preds = %639
  store i8 20, i8* %227, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %59) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:642                                     ; preds = %639
  %643 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %644 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %643, i8* getelementptr inbounds ([6 x i8]* @.str27, i64 0, i64 0)) #17
          to label %645 unwind label %416

; <label>:645                                     ; preds = %642
  %646 = icmp eq i32 %644, 0
  br i1 %646, label %647, label %648

; <label>:647                                     ; preds = %645
  store i8 21, i8* %228, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %60) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:648                                     ; preds = %645
  %649 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %650 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %649, i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0)) #17
          to label %651 unwind label %416

; <label>:651                                     ; preds = %648
  %652 = icmp eq i32 %650, 0
  br i1 %652, label %653, label %654

; <label>:653                                     ; preds = %651
  store i8 22, i8* %229, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %61) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:654                                     ; preds = %651
  %655 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %656 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %655, i8* getelementptr inbounds ([5 x i8]* @.str29, i64 0, i64 0)) #17
          to label %657 unwind label %416

; <label>:657                                     ; preds = %654
  %658 = icmp eq i32 %656, 0
  br i1 %658, label %659, label %660

; <label>:659                                     ; preds = %657
  store i8 23, i8* %230, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %62) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:660                                     ; preds = %657
  %661 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %662 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %661, i8* getelementptr inbounds ([5 x i8]* @.str30, i64 0, i64 0)) #17
          to label %663 unwind label %416

; <label>:663                                     ; preds = %660
  %664 = icmp eq i32 %662, 0
  br i1 %664, label %665, label %666

; <label>:665                                     ; preds = %663
  store i8 24, i8* %231, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %63) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:666                                     ; preds = %663
  %667 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %668 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %667, i8* getelementptr inbounds ([5 x i8]* @.str31, i64 0, i64 0)) #17
          to label %669 unwind label %416

; <label>:669                                     ; preds = %666
  %670 = icmp eq i32 %668, 0
  br i1 %670, label %671, label %672

; <label>:671                                     ; preds = %669
  store i8 25, i8* %232, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %64) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:672                                     ; preds = %669
  %673 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %674 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %673, i8* getelementptr inbounds ([5 x i8]* @.str32, i64 0, i64 0)) #17
          to label %675 unwind label %416

; <label>:675                                     ; preds = %672
  %676 = icmp eq i32 %674, 0
  br i1 %676, label %677, label %678

; <label>:677                                     ; preds = %675
  store i8 26, i8* %233, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %65) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:678                                     ; preds = %675
  %679 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %680 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %679, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0)) #17
          to label %681 unwind label %416

; <label>:681                                     ; preds = %678
  %682 = icmp eq i32 %680, 0
  br i1 %682, label %683, label %684

; <label>:683                                     ; preds = %681
  store i8 27, i8* %234, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %66) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:684                                     ; preds = %681
  %685 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %686 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %685, i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0)) #17
          to label %687 unwind label %416

; <label>:687                                     ; preds = %684
  %688 = icmp eq i32 %686, 0
  br i1 %688, label %689, label %690

; <label>:689                                     ; preds = %687
  store i8 28, i8* %235, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %67) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:690                                     ; preds = %687
  %691 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %692 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %691, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0)) #17
          to label %693 unwind label %416

; <label>:693                                     ; preds = %690
  %694 = icmp eq i32 %692, 0
  br i1 %694, label %695, label %696

; <label>:695                                     ; preds = %693
  store i8 29, i8* %236, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %68) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:696                                     ; preds = %693
  %697 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %698 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %697, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0)) #17
          to label %699 unwind label %416

; <label>:699                                     ; preds = %696
  %700 = icmp eq i32 %698, 0
  br i1 %700, label %701, label %702

; <label>:701                                     ; preds = %699
  store i8 30, i8* %237, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %69) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:702                                     ; preds = %699
  %703 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %704 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %703, i8* getelementptr inbounds ([5 x i8]* @.str37, i64 0, i64 0)) #17
          to label %705 unwind label %416

; <label>:705                                     ; preds = %702
  %706 = icmp eq i32 %704, 0
  br i1 %706, label %707, label %708

; <label>:707                                     ; preds = %705
  store i8 31, i8* %238, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %70) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:708                                     ; preds = %705
  %709 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %710 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %709, i8* getelementptr inbounds ([5 x i8]* @.str38, i64 0, i64 0)) #17
          to label %711 unwind label %416

; <label>:711                                     ; preds = %708
  %712 = icmp eq i32 %710, 0
  br i1 %712, label %713, label %714

; <label>:713                                     ; preds = %711
  store i8 32, i8* %239, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %71) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:714                                     ; preds = %711
  %715 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %716 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %715, i8* getelementptr inbounds ([4 x i8]* @.str39, i64 0, i64 0)) #17
          to label %717 unwind label %416

; <label>:717                                     ; preds = %714
  %718 = icmp eq i32 %716, 0
  br i1 %718, label %719, label %720

; <label>:719                                     ; preds = %717
  store i8 33, i8* %240, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %72) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:720                                     ; preds = %717
  %721 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %722 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %721, i8* getelementptr inbounds ([5 x i8]* @.str40, i64 0, i64 0)) #17
          to label %723 unwind label %416

; <label>:723                                     ; preds = %720
  %724 = icmp eq i32 %722, 0
  br i1 %724, label %725, label %726

; <label>:725                                     ; preds = %723
  store i8 34, i8* %241, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %73) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:726                                     ; preds = %723
  %727 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %728 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %727, i8* getelementptr inbounds ([5 x i8]* @.str41, i64 0, i64 0)) #17
          to label %729 unwind label %416

; <label>:729                                     ; preds = %726
  %730 = icmp eq i32 %728, 0
  br i1 %730, label %731, label %732

; <label>:731                                     ; preds = %729
  store i8 35, i8* %242, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %74) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:732                                     ; preds = %729
  %733 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %734 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %733, i8* getelementptr inbounds ([5 x i8]* @.str42, i64 0, i64 0)) #17
          to label %735 unwind label %416

; <label>:735                                     ; preds = %732
  %736 = icmp eq i32 %734, 0
  br i1 %736, label %737, label %738

; <label>:737                                     ; preds = %735
  store i8 36, i8* %243, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %75) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:738                                     ; preds = %735
  %739 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %740 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %739, i8* getelementptr inbounds ([4 x i8]* @.str43, i64 0, i64 0)) #17
          to label %741 unwind label %416

; <label>:741                                     ; preds = %738
  %742 = icmp eq i32 %740, 0
  br i1 %742, label %743, label %744

; <label>:743                                     ; preds = %741
  store i8 37, i8* %244, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %76) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:744                                     ; preds = %741
  %745 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %746 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %745, i8* getelementptr inbounds ([5 x i8]* @.str44, i64 0, i64 0)) #17
          to label %747 unwind label %416

; <label>:747                                     ; preds = %744
  %748 = icmp eq i32 %746, 0
  br i1 %748, label %749, label %750

; <label>:749                                     ; preds = %747
  store i8 38, i8* %245, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %77) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:750                                     ; preds = %747
  %751 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %752 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %751, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #17
          to label %753 unwind label %416

; <label>:753                                     ; preds = %750
  %754 = icmp eq i32 %752, 0
  br i1 %754, label %755, label %756

; <label>:755                                     ; preds = %753
  store i8 39, i8* %246, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %78) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:756                                     ; preds = %753
  %757 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %758 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %757, i8* getelementptr inbounds ([5 x i8]* @.str46, i64 0, i64 0)) #17
          to label %759 unwind label %416

; <label>:759                                     ; preds = %756
  %760 = icmp eq i32 %758, 0
  br i1 %760, label %761, label %762

; <label>:761                                     ; preds = %759
  store i8 40, i8* %247, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %79) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:762                                     ; preds = %759
  %763 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %764 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %763, i8* getelementptr inbounds ([6 x i8]* @.str47, i64 0, i64 0)) #17
          to label %765 unwind label %416

; <label>:765                                     ; preds = %762
  %766 = icmp eq i32 %764, 0
  br i1 %766, label %767, label %768

; <label>:767                                     ; preds = %765
  store i8 41, i8* %248, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %80) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:768                                     ; preds = %765
  %769 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %770 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %769, i8* getelementptr inbounds ([6 x i8]* @.str48, i64 0, i64 0)) #17
          to label %771 unwind label %416

; <label>:771                                     ; preds = %768
  %772 = icmp eq i32 %770, 0
  br i1 %772, label %773, label %774

; <label>:773                                     ; preds = %771
  store i8 42, i8* %249, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %81) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:774                                     ; preds = %771
  %775 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %776 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %775, i8* getelementptr inbounds ([6 x i8]* @.str49, i64 0, i64 0)) #17
          to label %777 unwind label %416

; <label>:777                                     ; preds = %774
  %778 = icmp eq i32 %776, 0
  br i1 %778, label %779, label %780

; <label>:779                                     ; preds = %777
  store i8 43, i8* %250, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %82) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:780                                     ; preds = %777
  %781 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %782 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %781, i8* getelementptr inbounds ([4 x i8]* @.str50, i64 0, i64 0)) #17
          to label %783 unwind label %416

; <label>:783                                     ; preds = %780
  %784 = icmp eq i32 %782, 0
  br i1 %784, label %785, label %786

; <label>:785                                     ; preds = %783
  store i8 44, i8* %251, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %83) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:786                                     ; preds = %783
  %787 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %788 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %787, i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0)) #17
          to label %789 unwind label %416

; <label>:789                                     ; preds = %786
  %790 = icmp eq i32 %788, 0
  br i1 %790, label %791, label %792

; <label>:791                                     ; preds = %789
  store i8 45, i8* %252, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %84) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:792                                     ; preds = %789
  %793 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %794 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %793, i8* getelementptr inbounds ([5 x i8]* @.str52, i64 0, i64 0)) #17
          to label %795 unwind label %416

; <label>:795                                     ; preds = %792
  %796 = icmp eq i32 %794, 0
  br i1 %796, label %797, label %798

; <label>:797                                     ; preds = %795
  store i8 46, i8* %253, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %85) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:798                                     ; preds = %795
  %799 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %800 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %799, i8* getelementptr inbounds ([5 x i8]* @.str53, i64 0, i64 0)) #17
          to label %801 unwind label %416

; <label>:801                                     ; preds = %798
  %802 = icmp eq i32 %800, 0
  br i1 %802, label %803, label %804

; <label>:803                                     ; preds = %801
  store i8 47, i8* %254, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %86) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:804                                     ; preds = %801
  %805 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %806 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %805, i8* getelementptr inbounds ([4 x i8]* @.str54, i64 0, i64 0)) #17
          to label %807 unwind label %416

; <label>:807                                     ; preds = %804
  %808 = icmp eq i32 %806, 0
  br i1 %808, label %809, label %810

; <label>:809                                     ; preds = %807
  store i8 48, i8* %255, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %87) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:810                                     ; preds = %807
  %811 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %812 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %811, i8* getelementptr inbounds ([5 x i8]* @.str55, i64 0, i64 0)) #17
          to label %813 unwind label %416

; <label>:813                                     ; preds = %810
  %814 = icmp eq i32 %812, 0
  br i1 %814, label %815, label %816

; <label>:815                                     ; preds = %813
  store i8 49, i8* %256, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %88) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:816                                     ; preds = %813
  %817 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %818 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %817, i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0)) #17
          to label %819 unwind label %416

; <label>:819                                     ; preds = %816
  %820 = icmp eq i32 %818, 0
  br i1 %820, label %821, label %822

; <label>:821                                     ; preds = %819
  store i8 50, i8* %257, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %89) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:822                                     ; preds = %819
  %823 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %824 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %823, i8* getelementptr inbounds ([5 x i8]* @.str57, i64 0, i64 0)) #17
          to label %825 unwind label %416

; <label>:825                                     ; preds = %822
  %826 = icmp eq i32 %824, 0
  br i1 %826, label %827, label %828

; <label>:827                                     ; preds = %825
  store i8 51, i8* %258, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %90) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:828                                     ; preds = %825
  %829 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %830 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %829, i8* getelementptr inbounds ([4 x i8]* @.str58, i64 0, i64 0)) #17
          to label %831 unwind label %416

; <label>:831                                     ; preds = %828
  %832 = icmp eq i32 %830, 0
  br i1 %832, label %833, label %834

; <label>:833                                     ; preds = %831
  store i8 64, i8* %259, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %91) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:834                                     ; preds = %831
  %835 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %836 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %835, i8* getelementptr inbounds ([5 x i8]* @.str59, i64 0, i64 0)) #17
          to label %837 unwind label %416

; <label>:837                                     ; preds = %834
  %838 = icmp eq i32 %836, 0
  br i1 %838, label %839, label %840

; <label>:839                                     ; preds = %837
  store i8 65, i8* %260, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %92) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:840                                     ; preds = %837
  %841 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %842 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %841, i8* getelementptr inbounds ([5 x i8]* @.str60, i64 0, i64 0)) #17
          to label %843 unwind label %416

; <label>:843                                     ; preds = %840
  %844 = icmp eq i32 %842, 0
  br i1 %844, label %845, label %846

; <label>:845                                     ; preds = %843
  store i8 66, i8* %261, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %93) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:846                                     ; preds = %843
  %847 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %848 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %847, i8* getelementptr inbounds ([5 x i8]* @.str61, i64 0, i64 0)) #17
          to label %849 unwind label %416

; <label>:849                                     ; preds = %846
  %850 = icmp eq i32 %848, 0
  br i1 %850, label %851, label %852

; <label>:851                                     ; preds = %849
  store i8 67, i8* %262, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %94) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:852                                     ; preds = %849
  %853 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %854 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %853, i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0)) #17
          to label %855 unwind label %416

; <label>:855                                     ; preds = %852
  %856 = icmp eq i32 %854, 0
  br i1 %856, label %857, label %858

; <label>:857                                     ; preds = %855
  store i8 52, i8* %263, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %95) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:858                                     ; preds = %855
  %859 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %860 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %859, i8* getelementptr inbounds ([5 x i8]* @.str63, i64 0, i64 0)) #17
          to label %861 unwind label %416

; <label>:861                                     ; preds = %858
  %862 = icmp eq i32 %860, 0
  br i1 %862, label %863, label %864

; <label>:863                                     ; preds = %861
  store i8 53, i8* %264, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %96) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:864                                     ; preds = %861
  %865 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %866 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %865, i8* getelementptr inbounds ([5 x i8]* @.str64, i64 0, i64 0)) #17
          to label %867 unwind label %416

; <label>:867                                     ; preds = %864
  %868 = icmp eq i32 %866, 0
  br i1 %868, label %869, label %870

; <label>:869                                     ; preds = %867
  store i8 54, i8* %265, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %97) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:870                                     ; preds = %867
  %871 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %872 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %871, i8* getelementptr inbounds ([5 x i8]* @.str65, i64 0, i64 0)) #17
          to label %873 unwind label %416

; <label>:873                                     ; preds = %870
  %874 = icmp eq i32 %872, 0
  br i1 %874, label %875, label %876

; <label>:875                                     ; preds = %873
  store i8 55, i8* %266, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %98) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:876                                     ; preds = %873
  %877 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %878 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %877, i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0)) #17
          to label %879 unwind label %416

; <label>:879                                     ; preds = %876
  %880 = icmp eq i32 %878, 0
  br i1 %880, label %881, label %882

; <label>:881                                     ; preds = %879
  store i8 69, i8* %267, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %99) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:882                                     ; preds = %879
  %883 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %884 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %883, i8* getelementptr inbounds ([5 x i8]* @.str67, i64 0, i64 0)) #17
          to label %885 unwind label %416

; <label>:885                                     ; preds = %882
  %886 = icmp eq i32 %884, 0
  br i1 %886, label %887, label %888

; <label>:887                                     ; preds = %885
  store i8 70, i8* %268, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %100) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:888                                     ; preds = %885
  %889 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %890 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %889, i8* getelementptr inbounds ([5 x i8]* @.str68, i64 0, i64 0)) #17
          to label %891 unwind label %416

; <label>:891                                     ; preds = %888
  %892 = icmp eq i32 %890, 0
  br i1 %892, label %893, label %894

; <label>:893                                     ; preds = %891
  store i8 71, i8* %269, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %101) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:894                                     ; preds = %891
  %895 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %896 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %895, i8* getelementptr inbounds ([5 x i8]* @.str69, i64 0, i64 0)) #17
          to label %897 unwind label %416

; <label>:897                                     ; preds = %894
  %898 = icmp eq i32 %896, 0
  br i1 %898, label %899, label %900

; <label>:899                                     ; preds = %897
  store i8 72, i8* %270, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %102) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:900                                     ; preds = %897
  %901 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %902 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %901, i8* getelementptr inbounds ([4 x i8]* @.str70, i64 0, i64 0)) #17
          to label %903 unwind label %416

; <label>:903                                     ; preds = %900
  %904 = icmp eq i32 %902, 0
  br i1 %904, label %905, label %906

; <label>:905                                     ; preds = %903
  store i8 73, i8* %271, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %103) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:906                                     ; preds = %903
  %907 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %908 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %907, i8* getelementptr inbounds ([5 x i8]* @.str71, i64 0, i64 0)) #17
          to label %909 unwind label %416

; <label>:909                                     ; preds = %906
  %910 = icmp eq i32 %908, 0
  br i1 %910, label %911, label %912

; <label>:911                                     ; preds = %909
  store i8 74, i8* %272, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %104) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:912                                     ; preds = %909
  %913 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %914 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %913, i8* getelementptr inbounds ([5 x i8]* @.str72, i64 0, i64 0)) #17
          to label %915 unwind label %416

; <label>:915                                     ; preds = %912
  %916 = icmp eq i32 %914, 0
  br i1 %916, label %917, label %918

; <label>:917                                     ; preds = %915
  store i8 75, i8* %273, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %105) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:918                                     ; preds = %915
  %919 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %920 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %919, i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0)) #17
          to label %921 unwind label %416

; <label>:921                                     ; preds = %918
  %922 = icmp eq i32 %920, 0
  br i1 %922, label %923, label %924

; <label>:923                                     ; preds = %921
  store i8 76, i8* %274, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %106) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:924                                     ; preds = %921
  %925 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %926 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %925, i8* getelementptr inbounds ([4 x i8]* @.str74, i64 0, i64 0)) #17
          to label %927 unwind label %416

; <label>:927                                     ; preds = %924
  %928 = icmp eq i32 %926, 0
  br i1 %928, label %929, label %930

; <label>:929                                     ; preds = %927
  store i8 77, i8* %275, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %107) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:930                                     ; preds = %927
  %931 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %932 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %931, i8* getelementptr inbounds ([5 x i8]* @.str75, i64 0, i64 0)) #17
          to label %933 unwind label %416

; <label>:933                                     ; preds = %930
  %934 = icmp eq i32 %932, 0
  br i1 %934, label %935, label %936

; <label>:935                                     ; preds = %933
  store i8 78, i8* %276, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %108) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:936                                     ; preds = %933
  %937 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %938 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %937, i8* getelementptr inbounds ([5 x i8]* @.str76, i64 0, i64 0)) #17
          to label %939 unwind label %416

; <label>:939                                     ; preds = %936
  %940 = icmp eq i32 %938, 0
  br i1 %940, label %941, label %942

; <label>:941                                     ; preds = %939
  store i8 79, i8* %277, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %109) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:942                                     ; preds = %939
  %943 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %944 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %943, i8* getelementptr inbounds ([5 x i8]* @.str77, i64 0, i64 0)) #17
          to label %945 unwind label %416

; <label>:945                                     ; preds = %942
  %946 = icmp eq i32 %944, 0
  br i1 %946, label %947, label %948

; <label>:947                                     ; preds = %945
  store i8 80, i8* %278, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %110) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:948                                     ; preds = %945
  %949 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %950 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %949, i8* getelementptr inbounds ([6 x i8]* @.str78, i64 0, i64 0)) #17
          to label %951 unwind label %416

; <label>:951                                     ; preds = %948
  %952 = icmp eq i32 %950, 0
  br i1 %952, label %953, label %954

; <label>:953                                     ; preds = %951
  store i8 81, i8* %279, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %111) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:954                                     ; preds = %951
  %955 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %956 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %955, i8* getelementptr inbounds ([6 x i8]* @.str79, i64 0, i64 0)) #17
          to label %957 unwind label %416

; <label>:957                                     ; preds = %954
  %958 = icmp eq i32 %956, 0
  br i1 %958, label %959, label %960

; <label>:959                                     ; preds = %957
  store i8 82, i8* %280, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %112) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:960                                     ; preds = %957
  %961 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %962 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %961, i8* getelementptr inbounds ([6 x i8]* @.str80, i64 0, i64 0)) #17
          to label %963 unwind label %416

; <label>:963                                     ; preds = %960
  %964 = icmp eq i32 %962, 0
  br i1 %964, label %965, label %966

; <label>:965                                     ; preds = %963
  store i8 83, i8* %281, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %113) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:966                                     ; preds = %963
  %967 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %968 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %967, i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0)) #17
          to label %969 unwind label %416

; <label>:969                                     ; preds = %966
  %970 = icmp eq i32 %968, 0
  br i1 %970, label %971, label %972

; <label>:971                                     ; preds = %969
  store i8 88, i8* %282, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %114) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:972                                     ; preds = %969
  %973 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %974 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %973, i8* getelementptr inbounds ([7 x i8]* @.str82, i64 0, i64 0)) #17
          to label %975 unwind label %416

; <label>:975                                     ; preds = %972
  %976 = icmp eq i32 %974, 0
  br i1 %976, label %977, label %978

; <label>:977                                     ; preds = %975
  store i8 89, i8* %283, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %115) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:978                                     ; preds = %975
  %979 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %980 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %979, i8* getelementptr inbounds ([7 x i8]* @.str83, i64 0, i64 0)) #17
          to label %981 unwind label %416

; <label>:981                                     ; preds = %978
  %982 = icmp eq i32 %980, 0
  br i1 %982, label %983, label %984

; <label>:983                                     ; preds = %981
  store i8 90, i8* %284, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %116) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:984                                     ; preds = %981
  %985 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %986 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %985, i8* getelementptr inbounds ([7 x i8]* @.str84, i64 0, i64 0)) #17
          to label %987 unwind label %416

; <label>:987                                     ; preds = %984
  %988 = icmp eq i32 %986, 0
  br i1 %988, label %989, label %990

; <label>:989                                     ; preds = %987
  store i8 91, i8* %285, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %117) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:990                                     ; preds = %987
  %991 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %992 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %991, i8* getelementptr inbounds ([5 x i8]* @.str85, i64 0, i64 0)) #17
          to label %993 unwind label %416

; <label>:993                                     ; preds = %990
  %994 = icmp eq i32 %992, 0
  br i1 %994, label %995, label %996

; <label>:995                                     ; preds = %993
  store i8 92, i8* %286, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %118) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:996                                     ; preds = %993
  %997 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %998 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %997, i8* getelementptr inbounds ([11 x i8]* @.str86, i64 0, i64 0)) #17
          to label %999 unwind label %416

; <label>:999                                     ; preds = %996
  %1000 = icmp eq i32 %998, 0
  br i1 %1000, label %1001, label %1002

; <label>:1001                                    ; preds = %999
  store i8 93, i8* %287, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %119) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1002                                    ; preds = %999
  %1003 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1004 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1003, i8* getelementptr inbounds ([12 x i8]* @.str87, i64 0, i64 0)) #17
          to label %1005 unwind label %416

; <label>:1005                                    ; preds = %1002
  %1006 = icmp eq i32 %1004, 0
  br i1 %1006, label %1007, label %1008

; <label>:1007                                    ; preds = %1005
  store i8 94, i8* %288, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %120) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1008                                    ; preds = %1005
  %1009 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1010 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1009, i8* getelementptr inbounds ([4 x i8]* @.str88, i64 0, i64 0)) #17
          to label %1011 unwind label %416

; <label>:1011                                    ; preds = %1008
  %1012 = icmp eq i32 %1010, 0
  br i1 %1012, label %1013, label %1014

; <label>:1013                                    ; preds = %1011
  store i8 56, i8* %289, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %121) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1014                                    ; preds = %1011
  %1015 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1016 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1015, i8* getelementptr inbounds ([5 x i8]* @.str89, i64 0, i64 0)) #17
          to label %1017 unwind label %416

; <label>:1017                                    ; preds = %1014
  %1018 = icmp eq i32 %1016, 0
  br i1 %1018, label %1019, label %1020

; <label>:1019                                    ; preds = %1017
  store i8 57, i8* %290, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %122) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1020                                    ; preds = %1017
  %1021 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1022 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1021, i8* getelementptr inbounds ([5 x i8]* @.str90, i64 0, i64 0)) #17
          to label %1023 unwind label %416

; <label>:1023                                    ; preds = %1020
  %1024 = icmp eq i32 %1022, 0
  br i1 %1024, label %1025, label %1026

; <label>:1025                                    ; preds = %1023
  store i8 58, i8* %291, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %123) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1026                                    ; preds = %1023
  %1027 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1028 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1027, i8* getelementptr inbounds ([5 x i8]* @.str91, i64 0, i64 0)) #17
          to label %1029 unwind label %416

; <label>:1029                                    ; preds = %1026
  %1030 = icmp eq i32 %1028, 0
  br i1 %1030, label %1031, label %1032

; <label>:1031                                    ; preds = %1029
  store i8 59, i8* %292, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %124) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1032                                    ; preds = %1029
  %1033 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1034 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1033, i8* getelementptr inbounds ([4 x i8]* @.str92, i64 0, i64 0)) #17
          to label %1035 unwind label %416

; <label>:1035                                    ; preds = %1032
  %1036 = icmp eq i32 %1034, 0
  br i1 %1036, label %1037, label %1038

; <label>:1037                                    ; preds = %1035
  store i8 60, i8* %293, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %125) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1038                                    ; preds = %1035
  %1039 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1040 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1039, i8* getelementptr inbounds ([5 x i8]* @.str93, i64 0, i64 0)) #17
          to label %1041 unwind label %416

; <label>:1041                                    ; preds = %1038
  %1042 = icmp eq i32 %1040, 0
  br i1 %1042, label %1043, label %1044

; <label>:1043                                    ; preds = %1041
  store i8 61, i8* %294, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %126) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1044                                    ; preds = %1041
  %1045 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1046 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1045, i8* getelementptr inbounds ([5 x i8]* @.str94, i64 0, i64 0)) #17
          to label %1047 unwind label %416

; <label>:1047                                    ; preds = %1044
  %1048 = icmp eq i32 %1046, 0
  br i1 %1048, label %1049, label %1050

; <label>:1049                                    ; preds = %1047
  store i8 62, i8* %295, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %127) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1050                                    ; preds = %1047
  %1051 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1052 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1051, i8* getelementptr inbounds ([5 x i8]* @.str95, i64 0, i64 0)) #17
          to label %1053 unwind label %416

; <label>:1053                                    ; preds = %1050
  %1054 = icmp eq i32 %1052, 0
  br i1 %1054, label %1055, label %1056

; <label>:1055                                    ; preds = %1053
  store i8 63, i8* %296, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %128) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1056                                    ; preds = %1053
  %1057 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1058 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1057, i8* getelementptr inbounds ([5 x i8]* @.str96, i64 0, i64 0)) #17
          to label %1059 unwind label %416

; <label>:1059                                    ; preds = %1056
  %1060 = icmp eq i32 %1058, 0
  br i1 %1060, label %1061, label %1062

; <label>:1061                                    ; preds = %1059
  store i8 68, i8* %297, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %129) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1062                                    ; preds = %1059
  %1063 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1064 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1063, i8* getelementptr inbounds ([4 x i8]* @.str97, i64 0, i64 0)) #17
          to label %1065 unwind label %416

; <label>:1065                                    ; preds = %1062
  %1066 = icmp eq i32 %1064, 0
  br i1 %1066, label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit, label %1067

; <label>:1067                                    ; preds = %1065
  %1068 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1069 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1068, i8* getelementptr inbounds ([5 x i8]* @.str98, i64 0, i64 0)) #17
          to label %1070 unwind label %416

; <label>:1070                                    ; preds = %1067
  %1071 = icmp eq i32 %1069, 0
  br i1 %1071, label %1072, label %1073

; <label>:1072                                    ; preds = %1070
  store i8 96, i8* %298, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %130) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1073                                    ; preds = %1070
  %1074 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1075 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1074, i8* getelementptr inbounds ([5 x i8]* @.str99, i64 0, i64 0)) #17
          to label %1076 unwind label %416

; <label>:1076                                    ; preds = %1073
  %1077 = icmp eq i32 %1075, 0
  br i1 %1077, label %1078, label %1079

; <label>:1078                                    ; preds = %1076
  store i8 97, i8* %299, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %131) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1079                                    ; preds = %1076
  %1080 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1081 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1080, i8* getelementptr inbounds ([5 x i8]* @.str100, i64 0, i64 0)) #17
          to label %1082 unwind label %416

; <label>:1082                                    ; preds = %1079
  %1083 = icmp eq i32 %1081, 0
  br i1 %1083, label %1084, label %1085

; <label>:1084                                    ; preds = %1082
  store i8 98, i8* %300, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %132) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1085                                    ; preds = %1082
  %1086 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1087 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1086, i8* getelementptr inbounds ([4 x i8]* @.str101, i64 0, i64 0)) #17
          to label %1088 unwind label %416

; <label>:1088                                    ; preds = %1085
  %1089 = icmp eq i32 %1087, 0
  br i1 %1089, label %1090, label %1091

; <label>:1090                                    ; preds = %1088
  store i8 84, i8* %301, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %133) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1091                                    ; preds = %1088
  %1092 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1093 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1092, i8* getelementptr inbounds ([5 x i8]* @.str102, i64 0, i64 0)) #17
          to label %1094 unwind label %416

; <label>:1094                                    ; preds = %1091
  %1095 = icmp eq i32 %1093, 0
  br i1 %1095, label %1096, label %1097

; <label>:1096                                    ; preds = %1094
  store i8 85, i8* %302, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %134) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1097                                    ; preds = %1094
  %1098 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1099 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1098, i8* getelementptr inbounds ([5 x i8]* @.str103, i64 0, i64 0)) #17
          to label %1100 unwind label %416

; <label>:1100                                    ; preds = %1097
  %1101 = icmp eq i32 %1099, 0
  br i1 %1101, label %1102, label %1103

; <label>:1102                                    ; preds = %1100
  store i8 86, i8* %303, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %135) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1103                                    ; preds = %1100
  %1104 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1105 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1104, i8* getelementptr inbounds ([5 x i8]* @.str104, i64 0, i64 0)) #17
          to label %1106 unwind label %416

; <label>:1106                                    ; preds = %1103
  %1107 = icmp eq i32 %1105, 0
  br i1 %1107, label %1108, label %1109

; <label>:1108                                    ; preds = %1106
  store i8 87, i8* %304, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %136) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1109                                    ; preds = %1106
  %1110 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1111 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1110, i8* getelementptr inbounds ([4 x i8]* @.str105, i64 0, i64 0)) #17
          to label %1112 unwind label %416

; <label>:1112                                    ; preds = %1109
  %1113 = icmp eq i32 %1111, 0
  br i1 %1113, label %1114, label %1115

; <label>:1114                                    ; preds = %1112
  store i8 99, i8* %305, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %137) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1115                                    ; preds = %1112
  %1116 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1117 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1116, i8* getelementptr inbounds ([4 x i8]* @.str106, i64 0, i64 0)) #17
          to label %1118 unwind label %416

; <label>:1118                                    ; preds = %1115
  %1119 = icmp eq i32 %1117, 0
  br i1 %1119, label %1120, label %1121

; <label>:1120                                    ; preds = %1118
  store i8 100, i8* %306, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %138) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1121                                    ; preds = %1118
  %1122 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1123 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1122, i8* getelementptr inbounds ([6 x i8]* @.str107, i64 0, i64 0)) #17
          to label %1124 unwind label %416

; <label>:1124                                    ; preds = %1121
  %1125 = icmp eq i32 %1123, 0
  br i1 %1125, label %1126, label %1127

; <label>:1126                                    ; preds = %1124
  store i8 102, i8* %307, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %139) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1127                                    ; preds = %1124
  %1128 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1129 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1128, i8* getelementptr inbounds ([5 x i8]* @.str108, i64 0, i64 0)) #17
          to label %1130 unwind label %416

; <label>:1130                                    ; preds = %1127
  %1131 = icmp eq i32 %1129, 0
  br i1 %1131, label %1132, label %._crit_edge507

._crit_edge507:                                   ; preds = %1130
  %.pre508 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  br label %1155

; <label>:1132                                    ; preds = %1130
  %1133 = load %"class.std::basic_string"** %187, align 8, !tbaa !54
  %1134 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1135 = ptrtoint %"class.std::basic_string"* %1133 to i64
  %1136 = ptrtoint %"class.std::basic_string"* %1134 to i64
  %1137 = sub i64 %1135, %1136
  %1138 = icmp eq i64 %1137, 16
  br i1 %1138, label %1139, label %1155

; <label>:1139                                    ; preds = %1132
  %1140 = getelementptr inbounds %"class.std::basic_string"* %1134, i64 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %141, %"class.std::basic_string"* %1140) #17
          to label %1141 unwind label %416

; <label>:1141                                    ; preds = %1139
  %1142 = invoke i32 @_Z2toIiET_Ss(%"class.std::basic_string"* %141) #17
          to label %1143 unwind label %1147

; <label>:1143                                    ; preds = %1141
  store i8 0, i8* %308, align 4, !tbaa !58
  store i32 %1142, i32* %309, align 4, !tbaa !26
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %140) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit182 unwind label %1147

_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit182: ; preds = %1143
  call void @llvm.lifetime.start(i64 1, i8* %310) #2
  %1144 = load i8** %311, align 8, !tbaa !14
  %1145 = getelementptr inbounds i8* %1144, i64 -24
  %1146 = bitcast i8* %1145 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1146, %"class.std::allocator.3"* %1) #18
  call void @llvm.lifetime.end(i64 1, i8* %310) #2
  br label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit

; <label>:1147                                    ; preds = %1143, %1141
  %1148 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1149 = extractvalue { i8*, i32 } %1148, 0
  %1150 = extractvalue { i8*, i32 } %1148, 1
  %1151 = getelementptr inbounds %"class.std::allocator.3"* %2, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %1151) #2
  %1152 = load i8** %311, align 8, !tbaa !14
  %1153 = getelementptr inbounds i8* %1152, i64 -24
  %1154 = bitcast i8* %1153 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1154, %"class.std::allocator.3"* %2) #18
  call void @llvm.lifetime.end(i64 1, i8* %1151) #2
  br label %1469

; <label>:1155                                    ; preds = %._crit_edge507, %1132
  %1156 = phi %"class.std::basic_string"* [ %.pre508, %._crit_edge507 ], [ %1134, %1132 ]
  %1157 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1156, i8* getelementptr inbounds ([6 x i8]* @.str109, i64 0, i64 0)) #17
          to label %1158 unwind label %416

; <label>:1158                                    ; preds = %1155
  %1159 = icmp eq i32 %1157, 0
  br i1 %1159, label %1160, label %._crit_edge509

._crit_edge509:                                   ; preds = %1158
  %.pre510 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  br label %1183

; <label>:1160                                    ; preds = %1158
  %1161 = load %"class.std::basic_string"** %187, align 8, !tbaa !54
  %1162 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1163 = ptrtoint %"class.std::basic_string"* %1161 to i64
  %1164 = ptrtoint %"class.std::basic_string"* %1162 to i64
  %1165 = sub i64 %1163, %1164
  %1166 = icmp eq i64 %1165, 16
  br i1 %1166, label %1167, label %1183

; <label>:1167                                    ; preds = %1160
  %1168 = getelementptr inbounds %"class.std::basic_string"* %1162, i64 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %143, %"class.std::basic_string"* %1168) #17
          to label %1169 unwind label %416

; <label>:1169                                    ; preds = %1167
  %1170 = invoke i32 @_Z2toIiET_Ss(%"class.std::basic_string"* %143) #17
          to label %1171 unwind label %1175

; <label>:1171                                    ; preds = %1169
  store i8 1, i8* %312, align 4, !tbaa !58
  store i32 %1170, i32* %313, align 4, !tbaa !26
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %142) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit168 unwind label %1175

_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit168: ; preds = %1171
  call void @llvm.lifetime.start(i64 1, i8* %314) #2
  %1172 = load i8** %315, align 8, !tbaa !14
  %1173 = getelementptr inbounds i8* %1172, i64 -24
  %1174 = bitcast i8* %1173 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1174, %"class.std::allocator.3"* %3) #18
  call void @llvm.lifetime.end(i64 1, i8* %314) #2
  br label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit

; <label>:1175                                    ; preds = %1171, %1169
  %1176 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1177 = extractvalue { i8*, i32 } %1176, 0
  %1178 = extractvalue { i8*, i32 } %1176, 1
  %1179 = getelementptr inbounds %"class.std::allocator.3"* %4, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %1179) #2
  %1180 = load i8** %315, align 8, !tbaa !14
  %1181 = getelementptr inbounds i8* %1180, i64 -24
  %1182 = bitcast i8* %1181 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1182, %"class.std::allocator.3"* %4) #18
  call void @llvm.lifetime.end(i64 1, i8* %1179) #2
  br label %1469

; <label>:1183                                    ; preds = %._crit_edge509, %1160
  %1184 = phi %"class.std::basic_string"* [ %.pre510, %._crit_edge509 ], [ %1162, %1160 ]
  %1185 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1184, i8* getelementptr inbounds ([6 x i8]* @.str110, i64 0, i64 0)) #17
          to label %1186 unwind label %416

; <label>:1186                                    ; preds = %1183
  %1187 = icmp eq i32 %1185, 0
  br i1 %1187, label %1188, label %._crit_edge511

._crit_edge511:                                   ; preds = %1186
  %.pre512 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  br label %1211

; <label>:1188                                    ; preds = %1186
  %1189 = load %"class.std::basic_string"** %187, align 8, !tbaa !54
  %1190 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1191 = ptrtoint %"class.std::basic_string"* %1189 to i64
  %1192 = ptrtoint %"class.std::basic_string"* %1190 to i64
  %1193 = sub i64 %1191, %1192
  %1194 = icmp eq i64 %1193, 16
  br i1 %1194, label %1195, label %1211

; <label>:1195                                    ; preds = %1188
  %1196 = getelementptr inbounds %"class.std::basic_string"* %1190, i64 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %145, %"class.std::basic_string"* %1196) #17
          to label %1197 unwind label %416

; <label>:1197                                    ; preds = %1195
  %1198 = invoke i32 @_Z2toIiET_Ss(%"class.std::basic_string"* %145) #17
          to label %1199 unwind label %1203

; <label>:1199                                    ; preds = %1197
  store i8 2, i8* %316, align 4, !tbaa !58
  store i32 %1198, i32* %317, align 4, !tbaa !26
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %144) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit154 unwind label %1203

_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit154: ; preds = %1199
  call void @llvm.lifetime.start(i64 1, i8* %318) #2
  %1200 = load i8** %319, align 8, !tbaa !14
  %1201 = getelementptr inbounds i8* %1200, i64 -24
  %1202 = bitcast i8* %1201 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1202, %"class.std::allocator.3"* %5) #18
  call void @llvm.lifetime.end(i64 1, i8* %318) #2
  br label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit

; <label>:1203                                    ; preds = %1199, %1197
  %1204 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1205 = extractvalue { i8*, i32 } %1204, 0
  %1206 = extractvalue { i8*, i32 } %1204, 1
  %1207 = getelementptr inbounds %"class.std::allocator.3"* %6, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %1207) #2
  %1208 = load i8** %319, align 8, !tbaa !14
  %1209 = getelementptr inbounds i8* %1208, i64 -24
  %1210 = bitcast i8* %1209 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1210, %"class.std::allocator.3"* %6) #18
  call void @llvm.lifetime.end(i64 1, i8* %1207) #2
  br label %1469

; <label>:1211                                    ; preds = %._crit_edge511, %1188
  %1212 = phi %"class.std::basic_string"* [ %.pre512, %._crit_edge511 ], [ %1190, %1188 ]
  %1213 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1212, i8* getelementptr inbounds ([6 x i8]* @.str111, i64 0, i64 0)) #17
          to label %1214 unwind label %416

; <label>:1214                                    ; preds = %1211
  %1215 = icmp eq i32 %1213, 0
  br i1 %1215, label %1216, label %._crit_edge513

._crit_edge513:                                   ; preds = %1214
  %.pre514 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  br label %1239

; <label>:1216                                    ; preds = %1214
  %1217 = load %"class.std::basic_string"** %187, align 8, !tbaa !54
  %1218 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1219 = ptrtoint %"class.std::basic_string"* %1217 to i64
  %1220 = ptrtoint %"class.std::basic_string"* %1218 to i64
  %1221 = sub i64 %1219, %1220
  %1222 = icmp eq i64 %1221, 16
  br i1 %1222, label %1223, label %1239

; <label>:1223                                    ; preds = %1216
  %1224 = getelementptr inbounds %"class.std::basic_string"* %1218, i64 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %147, %"class.std::basic_string"* %1224) #17
          to label %1225 unwind label %416

; <label>:1225                                    ; preds = %1223
  %1226 = invoke i32 @_Z2toIiET_Ss(%"class.std::basic_string"* %147) #17
          to label %1227 unwind label %1231

; <label>:1227                                    ; preds = %1225
  store i8 3, i8* %320, align 4, !tbaa !58
  store i32 %1226, i32* %321, align 4, !tbaa !26
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %146) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit140 unwind label %1231

_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit140: ; preds = %1227
  call void @llvm.lifetime.start(i64 1, i8* %322) #2
  %1228 = load i8** %323, align 8, !tbaa !14
  %1229 = getelementptr inbounds i8* %1228, i64 -24
  %1230 = bitcast i8* %1229 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1230, %"class.std::allocator.3"* %7) #18
  call void @llvm.lifetime.end(i64 1, i8* %322) #2
  br label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit

; <label>:1231                                    ; preds = %1227, %1225
  %1232 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1233 = extractvalue { i8*, i32 } %1232, 0
  %1234 = extractvalue { i8*, i32 } %1232, 1
  %1235 = getelementptr inbounds %"class.std::allocator.3"* %8, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %1235) #2
  %1236 = load i8** %323, align 8, !tbaa !14
  %1237 = getelementptr inbounds i8* %1236, i64 -24
  %1238 = bitcast i8* %1237 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1238, %"class.std::allocator.3"* %8) #18
  call void @llvm.lifetime.end(i64 1, i8* %1235) #2
  br label %1469

; <label>:1239                                    ; preds = %._crit_edge513, %1216
  %1240 = phi %"class.std::basic_string"* [ %.pre514, %._crit_edge513 ], [ %1218, %1216 ]
  %1241 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1240, i8* getelementptr inbounds ([6 x i8]* @.str112, i64 0, i64 0)) #17
          to label %1242 unwind label %416

; <label>:1242                                    ; preds = %1239
  %1243 = icmp eq i32 %1241, 0
  br i1 %1243, label %1244, label %._crit_edge515

._crit_edge515:                                   ; preds = %1242
  %.pre516 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  br label %1267

; <label>:1244                                    ; preds = %1242
  %1245 = load %"class.std::basic_string"** %187, align 8, !tbaa !54
  %1246 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1247 = ptrtoint %"class.std::basic_string"* %1245 to i64
  %1248 = ptrtoint %"class.std::basic_string"* %1246 to i64
  %1249 = sub i64 %1247, %1248
  %1250 = icmp eq i64 %1249, 16
  br i1 %1250, label %1251, label %1267

; <label>:1251                                    ; preds = %1244
  %1252 = getelementptr inbounds %"class.std::basic_string"* %1246, i64 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %149, %"class.std::basic_string"* %1252) #17
          to label %1253 unwind label %416

; <label>:1253                                    ; preds = %1251
  %1254 = invoke i32 @_Z2toIiET_Ss(%"class.std::basic_string"* %149) #17
          to label %1255 unwind label %1259

; <label>:1255                                    ; preds = %1253
  store i8 8, i8* %324, align 4, !tbaa !58
  store i32 %1254, i32* %325, align 4, !tbaa !26
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %148) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit126 unwind label %1259

_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit126: ; preds = %1255
  call void @llvm.lifetime.start(i64 1, i8* %326) #2
  %1256 = load i8** %327, align 8, !tbaa !14
  %1257 = getelementptr inbounds i8* %1256, i64 -24
  %1258 = bitcast i8* %1257 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1258, %"class.std::allocator.3"* %9) #18
  call void @llvm.lifetime.end(i64 1, i8* %326) #2
  br label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit

; <label>:1259                                    ; preds = %1255, %1253
  %1260 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1261 = extractvalue { i8*, i32 } %1260, 0
  %1262 = extractvalue { i8*, i32 } %1260, 1
  %1263 = getelementptr inbounds %"class.std::allocator.3"* %10, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %1263) #2
  %1264 = load i8** %327, align 8, !tbaa !14
  %1265 = getelementptr inbounds i8* %1264, i64 -24
  %1266 = bitcast i8* %1265 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1266, %"class.std::allocator.3"* %10) #18
  call void @llvm.lifetime.end(i64 1, i8* %1263) #2
  br label %1469

; <label>:1267                                    ; preds = %._crit_edge515, %1244
  %1268 = phi %"class.std::basic_string"* [ %.pre516, %._crit_edge515 ], [ %1246, %1244 ]
  %1269 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1268, i8* getelementptr inbounds ([7 x i8]* @.str113, i64 0, i64 0)) #17
          to label %1270 unwind label %416

; <label>:1270                                    ; preds = %1267
  %1271 = icmp eq i32 %1269, 0
  br i1 %1271, label %1272, label %._crit_edge517

._crit_edge517:                                   ; preds = %1270
  %.pre518 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  br label %1295

; <label>:1272                                    ; preds = %1270
  %1273 = load %"class.std::basic_string"** %187, align 8, !tbaa !54
  %1274 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1275 = ptrtoint %"class.std::basic_string"* %1273 to i64
  %1276 = ptrtoint %"class.std::basic_string"* %1274 to i64
  %1277 = sub i64 %1275, %1276
  %1278 = icmp eq i64 %1277, 16
  br i1 %1278, label %1279, label %1295

; <label>:1279                                    ; preds = %1272
  %1280 = getelementptr inbounds %"class.std::basic_string"* %1274, i64 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %151, %"class.std::basic_string"* %1280) #17
          to label %1281 unwind label %416

; <label>:1281                                    ; preds = %1279
  %1282 = invoke i32 @_Z2toIiET_Ss(%"class.std::basic_string"* %151) #17
          to label %1283 unwind label %1287

; <label>:1283                                    ; preds = %1281
  store i8 9, i8* %328, align 4, !tbaa !58
  store i32 %1282, i32* %329, align 4, !tbaa !26
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %150) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit112 unwind label %1287

_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit112: ; preds = %1283
  call void @llvm.lifetime.start(i64 1, i8* %330) #2
  %1284 = load i8** %331, align 8, !tbaa !14
  %1285 = getelementptr inbounds i8* %1284, i64 -24
  %1286 = bitcast i8* %1285 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1286, %"class.std::allocator.3"* %11) #18
  call void @llvm.lifetime.end(i64 1, i8* %330) #2
  br label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit

; <label>:1287                                    ; preds = %1283, %1281
  %1288 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1289 = extractvalue { i8*, i32 } %1288, 0
  %1290 = extractvalue { i8*, i32 } %1288, 1
  %1291 = getelementptr inbounds %"class.std::allocator.3"* %12, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %1291) #2
  %1292 = load i8** %331, align 8, !tbaa !14
  %1293 = getelementptr inbounds i8* %1292, i64 -24
  %1294 = bitcast i8* %1293 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1294, %"class.std::allocator.3"* %12) #18
  call void @llvm.lifetime.end(i64 1, i8* %1291) #2
  br label %1469

; <label>:1295                                    ; preds = %._crit_edge517, %1272
  %1296 = phi %"class.std::basic_string"* [ %.pre518, %._crit_edge517 ], [ %1274, %1272 ]
  %1297 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1296, i8* getelementptr inbounds ([7 x i8]* @.str114, i64 0, i64 0)) #17
          to label %1298 unwind label %416

; <label>:1298                                    ; preds = %1295
  %1299 = icmp eq i32 %1297, 0
  br i1 %1299, label %1300, label %._crit_edge519

._crit_edge519:                                   ; preds = %1298
  %.pre520 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  br label %1323

; <label>:1300                                    ; preds = %1298
  %1301 = load %"class.std::basic_string"** %187, align 8, !tbaa !54
  %1302 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1303 = ptrtoint %"class.std::basic_string"* %1301 to i64
  %1304 = ptrtoint %"class.std::basic_string"* %1302 to i64
  %1305 = sub i64 %1303, %1304
  %1306 = icmp eq i64 %1305, 16
  br i1 %1306, label %1307, label %1323

; <label>:1307                                    ; preds = %1300
  %1308 = getelementptr inbounds %"class.std::basic_string"* %1302, i64 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %153, %"class.std::basic_string"* %1308) #17
          to label %1309 unwind label %416

; <label>:1309                                    ; preds = %1307
  %1310 = invoke i32 @_Z2toIiET_Ss(%"class.std::basic_string"* %153) #17
          to label %1311 unwind label %1315

; <label>:1311                                    ; preds = %1309
  store i8 10, i8* %332, align 4, !tbaa !58
  store i32 %1310, i32* %333, align 4, !tbaa !26
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %152) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit98 unwind label %1315

_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit98: ; preds = %1311
  call void @llvm.lifetime.start(i64 1, i8* %334) #2
  %1312 = load i8** %335, align 8, !tbaa !14
  %1313 = getelementptr inbounds i8* %1312, i64 -24
  %1314 = bitcast i8* %1313 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1314, %"class.std::allocator.3"* %13) #18
  call void @llvm.lifetime.end(i64 1, i8* %334) #2
  br label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit

; <label>:1315                                    ; preds = %1311, %1309
  %1316 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1317 = extractvalue { i8*, i32 } %1316, 0
  %1318 = extractvalue { i8*, i32 } %1316, 1
  %1319 = getelementptr inbounds %"class.std::allocator.3"* %14, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %1319) #2
  %1320 = load i8** %335, align 8, !tbaa !14
  %1321 = getelementptr inbounds i8* %1320, i64 -24
  %1322 = bitcast i8* %1321 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1322, %"class.std::allocator.3"* %14) #18
  call void @llvm.lifetime.end(i64 1, i8* %1319) #2
  br label %1469

; <label>:1323                                    ; preds = %._crit_edge519, %1300
  %1324 = phi %"class.std::basic_string"* [ %.pre520, %._crit_edge519 ], [ %1302, %1300 ]
  %1325 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1324, i8* getelementptr inbounds ([7 x i8]* @.str115, i64 0, i64 0)) #17
          to label %1326 unwind label %416

; <label>:1326                                    ; preds = %1323
  %1327 = icmp eq i32 %1325, 0
  br i1 %1327, label %1328, label %._crit_edge521

._crit_edge521:                                   ; preds = %1326
  %.pre522 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  br label %1351

; <label>:1328                                    ; preds = %1326
  %1329 = load %"class.std::basic_string"** %187, align 8, !tbaa !54
  %1330 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1331 = ptrtoint %"class.std::basic_string"* %1329 to i64
  %1332 = ptrtoint %"class.std::basic_string"* %1330 to i64
  %1333 = sub i64 %1331, %1332
  %1334 = icmp eq i64 %1333, 16
  br i1 %1334, label %1335, label %1351

; <label>:1335                                    ; preds = %1328
  %1336 = getelementptr inbounds %"class.std::basic_string"* %1330, i64 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %155, %"class.std::basic_string"* %1336) #17
          to label %1337 unwind label %416

; <label>:1337                                    ; preds = %1335
  %1338 = invoke i32 @_Z2toIiET_Ss(%"class.std::basic_string"* %155) #17
          to label %1339 unwind label %1343

; <label>:1339                                    ; preds = %1337
  store i8 11, i8* %336, align 4, !tbaa !58
  store i32 %1338, i32* %337, align 4, !tbaa !26
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %154) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit84 unwind label %1343

_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit84: ; preds = %1339
  call void @llvm.lifetime.start(i64 1, i8* %338) #2
  %1340 = load i8** %339, align 8, !tbaa !14
  %1341 = getelementptr inbounds i8* %1340, i64 -24
  %1342 = bitcast i8* %1341 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1342, %"class.std::allocator.3"* %15) #18
  call void @llvm.lifetime.end(i64 1, i8* %338) #2
  br label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit

; <label>:1343                                    ; preds = %1339, %1337
  %1344 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1345 = extractvalue { i8*, i32 } %1344, 0
  %1346 = extractvalue { i8*, i32 } %1344, 1
  %1347 = getelementptr inbounds %"class.std::allocator.3"* %16, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %1347) #2
  %1348 = load i8** %339, align 8, !tbaa !14
  %1349 = getelementptr inbounds i8* %1348, i64 -24
  %1350 = bitcast i8* %1349 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1350, %"class.std::allocator.3"* %16) #18
  call void @llvm.lifetime.end(i64 1, i8* %1347) #2
  br label %1469

; <label>:1351                                    ; preds = %._crit_edge521, %1328
  %1352 = phi %"class.std::basic_string"* [ %.pre522, %._crit_edge521 ], [ %1330, %1328 ]
  %1353 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1352, i8* getelementptr inbounds ([7 x i8]* @.str116, i64 0, i64 0)) #17
          to label %1354 unwind label %416

; <label>:1354                                    ; preds = %1351
  %1355 = icmp eq i32 %1353, 0
  br i1 %1355, label %1356, label %1357

; <label>:1356                                    ; preds = %1354
  store i8 106, i8* %340, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %156) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1357                                    ; preds = %1354
  %1358 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1359 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1358, i8* getelementptr inbounds ([7 x i8]* @.str117, i64 0, i64 0)) #17
          to label %1360 unwind label %416

; <label>:1360                                    ; preds = %1357
  %1361 = icmp eq i32 %1359, 0
  br i1 %1361, label %1362, label %._crit_edge523

._crit_edge523:                                   ; preds = %1360
  %.pre524 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  br label %1385

; <label>:1362                                    ; preds = %1360
  %1363 = load %"class.std::basic_string"** %187, align 8, !tbaa !54
  %1364 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1365 = ptrtoint %"class.std::basic_string"* %1363 to i64
  %1366 = ptrtoint %"class.std::basic_string"* %1364 to i64
  %1367 = sub i64 %1365, %1366
  %1368 = icmp eq i64 %1367, 16
  br i1 %1368, label %1369, label %1385

; <label>:1369                                    ; preds = %1362
  %1370 = getelementptr inbounds %"class.std::basic_string"* %1364, i64 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %158, %"class.std::basic_string"* %1370) #17
          to label %1371 unwind label %416

; <label>:1371                                    ; preds = %1369
  %1372 = invoke i32 @_Z2toIiET_Ss(%"class.std::basic_string"* %158) #17
          to label %1373 unwind label %1377

; <label>:1373                                    ; preds = %1371
  store i8 111, i8* %341, align 4, !tbaa !58
  store i32 %1372, i32* %342, align 4, !tbaa !26
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %157) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit62 unwind label %1377

_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit62: ; preds = %1373
  call void @llvm.lifetime.start(i64 1, i8* %343) #2
  %1374 = load i8** %344, align 8, !tbaa !14
  %1375 = getelementptr inbounds i8* %1374, i64 -24
  %1376 = bitcast i8* %1375 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1376, %"class.std::allocator.3"* %17) #18
  call void @llvm.lifetime.end(i64 1, i8* %343) #2
  br label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit

; <label>:1377                                    ; preds = %1373, %1371
  %1378 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1379 = extractvalue { i8*, i32 } %1378, 0
  %1380 = extractvalue { i8*, i32 } %1378, 1
  %1381 = getelementptr inbounds %"class.std::allocator.3"* %20, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %1381) #2
  %1382 = load i8** %344, align 8, !tbaa !14
  %1383 = getelementptr inbounds i8* %1382, i64 -24
  %1384 = bitcast i8* %1383 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1384, %"class.std::allocator.3"* %20) #18
  call void @llvm.lifetime.end(i64 1, i8* %1381) #2
  br label %1469

; <label>:1385                                    ; preds = %._crit_edge523, %1362
  %1386 = phi %"class.std::basic_string"* [ %.pre524, %._crit_edge523 ], [ %1364, %1362 ]
  %1387 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1386, i8* getelementptr inbounds ([10 x i8]* @.str118, i64 0, i64 0)) #17
          to label %1388 unwind label %416

; <label>:1388                                    ; preds = %1385
  %1389 = icmp eq i32 %1387, 0
  br i1 %1389, label %1390, label %1391

; <label>:1390                                    ; preds = %1388
  store i8 112, i8* %345, align 4, !tbaa !58
  invoke void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %196, %struct.Instruction* %159) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

; <label>:1391                                    ; preds = %1388
  %1392 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1393 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1392, i8* getelementptr inbounds ([6 x i8]* @.str119, i64 0, i64 0)) #17
          to label %1394 unwind label %416

; <label>:1394                                    ; preds = %1391
  %1395 = icmp eq i32 %1393, 0
  %1396 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  br i1 %1395, label %1397, label %1413

; <label>:1397                                    ; preds = %1394
  %1398 = getelementptr inbounds %"class.std::basic_string"* %1396, i64 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %160, %"class.std::basic_string"* %1398) #17
          to label %1399 unwind label %416

; <label>:1399                                    ; preds = %1397
  %1400 = invoke i32 @_Z2toIiET_Ss(%"class.std::basic_string"* %160) #17
          to label %1401 unwind label %1405

; <label>:1401                                    ; preds = %1399
  store i32 %1400, i32* %346, align 4, !tbaa !61
  call void @llvm.lifetime.start(i64 1, i8* %347) #2
  %1402 = load i8** %348, align 8, !tbaa !14
  %1403 = getelementptr inbounds i8* %1402, i64 -24
  %1404 = bitcast i8* %1403 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1404, %"class.std::allocator.3"* %23) #18
  call void @llvm.lifetime.end(i64 1, i8* %347) #2
  br label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit

; <label>:1405                                    ; preds = %1399
  %1406 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1407 = extractvalue { i8*, i32 } %1406, 0
  %1408 = extractvalue { i8*, i32 } %1406, 1
  %1409 = getelementptr inbounds %"class.std::allocator.3"* %24, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %1409) #2
  %1410 = load i8** %348, align 8, !tbaa !14
  %1411 = getelementptr inbounds i8* %1410, i64 -24
  %1412 = bitcast i8* %1411 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1412, %"class.std::allocator.3"* %24) #18
  call void @llvm.lifetime.end(i64 1, i8* %1409) #2
  br label %1469

; <label>:1413                                    ; preds = %1394
  %1414 = invoke i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* %1396, i8* getelementptr inbounds ([6 x i8]* @.str120, i64 0, i64 0)) #17
          to label %1415 unwind label %416

; <label>:1415                                    ; preds = %1413
  %1416 = icmp eq i32 %1414, 0
  br i1 %1416, label %1417, label %1434

; <label>:1417                                    ; preds = %1415
  %1418 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1419 = getelementptr inbounds %"class.std::basic_string"* %1418, i64 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %161, %"class.std::basic_string"* %1419) #17
          to label %1420 unwind label %416

; <label>:1420                                    ; preds = %1417
  %1421 = invoke i32 @_Z2toIiET_Ss(%"class.std::basic_string"* %161) #17
          to label %1422 unwind label %1426

; <label>:1422                                    ; preds = %1420
  store i32 %1421, i32* %349, align 4, !tbaa !65
  call void @llvm.lifetime.start(i64 1, i8* %350) #2
  %1423 = load i8** %351, align 8, !tbaa !14
  %1424 = getelementptr inbounds i8* %1423, i64 -24
  %1425 = bitcast i8* %1424 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1425, %"class.std::allocator.3"* %27) #18
  call void @llvm.lifetime.end(i64 1, i8* %350) #2
  br label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit

; <label>:1426                                    ; preds = %1420
  %1427 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1428 = extractvalue { i8*, i32 } %1427, 0
  %1429 = extractvalue { i8*, i32 } %1427, 1
  %1430 = getelementptr inbounds %"class.std::allocator.3"* %28, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %1430) #2
  %1431 = load i8** %351, align 8, !tbaa !14
  %1432 = getelementptr inbounds i8* %1431, i64 -24
  %1433 = bitcast i8* %1432 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1433, %"class.std::allocator.3"* %28) #18
  call void @llvm.lifetime.end(i64 1, i8* %1430) #2
  br label %1469

; <label>:1434                                    ; preds = %1415
  %1435 = invoke %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* @_ZSt4cerr, i8* getelementptr inbounds ([6 x i8]* @.str121, i64 0, i64 0), i64 5) #17
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %416

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %1434
  %1436 = invoke %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cerr, i32 %lineNum.0494) #17
          to label %1437 unwind label %416

; <label>:1437                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %1438 = invoke %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* %1436, i8* getelementptr inbounds ([23 x i8]* @.str122, i64 0, i64 0), i64 22) #17
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %416

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %1437
  %1439 = load %"class.std::basic_string"** %186, align 8, !tbaa !51
  %1440 = getelementptr inbounds %"class.std::basic_string"* %1439, i64 0, i32 0, i32 0
  %1441 = load i8** %1440, align 8, !tbaa !14
  %1442 = getelementptr inbounds i8* %1441, i64 -24
  %1443 = bitcast i8* %1442 to i64*
  %1444 = load i64* %1443, align 8, !tbaa !44
  %1445 = invoke %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* %1436, i8* %1441, i64 %1444) #17
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.exit30 unwind label %416

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.exit30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %1446 = bitcast %"class.std::basic_ostream"* %1445 to i8**
  %1447 = load i8** %1446, align 8, !tbaa !27
  %1448 = getelementptr i8* %1447, i64 -24
  %1449 = bitcast i8* %1448 to i64*
  %1450 = load i64* %1449, align 8
  %1451 = bitcast %"class.std::basic_ostream"* %1445 to i8*
  %1452 = getelementptr inbounds i8* %1451, i64 %1450
  %1453 = bitcast i8* %1452 to %"class.std::basic_ios"*
  %1454 = invoke signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %1453, i8 signext 10) #17
          to label %.noexc22 unwind label %416

.noexc22:                                         ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.exit30
  %1455 = invoke %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* %1445, i8 signext %1454) #17
          to label %.noexc23 unwind label %416

.noexc23:                                         ; preds = %.noexc22
  %1456 = invoke %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* %1455) #17
          to label %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit unwind label %416

_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit: ; preds = %.noexc23, %1390, %1356, %1126, %1120, %1114, %1108, %1102, %1096, %1090, %1084, %1078, %1072, %1061, %1055, %1049, %1043, %1037, %1031, %1025, %1019, %1013, %1007, %1001, %995, %989, %983, %977, %971, %965, %959, %953, %947, %941, %935, %929, %923, %917, %911, %905, %899, %893, %887, %881, %875, %869, %863, %857, %851, %845, %839, %833, %827, %821, %815, %809, %803, %797, %791, %785, %779, %773, %767, %761, %755, %749, %743, %737, %731, %725, %719, %713, %707, %701, %695, %689, %683, %677, %671, %665, %659, %653, %647, %641, %635, %629, %623, %617, %611, %605, %599, %593, %470, %_ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE6insertERKS4_.exit, %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit38, %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit48, %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit182, %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit154, %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit126, %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit98, %1422, %1401, %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit62, %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit84, %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit112, %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit140, %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit168, %1065, %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit58, %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit42, %406
  call void @_ZNSt6vectorISsSaISsEED2Ev(%"class.std::vector.24"* %tokens) #18
  call void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(%"class.std::basic_istringstream"* %iss, i8** getelementptr inbounds ([4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 0)) #18
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %188) #18
  call void @llvm.lifetime.end(i64 360, i8* %177) #2
  %.pre497 = load i8** %174, align 8, !tbaa !14
  br label %1457

; <label>:1457                                    ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E.exit, %_ZNSsixEm.exit, %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit
  %1458 = phi i8* [ %384, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E.exit ], [ %395, %_ZNSsixEm.exit ], [ %.pre497, %_ZNSt6vectorI11InstructionSaIS0_EE9push_backEOS0_.exit ]
  call void @llvm.lifetime.start(i64 1, i8* %176) #2
  %1459 = getelementptr inbounds i8* %1458, i64 -24
  %1460 = bitcast i8* %1459 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1460, %"class.std::allocator.3"* %33) #18
  call void @llvm.lifetime.end(i64 1, i8* %176) #2
  %phitmp = add i32 %lineNum.0494, 1
  %1461 = load i8** %163, align 8, !tbaa !27
  %1462 = getelementptr i8* %1461, i64 -24
  %1463 = bitcast i8* %1462 to i64*
  %1464 = load i64* %1463, align 8
  %.sum457 = add i64 %1464, 32
  %1465 = getelementptr inbounds i8* %162, i64 %.sum457
  %1466 = bitcast i8* %1465 to i32*
  %1467 = load i32* %1466, align 4, !tbaa !38
  %1468 = icmp eq i32 %1467, 0
  br i1 %1468, label %375, label %.critedge

; <label>:1469                                    ; preds = %416, %420, %451, %496, %524, %552, %580, %1147, %1175, %1203, %1231, %1259, %1287, %1315, %1343, %1377, %1405, %1426
  %.15 = phi i32 [ %454, %451 ], [ %419, %416 ], [ %499, %496 ], [ %527, %524 ], [ %555, %552 ], [ %583, %580 ], [ %1150, %1147 ], [ %1178, %1175 ], [ %1206, %1203 ], [ %1234, %1231 ], [ %1262, %1259 ], [ %1290, %1287 ], [ %1318, %1315 ], [ %1346, %1343 ], [ %1380, %1377 ], [ %1408, %1405 ], [ %1429, %1426 ], [ %423, %420 ]
  %.1 = phi i8* [ %453, %451 ], [ %418, %416 ], [ %498, %496 ], [ %526, %524 ], [ %554, %552 ], [ %582, %580 ], [ %1149, %1147 ], [ %1177, %1175 ], [ %1205, %1203 ], [ %1233, %1231 ], [ %1261, %1259 ], [ %1289, %1287 ], [ %1317, %1315 ], [ %1345, %1343 ], [ %1379, %1377 ], [ %1407, %1405 ], [ %1428, %1426 ], [ %422, %420 ]
  call void @_ZNSt6vectorISsSaISsEED2Ev(%"class.std::vector.24"* %tokens) #18
  call void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(%"class.std::basic_istringstream"* %iss, i8** getelementptr inbounds ([4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 0)) #18
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %188) #18
  br label %1470

; <label>:1470                                    ; preds = %1469, %398
  %.37 = phi i32 [ %.15, %1469 ], [ %401, %398 ]
  %.3 = phi i8* [ %.1, %1469 ], [ %400, %398 ]
  %1471 = getelementptr inbounds %"class.std::allocator.3"* %38, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %1471) #2
  %1472 = load i8** %174, align 8, !tbaa !14
  %1473 = getelementptr inbounds i8* %1472, i64 -24
  %1474 = bitcast i8* %1473 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %1474, %"class.std::allocator.3"* %38) #18
  call void @llvm.lifetime.end(i64 1, i8* %1471) #2
  br label %1475

.critedge:                                        ; preds = %1457, %.preheader, %.noexc9
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* %input) #18
  call void @llvm.lifetime.end(i64 520, i8* %162) #2
  ret void

; <label>:1475                                    ; preds = %1470, %371
  %.48 = phi i32 [ %374, %371 ], [ %.37, %1470 ]
  %.4 = phi i8* [ %373, %371 ], [ %.3, %1470 ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* %input) #18
  %1476 = insertvalue { i8*, i32 } undef, i8* %.4, 0
  %1477 = insertvalue { i8*, i32 } %1476, i32 %.48, 1
  resume { i8*, i32 } %1477
}

; Function Attrs: optsize
declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"*, i8*, %"class.std::allocator.3"*) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZN2VMC2ER7Programi(%struct.VM* nocapture %this, %struct.Program* %program, i32 %instances) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::deque", align 8
  %2 = alloca %"class.std::deque.10", align 8
  %3 = getelementptr inbounds %struct.VM* %this, i64 0, i32 0
  store %struct.Program* %program, %struct.Program** %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  store i32 %instances, i32* %4, align 4, !tbaa !17
  %5 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  store i32 0, i32* %5, align 4, !tbaa !66
  %6 = getelementptr inbounds %struct.VM* %this, i64 0, i32 3
  store i32 0, i32* %6, align 4, !tbaa !67
  %7 = getelementptr inbounds %struct.VM* %this, i64 0, i32 4
  store i8 0, i8* %7, align 1, !tbaa !68
  %8 = getelementptr inbounds %"class.std::deque"* %1, i64 0, i32 0
  %9 = bitcast %"class.std::deque"* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 80, i32 8, i1 false) #2
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* %8, i64 0) #17
          to label %_ZNSt5dequeIiSaIiEEC2Ev.exit unwind label %10

; <label>:10                                      ; preds = %0
  %11 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  resume { i8*, i32 } %11

_ZNSt5dequeIiSaIiEEC2Ev.exit:                     ; preds = %0
  %12 = getelementptr inbounds %struct.VM* %this, i64 0, i32 5, i32 0, i32 0
  invoke void @_ZNSt11_Deque_baseIiSaIiEEC2EOS1_(%"class.std::_Deque_base"* %12, %"class.std::_Deque_base"* %8) #17
          to label %_ZNSt5stackIiSt5dequeIiSaIiEEEC2EOS2_.exit unwind label %61

_ZNSt5stackIiSt5dequeIiSaIiEEEC2EOS2_.exit:       ; preds = %_ZNSt5dequeIiSaIiEEC2Ev.exit
  call void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %8) #18
  %13 = getelementptr inbounds %"class.std::deque.10"* %2, i64 0, i32 0
  %14 = bitcast %"class.std::deque.10"* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 80, i32 8, i1 false) #2
  invoke void @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE17_M_initialize_mapEm(%"class.std::_Deque_base.11"* %13, i64 0) #17
          to label %_ZNSt5dequeISt4pairIiiESaIS1_EEC2Ev.exit unwind label %.body

_ZNSt5dequeISt4pairIiiESaIS1_EEC2Ev.exit:         ; preds = %_ZNSt5stackIiSt5dequeIiSaIiEEEC2EOS2_.exit
  %15 = getelementptr inbounds %struct.VM* %this, i64 0, i32 6, i32 0, i32 0
  invoke void @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EEC2EOS3_(%"class.std::_Deque_base.11"* %15, %"class.std::_Deque_base.11"* %13) #17
          to label %_ZNSt5stackISt4pairIiiESt5dequeIS1_SaIS1_EEEC2EOS4_.exit unwind label %68

_ZNSt5stackISt4pairIiiESt5dequeIS1_SaIS1_EEEC2EOS4_.exit: ; preds = %_ZNSt5dequeISt4pairIiiESaIS1_EEC2Ev.exit
  call void @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EED2Ev(%"class.std::_Deque_base.11"* %13) #18
  %16 = invoke %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([24 x i8]* @.str9, i64 0, i64 0), i64 23) #17
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %72

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSt5stackISt4pairIiiESt5dequeIS1_SaIS1_EEEC2EOS4_.exit
  %17 = getelementptr inbounds %struct.Program* %program, i64 0, i32 1
  %18 = load i32* %17, align 4, !tbaa !65
  %19 = getelementptr inbounds %struct.Program* %program, i64 0, i32 0
  %20 = load i32* %19, align 4, !tbaa !61
  %21 = add nsw i32 %20, %18
  %22 = mul nsw i32 %21, %instances
  %23 = sext i32 %22 to i64
  %24 = lshr i64 %23, 8
  %25 = and i64 %24, 18014398509481983
  %26 = invoke %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* @_ZSt4cout, i64 %25) #17
          to label %_ZNSolsEm.exit unwind label %72

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %27 = invoke %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* %26, i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0), i64 2) #17
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3 unwind label %72

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3: ; preds = %_ZNSolsEm.exit
  %28 = bitcast %"class.std::basic_ostream"* %26 to i8**
  %29 = load i8** %28, align 8, !tbaa !27
  %30 = getelementptr i8* %29, i64 -24
  %31 = bitcast i8* %30 to i64*
  %32 = load i64* %31, align 8
  %33 = bitcast %"class.std::basic_ostream"* %26 to i8*
  %34 = getelementptr inbounds i8* %33, i64 %32
  %35 = bitcast i8* %34 to %"class.std::basic_ios"*
  %36 = invoke signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %35, i8 signext 10) #17
          to label %.noexc unwind label %72

.noexc:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3
  %37 = invoke %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* %26, i8 signext %36) #17
          to label %.noexc4 unwind label %72

.noexc4:                                          ; preds = %.noexc
  %38 = invoke %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* %37) #17
          to label %_ZNSolsEPFRSoS_E.exit unwind label %72

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc4
  %39 = load i32* %17, align 4, !tbaa !65
  %40 = sext i32 %39 to i64
  %41 = tail call noalias i8* @calloc(i64 %40, i64 4) #18
  %42 = bitcast i8* %41 to i32*
  %43 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  store i32* %42, i32** %43, align 8, !tbaa !69
  %44 = tail call noalias i8* @calloc(i64 %40, i64 4) #18
  %45 = bitcast i8* %44 to float*
  %46 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  store float* %45, float** %46, align 8, !tbaa !70
  %47 = mul nsw i32 %39, %instances
  %48 = sext i32 %47 to i64
  %49 = tail call noalias i8* @calloc(i64 %48, i64 4) #18
  %50 = bitcast i8* %49 to float*
  %51 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  store float* %50, float** %51, align 8, !tbaa !71
  %52 = load i32* %19, align 4, !tbaa !61
  %53 = mul nsw i32 %52, %instances
  %54 = sext i32 %53 to i64
  %55 = tail call noalias i8* @calloc(i64 %54, i64 4) #18
  %56 = bitcast i8* %55 to float*
  %57 = getelementptr inbounds %struct.VM* %this, i64 0, i32 10
  store float* %56, float** %57, align 8, !tbaa !25
  br label %58

; <label>:58                                      ; preds = %58, %_ZNSolsEPFRSoS_E.exit
  %indvars.iv = phi i64 [ 0, %_ZNSolsEPFRSoS_E.exit ], [ %indvars.iv.next, %58 ]
  %59 = getelementptr inbounds %struct.VM* %this, i64 0, i32 11, i64 %indvars.iv
  store i32 0, i32* %59, align 4, !tbaa !26
  %60 = getelementptr inbounds %struct.VM* %this, i64 0, i32 12, i64 %indvars.iv
  store double 0.000000e+00, double* %60, align 8, !tbaa !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 113
  br i1 %exitcond, label %76, label %58

; <label>:61                                      ; preds = %_ZNSt5dequeIiSaIiEEC2Ev.exit
  %62 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %63 = extractvalue { i8*, i32 } %62, 0
  %64 = extractvalue { i8*, i32 } %62, 1
  call void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %8) #18
  br label %79

.body:                                            ; preds = %_ZNSt5stackIiSt5dequeIiSaIiEEEC2EOS2_.exit
  %65 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %66 = extractvalue { i8*, i32 } %65, 0
  %67 = extractvalue { i8*, i32 } %65, 1
  br label %78

; <label>:68                                      ; preds = %_ZNSt5dequeISt4pairIiiESaIS1_EEC2Ev.exit
  %69 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %70 = extractvalue { i8*, i32 } %69, 0
  %71 = extractvalue { i8*, i32 } %69, 1
  call void @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EED2Ev(%"class.std::_Deque_base.11"* %13) #18
  br label %78

; <label>:72                                      ; preds = %.noexc4, %.noexc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSt5stackISt4pairIiiESt5dequeIS1_SaIS1_EEEC2EOS4_.exit, %76
  %73 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %74 = extractvalue { i8*, i32 } %73, 0
  %75 = extractvalue { i8*, i32 } %73, 1
  tail call void @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EED2Ev(%"class.std::_Deque_base.11"* %15) #18
  br label %78

; <label>:76                                      ; preds = %58
  invoke void @_ZN2VM5resetEv(%struct.VM* %this) #17
          to label %77 unwind label %72

; <label>:77                                      ; preds = %76
  ret void

; <label>:78                                      ; preds = %72, %68, %.body
  %.01 = phi i8* [ %74, %72 ], [ %70, %68 ], [ %66, %.body ]
  %.0 = phi i32 [ %75, %72 ], [ %71, %68 ], [ %67, %.body ]
  tail call void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %12) #18
  br label %79

; <label>:79                                      ; preds = %78, %61
  %.12 = phi i8* [ %.01, %78 ], [ %63, %61 ]
  %.1 = phi i32 [ %.0, %78 ], [ %64, %61 ]
  %80 = insertvalue { i8*, i32 } undef, i8* %.12, 0
  %81 = insertvalue { i8*, i32 } %80, i32 %.1, 1
  resume { i8*, i32 } %81
}

; Function Attrs: optsize
declare i32 @SDL_GetTicks() #0

; Function Attrs: optsize
declare i32 @SDL_PollEvent(%union.SDL_Event*) #0

; Function Attrs: optsize uwtable
define linkonce_odr zeroext i1 @_ZN2VM4stepEv(%struct.VM* %this) #5 align 2 {
  %ts = alloca %struct.timespec, align 8
  %1 = call i32 @clock_gettime(i32 0, %struct.timespec* %ts) #18
  %2 = getelementptr inbounds %struct.timespec* %ts, i64 0, i32 0
  %3 = load i64* %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.timespec* %ts, i64 0, i32 1
  %5 = load i64* %4, align 8, !tbaa !76
  %6 = udiv i64 %5, 1000
  %7 = call zeroext i1 @_ZN2VM7doInstrEv(%struct.VM* %this) #17
  %8 = call i32 @clock_gettime(i32 0, %struct.timespec* %ts) #18
  %9 = load i64* %2, align 8, !tbaa !74
  %10 = mul i64 %9, 1000000
  %11 = load i64* %4, align 8, !tbaa !76
  %12 = udiv i64 %11, 1000
  %13 = getelementptr inbounds %struct.VM* %this, i64 0, i32 0
  %14 = load %struct.Program** %13, align 8, !tbaa !32
  %15 = getelementptr inbounds %struct.VM* %this, i64 0, i32 3
  %16 = load i32* %15, align 4, !tbaa !67
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.Program* %14, i64 0, i32 2, i32 0, i32 0, i32 0
  %19 = load %struct.Instruction** %18, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.Instruction* %19, i64 %17, i32 0
  %21 = load i8* %20, align 1, !tbaa !58
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds %struct.VM* %this, i64 0, i32 11, i64 %22
  %24 = load i32* %23, align 4, !tbaa !26
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4, !tbaa !26
  %26 = mul i64 %3, -1000000
  %.neg2 = sub i64 %26, %6
  %27 = add i64 %.neg2, %10
  %28 = add i64 %27, %12
  %29 = uitofp i64 %28 to double
  %30 = fmul double %29, 1.000000e-03
  %31 = getelementptr inbounds %struct.VM* %this, i64 0, i32 12, i64 %22
  %32 = load double* %31, align 8, !tbaa !72
  %33 = fadd double %30, %32
  store double %33, double* %31, align 8, !tbaa !72
  ret i1 %7
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZN2VM5resetEv(%struct.VM* nocapture %this) #5 align 2 {
  %1 = alloca %"class.std::allocator.3", align 1
  %2 = alloca %"class.std::basic_string", align 8
  %3 = alloca %"class.std::allocator.3", align 1
  %4 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  store i32 0, i32* %4, align 4, !tbaa !66
  %5 = getelementptr inbounds %struct.VM* %this, i64 0, i32 0
  %6 = load %struct.Program** %5, align 8, !tbaa !32
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %2, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), %"class.std::allocator.3"* %3) #17
  %7 = getelementptr inbounds %struct.Program* %6, i64 0, i32 3, i32 0
  %8 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1_(%"class.std::_Rb_tree"* %7, %"class.std::basic_string"* %2) #18
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %8, i64 1, i32 1
  %10 = bitcast %"struct.std::_Rb_tree_node_base"** %9 to i32*
  %11 = load i32* %10, align 4, !tbaa !56
  %12 = getelementptr inbounds %struct.VM* %this, i64 0, i32 3
  store i32 %11, i32* %12, align 4, !tbaa !67
  %13 = getelementptr inbounds %"class.std::allocator.3"* %1, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %13) #2
  %14 = getelementptr inbounds %"class.std::basic_string"* %2, i64 0, i32 0, i32 0
  %15 = load i8** %14, align 8, !tbaa !14
  %16 = getelementptr inbounds i8* %15, i64 -24
  %17 = bitcast i8* %16 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %17, %"class.std::allocator.3"* %1) #18
  call void @llvm.lifetime.end(i64 1, i8* %13) #2
  %18 = getelementptr inbounds %struct.VM* %this, i64 0, i32 4
  store i8 0, i8* %18, align 1, !tbaa !68
  ret void
}

; Function Attrs: optsize
declare %struct.SDL_Surface* @SDL_CreateRGBSurfaceFrom(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #0

; Function Attrs: optsize
declare %struct.SDL_Texture* @SDL_CreateTextureFromSurface(%struct.SDL_Renderer*, %struct.SDL_Surface*) #0

; Function Attrs: optsize
declare i32 @SDL_RenderClear(%struct.SDL_Renderer*) #0

; Function Attrs: optsize
declare i32 @SDL_RenderCopy(%struct.SDL_Renderer*, %struct.SDL_Texture*, %struct.SDL_Rect*, %struct.SDL_Rect*) #0

; Function Attrs: optsize
declare void @SDL_RenderPresent(%struct.SDL_Renderer*) #0

; Function Attrs: optsize
declare void @SDL_FreeSurface(%struct.SDL_Surface*) #0

; Function Attrs: optsize
declare void @SDL_DestroyTexture(%struct.SDL_Texture*) #0

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @SDL_DestroyRenderer(%struct.SDL_Renderer*) #0

; Function Attrs: optsize
declare void @SDL_DestroyWindow(%struct.SDL_Window*) #0

; Function Attrs: optsize
declare void @SDL_Quit() #0

; Function Attrs: nounwind optsize uwtable
define linkonce_odr void @_ZN2VMD2Ev(%struct.VM* nocapture readonly %this) unnamed_addr #4 align 2 {
  %1 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %2 = load i32** %1, align 8, !tbaa !69
  %3 = bitcast i32* %2 to i8*
  tail call void @free(i8* %3) #18
  %4 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %5 = load float** %4, align 8, !tbaa !70
  %6 = bitcast float* %5 to i8*
  tail call void @free(i8* %6) #18
  %7 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %8 = load float** %7, align 8, !tbaa !71
  %9 = bitcast float* %8 to i8*
  tail call void @free(i8* %9) #18
  %10 = getelementptr inbounds %struct.VM* %this, i64 0, i32 10
  %11 = load float** %10, align 8, !tbaa !25
  %12 = bitcast float* %11 to i8*
  tail call void @free(i8* %12) #18
  br label %13

; <label>:13                                      ; preds = %0, %_ZNSolsEPFRSoS_E.exit
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %_ZNSolsEPFRSoS_E.exit ]
  %14 = getelementptr inbounds %struct.VM* %this, i64 0, i32 12, i64 %indvars.iv
  %15 = load double* %14, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct.VM* %this, i64 0, i32 11, i64 %indvars.iv
  %17 = load i32* %16, align 4, !tbaa !26
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %15, %18
  %20 = trunc i64 %indvars.iv to i32
  %21 = invoke %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %20) #17
          to label %22 unwind label %46

; <label>:22                                      ; preds = %13
  %23 = invoke %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* %21, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i64 2) #17
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %46

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %22
  %24 = invoke %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* %21, double %19) #17
          to label %_ZNSolsEd.exit unwind label %46

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %25 = invoke %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* %24, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i64 4) #17
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1 unwind label %46

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1: ; preds = %_ZNSolsEd.exit
  %26 = load i32* %16, align 4, !tbaa !26
  %27 = invoke %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %24, i32 %26) #17
          to label %28 unwind label %46

; <label>:28                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1
  %29 = invoke %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* %27, i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i64 2) #17
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %46

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %28
  %30 = load double* %14, align 8, !tbaa !72
  %31 = invoke %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* %27, double %30) #17
          to label %_ZNSolsEd.exit3 unwind label %46

_ZNSolsEd.exit3:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2
  %32 = invoke %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* %31, i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0), i64 3) #17
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4 unwind label %46

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4: ; preds = %_ZNSolsEd.exit3
  %33 = bitcast %"class.std::basic_ostream"* %31 to i8**
  %34 = load i8** %33, align 8, !tbaa !27
  %35 = getelementptr i8* %34, i64 -24
  %36 = bitcast i8* %35 to i64*
  %37 = load i64* %36, align 8
  %38 = bitcast %"class.std::basic_ostream"* %31 to i8*
  %39 = getelementptr inbounds i8* %38, i64 %37
  %40 = bitcast i8* %39 to %"class.std::basic_ios"*
  %41 = invoke signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %40, i8 signext 10) #17
          to label %.noexc unwind label %46

.noexc:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4
  %42 = invoke %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* %31, i8 signext %41) #17
          to label %.noexc5 unwind label %46

.noexc5:                                          ; preds = %.noexc
  %43 = invoke %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* %42) #17
          to label %_ZNSolsEPFRSoS_E.exit unwind label %46

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %44 = trunc i64 %indvars.iv.next to i32
  %45 = icmp slt i32 %44, 113
  br i1 %45, label %13, label %51

; <label>:46                                      ; preds = %.noexc5, %.noexc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4, %_ZNSolsEd.exit3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2, %28, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %22, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1, %13
  %47 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %48 = extractvalue { i8*, i32 } %47, 0
  %49 = getelementptr inbounds %struct.VM* %this, i64 0, i32 6, i32 0, i32 0
  tail call void @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EED2Ev(%"class.std::_Deque_base.11"* %49) #18
  %50 = getelementptr inbounds %struct.VM* %this, i64 0, i32 5, i32 0, i32 0
  tail call void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %50) #18
  tail call void @__clang_call_terminate(i8* %48) #15
  unreachable

; <label>:51                                      ; preds = %_ZNSolsEPFRSoS_E.exit
  %52 = getelementptr inbounds %struct.VM* %this, i64 0, i32 6, i32 0, i32 0
  tail call void @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EED2Ev(%"class.std::_Deque_base.11"* %52) #18
  %53 = getelementptr inbounds %struct.VM* %this, i64 0, i32 5, i32 0, i32 0
  tail call void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* %53) #18
  ret void
}

; Function Attrs: optsize
declare %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"*, double) #0

; Function Attrs: optsize
declare %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"*, i8 signext) #0

; Function Attrs: optsize uwtable
define available_externally signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* nocapture readonly %this, i8 signext %__c) #5 align 2 {
  %1 = getelementptr inbounds %"class.std::basic_ios"* %this, i64 0, i32 5
  %2 = load %"class.std::ctype"** %1, align 8, !tbaa !77
  %3 = icmp eq %"class.std::ctype"* %2, null
  br i1 %3, label %4, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

; <label>:4                                       ; preds = %0
  tail call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %0
  %5 = tail call signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* %2, i8 signext %__c) #17
  ret i8 %5
}

; Function Attrs: optsize uwtable
define linkonce_odr signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* %this, i8 signext %__c) #5 align 2 {
  %1 = getelementptr inbounds %"class.std::ctype"* %this, i64 0, i32 6
  %2 = load i8* %1, align 1, !tbaa !79
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

; <label>:4                                       ; preds = %0
  %5 = zext i8 %__c to i64
  %6 = getelementptr inbounds %"class.std::ctype"* %this, i64 0, i32 7, i64 %5
  %7 = load i8* %6, align 1, !tbaa !32
  br label %14

; <label>:8                                       ; preds = %0
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* %this) #17
  %9 = bitcast %"class.std::ctype"* %this to i8 (%"class.std::ctype"*, i8)***
  %10 = load i8 (%"class.std::ctype"*, i8)*** %9, align 8, !tbaa !27
  %11 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)** %10, i64 6
  %12 = load i8 (%"class.std::ctype"*, i8)** %11, align 8
  %13 = tail call signext i8 %12(%"class.std::ctype"* %this, i8 signext %__c) #17
  br label %14

; <label>:14                                      ; preds = %8, %4
  %.0 = phi i8 [ %7, %4 ], [ %13, %8 ]
  ret i8 %.0
}

; Function Attrs: optsize
declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"*) #0

; Function Attrs: noreturn optsize
declare void @_ZSt16__throw_bad_castv() #6

; Function Attrs: optsize
declare %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"*) #0

; Function Attrs: optsize
declare %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"*, i8*, i64) #0

; Function Attrs: optsize
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"*, i32) #0

; Function Attrs: nounwind optsize uwtable
define available_externally void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %this, %"class.std::allocator.3"* %__a) #4 align 2 {
  %1 = alloca i32, align 4
  %2 = icmp eq %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %this, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*)
  br i1 %2, label %14, label %3, !prof !81

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %this, i64 0, i32 0, i32 2
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %5, label %9

; <label>:5                                       ; preds = %3
  %6 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6)
  %7 = atomicrmw volatile add i32* %4, i32 -1 acq_rel
  store i32 %7, i32* %1, align 4
  %8 = load volatile i32* %1, align 4
  call void @llvm.lifetime.end(i64 4, i8* %6)
  br label %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit

; <label>:9                                       ; preds = %3
  %10 = load i32* %4, align 4, !tbaa !26
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %4, align 4, !tbaa !26
  br label %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit

_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit: ; preds = %5, %9
  %.0.i = phi i32 [ %8, %5 ], [ %10, %9 ]
  %12 = icmp slt i32 %.0.i, 1
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit
  tail call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %this, %"class.std::allocator.3"* %__a) #18
  br label %14

; <label>:14                                      ; preds = %0, %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit, %13
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #7 {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #2
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: nounwind optsize
declare void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*, %"class.std::allocator.3"*) #1

; Function Attrs: nounwind optsize
declare extern_weak i32 @__pthread_key_create(i32*, void (i8*)*) #1

declare void @__cxa_call_unexpected(i8*)

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(i8*) #8

; Function Attrs: nounwind optsize uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* nocapture readnone %this, %"struct.std::_Rb_tree_node"* %__x) #4 align 2 {
  %1 = alloca %"class.std::allocator.3", align 1
  %2 = icmp eq %"struct.std::_Rb_tree_node"* %__x, null
  br i1 %2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds %"class.std::allocator.3"* %1, i64 0, i32 0
  br label %4

; <label>:4                                       ; preds = %.lr.ph, %4
  %.01 = phi %"struct.std::_Rb_tree_node"* [ %__x, %.lr.ph ], [ %10, %4 ]
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node"* %.01, i64 0, i32 0, i32 3
  %6 = load %"struct.std::_Rb_tree_node_base"** %5, align 8, !tbaa !82
  %7 = bitcast %"struct.std::_Rb_tree_node_base"* %6 to %"struct.std::_Rb_tree_node"*
  call void @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %7) #17
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node"* %.01, i64 0, i32 0, i32 2
  %9 = load %"struct.std::_Rb_tree_node_base"** %8, align 8, !tbaa !83
  %10 = bitcast %"struct.std::_Rb_tree_node_base"* %9 to %"struct.std::_Rb_tree_node"*
  call void @llvm.lifetime.start(i64 1, i8* %3) #2
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node"* %.01, i64 0, i32 1, i32 0, i32 0, i32 0
  %12 = load i8** %11, align 8, !tbaa !14
  %13 = getelementptr inbounds i8* %12, i64 -24
  %14 = bitcast i8* %13 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %14, %"class.std::allocator.3"* %1) #18
  call void @llvm.lifetime.end(i64 1, i8* %3) #2
  %15 = bitcast %"struct.std::_Rb_tree_node"* %.01 to i8*
  call void @_ZdlPv(i8* %15) #18
  %16 = icmp eq %"struct.std::_Rb_tree_node_base"* %9, null
  br i1 %16, label %._crit_edge, label %4

._crit_edge:                                      ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #0

; Function Attrs: nounwind optsize uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEED2Ev(%"class.std::_Deque_base"* nocapture readonly %this) unnamed_addr #4 align 2 {
  %1 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 0
  %2 = load i32*** %1, align 8, !tbaa !84
  %3 = icmp eq i32** %2, null
  br i1 %3, label %17, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 2, i32 3
  %6 = load i32*** %5, align 8, !tbaa !88
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 3, i32 3
  %8 = load i32*** %7, align 8, !tbaa !89
  %9 = getelementptr inbounds i32** %8, i64 1
  %10 = icmp ult i32** %6, %9
  br i1 %10, label %.lr.ph.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit

.lr.ph.i:                                         ; preds = %4, %.lr.ph.i
  %__n.01.i = phi i32** [ %13, %.lr.ph.i ], [ %6, %4 ]
  %11 = load i32** %__n.01.i, align 8, !tbaa !13
  %12 = bitcast i32* %11 to i8*
  tail call void @_ZdlPv(i8* %12) #18
  %13 = getelementptr inbounds i32** %__n.01.i, i64 1
  %14 = icmp ult i32** %__n.01.i, %8
  br i1 %14, label %.lr.ph.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load i32*** %1, align 8, !tbaa !84
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit, %4
  %15 = phi i32** [ %.pre, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit ], [ %2, %4 ]
  %16 = bitcast i32** %15 to i8*
  tail call void @_ZdlPv(i8* %16) #18
  br label %17

; <label>:17                                      ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit, %0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define linkonce_odr void @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EED2Ev(%"class.std::_Deque_base.11"* nocapture readonly %this) unnamed_addr #4 align 2 {
  %1 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 0
  %2 = load %"struct.std::pair"*** %1, align 8, !tbaa !90
  %3 = icmp eq %"struct.std::pair"** %2, null
  br i1 %3, label %17, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 2, i32 3
  %6 = load %"struct.std::pair"*** %5, align 8, !tbaa !94
  %7 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 3, i32 3
  %8 = load %"struct.std::pair"*** %7, align 8, !tbaa !95
  %9 = getelementptr inbounds %"struct.std::pair"** %8, i64 1
  %10 = icmp ult %"struct.std::pair"** %6, %9
  br i1 %10, label %.lr.ph.i, label %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit

.lr.ph.i:                                         ; preds = %4, %.lr.ph.i
  %__n.01.i = phi %"struct.std::pair"** [ %13, %.lr.ph.i ], [ %6, %4 ]
  %11 = load %"struct.std::pair"** %__n.01.i, align 8, !tbaa !13
  %12 = bitcast %"struct.std::pair"* %11 to i8*
  tail call void @_ZdlPv(i8* %12) #18
  %13 = getelementptr inbounds %"struct.std::pair"** %__n.01.i, i64 1
  %14 = icmp ult %"struct.std::pair"** %__n.01.i, %8
  br i1 %14, label %.lr.ph.i, label %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit

_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load %"struct.std::pair"*** %1, align 8, !tbaa !90
  br label %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit

_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit: ; preds = %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit, %4
  %15 = phi %"struct.std::pair"** [ %.pre, %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit ], [ %2, %4 ]
  %16 = bitcast %"struct.std::pair"** %15 to i8*
  tail call void @_ZdlPv(i8* %16) #18
  br label %17

; <label>:17                                      ; preds = %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit, %0
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE4findERS1_(%"class.std::_Rb_tree"* %this, %"class.std::basic_string"* nocapture readonly %__k) #9 align 2 {
  %1 = getelementptr inbounds %"class.std::_Rb_tree"* %this, i64 0, i32 0, i32 1, i32 1
  %2 = load %"struct.std::_Rb_tree_node_base"** %1, align 8, !tbaa !33
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %this, i64 0, i32 0, i32 1
  %4 = bitcast %"struct.std::_Rb_tree_node_base"* %3 to %"struct.std::_Rb_tree_node"*
  %5 = icmp eq %"struct.std::_Rb_tree_node_base"* %2, null
  br i1 %5, label %_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %0, %.outer.i
  %.0.ph7.i.in = phi %"struct.std::_Rb_tree_node_base"* [ %12, %.outer.i ], [ %2, %0 ]
  %.01.ph6.i = phi %"struct.std::_Rb_tree_node"* [ %.03.i, %.outer.i ], [ %4, %0 ]
  br label %6

; <label>:6                                       ; preds = %14, %.lr.ph.i
  %.03.i.in = phi %"struct.std::_Rb_tree_node_base"* [ %.0.ph7.i.in, %.lr.ph.i ], [ %16, %14 ]
  %.03.i = bitcast %"struct.std::_Rb_tree_node_base"* %.03.i.in to %"struct.std::_Rb_tree_node"*
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %.03.i.in, i64 1
  %8 = bitcast %"struct.std::_Rb_tree_node_base"* %7 to %"class.std::basic_string"*
  %9 = tail call i32 @_ZNKSs7compareERKSs(%"class.std::basic_string"* %8, %"class.std::basic_string"* %__k) #18
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %.outer.i

.outer.i:                                         ; preds = %6
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %.03.i.in, i64 0, i32 2
  %12 = load %"struct.std::_Rb_tree_node_base"** %11, align 8, !tbaa !83
  %13 = icmp eq %"struct.std::_Rb_tree_node_base"* %12, null
  br i1 %13, label %_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_.exit, label %.lr.ph.i

; <label>:14                                      ; preds = %6
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %.03.i.in, i64 0, i32 3
  %16 = load %"struct.std::_Rb_tree_node_base"** %15, align 8, !tbaa !82
  %17 = icmp eq %"struct.std::_Rb_tree_node_base"* %16, null
  br i1 %17, label %_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_.exit, label %6

_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_.exit: ; preds = %.outer.i, %14, %0
  %.01.ph5.i = phi %"struct.std::_Rb_tree_node"* [ %4, %0 ], [ %.01.ph6.i, %14 ], [ %.03.i, %.outer.i ]
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node"* %.01.ph5.i, i64 0, i32 0
  %19 = icmp eq %"struct.std::_Rb_tree_node_base"* %18, %3
  br i1 %19, label %25, label %20

; <label>:20                                      ; preds = %_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_.exit
  %21 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %18, i64 1
  %22 = bitcast %"struct.std::_Rb_tree_node_base"* %21 to %"class.std::basic_string"*
  %23 = tail call i32 @_ZNKSs7compareERKSs(%"class.std::basic_string"* %__k, %"class.std::basic_string"* %22) #18
  %24 = icmp slt i32 %23, 0
  %. = select i1 %24, %"struct.std::_Rb_tree_node_base"* %3, %"struct.std::_Rb_tree_node_base"* %18
  ret %"struct.std::_Rb_tree_node_base"* %.

; <label>:25                                      ; preds = %_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_.exit
  ret %"struct.std::_Rb_tree_node_base"* %3
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind optsize readonly uwtable
define available_externally i32 @_ZNKSs7compareERKSs(%"class.std::basic_string"* nocapture readonly %this, %"class.std::basic_string"* nocapture readonly %__str) #9 align 2 {
  %1 = getelementptr inbounds %"class.std::basic_string"* %this, i64 0, i32 0, i32 0
  %2 = load i8** %1, align 8, !tbaa !14
  %3 = getelementptr inbounds i8* %2, i64 -24
  %4 = bitcast i8* %3 to i64*
  %5 = load i64* %4, align 8, !tbaa !44
  %6 = getelementptr inbounds %"class.std::basic_string"* %__str, i64 0, i32 0, i32 0
  %7 = load i8** %6, align 8, !tbaa !14
  %8 = getelementptr inbounds i8* %7, i64 -24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64* %9, align 8, !tbaa !44
  %11 = icmp ugt i64 %5, %10
  %12 = select i1 %11, i64 %10, i64 %5
  %13 = tail call i32 @memcmp(i8* %2, i8* %7, i64 %12) #18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %_ZNSs10_S_compareEmm.exit

; <label>:15                                      ; preds = %0
  %16 = sub i64 %5, %10
  %17 = icmp sgt i64 %16, 2147483647
  br i1 %17, label %_ZNSs10_S_compareEmm.exit, label %18

; <label>:18                                      ; preds = %15
  %19 = icmp slt i64 %16, -2147483648
  %20 = trunc i64 %16 to i32
  %..i = select i1 %19, i32 -2147483648, i32 %20
  br label %_ZNSs10_S_compareEmm.exit

_ZNSs10_S_compareEmm.exit:                        ; preds = %18, %15, %0
  %__r.0 = phi i32 [ %13, %0 ], [ %..i, %18 ], [ 2147483647, %15 ]
  ret i32 %__r.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #10

; Function Attrs: nounwind optsize
declare i32 @clock_gettime(i32, %struct.timespec*) #1

; Function Attrs: optsize uwtable
define linkonce_odr zeroext i1 @_ZN2VM7doInstrEv(%struct.VM* %this) #5 align 2 {
  %1 = alloca i32, align 4
  %2 = alloca %"struct.std::pair", align 4
  %3 = getelementptr inbounds %struct.VM* %this, i64 0, i32 0
  %4 = load %struct.Program** %3, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.VM* %this, i64 0, i32 3
  %6 = load i32* %5, align 4, !tbaa !67
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.Program* %4, i64 0, i32 2, i32 0, i32 0, i32 0
  %9 = load %struct.Instruction** %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.Instruction* %9, i64 %7, i32 0
  %11 = load i8* %10, align 1, !tbaa !58
  %12 = zext i8 %11 to i32
  switch i32 %12, label %3137 [
    i32 4, label %70
    i32 5, label %.preheader
    i32 6, label %.preheader284
    i32 7, label %.preheader288
    i32 12, label %125
    i32 13, label %129
    i32 14, label %133
    i32 15, label %137
    i32 19, label %141
    i32 16, label %141
    i32 17, label %181
    i32 18, label %201
    i32 20, label %221
    i32 21, label %279
    i32 22, label %352
    i32 23, label %.preheader304
    i32 24, label %.preheader313
    i32 25, label %.preheader322
    i32 26, label %467
    i32 27, label %510
    i32 28, label %541
    i32 56, label %572
    i32 57, label %591
    i32 58, label %611
    i32 59, label %635
    i32 60, label %655
    i32 61, label %674
    i32 62, label %694
    i32 63, label %718
    i32 68, label %738
    i32 96, label %763
    i32 97, label %800
    i32 98, label %844
    i32 29, label %895
    i32 30, label %987
    i32 31, label %1013
    i32 32, label %1039
    i32 33, label %1065
    i32 34, label %1127
    i32 35, label %1153
    i32 36, label %1179
    i32 37, label %1205
    i32 38, label %1297
    i32 39, label %1323
    i32 40, label %1349
    i32 41, label %1375
    i32 42, label %1404
    i32 43, label %1433
    i32 44, label %1462
    i32 45, label %1524
    i32 46, label %1550
    i32 47, label %1576
    i32 48, label %1602
    i32 49, label %1630
    i32 50, label %1659
    i32 51, label %1688
    i32 64, label %1717
    i32 65, label %1742
    i32 66, label %1768
    i32 67, label %1794
    i32 52, label %1820
    i32 53, label %1899
    i32 54, label %1928
    i32 55, label %1957
    i32 69, label %1986
    i32 70, label %2010
    i32 71, label %2035
    i32 72, label %2064
    i32 73, label %2089
    i32 74, label %2113
    i32 75, label %2138
    i32 76, label %2167
    i32 77, label %2192
    i32 78, label %2224
    i32 79, label %2257
    i32 80, label %2290
    i32 81, label %2323
    i32 82, label %2360
    i32 83, label %2397
    i32 88, label %2435
    i32 89, label %2468
    i32 90, label %2502
    i32 91, label %2537
    i32 84, label %2571
    i32 85, label %2590
    i32 86, label %2610
    i32 87, label %2634
    i32 92, label %2654
    i32 93, label %2680
    i32 94, label %2721
    i32 99, label %2761
    i32 100, label %2798
    i32 102, label %2847
    i32 0, label %2902
    i32 1, label %.preheader726
    i32 2, label %.preheader730
    i32 3, label %.preheader734
    i32 8, label %3014
    i32 9, label %3021
    i32 10, label %3028
    i32 11, label %3035
    i32 106, label %3042
    i32 104, label %3082
    i32 111, label %3087
    i32 112, label %3094
  ]

.preheader734:                                    ; preds = %0
  %13 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %14 = load i32* %13, align 4, !tbaa !66
  %15 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %16 = load i32** %15, align 8, !tbaa !69
  br label %2986

.preheader730:                                    ; preds = %0
  %17 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %18 = load i32* %17, align 4, !tbaa !66
  %19 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %20 = load i32** %19, align 8, !tbaa !69
  br label %2958

.preheader726:                                    ; preds = %0
  %21 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %22 = load i32* %21, align 4, !tbaa !66
  %23 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %24 = load i32** %23, align 8, !tbaa !69
  br label %2930

.preheader322:                                    ; preds = %0
  %25 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %26 = load i32* %25, align 4, !tbaa !66
  %27 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %28 = load i32** %27, align 8, !tbaa !69
  %29 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %30 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %31 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  br label %439

.preheader313:                                    ; preds = %0
  %32 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %33 = load i32* %32, align 4, !tbaa !66
  %34 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %35 = load i32** %34, align 8, !tbaa !69
  %36 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %37 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %38 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  br label %411

.preheader304:                                    ; preds = %0
  %39 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %40 = load i32* %39, align 4, !tbaa !66
  %41 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %42 = load i32** %41, align 8, !tbaa !69
  %43 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %44 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %45 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  br label %383

.preheader288:                                    ; preds = %0
  %46 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %47 = load i32* %46, align 4, !tbaa !66
  %48 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %49 = load i32** %48, align 8, !tbaa !69
  %50 = getelementptr inbounds %struct.Instruction* %9, i64 %7, i32 1
  %51 = bitcast %union.anon* %50 to float*
  %52 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %53 = load float** %52, align 8, !tbaa !70
  br label %112

.preheader284:                                    ; preds = %0
  %54 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %55 = load i32* %54, align 4, !tbaa !66
  %56 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %57 = load i32** %56, align 8, !tbaa !69
  %58 = getelementptr inbounds %struct.Instruction* %9, i64 %7, i32 1
  %59 = bitcast %union.anon* %58 to float*
  %60 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %61 = load float** %60, align 8, !tbaa !70
  br label %99

.preheader:                                       ; preds = %0
  %62 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %63 = load i32* %62, align 4, !tbaa !66
  %64 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %65 = load i32** %64, align 8, !tbaa !69
  %66 = getelementptr inbounds %struct.Instruction* %9, i64 %7, i32 1
  %67 = bitcast %union.anon* %66 to float*
  %68 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %69 = load float** %68, align 8, !tbaa !70
  br label %86

; <label>:70                                      ; preds = %0
  %71 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %72 = load i32* %71, align 4, !tbaa !66
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %75 = load i32** %74, align 8, !tbaa !69
  %76 = getelementptr inbounds i32* %75, i64 %73
  store i32 1, i32* %76, align 4, !tbaa !26
  %77 = getelementptr inbounds %struct.Instruction* %9, i64 %7, i32 1
  %78 = bitcast %union.anon* %77 to float*
  %79 = load float* %78, align 4, !tbaa !1
  %80 = load i32* %71, align 4, !tbaa !66
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %83 = load float** %82, align 8, !tbaa !70
  %84 = getelementptr inbounds float* %83, i64 %81
  store float %79, float* %84, align 4, !tbaa !1
  %85 = add nsw i32 %80, 1
  store i32 %85, i32* %71, align 4, !tbaa !66
  br label %.loopexit298

; <label>:86                                      ; preds = %86, %.preheader
  %87 = phi i32 [ %63, %.preheader ], [ %92, %86 ]
  %i.0283 = phi i32 [ 0, %.preheader ], [ %96, %86 ]
  %88 = add nsw i32 %87, %i.0283
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32* %65, i64 %89
  store i32 1, i32* %90, align 4, !tbaa !26
  %91 = load float* %67, align 4, !tbaa !1
  %92 = load i32* %62, align 4, !tbaa !66
  %93 = add nsw i32 %92, %i.0283
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float* %69, i64 %94
  store float %91, float* %95, align 4, !tbaa !1
  %96 = add nsw i32 %i.0283, 1
  %exitcond = icmp eq i32 %96, 2
  br i1 %exitcond, label %97, label %86

; <label>:97                                      ; preds = %86
  %98 = add nsw i32 %92, 2
  store i32 %98, i32* %62, align 4, !tbaa !66
  br label %.loopexit298

; <label>:99                                      ; preds = %99, %.preheader284
  %100 = phi i32 [ %55, %.preheader284 ], [ %105, %99 ]
  %i1.0287 = phi i32 [ 0, %.preheader284 ], [ %109, %99 ]
  %101 = add nsw i32 %100, %i1.0287
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32* %57, i64 %102
  store i32 1, i32* %103, align 4, !tbaa !26
  %104 = load float* %59, align 4, !tbaa !1
  %105 = load i32* %54, align 4, !tbaa !66
  %106 = add nsw i32 %105, %i1.0287
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float* %61, i64 %107
  store float %104, float* %108, align 4, !tbaa !1
  %109 = add nsw i32 %i1.0287, 1
  %exitcond739 = icmp eq i32 %109, 3
  br i1 %exitcond739, label %110, label %99

; <label>:110                                     ; preds = %99
  %111 = add nsw i32 %105, 3
  store i32 %111, i32* %54, align 4, !tbaa !66
  br label %.loopexit298

; <label>:112                                     ; preds = %112, %.preheader288
  %113 = phi i32 [ %47, %.preheader288 ], [ %118, %112 ]
  %i2.0291 = phi i32 [ 0, %.preheader288 ], [ %122, %112 ]
  %114 = add nsw i32 %113, %i2.0291
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32* %49, i64 %115
  store i32 1, i32* %116, align 4, !tbaa !26
  %117 = load float* %51, align 4, !tbaa !1
  %118 = load i32* %46, align 4, !tbaa !66
  %119 = add nsw i32 %118, %i2.0291
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float* %53, i64 %120
  store float %117, float* %121, align 4, !tbaa !1
  %122 = add nsw i32 %i2.0291, 1
  %exitcond741 = icmp eq i32 %122, 4
  br i1 %exitcond741, label %123, label %112

; <label>:123                                     ; preds = %112
  %124 = add nsw i32 %118, 4
  store i32 %124, i32* %46, align 4, !tbaa !66
  br label %.loopexit298

; <label>:125                                     ; preds = %0
  %126 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %127 = load i32* %126, align 4, !tbaa !66
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %126, align 4, !tbaa !66
  br label %.loopexit298

; <label>:129                                     ; preds = %0
  %130 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %131 = load i32* %130, align 4, !tbaa !66
  %132 = add nsw i32 %131, -2
  store i32 %132, i32* %130, align 4, !tbaa !66
  br label %.loopexit298

; <label>:133                                     ; preds = %0
  %134 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %135 = load i32* %134, align 4, !tbaa !66
  %136 = add nsw i32 %135, -3
  store i32 %136, i32* %134, align 4, !tbaa !66
  br label %.loopexit298

; <label>:137                                     ; preds = %0
  %138 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %139 = load i32* %138, align 4, !tbaa !66
  %140 = add nsw i32 %139, -4
  store i32 %140, i32* %138, align 4, !tbaa !66
  br label %.loopexit298

; <label>:141                                     ; preds = %0, %0
  %142 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %143 = load i32* %142, align 4, !tbaa !66
  %144 = add nsw i32 %143, -1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %147 = load i32** %146, align 8, !tbaa !69
  %148 = getelementptr inbounds i32* %147, i64 %145
  %149 = load i32* %148, align 4, !tbaa !26
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %163

; <label>:151                                     ; preds = %141
  %152 = sext i32 %143 to i64
  %153 = getelementptr inbounds i32* %147, i64 %152
  store i32 1, i32* %153, align 4, !tbaa !26
  %154 = load i32* %142, align 4, !tbaa !66
  %155 = add nsw i32 %154, -1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %158 = load float** %157, align 8, !tbaa !70
  %159 = getelementptr inbounds float* %158, i64 %156
  %160 = load float* %159, align 4, !tbaa !1
  %161 = sext i32 %154 to i64
  %162 = getelementptr inbounds float* %158, i64 %161
  store float %160, float* %162, align 4, !tbaa !1
  br label %178

; <label>:163                                     ; preds = %141
  %164 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %165 = load i32* %164, align 4, !tbaa !17
  %166 = mul nsw i32 %165, %143
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %169 = load float** %168, align 8, !tbaa !71
  %170 = getelementptr inbounds float* %169, i64 %167
  %171 = bitcast float* %170 to i8*
  %172 = mul nsw i32 %165, %144
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float* %169, i64 %173
  %175 = bitcast float* %174 to i8*
  %176 = sext i32 %165 to i64
  %177 = shl nsw i64 %176, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %171, i8* %175, i64 %177, i32 4, i1 false)
  %.pre = load i32* %142, align 4, !tbaa !66
  br label %178

; <label>:178                                     ; preds = %163, %151
  %179 = phi i32 [ %.pre, %163 ], [ %154, %151 ]
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %142, align 4, !tbaa !66
  br label %.loopexit298

; <label>:181                                     ; preds = %0
  %182 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %183 = load i32* %182, align 4, !tbaa !66
  %184 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %185 = load i32* %184, align 4, !tbaa !17
  %186 = mul nsw i32 %185, %183
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %189 = load float** %188, align 8, !tbaa !71
  %190 = getelementptr inbounds float* %189, i64 %187
  %191 = bitcast float* %190 to i8*
  %192 = add nsw i32 %183, -2
  %193 = mul nsw i32 %192, %185
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float* %189, i64 %194
  %196 = bitcast float* %195 to i8*
  %197 = sext i32 %185 to i64
  %198 = shl nsw i64 %197, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %191, i8* %196, i64 %198, i32 4, i1 false)
  %199 = load i32* %182, align 4, !tbaa !66
  %200 = add nsw i32 %199, 2
  store i32 %200, i32* %182, align 4, !tbaa !66
  br label %.loopexit298

; <label>:201                                     ; preds = %0
  %202 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %203 = load i32* %202, align 4, !tbaa !66
  %204 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %205 = load i32* %204, align 4, !tbaa !17
  %206 = mul nsw i32 %205, %203
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %209 = load float** %208, align 8, !tbaa !71
  %210 = getelementptr inbounds float* %209, i64 %207
  %211 = bitcast float* %210 to i8*
  %212 = add nsw i32 %203, -3
  %213 = mul nsw i32 %212, %205
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float* %209, i64 %214
  %216 = bitcast float* %215 to i8*
  %217 = sext i32 %205 to i64
  %218 = mul i64 %217, 12
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %211, i8* %216, i64 %218, i32 4, i1 false)
  %219 = load i32* %202, align 4, !tbaa !66
  %220 = add nsw i32 %219, 3
  store i32 %220, i32* %202, align 4, !tbaa !66
  br label %.loopexit298

; <label>:221                                     ; preds = %0
  %222 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %223 = load i32* %222, align 4, !tbaa !66
  %224 = add nsw i32 %223, -1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %227 = load i32** %226, align 8, !tbaa !69
  %228 = getelementptr inbounds i32* %227, i64 %225
  %229 = load i32* %228, align 4, !tbaa !26
  %230 = icmp eq i32 %229, 1
  br i1 %230, label %.preheader292, label %247

.preheader292:                                    ; preds = %221
  %231 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %232 = load float** %231, align 8, !tbaa !70
  br label %233

; <label>:233                                     ; preds = %233, %.preheader292
  %234 = phi i32 [ %223, %.preheader292 ], [ %238, %233 ]
  %i3.0293 = phi i32 [ 0, %.preheader292 ], [ %246, %233 ]
  %235 = add nsw i32 %234, %i3.0293
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32* %227, i64 %236
  store i32 1, i32* %237, align 4, !tbaa !26
  %238 = load i32* %222, align 4, !tbaa !66
  %239 = add nsw i32 %238, -1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float* %232, i64 %240
  %242 = load float* %241, align 4, !tbaa !1
  %243 = add nsw i32 %238, %i3.0293
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds float* %232, i64 %244
  store float %242, float* %245, align 4, !tbaa !1
  %246 = add nsw i32 %i3.0293, 1
  %exitcond742 = icmp eq i32 %246, 2
  br i1 %exitcond742, label %.loopexit, label %233

; <label>:247                                     ; preds = %221
  %248 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %249 = load i32* %248, align 4, !tbaa !17
  %250 = mul nsw i32 %249, %223
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %253 = load float** %252, align 8, !tbaa !71
  %254 = getelementptr inbounds float* %253, i64 %251
  %255 = bitcast float* %254 to i8*
  %256 = mul nsw i32 %249, %224
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float* %253, i64 %257
  %259 = bitcast float* %258 to i8*
  %260 = sext i32 %249 to i64
  %261 = shl nsw i64 %260, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %255, i8* %259, i64 %261, i32 4, i1 false)
  %262 = load i32* %222, align 4, !tbaa !66
  %263 = add nsw i32 %262, 1
  %264 = load i32* %248, align 4, !tbaa !17
  %265 = mul nsw i32 %263, %264
  %266 = sext i32 %265 to i64
  %267 = load float** %252, align 8, !tbaa !71
  %268 = getelementptr inbounds float* %267, i64 %266
  %269 = bitcast float* %268 to i8*
  %270 = add nsw i32 %262, -1
  %271 = mul nsw i32 %270, %264
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds float* %267, i64 %272
  %274 = bitcast float* %273 to i8*
  %275 = sext i32 %264 to i64
  %276 = shl nsw i64 %275, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %269, i8* %274, i64 %276, i32 4, i1 false)
  %.pre763 = load i32* %222, align 4, !tbaa !66
  br label %.loopexit

.loopexit:                                        ; preds = %233, %247
  %277 = phi i32 [ %.pre763, %247 ], [ %238, %233 ]
  %278 = add nsw i32 %277, 2
  store i32 %278, i32* %222, align 4, !tbaa !66
  br label %.loopexit298

; <label>:279                                     ; preds = %0
  %280 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %281 = load i32* %280, align 4, !tbaa !66
  %282 = add nsw i32 %281, -1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %285 = load i32** %284, align 8, !tbaa !69
  %286 = getelementptr inbounds i32* %285, i64 %283
  %287 = load i32* %286, align 4, !tbaa !26
  %288 = icmp eq i32 %287, 1
  br i1 %288, label %.preheader294, label %305

.preheader294:                                    ; preds = %279
  %289 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %290 = load float** %289, align 8, !tbaa !70
  br label %291

; <label>:291                                     ; preds = %291, %.preheader294
  %292 = phi i32 [ %281, %.preheader294 ], [ %296, %291 ]
  %i4.0296 = phi i32 [ 0, %.preheader294 ], [ %304, %291 ]
  %293 = add nsw i32 %292, %i4.0296
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32* %285, i64 %294
  store i32 1, i32* %295, align 4, !tbaa !26
  %296 = load i32* %280, align 4, !tbaa !66
  %297 = add nsw i32 %296, -1
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float* %290, i64 %298
  %300 = load float* %299, align 4, !tbaa !1
  %301 = add nsw i32 %296, %i4.0296
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds float* %290, i64 %302
  store float %300, float* %303, align 4, !tbaa !1
  %304 = add nsw i32 %i4.0296, 1
  %exitcond743 = icmp eq i32 %304, 3
  br i1 %exitcond743, label %.loopexit295, label %291

; <label>:305                                     ; preds = %279
  %306 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %307 = load i32* %306, align 4, !tbaa !17
  %308 = mul nsw i32 %307, %281
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %311 = load float** %310, align 8, !tbaa !71
  %312 = getelementptr inbounds float* %311, i64 %309
  %313 = bitcast float* %312 to i8*
  %314 = mul nsw i32 %307, %282
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds float* %311, i64 %315
  %317 = bitcast float* %316 to i8*
  %318 = sext i32 %307 to i64
  %319 = shl nsw i64 %318, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %313, i8* %317, i64 %319, i32 4, i1 false)
  %320 = load i32* %280, align 4, !tbaa !66
  %321 = add nsw i32 %320, 1
  %322 = load i32* %306, align 4, !tbaa !17
  %323 = mul nsw i32 %321, %322
  %324 = sext i32 %323 to i64
  %325 = load float** %310, align 8, !tbaa !71
  %326 = getelementptr inbounds float* %325, i64 %324
  %327 = bitcast float* %326 to i8*
  %328 = add nsw i32 %320, -1
  %329 = mul nsw i32 %328, %322
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds float* %325, i64 %330
  %332 = bitcast float* %331 to i8*
  %333 = sext i32 %322 to i64
  %334 = shl nsw i64 %333, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %327, i8* %332, i64 %334, i32 4, i1 false)
  %335 = load i32* %280, align 4, !tbaa !66
  %336 = add nsw i32 %335, 2
  %337 = load i32* %306, align 4, !tbaa !17
  %338 = mul nsw i32 %336, %337
  %339 = sext i32 %338 to i64
  %340 = load float** %310, align 8, !tbaa !71
  %341 = getelementptr inbounds float* %340, i64 %339
  %342 = bitcast float* %341 to i8*
  %343 = add nsw i32 %335, -1
  %344 = mul nsw i32 %343, %337
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds float* %340, i64 %345
  %347 = bitcast float* %346 to i8*
  %348 = sext i32 %337 to i64
  %349 = shl nsw i64 %348, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %342, i8* %347, i64 %349, i32 4, i1 false)
  %.pre764 = load i32* %280, align 4, !tbaa !66
  br label %.loopexit295

.loopexit295:                                     ; preds = %291, %305
  %350 = phi i32 [ %.pre764, %305 ], [ %296, %291 ]
  %351 = add nsw i32 %350, 3
  store i32 %351, i32* %280, align 4, !tbaa !66
  br label %.loopexit298

; <label>:352                                     ; preds = %0
  %353 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %354 = load i32* %353, align 4, !tbaa !66
  %355 = add nsw i32 %354, -1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %358 = load i32** %357, align 8, !tbaa !69
  %359 = getelementptr inbounds i32* %358, i64 %356
  %360 = load i32* %359, align 4, !tbaa !26
  %361 = icmp eq i32 %360, 1
  br i1 %361, label %367, label %.preheader297

.preheader297:                                    ; preds = %352
  %362 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %363 = load i32* %362, align 4, !tbaa !17
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %.lr.ph, label %.loopexit298

.lr.ph:                                           ; preds = %.preheader297
  %365 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %366 = load float** %365, align 8, !tbaa !71
  br label %373

; <label>:367                                     ; preds = %352
  %368 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %369 = load float** %368, align 8, !tbaa !70
  %370 = getelementptr inbounds float* %369, i64 %356
  %371 = load float* %370, align 4, !tbaa !1
  %372 = fsub float -0.000000e+00, %371
  store float %372, float* %370, align 4, !tbaa !1
  br label %.loopexit298

; <label>:373                                     ; preds = %.lr.ph, %373
  %i5.0299 = phi i32 [ 0, %.lr.ph ], [ %381, %373 ]
  %374 = mul nsw i32 %354, %363
  %375 = sub i32 %i5.0299, %363
  %376 = add i32 %375, %374
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds float* %366, i64 %377
  %379 = load float* %378, align 4, !tbaa !1
  %380 = fmul float %379, -1.000000e+00
  store float %380, float* %378, align 4, !tbaa !1
  %381 = add nsw i32 %i5.0299, 1
  %382 = icmp slt i32 %381, %363
  br i1 %382, label %373, label %.loopexit298

; <label>:383                                     ; preds = %.preheader304, %.loopexit301
  %indvars.iv = phi i64 [ 2, %.preheader304 ], [ %indvars.iv.next, %.loopexit301 ]
  %384 = trunc i64 %indvars.iv to i32
  %385 = sub nsw i32 %40, %384
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32* %42, i64 %386
  %388 = load i32* %387, align 4, !tbaa !26
  %389 = icmp eq i32 %388, 1
  br i1 %389, label %393, label %.preheader300

.preheader300:                                    ; preds = %383
  %390 = load i32* %44, align 4, !tbaa !17
  %391 = icmp sgt i32 %390, 0
  br i1 %391, label %.lr.ph303, label %.loopexit301

.lr.ph303:                                        ; preds = %.preheader300
  %392 = load float** %45, align 8, !tbaa !71
  br label %398

; <label>:393                                     ; preds = %383
  %394 = load float** %43, align 8, !tbaa !70
  %395 = getelementptr inbounds float* %394, i64 %386
  %396 = load float* %395, align 4, !tbaa !1
  %397 = fsub float -0.000000e+00, %396
  store float %397, float* %395, align 4, !tbaa !1
  br label %.loopexit301

; <label>:398                                     ; preds = %.lr.ph303, %398
  %i6.0302 = phi i32 [ 0, %.lr.ph303 ], [ %407, %398 ]
  %399 = mul nsw i32 %40, %390
  %400 = mul nsw i32 %390, %384
  %401 = sub i32 %i6.0302, %400
  %402 = add i32 %401, %399
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds float* %392, i64 %403
  %405 = load float* %404, align 4, !tbaa !1
  %406 = fmul float %405, -1.000000e+00
  store float %406, float* %404, align 4, !tbaa !1
  %407 = add nsw i32 %i6.0302, 1
  %408 = icmp slt i32 %407, %390
  br i1 %408, label %398, label %.loopexit301

.loopexit301:                                     ; preds = %398, %.preheader300, %393
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %409 = trunc i64 %indvars.iv.next to i32
  %410 = icmp sgt i32 %409, 0
  br i1 %410, label %383, label %.loopexit298

; <label>:411                                     ; preds = %.preheader313, %.loopexit310
  %indvars.iv744 = phi i64 [ 3, %.preheader313 ], [ %indvars.iv.next745, %.loopexit310 ]
  %412 = trunc i64 %indvars.iv744 to i32
  %413 = sub nsw i32 %33, %412
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32* %35, i64 %414
  %416 = load i32* %415, align 4, !tbaa !26
  %417 = icmp eq i32 %416, 1
  br i1 %417, label %421, label %.preheader309

.preheader309:                                    ; preds = %411
  %418 = load i32* %37, align 4, !tbaa !17
  %419 = icmp sgt i32 %418, 0
  br i1 %419, label %.lr.ph312, label %.loopexit310

.lr.ph312:                                        ; preds = %.preheader309
  %420 = load float** %38, align 8, !tbaa !71
  br label %426

; <label>:421                                     ; preds = %411
  %422 = load float** %36, align 8, !tbaa !70
  %423 = getelementptr inbounds float* %422, i64 %414
  %424 = load float* %423, align 4, !tbaa !1
  %425 = fsub float -0.000000e+00, %424
  store float %425, float* %423, align 4, !tbaa !1
  br label %.loopexit310

; <label>:426                                     ; preds = %.lr.ph312, %426
  %i10.0311 = phi i32 [ 0, %.lr.ph312 ], [ %435, %426 ]
  %427 = mul nsw i32 %33, %418
  %428 = mul nsw i32 %418, %412
  %429 = sub i32 %i10.0311, %428
  %430 = add i32 %429, %427
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds float* %420, i64 %431
  %433 = load float* %432, align 4, !tbaa !1
  %434 = fmul float %433, -1.000000e+00
  store float %434, float* %432, align 4, !tbaa !1
  %435 = add nsw i32 %i10.0311, 1
  %436 = icmp slt i32 %435, %418
  br i1 %436, label %426, label %.loopexit310

.loopexit310:                                     ; preds = %426, %.preheader309, %421
  %indvars.iv.next745 = add nsw i64 %indvars.iv744, -1
  %437 = trunc i64 %indvars.iv.next745 to i32
  %438 = icmp sgt i32 %437, 0
  br i1 %438, label %411, label %.loopexit298

; <label>:439                                     ; preds = %.preheader322, %.loopexit319
  %indvars.iv746 = phi i64 [ 4, %.preheader322 ], [ %indvars.iv.next747, %.loopexit319 ]
  %440 = trunc i64 %indvars.iv746 to i32
  %441 = sub nsw i32 %26, %440
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32* %28, i64 %442
  %444 = load i32* %443, align 4, !tbaa !26
  %445 = icmp eq i32 %444, 1
  br i1 %445, label %449, label %.preheader318

.preheader318:                                    ; preds = %439
  %446 = load i32* %30, align 4, !tbaa !17
  %447 = icmp sgt i32 %446, 0
  br i1 %447, label %.lr.ph321, label %.loopexit319

.lr.ph321:                                        ; preds = %.preheader318
  %448 = load float** %31, align 8, !tbaa !71
  br label %454

; <label>:449                                     ; preds = %439
  %450 = load float** %29, align 8, !tbaa !70
  %451 = getelementptr inbounds float* %450, i64 %442
  %452 = load float* %451, align 4, !tbaa !1
  %453 = fsub float -0.000000e+00, %452
  store float %453, float* %451, align 4, !tbaa !1
  br label %.loopexit319

; <label>:454                                     ; preds = %.lr.ph321, %454
  %i14.0320 = phi i32 [ 0, %.lr.ph321 ], [ %463, %454 ]
  %455 = mul nsw i32 %26, %446
  %456 = mul nsw i32 %446, %440
  %457 = sub i32 %i14.0320, %456
  %458 = add i32 %457, %455
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds float* %448, i64 %459
  %461 = load float* %460, align 4, !tbaa !1
  %462 = fmul float %461, -1.000000e+00
  store float %462, float* %460, align 4, !tbaa !1
  %463 = add nsw i32 %i14.0320, 1
  %464 = icmp slt i32 %463, %446
  br i1 %464, label %454, label %.loopexit319

.loopexit319:                                     ; preds = %454, %.preheader318, %449
  %indvars.iv.next747 = add nsw i64 %indvars.iv746, -1
  %465 = trunc i64 %indvars.iv.next747 to i32
  %466 = icmp sgt i32 %465, 0
  br i1 %466, label %439, label %.loopexit298

; <label>:467                                     ; preds = %0
  %468 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %469 = load i32* %468, align 4, !tbaa !66
  %470 = add nsw i32 %469, -1
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %473 = load i32** %472, align 8, !tbaa !69
  %474 = getelementptr inbounds i32* %473, i64 %471
  %475 = load i32* %474, align 4, !tbaa !26
  %476 = icmp eq i32 %475, 1
  br i1 %476, label %481, label %.preheader327

.preheader327:                                    ; preds = %467
  %477 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %478 = load i32* %477, align 4, !tbaa !17
  %479 = icmp sgt i32 %478, 0
  br i1 %479, label %.lr.ph330, label %.loopexit298

.lr.ph330:                                        ; preds = %.preheader327
  %480 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %.pre767 = load float** %480, align 8, !tbaa !71
  br label %492

; <label>:481                                     ; preds = %467
  %482 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %483 = load float** %482, align 8, !tbaa !70
  %484 = getelementptr inbounds float* %483, i64 %471
  %485 = load float* %484, align 4, !tbaa !1
  %486 = tail call float @sqrtf(float %485) #18
  %487 = load i32* %468, align 4, !tbaa !66
  %488 = add nsw i32 %487, -1
  %489 = sext i32 %488 to i64
  %490 = load float** %482, align 8, !tbaa !70
  %491 = getelementptr inbounds float* %490, i64 %489
  store float %486, float* %491, align 4, !tbaa !1
  br label %.loopexit298

; <label>:492                                     ; preds = %._crit_edge765, %.lr.ph330
  %493 = phi float* [ %.pre767, %.lr.ph330 ], [ %506, %._crit_edge765 ]
  %494 = phi i32 [ %469, %.lr.ph330 ], [ %.pre766, %._crit_edge765 ]
  %495 = phi i32 [ %478, %.lr.ph330 ], [ %503, %._crit_edge765 ]
  %i16.0329 = phi i32 [ 0, %.lr.ph330 ], [ %508, %._crit_edge765 ]
  %496 = mul nsw i32 %494, %495
  %497 = add nsw i32 %496, %i16.0329
  %498 = sub nsw i32 %497, %495
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds float* %493, i64 %499
  %501 = load float* %500, align 4, !tbaa !1
  %502 = tail call float @sqrtf(float %501) #18
  %503 = load i32* %477, align 4, !tbaa !17
  %504 = sub nsw i32 %497, %503
  %505 = sext i32 %504 to i64
  %506 = load float** %480, align 8, !tbaa !71
  %507 = getelementptr inbounds float* %506, i64 %505
  store float %502, float* %507, align 4, !tbaa !1
  %508 = add nsw i32 %i16.0329, 1
  %509 = icmp slt i32 %508, %503
  br i1 %509, label %._crit_edge765, label %.loopexit298

._crit_edge765:                                   ; preds = %492
  %.pre766 = load i32* %468, align 4, !tbaa !66
  br label %492

; <label>:510                                     ; preds = %0
  %511 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %512 = load i32* %511, align 4, !tbaa !66
  %513 = add nsw i32 %512, -1
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %516 = load i32** %515, align 8, !tbaa !69
  %517 = getelementptr inbounds i32* %516, i64 %514
  %518 = load i32* %517, align 4, !tbaa !26
  %519 = icmp eq i32 %518, 1
  br i1 %519, label %525, label %.preheader331

.preheader331:                                    ; preds = %510
  %520 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %521 = load i32* %520, align 4, !tbaa !17
  %522 = icmp sgt i32 %521, 0
  br i1 %522, label %.lr.ph334, label %.loopexit298

.lr.ph334:                                        ; preds = %.preheader331
  %523 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %524 = load float** %523, align 8, !tbaa !71
  br label %531

; <label>:525                                     ; preds = %510
  %526 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %527 = load float** %526, align 8, !tbaa !70
  %528 = getelementptr inbounds float* %527, i64 %514
  %529 = load float* %528, align 4, !tbaa !1
  %530 = fdiv float 1.000000e+00, %529
  store float %530, float* %528, align 4, !tbaa !1
  br label %.loopexit298

; <label>:531                                     ; preds = %.lr.ph334, %531
  %i18.0333 = phi i32 [ 0, %.lr.ph334 ], [ %539, %531 ]
  %532 = mul nsw i32 %512, %521
  %533 = sub i32 %i18.0333, %521
  %534 = add i32 %533, %532
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds float* %524, i64 %535
  %537 = load float* %536, align 4, !tbaa !1
  %538 = fdiv float 1.000000e+00, %537
  store float %538, float* %536, align 4, !tbaa !1
  %539 = add nsw i32 %i18.0333, 1
  %540 = icmp slt i32 %539, %521
  br i1 %540, label %531, label %.loopexit298

; <label>:541                                     ; preds = %0
  %542 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %543 = load i32* %542, align 4, !tbaa !66
  %544 = add nsw i32 %543, -1
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %547 = load i32** %546, align 8, !tbaa !69
  %548 = getelementptr inbounds i32* %547, i64 %545
  %549 = load i32* %548, align 4, !tbaa !26
  %550 = icmp eq i32 %549, 1
  br i1 %550, label %556, label %.preheader335

.preheader335:                                    ; preds = %541
  %551 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %552 = load i32* %551, align 4, !tbaa !17
  %553 = icmp sgt i32 %552, 0
  br i1 %553, label %.lr.ph338, label %.loopexit298

.lr.ph338:                                        ; preds = %.preheader335
  %554 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %555 = load float** %554, align 8, !tbaa !71
  br label %562

; <label>:556                                     ; preds = %541
  %557 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %558 = load float** %557, align 8, !tbaa !70
  %559 = getelementptr inbounds float* %558, i64 %545
  %560 = load float* %559, align 4, !tbaa !1
  %561 = tail call float @expf(float %560) #16
  store float %561, float* %559, align 4, !tbaa !1
  br label %.loopexit298

; <label>:562                                     ; preds = %.lr.ph338, %562
  %i20.0337 = phi i32 [ 0, %.lr.ph338 ], [ %570, %562 ]
  %563 = mul nsw i32 %543, %552
  %564 = sub i32 %i20.0337, %552
  %565 = add i32 %564, %563
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds float* %555, i64 %566
  %568 = load float* %567, align 4, !tbaa !1
  %569 = tail call float @expf(float %568) #16
  store float %569, float* %567, align 4, !tbaa !1
  %570 = add nsw i32 %i20.0337, 1
  %571 = icmp slt i32 %570, %552
  br i1 %571, label %562, label %.loopexit298

; <label>:572                                     ; preds = %0
  %573 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %574 = load i32* %573, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %574, i32 1) #17
  %575 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %576 = load i32* %575, align 4, !tbaa !17
  %577 = icmp sgt i32 %576, 0
  br i1 %577, label %.lr.ph341, label %.loopexit298

.lr.ph341:                                        ; preds = %572
  %578 = load i32* %573, align 4, !tbaa !66
  %579 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %580 = load float** %579, align 8, !tbaa !71
  br label %581

; <label>:581                                     ; preds = %.lr.ph341, %581
  %i22.0340 = phi i32 [ 0, %.lr.ph341 ], [ %589, %581 ]
  %582 = mul nsw i32 %578, %576
  %583 = sub i32 %i22.0340, %576
  %584 = add i32 %583, %582
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds float* %580, i64 %585
  %587 = load float* %586, align 4, !tbaa !1
  %588 = tail call float @sinf(float %587) #16
  store float %588, float* %586, align 4, !tbaa !1
  %589 = add nsw i32 %i22.0340, 1
  %590 = icmp slt i32 %589, %576
  br i1 %590, label %581, label %.loopexit298

; <label>:591                                     ; preds = %0
  %592 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %593 = load i32* %592, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %593, i32 2) #17
  %594 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %595 = load i32* %594, align 4, !tbaa !17
  %596 = icmp sgt i32 %595, 0
  br i1 %596, label %.lr.ph344, label %.loopexit298

.lr.ph344:                                        ; preds = %591
  %597 = shl nsw i32 %595, 1
  %598 = load i32* %592, align 4, !tbaa !66
  %599 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %600 = load float** %599, align 8, !tbaa !71
  br label %601

; <label>:601                                     ; preds = %.lr.ph344, %601
  %i24.0343 = phi i32 [ 0, %.lr.ph344 ], [ %609, %601 ]
  %602 = mul nsw i32 %598, %595
  %603 = sub i32 %i24.0343, %597
  %604 = add i32 %603, %602
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds float* %600, i64 %605
  %607 = load float* %606, align 4, !tbaa !1
  %608 = tail call float @sinf(float %607) #16
  store float %608, float* %606, align 4, !tbaa !1
  %609 = add nsw i32 %i24.0343, 1
  %610 = icmp slt i32 %609, %597
  br i1 %610, label %601, label %.loopexit298

; <label>:611                                     ; preds = %0
  %612 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %613 = load i32* %612, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %613, i32 3) #17
  %614 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %615 = load i32* %614, align 4, !tbaa !17
  %616 = icmp sgt i32 %615, 0
  br i1 %616, label %.lr.ph347, label %.loopexit298

.lr.ph347:                                        ; preds = %611
  %617 = mul nsw i32 %615, 3
  %618 = load i32* %612, align 4, !tbaa !66
  %619 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %620 = load float** %619, align 8, !tbaa !71
  br label %621

; <label>:621                                     ; preds = %.lr.ph347, %621
  %i26.0346 = phi i32 [ 0, %.lr.ph347 ], [ %633, %621 ]
  %622 = mul nsw i32 %618, %615
  %623 = add nsw i32 %622, %i26.0346
  %624 = sub nsw i32 %623, %617
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds float* %620, i64 %625
  %627 = load float* %626, align 4, !tbaa !1
  %628 = tail call float @sinf(float %627) #16
  %629 = mul i32 %615, -3
  %630 = add i32 %623, %629
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds float* %620, i64 %631
  store float %628, float* %632, align 4, !tbaa !1
  %633 = add nsw i32 %i26.0346, 1
  %634 = icmp slt i32 %633, %617
  br i1 %634, label %621, label %.loopexit298

; <label>:635                                     ; preds = %0
  %636 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %637 = load i32* %636, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %637, i32 4) #17
  %638 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %639 = load i32* %638, align 4, !tbaa !17
  %640 = icmp sgt i32 %639, 0
  br i1 %640, label %.lr.ph350, label %.loopexit298

.lr.ph350:                                        ; preds = %635
  %641 = shl nsw i32 %639, 2
  %642 = load i32* %636, align 4, !tbaa !66
  %643 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %644 = load float** %643, align 8, !tbaa !71
  br label %645

; <label>:645                                     ; preds = %.lr.ph350, %645
  %i28.0349 = phi i32 [ 0, %.lr.ph350 ], [ %653, %645 ]
  %646 = mul nsw i32 %642, %639
  %647 = sub i32 %i28.0349, %641
  %648 = add i32 %647, %646
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds float* %644, i64 %649
  %651 = load float* %650, align 4, !tbaa !1
  %652 = tail call float @sinf(float %651) #16
  store float %652, float* %650, align 4, !tbaa !1
  %653 = add nsw i32 %i28.0349, 1
  %654 = icmp slt i32 %653, %641
  br i1 %654, label %645, label %.loopexit298

; <label>:655                                     ; preds = %0
  %656 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %657 = load i32* %656, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %657, i32 1) #17
  %658 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %659 = load i32* %658, align 4, !tbaa !17
  %660 = icmp sgt i32 %659, 0
  br i1 %660, label %.lr.ph353, label %.loopexit298

.lr.ph353:                                        ; preds = %655
  %661 = load i32* %656, align 4, !tbaa !66
  %662 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %663 = load float** %662, align 8, !tbaa !71
  br label %664

; <label>:664                                     ; preds = %.lr.ph353, %664
  %i30.0352 = phi i32 [ 0, %.lr.ph353 ], [ %672, %664 ]
  %665 = mul nsw i32 %661, %659
  %666 = sub i32 %i30.0352, %659
  %667 = add i32 %666, %665
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds float* %663, i64 %668
  %670 = load float* %669, align 4, !tbaa !1
  %671 = tail call float @cosf(float %670) #16
  store float %671, float* %669, align 4, !tbaa !1
  %672 = add nsw i32 %i30.0352, 1
  %673 = icmp slt i32 %672, %659
  br i1 %673, label %664, label %.loopexit298

; <label>:674                                     ; preds = %0
  %675 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %676 = load i32* %675, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %676, i32 2) #17
  %677 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %678 = load i32* %677, align 4, !tbaa !17
  %679 = icmp sgt i32 %678, 0
  br i1 %679, label %.lr.ph356, label %.loopexit298

.lr.ph356:                                        ; preds = %674
  %680 = shl nsw i32 %678, 1
  %681 = load i32* %675, align 4, !tbaa !66
  %682 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %683 = load float** %682, align 8, !tbaa !71
  br label %684

; <label>:684                                     ; preds = %.lr.ph356, %684
  %i32.0355 = phi i32 [ 0, %.lr.ph356 ], [ %692, %684 ]
  %685 = mul nsw i32 %681, %678
  %686 = sub i32 %i32.0355, %680
  %687 = add i32 %686, %685
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds float* %683, i64 %688
  %690 = load float* %689, align 4, !tbaa !1
  %691 = tail call float @cosf(float %690) #16
  store float %691, float* %689, align 4, !tbaa !1
  %692 = add nsw i32 %i32.0355, 1
  %693 = icmp slt i32 %692, %680
  br i1 %693, label %684, label %.loopexit298

; <label>:694                                     ; preds = %0
  %695 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %696 = load i32* %695, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %696, i32 3) #17
  %697 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %698 = load i32* %697, align 4, !tbaa !17
  %699 = icmp sgt i32 %698, 0
  br i1 %699, label %.lr.ph359, label %.loopexit298

.lr.ph359:                                        ; preds = %694
  %700 = mul nsw i32 %698, 3
  %701 = load i32* %695, align 4, !tbaa !66
  %702 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %703 = load float** %702, align 8, !tbaa !71
  br label %704

; <label>:704                                     ; preds = %.lr.ph359, %704
  %i34.0358 = phi i32 [ 0, %.lr.ph359 ], [ %716, %704 ]
  %705 = mul nsw i32 %701, %698
  %706 = add nsw i32 %705, %i34.0358
  %707 = sub nsw i32 %706, %700
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds float* %703, i64 %708
  %710 = load float* %709, align 4, !tbaa !1
  %711 = tail call float @cosf(float %710) #16
  %712 = mul i32 %698, -3
  %713 = add i32 %706, %712
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds float* %703, i64 %714
  store float %711, float* %715, align 4, !tbaa !1
  %716 = add nsw i32 %i34.0358, 1
  %717 = icmp slt i32 %716, %700
  br i1 %717, label %704, label %.loopexit298

; <label>:718                                     ; preds = %0
  %719 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %720 = load i32* %719, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %720, i32 4) #17
  %721 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %722 = load i32* %721, align 4, !tbaa !17
  %723 = icmp sgt i32 %722, 0
  br i1 %723, label %.lr.ph362, label %.loopexit298

.lr.ph362:                                        ; preds = %718
  %724 = shl nsw i32 %722, 2
  %725 = load i32* %719, align 4, !tbaa !66
  %726 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %727 = load float** %726, align 8, !tbaa !71
  br label %728

; <label>:728                                     ; preds = %.lr.ph362, %728
  %i36.0361 = phi i32 [ 0, %.lr.ph362 ], [ %736, %728 ]
  %729 = mul nsw i32 %725, %722
  %730 = sub i32 %i36.0361, %724
  %731 = add i32 %730, %729
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds float* %727, i64 %732
  %734 = load float* %733, align 4, !tbaa !1
  %735 = tail call float @cosf(float %734) #16
  store float %735, float* %733, align 4, !tbaa !1
  %736 = add nsw i32 %i36.0361, 1
  %737 = icmp slt i32 %736, %724
  br i1 %737, label %728, label %.loopexit298

; <label>:738                                     ; preds = %0
  %739 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %740 = load i32* %739, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %740, i32 2) #17
  %741 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %742 = load i32* %741, align 4, !tbaa !17
  %743 = icmp sgt i32 %742, 0
  %744 = load i32* %739, align 4, !tbaa !66
  br i1 %743, label %.lr.ph365, label %._crit_edge

.lr.ph365:                                        ; preds = %738
  %745 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %746 = load float** %745, align 8, !tbaa !71
  br label %747

; <label>:747                                     ; preds = %.lr.ph365, %747
  %i38.0364 = phi i32 [ 0, %.lr.ph365 ], [ %760, %747 ]
  %748 = mul nsw i32 %744, %742
  %749 = add nsw i32 %748, %i38.0364
  %750 = sub nsw i32 %749, %742
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds float* %746, i64 %751
  %753 = load float* %752, align 4, !tbaa !1
  %754 = shl nsw i32 %742, 1
  %755 = sub nsw i32 %749, %754
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds float* %746, i64 %756
  %758 = load float* %757, align 4, !tbaa !1
  %759 = tail call float @atan2f(float %758, float %753) #16
  store float %759, float* %757, align 4, !tbaa !1
  %760 = add nsw i32 %i38.0364, 1
  %761 = icmp slt i32 %760, %742
  br i1 %761, label %747, label %._crit_edge

._crit_edge:                                      ; preds = %747, %738
  %762 = add nsw i32 %744, -1
  store i32 %762, i32* %739, align 4, !tbaa !66
  br label %.loopexit298

; <label>:763                                     ; preds = %0
  %764 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %765 = load i32* %764, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %765, i32 2) #17
  %766 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %767 = load i32* %766, align 4, !tbaa !17
  %768 = icmp sgt i32 %767, 0
  %769 = load i32* %764, align 4, !tbaa !66
  br i1 %768, label %.lr.ph369, label %._crit_edge370

.lr.ph369:                                        ; preds = %763
  %770 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %.pre768 = load float** %770, align 8, !tbaa !71
  br label %771

; <label>:771                                     ; preds = %.lr.ph369, %771
  %772 = phi float* [ %.pre768, %.lr.ph369 ], [ %794, %771 ]
  %773 = phi i32 [ %769, %.lr.ph369 ], [ %798, %771 ]
  %774 = phi i32 [ %767, %.lr.ph369 ], [ %790, %771 ]
  %i40.0367 = phi i32 [ 0, %.lr.ph369 ], [ %796, %771 ]
  %775 = mul nsw i32 %773, %774
  %776 = add nsw i32 %775, %i40.0367
  %777 = sub nsw i32 %776, %774
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds float* %772, i64 %778
  %780 = load float* %779, align 4, !tbaa !1
  %781 = shl nsw i32 %774, 1
  %782 = sub nsw i32 %776, %781
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds float* %772, i64 %783
  %785 = load float* %784, align 4, !tbaa !1
  %786 = fmul float %780, %780
  %787 = fmul float %785, %785
  %788 = fadd float %786, %787
  %789 = tail call float @sqrtf(float %788) #18
  %790 = load i32* %766, align 4, !tbaa !17
  %791 = shl nsw i32 %790, 1
  %792 = sub nsw i32 %776, %791
  %793 = sext i32 %792 to i64
  %794 = load float** %770, align 8, !tbaa !71
  %795 = getelementptr inbounds float* %794, i64 %793
  store float %789, float* %795, align 4, !tbaa !1
  %796 = add nsw i32 %i40.0367, 1
  %797 = icmp slt i32 %796, %790
  %798 = load i32* %764, align 4, !tbaa !66
  br i1 %797, label %771, label %._crit_edge370

._crit_edge370:                                   ; preds = %771, %763
  %.lcssa366 = phi i32 [ %769, %763 ], [ %798, %771 ]
  %799 = add nsw i32 %.lcssa366, -1
  store i32 %799, i32* %764, align 4, !tbaa !66
  br label %.loopexit298

; <label>:800                                     ; preds = %0
  %801 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %802 = load i32* %801, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %802, i32 3) #17
  %803 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %804 = load i32* %803, align 4, !tbaa !17
  %805 = icmp sgt i32 %804, 0
  %806 = load i32* %801, align 4, !tbaa !66
  br i1 %805, label %.lr.ph375, label %._crit_edge376

.lr.ph375:                                        ; preds = %800
  %807 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %.pre769 = load float** %807, align 8, !tbaa !71
  br label %808

; <label>:808                                     ; preds = %.lr.ph375, %808
  %809 = phi float* [ %.pre769, %.lr.ph375 ], [ %838, %808 ]
  %810 = phi i32 [ %806, %.lr.ph375 ], [ %842, %808 ]
  %811 = phi i32 [ %804, %.lr.ph375 ], [ %834, %808 ]
  %i44.0373 = phi i32 [ 0, %.lr.ph375 ], [ %840, %808 ]
  %812 = mul nsw i32 %810, %811
  %813 = add nsw i32 %812, %i44.0373
  %814 = sub nsw i32 %813, %811
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds float* %809, i64 %815
  %817 = load float* %816, align 4, !tbaa !1
  %818 = shl nsw i32 %811, 1
  %819 = sub nsw i32 %813, %818
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds float* %809, i64 %820
  %822 = load float* %821, align 4, !tbaa !1
  %823 = mul i32 %811, -3
  %824 = add i32 %813, %823
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds float* %809, i64 %825
  %827 = load float* %826, align 4, !tbaa !1
  %828 = fmul float %817, %817
  %829 = fmul float %822, %822
  %830 = fadd float %828, %829
  %831 = fmul float %827, %827
  %832 = fadd float %830, %831
  %833 = tail call float @sqrtf(float %832) #18
  %834 = load i32* %803, align 4, !tbaa !17
  %835 = mul i32 %834, -3
  %836 = add i32 %835, %813
  %837 = sext i32 %836 to i64
  %838 = load float** %807, align 8, !tbaa !71
  %839 = getelementptr inbounds float* %838, i64 %837
  store float %833, float* %839, align 4, !tbaa !1
  %840 = add nsw i32 %i44.0373, 1
  %841 = icmp slt i32 %840, %834
  %842 = load i32* %801, align 4, !tbaa !66
  br i1 %841, label %808, label %._crit_edge376

._crit_edge376:                                   ; preds = %808, %800
  %.lcssa372 = phi i32 [ %806, %800 ], [ %842, %808 ]
  %843 = add nsw i32 %.lcssa372, -2
  store i32 %843, i32* %801, align 4, !tbaa !66
  br label %.loopexit298

; <label>:844                                     ; preds = %0
  %845 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %846 = load i32* %845, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %846, i32 4) #17
  %847 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %848 = load i32* %847, align 4, !tbaa !17
  %849 = icmp sgt i32 %848, 0
  %850 = load i32* %845, align 4, !tbaa !66
  br i1 %849, label %.lr.ph381, label %._crit_edge382

.lr.ph381:                                        ; preds = %844
  %851 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %.pre770 = load float** %851, align 8, !tbaa !71
  br label %852

; <label>:852                                     ; preds = %.lr.ph381, %852
  %853 = phi float* [ %.pre770, %.lr.ph381 ], [ %889, %852 ]
  %854 = phi i32 [ %850, %.lr.ph381 ], [ %893, %852 ]
  %855 = phi i32 [ %848, %.lr.ph381 ], [ %885, %852 ]
  %i48.0379 = phi i32 [ 0, %.lr.ph381 ], [ %891, %852 ]
  %856 = mul nsw i32 %854, %855
  %857 = add nsw i32 %856, %i48.0379
  %858 = sub nsw i32 %857, %855
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds float* %853, i64 %859
  %861 = load float* %860, align 4, !tbaa !1
  %862 = shl nsw i32 %855, 1
  %863 = sub nsw i32 %857, %862
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds float* %853, i64 %864
  %866 = load float* %865, align 4, !tbaa !1
  %867 = mul i32 %855, -3
  %868 = add i32 %857, %867
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds float* %853, i64 %869
  %871 = load float* %870, align 4, !tbaa !1
  %872 = shl nsw i32 %855, 2
  %873 = sub nsw i32 %857, %872
  %874 = sext i32 %873 to i64
  %875 = getelementptr inbounds float* %853, i64 %874
  %876 = load float* %875, align 4, !tbaa !1
  %877 = fmul float %861, %861
  %878 = fmul float %866, %866
  %879 = fadd float %877, %878
  %880 = fmul float %871, %871
  %881 = fadd float %879, %880
  %882 = fmul float %876, %876
  %883 = fadd float %881, %882
  %884 = tail call float @sqrtf(float %883) #18
  %885 = load i32* %847, align 4, !tbaa !17
  %886 = shl nsw i32 %885, 2
  %887 = sub nsw i32 %857, %886
  %888 = sext i32 %887 to i64
  %889 = load float** %851, align 8, !tbaa !71
  %890 = getelementptr inbounds float* %889, i64 %888
  store float %884, float* %890, align 4, !tbaa !1
  %891 = add nsw i32 %i48.0379, 1
  %892 = icmp slt i32 %891, %885
  %893 = load i32* %845, align 4, !tbaa !66
  br i1 %892, label %852, label %._crit_edge382

._crit_edge382:                                   ; preds = %852, %844
  %.lcssa378 = phi i32 [ %850, %844 ], [ %893, %852 ]
  %894 = add nsw i32 %.lcssa378, -3
  store i32 %894, i32* %845, align 4, !tbaa !66
  br label %.loopexit298

; <label>:895                                     ; preds = %0
  %896 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %897 = load i32* %896, align 4, !tbaa !66
  %898 = add nsw i32 %897, -2
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %901 = load i32** %900, align 8, !tbaa !69
  %902 = getelementptr inbounds i32* %901, i64 %899
  %903 = load i32* %902, align 4, !tbaa !26
  %904 = icmp eq i32 %903, 1
  br i1 %904, label %905, label %933

; <label>:905                                     ; preds = %895
  store i32 0, i32* %902, align 4, !tbaa !26
  %906 = load i32* %896, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %906, i32 1) #17
  %907 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %908 = load i32* %907, align 4, !tbaa !17
  %909 = icmp sgt i32 %908, 0
  br i1 %909, label %.lr.ph387, label %.loopexit384

.lr.ph387:                                        ; preds = %905
  %910 = load i32* %896, align 4, !tbaa !66
  %911 = add nsw i32 %910, -2
  %912 = sext i32 %911 to i64
  %913 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %914 = load float** %913, align 8, !tbaa !70
  %915 = getelementptr inbounds float* %914, i64 %912
  %916 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %917 = load float** %916, align 8, !tbaa !71
  br label %918

; <label>:918                                     ; preds = %.lr.ph387, %918
  %i53.0385 = phi i32 [ 0, %.lr.ph387 ], [ %931, %918 ]
  %919 = mul nsw i32 %910, %908
  %920 = add nsw i32 %919, %i53.0385
  %921 = load float* %915, align 4, !tbaa !1
  %922 = sub nsw i32 %920, %908
  %923 = sext i32 %922 to i64
  %924 = getelementptr inbounds float* %917, i64 %923
  %925 = load float* %924, align 4, !tbaa !1
  %926 = fadd float %921, %925
  %927 = shl nsw i32 %908, 1
  %928 = sub nsw i32 %920, %927
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds float* %917, i64 %929
  store float %926, float* %930, align 4, !tbaa !1
  %931 = add nsw i32 %i53.0385, 1
  %932 = icmp slt i32 %931, %908
  br i1 %932, label %918, label %.loopexit384

; <label>:933                                     ; preds = %895
  %934 = add nsw i32 %897, -1
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds i32* %901, i64 %935
  %937 = load i32* %936, align 4, !tbaa !26
  %938 = icmp eq i32 %937, 1
  br i1 %938, label %939, label %963

; <label>:939                                     ; preds = %933
  store i32 0, i32* %936, align 4, !tbaa !26
  %940 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %941 = load i32* %940, align 4, !tbaa !17
  %942 = icmp sgt i32 %941, 0
  br i1 %942, label %.lr.ph391, label %.loopexit384

.lr.ph391:                                        ; preds = %939
  %943 = load i32* %896, align 4, !tbaa !66
  %944 = add nsw i32 %943, -1
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %947 = load float** %946, align 8, !tbaa !70
  %948 = getelementptr inbounds float* %947, i64 %945
  %949 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %950 = load float** %949, align 8, !tbaa !71
  br label %951

; <label>:951                                     ; preds = %.lr.ph391, %951
  %i55.0389 = phi i32 [ 0, %.lr.ph391 ], [ %961, %951 ]
  %952 = mul nsw i32 %943, %941
  %953 = load float* %948, align 4, !tbaa !1
  %954 = shl nsw i32 %941, 1
  %955 = sub i32 %i55.0389, %954
  %956 = add i32 %955, %952
  %957 = sext i32 %956 to i64
  %958 = getelementptr inbounds float* %950, i64 %957
  %959 = load float* %958, align 4, !tbaa !1
  %960 = fadd float %953, %959
  store float %960, float* %958, align 4, !tbaa !1
  %961 = add nsw i32 %i55.0389, 1
  %962 = icmp slt i32 %961, %941
  br i1 %962, label %951, label %.loopexit384

; <label>:963                                     ; preds = %933
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %897, i32 2) #17
  %964 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %965 = load i32* %964, align 4, !tbaa !17
  %966 = icmp sgt i32 %965, 0
  br i1 %966, label %.lr.ph395, label %.loopexit384

.lr.ph395:                                        ; preds = %963
  %967 = load i32* %896, align 4, !tbaa !66
  %968 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %969 = load float** %968, align 8, !tbaa !71
  br label %970

; <label>:970                                     ; preds = %.lr.ph395, %970
  %i57.0393 = phi i32 [ 0, %.lr.ph395 ], [ %983, %970 ]
  %971 = mul nsw i32 %967, %965
  %972 = add nsw i32 %971, %i57.0393
  %973 = sub nsw i32 %972, %965
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds float* %969, i64 %974
  %976 = load float* %975, align 4, !tbaa !1
  %977 = shl nsw i32 %965, 1
  %978 = sub nsw i32 %972, %977
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds float* %969, i64 %979
  %981 = load float* %980, align 4, !tbaa !1
  %982 = fadd float %976, %981
  store float %982, float* %980, align 4, !tbaa !1
  %983 = add nsw i32 %i57.0393, 1
  %984 = icmp slt i32 %983, %965
  br i1 %984, label %970, label %.loopexit384

.loopexit384:                                     ; preds = %970, %951, %918, %963, %939, %905
  %985 = load i32* %896, align 4, !tbaa !66
  %986 = add nsw i32 %985, -1
  store i32 %986, i32* %896, align 4, !tbaa !66
  br label %.loopexit298

; <label>:987                                     ; preds = %0
  %988 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %989 = load i32* %988, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %989, i32 4) #17
  %990 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %991 = load i32* %990, align 4, !tbaa !17
  %992 = icmp sgt i32 %991, 0
  %993 = load i32* %988, align 4, !tbaa !66
  br i1 %992, label %.lr.ph399, label %._crit_edge400

.lr.ph399:                                        ; preds = %987
  %994 = shl nsw i32 %991, 1
  %995 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %996 = load float** %995, align 8, !tbaa !71
  br label %997

; <label>:997                                     ; preds = %.lr.ph399, %997
  %i59.0397 = phi i32 [ 0, %.lr.ph399 ], [ %1010, %997 ]
  %998 = mul nsw i32 %993, %991
  %999 = add nsw i32 %998, %i59.0397
  %1000 = sub nsw i32 %999, %994
  %1001 = sext i32 %1000 to i64
  %1002 = getelementptr inbounds float* %996, i64 %1001
  %1003 = load float* %1002, align 4, !tbaa !1
  %1004 = shl nsw i32 %991, 2
  %1005 = sub nsw i32 %999, %1004
  %1006 = sext i32 %1005 to i64
  %1007 = getelementptr inbounds float* %996, i64 %1006
  %1008 = load float* %1007, align 4, !tbaa !1
  %1009 = fadd float %1003, %1008
  store float %1009, float* %1007, align 4, !tbaa !1
  %1010 = add nsw i32 %i59.0397, 1
  %1011 = icmp slt i32 %1010, %994
  br i1 %1011, label %997, label %._crit_edge400

._crit_edge400:                                   ; preds = %997, %987
  %1012 = add nsw i32 %993, -2
  store i32 %1012, i32* %988, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1013                                    ; preds = %0
  %1014 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1015 = load i32* %1014, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1015, i32 6) #17
  %1016 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1017 = load i32* %1016, align 4, !tbaa !17
  %1018 = icmp sgt i32 %1017, 0
  %1019 = load i32* %1014, align 4, !tbaa !66
  br i1 %1018, label %.lr.ph405, label %._crit_edge406

.lr.ph405:                                        ; preds = %1013
  %1020 = mul nsw i32 %1017, 3
  %1021 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1022 = load float** %1021, align 8, !tbaa !71
  br label %1023

; <label>:1023                                    ; preds = %.lr.ph405, %1023
  %i61.0403 = phi i32 [ 0, %.lr.ph405 ], [ %1036, %1023 ]
  %1024 = mul nsw i32 %1019, %1017
  %1025 = add nsw i32 %1024, %i61.0403
  %1026 = sub nsw i32 %1025, %1020
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds float* %1022, i64 %1027
  %1029 = load float* %1028, align 4, !tbaa !1
  %1030 = mul i32 %1017, -6
  %1031 = add i32 %1025, %1030
  %1032 = sext i32 %1031 to i64
  %1033 = getelementptr inbounds float* %1022, i64 %1032
  %1034 = load float* %1033, align 4, !tbaa !1
  %1035 = fadd float %1029, %1034
  store float %1035, float* %1033, align 4, !tbaa !1
  %1036 = add nsw i32 %i61.0403, 1
  %1037 = icmp slt i32 %1036, %1020
  br i1 %1037, label %1023, label %._crit_edge406

._crit_edge406:                                   ; preds = %1023, %1013
  %1038 = add nsw i32 %1019, -3
  store i32 %1038, i32* %1014, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1039                                    ; preds = %0
  %1040 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1041 = load i32* %1040, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1041, i32 8) #17
  %1042 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1043 = load i32* %1042, align 4, !tbaa !17
  %1044 = icmp sgt i32 %1043, 0
  %1045 = load i32* %1040, align 4, !tbaa !66
  br i1 %1044, label %.lr.ph411, label %._crit_edge412

.lr.ph411:                                        ; preds = %1039
  %1046 = shl nsw i32 %1043, 2
  %1047 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1048 = load float** %1047, align 8, !tbaa !71
  br label %1049

; <label>:1049                                    ; preds = %.lr.ph411, %1049
  %i63.0409 = phi i32 [ 0, %.lr.ph411 ], [ %1062, %1049 ]
  %1050 = mul nsw i32 %1045, %1043
  %1051 = add nsw i32 %1050, %i63.0409
  %1052 = sub nsw i32 %1051, %1046
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds float* %1048, i64 %1053
  %1055 = load float* %1054, align 4, !tbaa !1
  %1056 = shl nsw i32 %1043, 3
  %1057 = sub nsw i32 %1051, %1056
  %1058 = sext i32 %1057 to i64
  %1059 = getelementptr inbounds float* %1048, i64 %1058
  %1060 = load float* %1059, align 4, !tbaa !1
  %1061 = fadd float %1055, %1060
  store float %1061, float* %1059, align 4, !tbaa !1
  %1062 = add nsw i32 %i63.0409, 1
  %1063 = icmp slt i32 %1062, %1046
  br i1 %1063, label %1049, label %._crit_edge412

._crit_edge412:                                   ; preds = %1049, %1039
  %1064 = add nsw i32 %1045, -4
  store i32 %1064, i32* %1040, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1065                                    ; preds = %0
  %1066 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1067 = load i32* %1066, align 4, !tbaa !66
  %1068 = add nsw i32 %1067, -2
  %1069 = sext i32 %1068 to i64
  %1070 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %1071 = load i32** %1070, align 8, !tbaa !69
  %1072 = getelementptr inbounds i32* %1071, i64 %1069
  %1073 = load i32* %1072, align 4, !tbaa !26
  %1074 = icmp eq i32 %1073, 1
  br i1 %1074, label %1075, label %1103

; <label>:1075                                    ; preds = %1065
  store i32 0, i32* %1072, align 4, !tbaa !26
  %1076 = load i32* %1066, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1076, i32 1) #17
  %1077 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1078 = load i32* %1077, align 4, !tbaa !17
  %1079 = icmp sgt i32 %1078, 0
  br i1 %1079, label %.lr.ph417, label %.loopexit414

.lr.ph417:                                        ; preds = %1075
  %1080 = load i32* %1066, align 4, !tbaa !66
  %1081 = add nsw i32 %1080, -2
  %1082 = sext i32 %1081 to i64
  %1083 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %1084 = load float** %1083, align 8, !tbaa !70
  %1085 = getelementptr inbounds float* %1084, i64 %1082
  %1086 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1087 = load float** %1086, align 8, !tbaa !71
  br label %1088

; <label>:1088                                    ; preds = %.lr.ph417, %1088
  %i65.0415 = phi i32 [ 0, %.lr.ph417 ], [ %1101, %1088 ]
  %1089 = mul nsw i32 %1080, %1078
  %1090 = add nsw i32 %1089, %i65.0415
  %1091 = load float* %1085, align 4, !tbaa !1
  %1092 = sub nsw i32 %1090, %1078
  %1093 = sext i32 %1092 to i64
  %1094 = getelementptr inbounds float* %1087, i64 %1093
  %1095 = load float* %1094, align 4, !tbaa !1
  %1096 = fsub float %1091, %1095
  %1097 = shl nsw i32 %1078, 1
  %1098 = sub nsw i32 %1090, %1097
  %1099 = sext i32 %1098 to i64
  %1100 = getelementptr inbounds float* %1087, i64 %1099
  store float %1096, float* %1100, align 4, !tbaa !1
  %1101 = add nsw i32 %i65.0415, 1
  %1102 = icmp slt i32 %1101, %1078
  br i1 %1102, label %1088, label %.loopexit414

; <label>:1103                                    ; preds = %1065
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1067, i32 2) #17
  %1104 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1105 = load i32* %1104, align 4, !tbaa !17
  %1106 = icmp sgt i32 %1105, 0
  br i1 %1106, label %.lr.ph421, label %.loopexit414

.lr.ph421:                                        ; preds = %1103
  %1107 = load i32* %1066, align 4, !tbaa !66
  %1108 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1109 = load float** %1108, align 8, !tbaa !71
  br label %1110

; <label>:1110                                    ; preds = %.lr.ph421, %1110
  %i67.0419 = phi i32 [ 0, %.lr.ph421 ], [ %1123, %1110 ]
  %1111 = mul nsw i32 %1107, %1105
  %1112 = add nsw i32 %1111, %i67.0419
  %1113 = sub nsw i32 %1112, %1105
  %1114 = sext i32 %1113 to i64
  %1115 = getelementptr inbounds float* %1109, i64 %1114
  %1116 = load float* %1115, align 4, !tbaa !1
  %1117 = shl nsw i32 %1105, 1
  %1118 = sub nsw i32 %1112, %1117
  %1119 = sext i32 %1118 to i64
  %1120 = getelementptr inbounds float* %1109, i64 %1119
  %1121 = load float* %1120, align 4, !tbaa !1
  %1122 = fsub float %1121, %1116
  store float %1122, float* %1120, align 4, !tbaa !1
  %1123 = add nsw i32 %i67.0419, 1
  %1124 = icmp slt i32 %1123, %1105
  br i1 %1124, label %1110, label %.loopexit414

.loopexit414:                                     ; preds = %1110, %1088, %1103, %1075
  %1125 = load i32* %1066, align 4, !tbaa !66
  %1126 = add nsw i32 %1125, -1
  store i32 %1126, i32* %1066, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1127                                    ; preds = %0
  %1128 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1129 = load i32* %1128, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1129, i32 4) #17
  %1130 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1131 = load i32* %1130, align 4, !tbaa !17
  %1132 = icmp sgt i32 %1131, 0
  %1133 = load i32* %1128, align 4, !tbaa !66
  br i1 %1132, label %.lr.ph425, label %._crit_edge426

.lr.ph425:                                        ; preds = %1127
  %1134 = shl nsw i32 %1131, 1
  %1135 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1136 = load float** %1135, align 8, !tbaa !71
  br label %1137

; <label>:1137                                    ; preds = %.lr.ph425, %1137
  %i69.0423 = phi i32 [ 0, %.lr.ph425 ], [ %1150, %1137 ]
  %1138 = mul nsw i32 %1133, %1131
  %1139 = add nsw i32 %1138, %i69.0423
  %1140 = sub nsw i32 %1139, %1134
  %1141 = sext i32 %1140 to i64
  %1142 = getelementptr inbounds float* %1136, i64 %1141
  %1143 = load float* %1142, align 4, !tbaa !1
  %1144 = shl nsw i32 %1131, 2
  %1145 = sub nsw i32 %1139, %1144
  %1146 = sext i32 %1145 to i64
  %1147 = getelementptr inbounds float* %1136, i64 %1146
  %1148 = load float* %1147, align 4, !tbaa !1
  %1149 = fsub float %1148, %1143
  store float %1149, float* %1147, align 4, !tbaa !1
  %1150 = add nsw i32 %i69.0423, 1
  %1151 = icmp slt i32 %1150, %1134
  br i1 %1151, label %1137, label %._crit_edge426

._crit_edge426:                                   ; preds = %1137, %1127
  %1152 = add nsw i32 %1133, -2
  store i32 %1152, i32* %1128, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1153                                    ; preds = %0
  %1154 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1155 = load i32* %1154, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1155, i32 6) #17
  %1156 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1157 = load i32* %1156, align 4, !tbaa !17
  %1158 = icmp sgt i32 %1157, 0
  %1159 = load i32* %1154, align 4, !tbaa !66
  br i1 %1158, label %.lr.ph431, label %._crit_edge432

.lr.ph431:                                        ; preds = %1153
  %1160 = mul nsw i32 %1157, 3
  %1161 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1162 = load float** %1161, align 8, !tbaa !71
  br label %1163

; <label>:1163                                    ; preds = %.lr.ph431, %1163
  %i71.0429 = phi i32 [ 0, %.lr.ph431 ], [ %1176, %1163 ]
  %1164 = mul nsw i32 %1159, %1157
  %1165 = add nsw i32 %1164, %i71.0429
  %1166 = sub nsw i32 %1165, %1160
  %1167 = sext i32 %1166 to i64
  %1168 = getelementptr inbounds float* %1162, i64 %1167
  %1169 = load float* %1168, align 4, !tbaa !1
  %1170 = mul i32 %1157, -6
  %1171 = add i32 %1165, %1170
  %1172 = sext i32 %1171 to i64
  %1173 = getelementptr inbounds float* %1162, i64 %1172
  %1174 = load float* %1173, align 4, !tbaa !1
  %1175 = fsub float %1174, %1169
  store float %1175, float* %1173, align 4, !tbaa !1
  %1176 = add nsw i32 %i71.0429, 1
  %1177 = icmp slt i32 %1176, %1160
  br i1 %1177, label %1163, label %._crit_edge432

._crit_edge432:                                   ; preds = %1163, %1153
  %1178 = add nsw i32 %1159, -3
  store i32 %1178, i32* %1154, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1179                                    ; preds = %0
  %1180 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1181 = load i32* %1180, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1181, i32 8) #17
  %1182 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1183 = load i32* %1182, align 4, !tbaa !17
  %1184 = icmp sgt i32 %1183, 0
  %1185 = load i32* %1180, align 4, !tbaa !66
  br i1 %1184, label %.lr.ph437, label %._crit_edge438

.lr.ph437:                                        ; preds = %1179
  %1186 = shl nsw i32 %1183, 2
  %1187 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1188 = load float** %1187, align 8, !tbaa !71
  br label %1189

; <label>:1189                                    ; preds = %.lr.ph437, %1189
  %i73.0435 = phi i32 [ 0, %.lr.ph437 ], [ %1202, %1189 ]
  %1190 = mul nsw i32 %1185, %1183
  %1191 = add nsw i32 %1190, %i73.0435
  %1192 = sub nsw i32 %1191, %1186
  %1193 = sext i32 %1192 to i64
  %1194 = getelementptr inbounds float* %1188, i64 %1193
  %1195 = load float* %1194, align 4, !tbaa !1
  %1196 = shl nsw i32 %1183, 3
  %1197 = sub nsw i32 %1191, %1196
  %1198 = sext i32 %1197 to i64
  %1199 = getelementptr inbounds float* %1188, i64 %1198
  %1200 = load float* %1199, align 4, !tbaa !1
  %1201 = fsub float %1200, %1195
  store float %1201, float* %1199, align 4, !tbaa !1
  %1202 = add nsw i32 %i73.0435, 1
  %1203 = icmp slt i32 %1202, %1186
  br i1 %1203, label %1189, label %._crit_edge438

._crit_edge438:                                   ; preds = %1189, %1179
  %1204 = add nsw i32 %1185, -4
  store i32 %1204, i32* %1180, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1205                                    ; preds = %0
  %1206 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1207 = load i32* %1206, align 4, !tbaa !66
  %1208 = add nsw i32 %1207, -2
  %1209 = sext i32 %1208 to i64
  %1210 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %1211 = load i32** %1210, align 8, !tbaa !69
  %1212 = getelementptr inbounds i32* %1211, i64 %1209
  %1213 = load i32* %1212, align 4, !tbaa !26
  %1214 = icmp eq i32 %1213, 1
  br i1 %1214, label %1215, label %1243

; <label>:1215                                    ; preds = %1205
  store i32 0, i32* %1212, align 4, !tbaa !26
  %1216 = load i32* %1206, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1216, i32 1) #17
  %1217 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1218 = load i32* %1217, align 4, !tbaa !17
  %1219 = icmp sgt i32 %1218, 0
  br i1 %1219, label %.lr.ph443, label %.loopexit440

.lr.ph443:                                        ; preds = %1215
  %1220 = load i32* %1206, align 4, !tbaa !66
  %1221 = add nsw i32 %1220, -2
  %1222 = sext i32 %1221 to i64
  %1223 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %1224 = load float** %1223, align 8, !tbaa !70
  %1225 = getelementptr inbounds float* %1224, i64 %1222
  %1226 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1227 = load float** %1226, align 8, !tbaa !71
  br label %1228

; <label>:1228                                    ; preds = %.lr.ph443, %1228
  %i75.0441 = phi i32 [ 0, %.lr.ph443 ], [ %1241, %1228 ]
  %1229 = mul nsw i32 %1220, %1218
  %1230 = add nsw i32 %1229, %i75.0441
  %1231 = load float* %1225, align 4, !tbaa !1
  %1232 = sub nsw i32 %1230, %1218
  %1233 = sext i32 %1232 to i64
  %1234 = getelementptr inbounds float* %1227, i64 %1233
  %1235 = load float* %1234, align 4, !tbaa !1
  %1236 = fmul float %1231, %1235
  %1237 = shl nsw i32 %1218, 1
  %1238 = sub nsw i32 %1230, %1237
  %1239 = sext i32 %1238 to i64
  %1240 = getelementptr inbounds float* %1227, i64 %1239
  store float %1236, float* %1240, align 4, !tbaa !1
  %1241 = add nsw i32 %i75.0441, 1
  %1242 = icmp slt i32 %1241, %1218
  br i1 %1242, label %1228, label %.loopexit440

; <label>:1243                                    ; preds = %1205
  %1244 = add nsw i32 %1207, -1
  %1245 = sext i32 %1244 to i64
  %1246 = getelementptr inbounds i32* %1211, i64 %1245
  %1247 = load i32* %1246, align 4, !tbaa !26
  %1248 = icmp eq i32 %1247, 1
  br i1 %1248, label %1249, label %1273

; <label>:1249                                    ; preds = %1243
  store i32 0, i32* %1246, align 4, !tbaa !26
  %1250 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1251 = load i32* %1250, align 4, !tbaa !17
  %1252 = icmp sgt i32 %1251, 0
  br i1 %1252, label %.lr.ph447, label %.loopexit440

.lr.ph447:                                        ; preds = %1249
  %1253 = load i32* %1206, align 4, !tbaa !66
  %1254 = add nsw i32 %1253, -1
  %1255 = sext i32 %1254 to i64
  %1256 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %1257 = load float** %1256, align 8, !tbaa !70
  %1258 = getelementptr inbounds float* %1257, i64 %1255
  %1259 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1260 = load float** %1259, align 8, !tbaa !71
  br label %1261

; <label>:1261                                    ; preds = %.lr.ph447, %1261
  %i77.0445 = phi i32 [ 0, %.lr.ph447 ], [ %1271, %1261 ]
  %1262 = mul nsw i32 %1253, %1251
  %1263 = load float* %1258, align 4, !tbaa !1
  %1264 = shl nsw i32 %1251, 1
  %1265 = sub i32 %i77.0445, %1264
  %1266 = add i32 %1265, %1262
  %1267 = sext i32 %1266 to i64
  %1268 = getelementptr inbounds float* %1260, i64 %1267
  %1269 = load float* %1268, align 4, !tbaa !1
  %1270 = fmul float %1263, %1269
  store float %1270, float* %1268, align 4, !tbaa !1
  %1271 = add nsw i32 %i77.0445, 1
  %1272 = icmp slt i32 %1271, %1251
  br i1 %1272, label %1261, label %.loopexit440

; <label>:1273                                    ; preds = %1243
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1207, i32 2) #17
  %1274 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1275 = load i32* %1274, align 4, !tbaa !17
  %1276 = icmp sgt i32 %1275, 0
  br i1 %1276, label %.lr.ph451, label %.loopexit440

.lr.ph451:                                        ; preds = %1273
  %1277 = load i32* %1206, align 4, !tbaa !66
  %1278 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1279 = load float** %1278, align 8, !tbaa !71
  br label %1280

; <label>:1280                                    ; preds = %.lr.ph451, %1280
  %i79.0449 = phi i32 [ 0, %.lr.ph451 ], [ %1293, %1280 ]
  %1281 = mul nsw i32 %1277, %1275
  %1282 = add nsw i32 %1281, %i79.0449
  %1283 = sub nsw i32 %1282, %1275
  %1284 = sext i32 %1283 to i64
  %1285 = getelementptr inbounds float* %1279, i64 %1284
  %1286 = load float* %1285, align 4, !tbaa !1
  %1287 = shl nsw i32 %1275, 1
  %1288 = sub nsw i32 %1282, %1287
  %1289 = sext i32 %1288 to i64
  %1290 = getelementptr inbounds float* %1279, i64 %1289
  %1291 = load float* %1290, align 4, !tbaa !1
  %1292 = fmul float %1286, %1291
  store float %1292, float* %1290, align 4, !tbaa !1
  %1293 = add nsw i32 %i79.0449, 1
  %1294 = icmp slt i32 %1293, %1275
  br i1 %1294, label %1280, label %.loopexit440

.loopexit440:                                     ; preds = %1280, %1261, %1228, %1273, %1249, %1215
  %1295 = load i32* %1206, align 4, !tbaa !66
  %1296 = add nsw i32 %1295, -1
  store i32 %1296, i32* %1206, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1297                                    ; preds = %0
  %1298 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1299 = load i32* %1298, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1299, i32 4) #17
  %1300 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1301 = load i32* %1300, align 4, !tbaa !17
  %1302 = icmp sgt i32 %1301, 0
  %1303 = load i32* %1298, align 4, !tbaa !66
  br i1 %1302, label %.lr.ph455, label %._crit_edge456

.lr.ph455:                                        ; preds = %1297
  %1304 = shl nsw i32 %1301, 1
  %1305 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1306 = load float** %1305, align 8, !tbaa !71
  br label %1307

; <label>:1307                                    ; preds = %.lr.ph455, %1307
  %i81.0453 = phi i32 [ 0, %.lr.ph455 ], [ %1320, %1307 ]
  %1308 = mul nsw i32 %1303, %1301
  %1309 = add nsw i32 %1308, %i81.0453
  %1310 = sub nsw i32 %1309, %1304
  %1311 = sext i32 %1310 to i64
  %1312 = getelementptr inbounds float* %1306, i64 %1311
  %1313 = load float* %1312, align 4, !tbaa !1
  %1314 = shl nsw i32 %1301, 2
  %1315 = sub nsw i32 %1309, %1314
  %1316 = sext i32 %1315 to i64
  %1317 = getelementptr inbounds float* %1306, i64 %1316
  %1318 = load float* %1317, align 4, !tbaa !1
  %1319 = fmul float %1313, %1318
  store float %1319, float* %1317, align 4, !tbaa !1
  %1320 = add nsw i32 %i81.0453, 1
  %1321 = icmp slt i32 %1320, %1304
  br i1 %1321, label %1307, label %._crit_edge456

._crit_edge456:                                   ; preds = %1307, %1297
  %1322 = add nsw i32 %1303, -2
  store i32 %1322, i32* %1298, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1323                                    ; preds = %0
  %1324 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1325 = load i32* %1324, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1325, i32 6) #17
  %1326 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1327 = load i32* %1326, align 4, !tbaa !17
  %1328 = icmp sgt i32 %1327, 0
  %1329 = load i32* %1324, align 4, !tbaa !66
  br i1 %1328, label %.lr.ph461, label %._crit_edge462

.lr.ph461:                                        ; preds = %1323
  %1330 = mul nsw i32 %1327, 3
  %1331 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1332 = load float** %1331, align 8, !tbaa !71
  br label %1333

; <label>:1333                                    ; preds = %.lr.ph461, %1333
  %i83.0459 = phi i32 [ 0, %.lr.ph461 ], [ %1346, %1333 ]
  %1334 = mul nsw i32 %1329, %1327
  %1335 = add nsw i32 %1334, %i83.0459
  %1336 = sub nsw i32 %1335, %1330
  %1337 = sext i32 %1336 to i64
  %1338 = getelementptr inbounds float* %1332, i64 %1337
  %1339 = load float* %1338, align 4, !tbaa !1
  %1340 = mul i32 %1327, -6
  %1341 = add i32 %1335, %1340
  %1342 = sext i32 %1341 to i64
  %1343 = getelementptr inbounds float* %1332, i64 %1342
  %1344 = load float* %1343, align 4, !tbaa !1
  %1345 = fmul float %1339, %1344
  store float %1345, float* %1343, align 4, !tbaa !1
  %1346 = add nsw i32 %i83.0459, 1
  %1347 = icmp slt i32 %1346, %1330
  br i1 %1347, label %1333, label %._crit_edge462

._crit_edge462:                                   ; preds = %1333, %1323
  %1348 = add nsw i32 %1329, -3
  store i32 %1348, i32* %1324, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1349                                    ; preds = %0
  %1350 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1351 = load i32* %1350, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1351, i32 8) #17
  %1352 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1353 = load i32* %1352, align 4, !tbaa !17
  %1354 = icmp sgt i32 %1353, 0
  %1355 = load i32* %1350, align 4, !tbaa !66
  br i1 %1354, label %.lr.ph467, label %._crit_edge468

.lr.ph467:                                        ; preds = %1349
  %1356 = shl nsw i32 %1353, 2
  %1357 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1358 = load float** %1357, align 8, !tbaa !71
  br label %1359

; <label>:1359                                    ; preds = %.lr.ph467, %1359
  %i85.0465 = phi i32 [ 0, %.lr.ph467 ], [ %1372, %1359 ]
  %1360 = mul nsw i32 %1355, %1353
  %1361 = add nsw i32 %1360, %i85.0465
  %1362 = sub nsw i32 %1361, %1356
  %1363 = sext i32 %1362 to i64
  %1364 = getelementptr inbounds float* %1358, i64 %1363
  %1365 = load float* %1364, align 4, !tbaa !1
  %1366 = shl nsw i32 %1353, 3
  %1367 = sub nsw i32 %1361, %1366
  %1368 = sext i32 %1367 to i64
  %1369 = getelementptr inbounds float* %1358, i64 %1368
  %1370 = load float* %1369, align 4, !tbaa !1
  %1371 = fmul float %1365, %1370
  store float %1371, float* %1369, align 4, !tbaa !1
  %1372 = add nsw i32 %i85.0465, 1
  %1373 = icmp slt i32 %1372, %1356
  br i1 %1373, label %1359, label %._crit_edge468

._crit_edge468:                                   ; preds = %1359, %1349
  %1374 = add nsw i32 %1355, -4
  store i32 %1374, i32* %1350, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1375                                    ; preds = %0
  %1376 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1377 = load i32* %1376, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1377, i32 3) #17
  %1378 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1379 = load i32* %1378, align 4, !tbaa !17
  %1380 = icmp sgt i32 %1379, 0
  %1381 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  br label %.preheader470

.preheader470:                                    ; preds = %._crit_edge473, %1375
  %j87.0474 = phi i32 [ 0, %1375 ], [ %1400, %._crit_edge473 ]
  br i1 %1380, label %.lr.ph472, label %._crit_edge473

.lr.ph472:                                        ; preds = %.preheader470
  %1382 = load i32* %1376, align 4, !tbaa !66
  %1383 = load float** %1381, align 8, !tbaa !71
  %1384 = sub nsw i32 3, %j87.0474
  br label %1385

; <label>:1385                                    ; preds = %.lr.ph472, %1385
  %i88.0471 = phi i32 [ 0, %.lr.ph472 ], [ %1398, %1385 ]
  %1386 = mul nsw i32 %1382, %1379
  %1387 = add nsw i32 %1386, %i88.0471
  %1388 = sub nsw i32 %1387, %1379
  %1389 = sext i32 %1388 to i64
  %1390 = getelementptr inbounds float* %1383, i64 %1389
  %1391 = load float* %1390, align 4, !tbaa !1
  %1392 = mul nsw i32 %1379, %1384
  %1393 = sub nsw i32 %1387, %1392
  %1394 = sext i32 %1393 to i64
  %1395 = getelementptr inbounds float* %1383, i64 %1394
  %1396 = load float* %1395, align 4, !tbaa !1
  %1397 = fmul float %1391, %1396
  store float %1397, float* %1395, align 4, !tbaa !1
  %1398 = add nsw i32 %i88.0471, 1
  %1399 = icmp slt i32 %1398, %1379
  br i1 %1399, label %1385, label %._crit_edge473

._crit_edge473:                                   ; preds = %1385, %.preheader470
  %1400 = add nsw i32 %j87.0474, 1
  %exitcond751 = icmp eq i32 %1400, 2
  br i1 %exitcond751, label %1401, label %.preheader470

; <label>:1401                                    ; preds = %._crit_edge473
  %1402 = load i32* %1376, align 4, !tbaa !66
  %1403 = add nsw i32 %1402, -1
  store i32 %1403, i32* %1376, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1404                                    ; preds = %0
  %1405 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1406 = load i32* %1405, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1406, i32 4) #17
  %1407 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1408 = load i32* %1407, align 4, !tbaa !17
  %1409 = icmp sgt i32 %1408, 0
  %1410 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  br label %.preheader475

.preheader475:                                    ; preds = %._crit_edge478, %1404
  %j90.0479 = phi i32 [ 0, %1404 ], [ %1429, %._crit_edge478 ]
  br i1 %1409, label %.lr.ph477, label %._crit_edge478

.lr.ph477:                                        ; preds = %.preheader475
  %1411 = load i32* %1405, align 4, !tbaa !66
  %1412 = load float** %1410, align 8, !tbaa !71
  %1413 = sub nsw i32 4, %j90.0479
  br label %1414

; <label>:1414                                    ; preds = %.lr.ph477, %1414
  %i91.0476 = phi i32 [ 0, %.lr.ph477 ], [ %1427, %1414 ]
  %1415 = mul nsw i32 %1411, %1408
  %1416 = add nsw i32 %1415, %i91.0476
  %1417 = sub nsw i32 %1416, %1408
  %1418 = sext i32 %1417 to i64
  %1419 = getelementptr inbounds float* %1412, i64 %1418
  %1420 = load float* %1419, align 4, !tbaa !1
  %1421 = mul nsw i32 %1408, %1413
  %1422 = sub nsw i32 %1416, %1421
  %1423 = sext i32 %1422 to i64
  %1424 = getelementptr inbounds float* %1412, i64 %1423
  %1425 = load float* %1424, align 4, !tbaa !1
  %1426 = fmul float %1420, %1425
  store float %1426, float* %1424, align 4, !tbaa !1
  %1427 = add nsw i32 %i91.0476, 1
  %1428 = icmp slt i32 %1427, %1408
  br i1 %1428, label %1414, label %._crit_edge478

._crit_edge478:                                   ; preds = %1414, %.preheader475
  %1429 = add nsw i32 %j90.0479, 1
  %exitcond752 = icmp eq i32 %1429, 3
  br i1 %exitcond752, label %1430, label %.preheader475

; <label>:1430                                    ; preds = %._crit_edge478
  %1431 = load i32* %1405, align 4, !tbaa !66
  %1432 = add nsw i32 %1431, -1
  store i32 %1432, i32* %1405, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1433                                    ; preds = %0
  %1434 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1435 = load i32* %1434, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1435, i32 5) #17
  %1436 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1437 = load i32* %1436, align 4, !tbaa !17
  %1438 = icmp sgt i32 %1437, 0
  %1439 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  br label %.preheader480

.preheader480:                                    ; preds = %._crit_edge483, %1433
  %j93.0484 = phi i32 [ 0, %1433 ], [ %1458, %._crit_edge483 ]
  br i1 %1438, label %.lr.ph482, label %._crit_edge483

.lr.ph482:                                        ; preds = %.preheader480
  %1440 = load i32* %1434, align 4, !tbaa !66
  %1441 = load float** %1439, align 8, !tbaa !71
  %1442 = sub nsw i32 5, %j93.0484
  br label %1443

; <label>:1443                                    ; preds = %.lr.ph482, %1443
  %i94.0481 = phi i32 [ 0, %.lr.ph482 ], [ %1456, %1443 ]
  %1444 = mul nsw i32 %1440, %1437
  %1445 = add nsw i32 %1444, %i94.0481
  %1446 = sub nsw i32 %1445, %1437
  %1447 = sext i32 %1446 to i64
  %1448 = getelementptr inbounds float* %1441, i64 %1447
  %1449 = load float* %1448, align 4, !tbaa !1
  %1450 = mul nsw i32 %1437, %1442
  %1451 = sub nsw i32 %1445, %1450
  %1452 = sext i32 %1451 to i64
  %1453 = getelementptr inbounds float* %1441, i64 %1452
  %1454 = load float* %1453, align 4, !tbaa !1
  %1455 = fmul float %1449, %1454
  store float %1455, float* %1453, align 4, !tbaa !1
  %1456 = add nsw i32 %i94.0481, 1
  %1457 = icmp slt i32 %1456, %1437
  br i1 %1457, label %1443, label %._crit_edge483

._crit_edge483:                                   ; preds = %1443, %.preheader480
  %1458 = add nsw i32 %j93.0484, 1
  %exitcond753 = icmp eq i32 %1458, 4
  br i1 %exitcond753, label %1459, label %.preheader480

; <label>:1459                                    ; preds = %._crit_edge483
  %1460 = load i32* %1434, align 4, !tbaa !66
  %1461 = add nsw i32 %1460, -1
  store i32 %1461, i32* %1434, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1462                                    ; preds = %0
  %1463 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1464 = load i32* %1463, align 4, !tbaa !66
  %1465 = add nsw i32 %1464, -2
  %1466 = sext i32 %1465 to i64
  %1467 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %1468 = load i32** %1467, align 8, !tbaa !69
  %1469 = getelementptr inbounds i32* %1468, i64 %1466
  %1470 = load i32* %1469, align 4, !tbaa !26
  %1471 = icmp eq i32 %1470, 1
  br i1 %1471, label %1472, label %1500

; <label>:1472                                    ; preds = %1462
  store i32 0, i32* %1469, align 4, !tbaa !26
  %1473 = load i32* %1463, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1473, i32 1) #17
  %1474 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1475 = load i32* %1474, align 4, !tbaa !17
  %1476 = icmp sgt i32 %1475, 0
  br i1 %1476, label %.lr.ph488, label %.loopexit485

.lr.ph488:                                        ; preds = %1472
  %1477 = load i32* %1463, align 4, !tbaa !66
  %1478 = add nsw i32 %1477, -2
  %1479 = sext i32 %1478 to i64
  %1480 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %1481 = load float** %1480, align 8, !tbaa !70
  %1482 = getelementptr inbounds float* %1481, i64 %1479
  %1483 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1484 = load float** %1483, align 8, !tbaa !71
  br label %1485

; <label>:1485                                    ; preds = %.lr.ph488, %1485
  %i96.0486 = phi i32 [ 0, %.lr.ph488 ], [ %1498, %1485 ]
  %1486 = mul nsw i32 %1477, %1475
  %1487 = add nsw i32 %1486, %i96.0486
  %1488 = load float* %1482, align 4, !tbaa !1
  %1489 = sub nsw i32 %1487, %1475
  %1490 = sext i32 %1489 to i64
  %1491 = getelementptr inbounds float* %1484, i64 %1490
  %1492 = load float* %1491, align 4, !tbaa !1
  %1493 = fdiv float %1488, %1492
  %1494 = shl nsw i32 %1475, 1
  %1495 = sub nsw i32 %1487, %1494
  %1496 = sext i32 %1495 to i64
  %1497 = getelementptr inbounds float* %1484, i64 %1496
  store float %1493, float* %1497, align 4, !tbaa !1
  %1498 = add nsw i32 %i96.0486, 1
  %1499 = icmp slt i32 %1498, %1475
  br i1 %1499, label %1485, label %.loopexit485

; <label>:1500                                    ; preds = %1462
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1464, i32 2) #17
  %1501 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1502 = load i32* %1501, align 4, !tbaa !17
  %1503 = icmp sgt i32 %1502, 0
  br i1 %1503, label %.lr.ph492, label %.loopexit485

.lr.ph492:                                        ; preds = %1500
  %1504 = load i32* %1463, align 4, !tbaa !66
  %1505 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1506 = load float** %1505, align 8, !tbaa !71
  br label %1507

; <label>:1507                                    ; preds = %.lr.ph492, %1507
  %i98.0490 = phi i32 [ 0, %.lr.ph492 ], [ %1520, %1507 ]
  %1508 = mul nsw i32 %1504, %1502
  %1509 = add nsw i32 %1508, %i98.0490
  %1510 = sub nsw i32 %1509, %1502
  %1511 = sext i32 %1510 to i64
  %1512 = getelementptr inbounds float* %1506, i64 %1511
  %1513 = load float* %1512, align 4, !tbaa !1
  %1514 = shl nsw i32 %1502, 1
  %1515 = sub nsw i32 %1509, %1514
  %1516 = sext i32 %1515 to i64
  %1517 = getelementptr inbounds float* %1506, i64 %1516
  %1518 = load float* %1517, align 4, !tbaa !1
  %1519 = fdiv float %1518, %1513
  store float %1519, float* %1517, align 4, !tbaa !1
  %1520 = add nsw i32 %i98.0490, 1
  %1521 = icmp slt i32 %1520, %1502
  br i1 %1521, label %1507, label %.loopexit485

.loopexit485:                                     ; preds = %1507, %1485, %1500, %1472
  %1522 = load i32* %1463, align 4, !tbaa !66
  %1523 = add nsw i32 %1522, -1
  store i32 %1523, i32* %1463, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1524                                    ; preds = %0
  %1525 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1526 = load i32* %1525, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1526, i32 4) #17
  %1527 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1528 = load i32* %1527, align 4, !tbaa !17
  %1529 = icmp sgt i32 %1528, 0
  %1530 = load i32* %1525, align 4, !tbaa !66
  br i1 %1529, label %.lr.ph496, label %._crit_edge497

.lr.ph496:                                        ; preds = %1524
  %1531 = shl nsw i32 %1528, 1
  %1532 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1533 = load float** %1532, align 8, !tbaa !71
  br label %1534

; <label>:1534                                    ; preds = %.lr.ph496, %1534
  %i100.0494 = phi i32 [ 0, %.lr.ph496 ], [ %1547, %1534 ]
  %1535 = mul nsw i32 %1530, %1528
  %1536 = add nsw i32 %1535, %i100.0494
  %1537 = sub nsw i32 %1536, %1531
  %1538 = sext i32 %1537 to i64
  %1539 = getelementptr inbounds float* %1533, i64 %1538
  %1540 = load float* %1539, align 4, !tbaa !1
  %1541 = shl nsw i32 %1528, 2
  %1542 = sub nsw i32 %1536, %1541
  %1543 = sext i32 %1542 to i64
  %1544 = getelementptr inbounds float* %1533, i64 %1543
  %1545 = load float* %1544, align 4, !tbaa !1
  %1546 = fdiv float %1545, %1540
  store float %1546, float* %1544, align 4, !tbaa !1
  %1547 = add nsw i32 %i100.0494, 1
  %1548 = icmp slt i32 %1547, %1531
  br i1 %1548, label %1534, label %._crit_edge497

._crit_edge497:                                   ; preds = %1534, %1524
  %1549 = add nsw i32 %1530, -2
  store i32 %1549, i32* %1525, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1550                                    ; preds = %0
  %1551 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1552 = load i32* %1551, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1552, i32 6) #17
  %1553 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1554 = load i32* %1553, align 4, !tbaa !17
  %1555 = icmp sgt i32 %1554, 0
  %1556 = load i32* %1551, align 4, !tbaa !66
  br i1 %1555, label %.lr.ph502, label %._crit_edge503

.lr.ph502:                                        ; preds = %1550
  %1557 = mul nsw i32 %1554, 3
  %1558 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1559 = load float** %1558, align 8, !tbaa !71
  br label %1560

; <label>:1560                                    ; preds = %.lr.ph502, %1560
  %i102.0500 = phi i32 [ 0, %.lr.ph502 ], [ %1573, %1560 ]
  %1561 = mul nsw i32 %1556, %1554
  %1562 = add nsw i32 %1561, %i102.0500
  %1563 = sub nsw i32 %1562, %1557
  %1564 = sext i32 %1563 to i64
  %1565 = getelementptr inbounds float* %1559, i64 %1564
  %1566 = load float* %1565, align 4, !tbaa !1
  %1567 = mul i32 %1554, -6
  %1568 = add i32 %1562, %1567
  %1569 = sext i32 %1568 to i64
  %1570 = getelementptr inbounds float* %1559, i64 %1569
  %1571 = load float* %1570, align 4, !tbaa !1
  %1572 = fdiv float %1571, %1566
  store float %1572, float* %1570, align 4, !tbaa !1
  %1573 = add nsw i32 %i102.0500, 1
  %1574 = icmp slt i32 %1573, %1557
  br i1 %1574, label %1560, label %._crit_edge503

._crit_edge503:                                   ; preds = %1560, %1550
  %1575 = add nsw i32 %1556, -3
  store i32 %1575, i32* %1551, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1576                                    ; preds = %0
  %1577 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1578 = load i32* %1577, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1578, i32 8) #17
  %1579 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1580 = load i32* %1579, align 4, !tbaa !17
  %1581 = icmp sgt i32 %1580, 0
  %1582 = load i32* %1577, align 4, !tbaa !66
  br i1 %1581, label %.lr.ph508, label %._crit_edge509

.lr.ph508:                                        ; preds = %1576
  %1583 = shl nsw i32 %1580, 2
  %1584 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1585 = load float** %1584, align 8, !tbaa !71
  br label %1586

; <label>:1586                                    ; preds = %.lr.ph508, %1586
  %i104.0506 = phi i32 [ 0, %.lr.ph508 ], [ %1599, %1586 ]
  %1587 = mul nsw i32 %1582, %1580
  %1588 = add nsw i32 %1587, %i104.0506
  %1589 = sub nsw i32 %1588, %1583
  %1590 = sext i32 %1589 to i64
  %1591 = getelementptr inbounds float* %1585, i64 %1590
  %1592 = load float* %1591, align 4, !tbaa !1
  %1593 = shl nsw i32 %1580, 3
  %1594 = sub nsw i32 %1588, %1593
  %1595 = sext i32 %1594 to i64
  %1596 = getelementptr inbounds float* %1585, i64 %1595
  %1597 = load float* %1596, align 4, !tbaa !1
  %1598 = fdiv float %1597, %1592
  store float %1598, float* %1596, align 4, !tbaa !1
  %1599 = add nsw i32 %i104.0506, 1
  %1600 = icmp slt i32 %1599, %1583
  br i1 %1600, label %1586, label %._crit_edge509

._crit_edge509:                                   ; preds = %1586, %1576
  %1601 = add nsw i32 %1582, -4
  store i32 %1601, i32* %1577, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1602                                    ; preds = %0
  %1603 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1604 = load i32* %1603, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1604, i32 2) #17
  %1605 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1606 = load i32* %1605, align 4, !tbaa !17
  %1607 = icmp sgt i32 %1606, 0
  %1608 = load i32* %1603, align 4, !tbaa !66
  br i1 %1607, label %.lr.ph514, label %._crit_edge515

.lr.ph514:                                        ; preds = %1602
  %1609 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1610 = load float** %1609, align 8, !tbaa !71
  br label %1611

; <label>:1611                                    ; preds = %.lr.ph514, %1611
  %i106.0512 = phi i32 [ 0, %.lr.ph514 ], [ %1627, %1611 ]
  %1612 = mul nsw i32 %1608, %1606
  %1613 = add nsw i32 %1612, %i106.0512
  %1614 = shl nsw i32 %1606, 1
  %1615 = sub nsw i32 %1613, %1614
  %1616 = sext i32 %1615 to i64
  %1617 = getelementptr inbounds float* %1610, i64 %1616
  %1618 = sub nsw i32 %1613, %1606
  %1619 = sext i32 %1618 to i64
  %1620 = getelementptr inbounds float* %1610, i64 %1619
  %1621 = load float* %1620, align 4, !tbaa !1
  %1622 = load float* %1617, align 4, !tbaa !1
  %1623 = fdiv float %1622, %1621
  %1624 = tail call float @floorf(float %1623) #16
  %1625 = fmul float %1621, %1624
  %1626 = fsub float %1622, %1625
  store float %1626, float* %1617, align 4, !tbaa !1
  %1627 = add nsw i32 %i106.0512, 1
  %1628 = icmp slt i32 %1627, %1606
  br i1 %1628, label %1611, label %._crit_edge515

._crit_edge515:                                   ; preds = %1611, %1602
  %1629 = add nsw i32 %1608, -1
  store i32 %1629, i32* %1603, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1630                                    ; preds = %0
  %1631 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1632 = load i32* %1631, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1632, i32 4) #17
  %1633 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1634 = load i32* %1633, align 4, !tbaa !17
  %1635 = icmp sgt i32 %1634, 0
  %1636 = load i32* %1631, align 4, !tbaa !66
  br i1 %1635, label %.lr.ph520, label %._crit_edge521

.lr.ph520:                                        ; preds = %1630
  %1637 = shl nsw i32 %1634, 1
  %1638 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1639 = load float** %1638, align 8, !tbaa !71
  br label %1640

; <label>:1640                                    ; preds = %.lr.ph520, %1640
  %i108.0518 = phi i32 [ 0, %.lr.ph520 ], [ %1656, %1640 ]
  %1641 = mul nsw i32 %1636, %1634
  %1642 = add nsw i32 %1641, %i108.0518
  %1643 = shl nsw i32 %1634, 2
  %1644 = sub nsw i32 %1642, %1643
  %1645 = sext i32 %1644 to i64
  %1646 = getelementptr inbounds float* %1639, i64 %1645
  %1647 = sub nsw i32 %1642, %1637
  %1648 = sext i32 %1647 to i64
  %1649 = getelementptr inbounds float* %1639, i64 %1648
  %1650 = load float* %1649, align 4, !tbaa !1
  %1651 = load float* %1646, align 4, !tbaa !1
  %1652 = fdiv float %1651, %1650
  %1653 = tail call float @floorf(float %1652) #16
  %1654 = fmul float %1650, %1653
  %1655 = fsub float %1651, %1654
  store float %1655, float* %1646, align 4, !tbaa !1
  %1656 = add nsw i32 %i108.0518, 1
  %1657 = icmp slt i32 %1656, %1637
  br i1 %1657, label %1640, label %._crit_edge521

._crit_edge521:                                   ; preds = %1640, %1630
  %1658 = add nsw i32 %1636, -2
  store i32 %1658, i32* %1631, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1659                                    ; preds = %0
  %1660 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1661 = load i32* %1660, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1661, i32 6) #17
  %1662 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1663 = load i32* %1662, align 4, !tbaa !17
  %1664 = icmp sgt i32 %1663, 0
  %1665 = load i32* %1660, align 4, !tbaa !66
  br i1 %1664, label %.lr.ph526, label %._crit_edge527

.lr.ph526:                                        ; preds = %1659
  %1666 = mul nsw i32 %1663, 3
  %1667 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1668 = load float** %1667, align 8, !tbaa !71
  br label %1669

; <label>:1669                                    ; preds = %.lr.ph526, %1669
  %i110.0524 = phi i32 [ 0, %.lr.ph526 ], [ %1685, %1669 ]
  %1670 = mul nsw i32 %1665, %1663
  %1671 = add nsw i32 %1670, %i110.0524
  %1672 = mul i32 %1663, -6
  %1673 = add i32 %1671, %1672
  %1674 = sext i32 %1673 to i64
  %1675 = getelementptr inbounds float* %1668, i64 %1674
  %1676 = sub nsw i32 %1671, %1666
  %1677 = sext i32 %1676 to i64
  %1678 = getelementptr inbounds float* %1668, i64 %1677
  %1679 = load float* %1678, align 4, !tbaa !1
  %1680 = load float* %1675, align 4, !tbaa !1
  %1681 = fdiv float %1680, %1679
  %1682 = tail call float @floorf(float %1681) #16
  %1683 = fmul float %1679, %1682
  %1684 = fsub float %1680, %1683
  store float %1684, float* %1675, align 4, !tbaa !1
  %1685 = add nsw i32 %i110.0524, 1
  %1686 = icmp slt i32 %1685, %1666
  br i1 %1686, label %1669, label %._crit_edge527

._crit_edge527:                                   ; preds = %1669, %1659
  %1687 = add nsw i32 %1665, -3
  store i32 %1687, i32* %1660, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1688                                    ; preds = %0
  %1689 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1690 = load i32* %1689, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1690, i32 8) #17
  %1691 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1692 = load i32* %1691, align 4, !tbaa !17
  %1693 = icmp sgt i32 %1692, 0
  %1694 = load i32* %1689, align 4, !tbaa !66
  br i1 %1693, label %.lr.ph532, label %._crit_edge533

.lr.ph532:                                        ; preds = %1688
  %1695 = shl nsw i32 %1692, 2
  %1696 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1697 = load float** %1696, align 8, !tbaa !71
  br label %1698

; <label>:1698                                    ; preds = %.lr.ph532, %1698
  %i112.0530 = phi i32 [ 0, %.lr.ph532 ], [ %1714, %1698 ]
  %1699 = mul nsw i32 %1694, %1692
  %1700 = add nsw i32 %1699, %i112.0530
  %1701 = shl nsw i32 %1692, 3
  %1702 = sub nsw i32 %1700, %1701
  %1703 = sext i32 %1702 to i64
  %1704 = getelementptr inbounds float* %1697, i64 %1703
  %1705 = sub nsw i32 %1700, %1695
  %1706 = sext i32 %1705 to i64
  %1707 = getelementptr inbounds float* %1697, i64 %1706
  %1708 = load float* %1707, align 4, !tbaa !1
  %1709 = load float* %1704, align 4, !tbaa !1
  %1710 = fdiv float %1709, %1708
  %1711 = tail call float @floorf(float %1710) #16
  %1712 = fmul float %1708, %1711
  %1713 = fsub float %1709, %1712
  store float %1713, float* %1704, align 4, !tbaa !1
  %1714 = add nsw i32 %i112.0530, 1
  %1715 = icmp slt i32 %1714, %1695
  br i1 %1715, label %1698, label %._crit_edge533

._crit_edge533:                                   ; preds = %1698, %1688
  %1716 = add nsw i32 %1694, -4
  store i32 %1716, i32* %1689, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1717                                    ; preds = %0
  %1718 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1719 = load i32* %1718, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1719, i32 2) #17
  %1720 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1721 = load i32* %1720, align 4, !tbaa !17
  %1722 = icmp sgt i32 %1721, 0
  %1723 = load i32* %1718, align 4, !tbaa !66
  br i1 %1722, label %.lr.ph538, label %._crit_edge539

.lr.ph538:                                        ; preds = %1717
  %1724 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1725 = load float** %1724, align 8, !tbaa !71
  br label %1726

; <label>:1726                                    ; preds = %.lr.ph538, %1726
  %i114.0536 = phi i32 [ 0, %.lr.ph538 ], [ %1739, %1726 ]
  %1727 = mul nsw i32 %1723, %1721
  %1728 = add nsw i32 %1727, %i114.0536
  %1729 = shl nsw i32 %1721, 1
  %1730 = sub nsw i32 %1728, %1729
  %1731 = sext i32 %1730 to i64
  %1732 = getelementptr inbounds float* %1725, i64 %1731
  %1733 = load float* %1732, align 4, !tbaa !1
  %1734 = sub nsw i32 %1728, %1721
  %1735 = sext i32 %1734 to i64
  %1736 = getelementptr inbounds float* %1725, i64 %1735
  %1737 = load float* %1736, align 4, !tbaa !1
  %1738 = tail call float @powf(float %1733, float %1737) #16
  store float %1738, float* %1732, align 4, !tbaa !1
  %1739 = add nsw i32 %i114.0536, 1
  %1740 = icmp slt i32 %1739, %1721
  br i1 %1740, label %1726, label %._crit_edge539

._crit_edge539:                                   ; preds = %1726, %1717
  %1741 = add nsw i32 %1723, -1
  store i32 %1741, i32* %1718, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1742                                    ; preds = %0
  %1743 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1744 = load i32* %1743, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1744, i32 4) #17
  %1745 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1746 = load i32* %1745, align 4, !tbaa !17
  %1747 = icmp sgt i32 %1746, 0
  %1748 = load i32* %1743, align 4, !tbaa !66
  br i1 %1747, label %.lr.ph544, label %._crit_edge545

.lr.ph544:                                        ; preds = %1742
  %1749 = shl nsw i32 %1746, 1
  %1750 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1751 = load float** %1750, align 8, !tbaa !71
  br label %1752

; <label>:1752                                    ; preds = %.lr.ph544, %1752
  %i116.0542 = phi i32 [ 0, %.lr.ph544 ], [ %1765, %1752 ]
  %1753 = mul nsw i32 %1748, %1746
  %1754 = add nsw i32 %1753, %i116.0542
  %1755 = shl nsw i32 %1746, 2
  %1756 = sub nsw i32 %1754, %1755
  %1757 = sext i32 %1756 to i64
  %1758 = getelementptr inbounds float* %1751, i64 %1757
  %1759 = load float* %1758, align 4, !tbaa !1
  %1760 = sub nsw i32 %1754, %1749
  %1761 = sext i32 %1760 to i64
  %1762 = getelementptr inbounds float* %1751, i64 %1761
  %1763 = load float* %1762, align 4, !tbaa !1
  %1764 = tail call float @powf(float %1759, float %1763) #16
  store float %1764, float* %1758, align 4, !tbaa !1
  %1765 = add nsw i32 %i116.0542, 1
  %1766 = icmp slt i32 %1765, %1749
  br i1 %1766, label %1752, label %._crit_edge545

._crit_edge545:                                   ; preds = %1752, %1742
  %1767 = add nsw i32 %1748, -2
  store i32 %1767, i32* %1743, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1768                                    ; preds = %0
  %1769 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1770 = load i32* %1769, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1770, i32 6) #17
  %1771 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1772 = load i32* %1771, align 4, !tbaa !17
  %1773 = icmp sgt i32 %1772, 0
  %1774 = load i32* %1769, align 4, !tbaa !66
  br i1 %1773, label %.lr.ph550, label %._crit_edge551

.lr.ph550:                                        ; preds = %1768
  %1775 = mul nsw i32 %1772, 3
  %1776 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1777 = load float** %1776, align 8, !tbaa !71
  br label %1778

; <label>:1778                                    ; preds = %.lr.ph550, %1778
  %i118.0548 = phi i32 [ 0, %.lr.ph550 ], [ %1791, %1778 ]
  %1779 = mul nsw i32 %1774, %1772
  %1780 = add nsw i32 %1779, %i118.0548
  %1781 = mul i32 %1772, -6
  %1782 = add i32 %1780, %1781
  %1783 = sext i32 %1782 to i64
  %1784 = getelementptr inbounds float* %1777, i64 %1783
  %1785 = load float* %1784, align 4, !tbaa !1
  %1786 = sub nsw i32 %1780, %1775
  %1787 = sext i32 %1786 to i64
  %1788 = getelementptr inbounds float* %1777, i64 %1787
  %1789 = load float* %1788, align 4, !tbaa !1
  %1790 = tail call float @powf(float %1785, float %1789) #16
  store float %1790, float* %1784, align 4, !tbaa !1
  %1791 = add nsw i32 %i118.0548, 1
  %1792 = icmp slt i32 %1791, %1775
  br i1 %1792, label %1778, label %._crit_edge551

._crit_edge551:                                   ; preds = %1778, %1768
  %1793 = add nsw i32 %1774, -3
  store i32 %1793, i32* %1769, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1794                                    ; preds = %0
  %1795 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1796 = load i32* %1795, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1796, i32 8) #17
  %1797 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1798 = load i32* %1797, align 4, !tbaa !17
  %1799 = icmp sgt i32 %1798, 0
  %1800 = load i32* %1795, align 4, !tbaa !66
  br i1 %1799, label %.lr.ph556, label %._crit_edge557

.lr.ph556:                                        ; preds = %1794
  %1801 = shl nsw i32 %1798, 2
  %1802 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1803 = load float** %1802, align 8, !tbaa !71
  br label %1804

; <label>:1804                                    ; preds = %.lr.ph556, %1804
  %i120.0554 = phi i32 [ 0, %.lr.ph556 ], [ %1817, %1804 ]
  %1805 = mul nsw i32 %1800, %1798
  %1806 = add nsw i32 %1805, %i120.0554
  %1807 = shl nsw i32 %1798, 3
  %1808 = sub nsw i32 %1806, %1807
  %1809 = sext i32 %1808 to i64
  %1810 = getelementptr inbounds float* %1803, i64 %1809
  %1811 = load float* %1810, align 4, !tbaa !1
  %1812 = sub nsw i32 %1806, %1801
  %1813 = sext i32 %1812 to i64
  %1814 = getelementptr inbounds float* %1803, i64 %1813
  %1815 = load float* %1814, align 4, !tbaa !1
  %1816 = tail call float @powf(float %1811, float %1815) #16
  store float %1816, float* %1810, align 4, !tbaa !1
  %1817 = add nsw i32 %i120.0554, 1
  %1818 = icmp slt i32 %1817, %1801
  br i1 %1818, label %1804, label %._crit_edge557

._crit_edge557:                                   ; preds = %1804, %1794
  %1819 = add nsw i32 %1800, -4
  store i32 %1819, i32* %1795, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1820                                    ; preds = %0
  %1821 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1822 = load i32* %1821, align 4, !tbaa !66
  %1823 = add nsw i32 %1822, -3
  %1824 = sext i32 %1823 to i64
  %1825 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %1826 = load i32** %1825, align 8, !tbaa !69
  %1827 = getelementptr inbounds i32* %1826, i64 %1824
  %1828 = load i32* %1827, align 4, !tbaa !26
  %1829 = icmp eq i32 %1828, 1
  br i1 %1829, label %1830, label %1873

; <label>:1830                                    ; preds = %1820
  %1831 = add nsw i32 %1822, -2
  %1832 = sext i32 %1831 to i64
  %1833 = getelementptr inbounds i32* %1826, i64 %1832
  %1834 = load i32* %1833, align 4, !tbaa !26
  %1835 = icmp eq i32 %1834, 1
  br i1 %1835, label %1836, label %1873

; <label>:1836                                    ; preds = %1830
  store i32 0, i32* %1827, align 4, !tbaa !26
  %1837 = load i32* %1821, align 4, !tbaa !66
  %1838 = add nsw i32 %1837, -2
  %1839 = sext i32 %1838 to i64
  %1840 = getelementptr inbounds i32* %1826, i64 %1839
  store i32 0, i32* %1840, align 4, !tbaa !26
  %1841 = load i32* %1821, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1841, i32 1) #17
  %1842 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1843 = load i32* %1842, align 4, !tbaa !17
  %1844 = icmp sgt i32 %1843, 0
  %1845 = load i32* %1821, align 4, !tbaa !66
  br i1 %1844, label %.lr.ph562, label %._crit_edge773

._crit_edge773:                                   ; preds = %1836
  %.pre774 = add nsw i32 %1845, -2
  br label %._crit_edge563

.lr.ph562:                                        ; preds = %1836
  %1846 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1847 = load float** %1846, align 8, !tbaa !71
  %1848 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %1849 = load float** %1848, align 8, !tbaa !70
  br label %1850

; <label>:1850                                    ; preds = %.lr.ph562, %1850
  %i122.0560 = phi i32 [ 0, %.lr.ph562 ], [ %1871, %1850 ]
  %1851 = mul nsw i32 %1845, %1843
  %1852 = add nsw i32 %1851, %i122.0560
  %1853 = sub nsw i32 %1852, %1843
  %1854 = sext i32 %1853 to i64
  %1855 = getelementptr inbounds float* %1847, i64 %1854
  %1856 = load float* %1855, align 4, !tbaa !1
  %1857 = add nsw i32 %1845, -2
  %1858 = sext i32 %1857 to i64
  %1859 = getelementptr inbounds float* %1849, i64 %1858
  %1860 = load float* %1859, align 4, !tbaa !1
  %1861 = fmul float %1856, %1860
  %1862 = add nsw i32 %1845, -3
  %1863 = sext i32 %1862 to i64
  %1864 = getelementptr inbounds float* %1849, i64 %1863
  %1865 = load float* %1864, align 4, !tbaa !1
  %1866 = fadd float %1861, %1865
  %1867 = mul i32 %1843, -3
  %1868 = add i32 %1852, %1867
  %1869 = sext i32 %1868 to i64
  %1870 = getelementptr inbounds float* %1847, i64 %1869
  store float %1866, float* %1870, align 4, !tbaa !1
  %1871 = add nsw i32 %i122.0560, 1
  %1872 = icmp slt i32 %1871, %1843
  br i1 %1872, label %1850, label %._crit_edge563

._crit_edge563:                                   ; preds = %1850, %._crit_edge773
  %.pre-phi = phi i32 [ %.pre774, %._crit_edge773 ], [ %1857, %1850 ]
  store i32 %.pre-phi, i32* %1821, align 4, !tbaa !66
  br label %.loopexit298

; <label>:1873                                    ; preds = %1830, %1820
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1822, i32 3) #17
  %1874 = load i32* %1821, align 4, !tbaa !66
  %1875 = add nsw i32 %1874, -2
  store i32 %1875, i32* %1821, align 4, !tbaa !66
  %1876 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1877 = load i32* %1876, align 4, !tbaa !17
  %1878 = icmp sgt i32 %1877, 0
  br i1 %1878, label %.lr.ph568, label %.loopexit298

.lr.ph568:                                        ; preds = %1873
  %1879 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1880 = load float** %1879, align 8, !tbaa !71
  br label %1881

; <label>:1881                                    ; preds = %.lr.ph568, %1881
  %i124.0566 = phi i32 [ 0, %.lr.ph568 ], [ %1897, %1881 ]
  %1882 = mul nsw i32 %1875, %1877
  %1883 = add nsw i32 %1882, %i124.0566
  %1884 = add nsw i32 %1883, %1877
  %1885 = sext i32 %1884 to i64
  %1886 = getelementptr inbounds float* %1880, i64 %1885
  %1887 = load float* %1886, align 4, !tbaa !1
  %1888 = sext i32 %1883 to i64
  %1889 = getelementptr inbounds float* %1880, i64 %1888
  %1890 = load float* %1889, align 4, !tbaa !1
  %1891 = fmul float %1887, %1890
  %1892 = sub nsw i32 %1883, %1877
  %1893 = sext i32 %1892 to i64
  %1894 = getelementptr inbounds float* %1880, i64 %1893
  %1895 = load float* %1894, align 4, !tbaa !1
  %1896 = fadd float %1895, %1891
  store float %1896, float* %1894, align 4, !tbaa !1
  %1897 = add nsw i32 %i124.0566, 1
  %1898 = icmp slt i32 %1897, %1877
  br i1 %1898, label %1881, label %.loopexit298

; <label>:1899                                    ; preds = %0
  %1900 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1901 = load i32* %1900, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1901, i32 6) #17
  %1902 = load i32* %1900, align 4, !tbaa !66
  %1903 = add nsw i32 %1902, -4
  store i32 %1903, i32* %1900, align 4, !tbaa !66
  %1904 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1905 = load i32* %1904, align 4, !tbaa !17
  %1906 = icmp sgt i32 %1905, 0
  br i1 %1906, label %.lr.ph572, label %.loopexit298

.lr.ph572:                                        ; preds = %1899
  %1907 = shl nsw i32 %1905, 1
  %1908 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1909 = load float** %1908, align 8, !tbaa !71
  br label %1910

; <label>:1910                                    ; preds = %.lr.ph572, %1910
  %i126.0570 = phi i32 [ 0, %.lr.ph572 ], [ %1926, %1910 ]
  %1911 = mul nsw i32 %1903, %1905
  %1912 = add nsw i32 %1911, %i126.0570
  %1913 = add nsw i32 %1912, %1907
  %1914 = sext i32 %1913 to i64
  %1915 = getelementptr inbounds float* %1909, i64 %1914
  %1916 = load float* %1915, align 4, !tbaa !1
  %1917 = sext i32 %1912 to i64
  %1918 = getelementptr inbounds float* %1909, i64 %1917
  %1919 = load float* %1918, align 4, !tbaa !1
  %1920 = fmul float %1916, %1919
  %1921 = sub nsw i32 %1912, %1907
  %1922 = sext i32 %1921 to i64
  %1923 = getelementptr inbounds float* %1909, i64 %1922
  %1924 = load float* %1923, align 4, !tbaa !1
  %1925 = fadd float %1924, %1920
  store float %1925, float* %1923, align 4, !tbaa !1
  %1926 = add nsw i32 %i126.0570, 1
  %1927 = icmp slt i32 %1926, %1907
  br i1 %1927, label %1910, label %.loopexit298

; <label>:1928                                    ; preds = %0
  %1929 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1930 = load i32* %1929, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1930, i32 9) #17
  %1931 = load i32* %1929, align 4, !tbaa !66
  %1932 = add nsw i32 %1931, -6
  store i32 %1932, i32* %1929, align 4, !tbaa !66
  %1933 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1934 = load i32* %1933, align 4, !tbaa !17
  %1935 = icmp sgt i32 %1934, 0
  br i1 %1935, label %.lr.ph576, label %.loopexit298

.lr.ph576:                                        ; preds = %1928
  %1936 = mul nsw i32 %1934, 3
  %1937 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1938 = load float** %1937, align 8, !tbaa !71
  br label %1939

; <label>:1939                                    ; preds = %.lr.ph576, %1939
  %i128.0574 = phi i32 [ 0, %.lr.ph576 ], [ %1955, %1939 ]
  %1940 = mul nsw i32 %1932, %1934
  %1941 = add nsw i32 %1940, %i128.0574
  %1942 = add nsw i32 %1941, %1936
  %1943 = sext i32 %1942 to i64
  %1944 = getelementptr inbounds float* %1938, i64 %1943
  %1945 = load float* %1944, align 4, !tbaa !1
  %1946 = sext i32 %1941 to i64
  %1947 = getelementptr inbounds float* %1938, i64 %1946
  %1948 = load float* %1947, align 4, !tbaa !1
  %1949 = fmul float %1945, %1948
  %1950 = sub nsw i32 %1941, %1936
  %1951 = sext i32 %1950 to i64
  %1952 = getelementptr inbounds float* %1938, i64 %1951
  %1953 = load float* %1952, align 4, !tbaa !1
  %1954 = fadd float %1953, %1949
  store float %1954, float* %1952, align 4, !tbaa !1
  %1955 = add nsw i32 %i128.0574, 1
  %1956 = icmp slt i32 %1955, %1936
  br i1 %1956, label %1939, label %.loopexit298

; <label>:1957                                    ; preds = %0
  %1958 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1959 = load i32* %1958, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1959, i32 12) #17
  %1960 = load i32* %1958, align 4, !tbaa !66
  %1961 = add nsw i32 %1960, -8
  store i32 %1961, i32* %1958, align 4, !tbaa !66
  %1962 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1963 = load i32* %1962, align 4, !tbaa !17
  %1964 = icmp sgt i32 %1963, 0
  br i1 %1964, label %.lr.ph580, label %.loopexit298

.lr.ph580:                                        ; preds = %1957
  %1965 = shl nsw i32 %1963, 2
  %1966 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1967 = load float** %1966, align 8, !tbaa !71
  br label %1968

; <label>:1968                                    ; preds = %.lr.ph580, %1968
  %i130.0578 = phi i32 [ 0, %.lr.ph580 ], [ %1984, %1968 ]
  %1969 = mul nsw i32 %1961, %1963
  %1970 = add nsw i32 %1969, %i130.0578
  %1971 = add nsw i32 %1970, %1965
  %1972 = sext i32 %1971 to i64
  %1973 = getelementptr inbounds float* %1967, i64 %1972
  %1974 = load float* %1973, align 4, !tbaa !1
  %1975 = sext i32 %1970 to i64
  %1976 = getelementptr inbounds float* %1967, i64 %1975
  %1977 = load float* %1976, align 4, !tbaa !1
  %1978 = fmul float %1974, %1977
  %1979 = sub nsw i32 %1970, %1965
  %1980 = sext i32 %1979 to i64
  %1981 = getelementptr inbounds float* %1967, i64 %1980
  %1982 = load float* %1981, align 4, !tbaa !1
  %1983 = fadd float %1982, %1978
  store float %1983, float* %1981, align 4, !tbaa !1
  %1984 = add nsw i32 %i130.0578, 1
  %1985 = icmp slt i32 %1984, %1965
  br i1 %1985, label %1968, label %.loopexit298

; <label>:1986                                    ; preds = %0
  %1987 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %1988 = load i32* %1987, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %1988, i32 2) #17
  %1989 = load i32* %1987, align 4, !tbaa !66
  %1990 = add nsw i32 %1989, -1
  store i32 %1990, i32* %1987, align 4, !tbaa !66
  %1991 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %1992 = load i32* %1991, align 4, !tbaa !17
  %1993 = icmp sgt i32 %1992, 0
  br i1 %1993, label %.lr.ph584, label %.loopexit298

.lr.ph584:                                        ; preds = %1986
  %1994 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %1995 = load float** %1994, align 8, !tbaa !71
  br label %1996

; <label>:1996                                    ; preds = %.lr.ph584, %1996
  %i132.0582 = phi i32 [ 0, %.lr.ph584 ], [ %2008, %1996 ]
  %1997 = mul nsw i32 %1990, %1992
  %1998 = add nsw i32 %1997, %i132.0582
  %1999 = sub nsw i32 %1998, %1992
  %2000 = sext i32 %1999 to i64
  %2001 = getelementptr inbounds float* %1995, i64 %2000
  %2002 = sext i32 %1998 to i64
  %2003 = getelementptr inbounds float* %1995, i64 %2002
  %2004 = load float* %2003, align 4, !tbaa !1
  %2005 = load float* %2001, align 4, !tbaa !1
  %2006 = fcmp olt float %2004, %2005
  %2007 = select i1 %2006, float %2004, float %2005
  store float %2007, float* %2001, align 4, !tbaa !1
  %2008 = add nsw i32 %i132.0582, 1
  %2009 = icmp slt i32 %2008, %1992
  br i1 %2009, label %1996, label %.loopexit298

; <label>:2010                                    ; preds = %0
  %2011 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2012 = load i32* %2011, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2012, i32 4) #17
  %2013 = load i32* %2011, align 4, !tbaa !66
  %2014 = add nsw i32 %2013, -2
  store i32 %2014, i32* %2011, align 4, !tbaa !66
  %2015 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2016 = load i32* %2015, align 4, !tbaa !17
  %2017 = icmp sgt i32 %2016, 0
  br i1 %2017, label %.lr.ph588, label %.loopexit298

.lr.ph588:                                        ; preds = %2010
  %2018 = shl nsw i32 %2016, 1
  %2019 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2020 = load float** %2019, align 8, !tbaa !71
  br label %2021

; <label>:2021                                    ; preds = %.lr.ph588, %2021
  %i134.0586 = phi i32 [ 0, %.lr.ph588 ], [ %2033, %2021 ]
  %2022 = mul nsw i32 %2014, %2016
  %2023 = add nsw i32 %2022, %i134.0586
  %2024 = sub nsw i32 %2023, %2018
  %2025 = sext i32 %2024 to i64
  %2026 = getelementptr inbounds float* %2020, i64 %2025
  %2027 = sext i32 %2023 to i64
  %2028 = getelementptr inbounds float* %2020, i64 %2027
  %2029 = load float* %2028, align 4, !tbaa !1
  %2030 = load float* %2026, align 4, !tbaa !1
  %2031 = fcmp olt float %2029, %2030
  %2032 = select i1 %2031, float %2029, float %2030
  store float %2032, float* %2026, align 4, !tbaa !1
  %2033 = add nsw i32 %i134.0586, 1
  %2034 = icmp slt i32 %2033, %2018
  br i1 %2034, label %2021, label %.loopexit298

; <label>:2035                                    ; preds = %0
  %2036 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2037 = load i32* %2036, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2037, i32 6) #17
  %2038 = load i32* %2036, align 4, !tbaa !66
  %2039 = add nsw i32 %2038, -3
  store i32 %2039, i32* %2036, align 4, !tbaa !66
  %2040 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2041 = load i32* %2040, align 4, !tbaa !17
  %2042 = icmp sgt i32 %2041, 0
  br i1 %2042, label %.lr.ph592, label %.loopexit298

.lr.ph592:                                        ; preds = %2035
  %2043 = mul nsw i32 %2041, 3
  %2044 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2045 = load float** %2044, align 8, !tbaa !71
  br label %2046

; <label>:2046                                    ; preds = %.lr.ph592, %2046
  %i136.0590 = phi i32 [ 0, %.lr.ph592 ], [ %2062, %2046 ]
  %2047 = mul nsw i32 %2039, %2041
  %2048 = add nsw i32 %2047, %i136.0590
  %2049 = sub nsw i32 %2048, %2043
  %2050 = sext i32 %2049 to i64
  %2051 = getelementptr inbounds float* %2045, i64 %2050
  %2052 = sext i32 %2048 to i64
  %2053 = getelementptr inbounds float* %2045, i64 %2052
  %2054 = load float* %2053, align 4, !tbaa !1
  %2055 = load float* %2051, align 4, !tbaa !1
  %2056 = fcmp olt float %2054, %2055
  %2057 = select i1 %2056, float %2054, float %2055
  %2058 = mul i32 %2041, -3
  %2059 = add i32 %2048, %2058
  %2060 = sext i32 %2059 to i64
  %2061 = getelementptr inbounds float* %2045, i64 %2060
  store float %2057, float* %2061, align 4, !tbaa !1
  %2062 = add nsw i32 %i136.0590, 1
  %2063 = icmp slt i32 %2062, %2043
  br i1 %2063, label %2046, label %.loopexit298

; <label>:2064                                    ; preds = %0
  %2065 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2066 = load i32* %2065, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2066, i32 8) #17
  %2067 = load i32* %2065, align 4, !tbaa !66
  %2068 = add nsw i32 %2067, -4
  store i32 %2068, i32* %2065, align 4, !tbaa !66
  %2069 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2070 = load i32* %2069, align 4, !tbaa !17
  %2071 = icmp sgt i32 %2070, 0
  br i1 %2071, label %.lr.ph596, label %.loopexit298

.lr.ph596:                                        ; preds = %2064
  %2072 = shl nsw i32 %2070, 2
  %2073 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2074 = load float** %2073, align 8, !tbaa !71
  br label %2075

; <label>:2075                                    ; preds = %.lr.ph596, %2075
  %i138.0594 = phi i32 [ 0, %.lr.ph596 ], [ %2087, %2075 ]
  %2076 = mul nsw i32 %2068, %2070
  %2077 = add nsw i32 %2076, %i138.0594
  %2078 = sub nsw i32 %2077, %2072
  %2079 = sext i32 %2078 to i64
  %2080 = getelementptr inbounds float* %2074, i64 %2079
  %2081 = sext i32 %2077 to i64
  %2082 = getelementptr inbounds float* %2074, i64 %2081
  %2083 = load float* %2082, align 4, !tbaa !1
  %2084 = load float* %2080, align 4, !tbaa !1
  %2085 = fcmp olt float %2083, %2084
  %2086 = select i1 %2085, float %2083, float %2084
  store float %2086, float* %2080, align 4, !tbaa !1
  %2087 = add nsw i32 %i138.0594, 1
  %2088 = icmp slt i32 %2087, %2072
  br i1 %2088, label %2075, label %.loopexit298

; <label>:2089                                    ; preds = %0
  %2090 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2091 = load i32* %2090, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2091, i32 2) #17
  %2092 = load i32* %2090, align 4, !tbaa !66
  %2093 = add nsw i32 %2092, -1
  store i32 %2093, i32* %2090, align 4, !tbaa !66
  %2094 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2095 = load i32* %2094, align 4, !tbaa !17
  %2096 = icmp sgt i32 %2095, 0
  br i1 %2096, label %.lr.ph600, label %.loopexit298

.lr.ph600:                                        ; preds = %2089
  %2097 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2098 = load float** %2097, align 8, !tbaa !71
  br label %2099

; <label>:2099                                    ; preds = %.lr.ph600, %2099
  %i140.0598 = phi i32 [ 0, %.lr.ph600 ], [ %2111, %2099 ]
  %2100 = mul nsw i32 %2093, %2095
  %2101 = add nsw i32 %2100, %i140.0598
  %2102 = sub nsw i32 %2101, %2095
  %2103 = sext i32 %2102 to i64
  %2104 = getelementptr inbounds float* %2098, i64 %2103
  %2105 = sext i32 %2101 to i64
  %2106 = getelementptr inbounds float* %2098, i64 %2105
  %2107 = load float* %2104, align 4, !tbaa !1
  %2108 = load float* %2106, align 4, !tbaa !1
  %2109 = fcmp olt float %2107, %2108
  %2110 = select i1 %2109, float %2108, float %2107
  store float %2110, float* %2104, align 4, !tbaa !1
  %2111 = add nsw i32 %i140.0598, 1
  %2112 = icmp slt i32 %2111, %2095
  br i1 %2112, label %2099, label %.loopexit298

; <label>:2113                                    ; preds = %0
  %2114 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2115 = load i32* %2114, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2115, i32 4) #17
  %2116 = load i32* %2114, align 4, !tbaa !66
  %2117 = add nsw i32 %2116, -2
  store i32 %2117, i32* %2114, align 4, !tbaa !66
  %2118 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2119 = load i32* %2118, align 4, !tbaa !17
  %2120 = icmp sgt i32 %2119, 0
  br i1 %2120, label %.lr.ph604, label %.loopexit298

.lr.ph604:                                        ; preds = %2113
  %2121 = shl nsw i32 %2119, 1
  %2122 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2123 = load float** %2122, align 8, !tbaa !71
  br label %2124

; <label>:2124                                    ; preds = %.lr.ph604, %2124
  %i142.0602 = phi i32 [ 0, %.lr.ph604 ], [ %2136, %2124 ]
  %2125 = mul nsw i32 %2117, %2119
  %2126 = add nsw i32 %2125, %i142.0602
  %2127 = sub nsw i32 %2126, %2121
  %2128 = sext i32 %2127 to i64
  %2129 = getelementptr inbounds float* %2123, i64 %2128
  %2130 = sext i32 %2126 to i64
  %2131 = getelementptr inbounds float* %2123, i64 %2130
  %2132 = load float* %2129, align 4, !tbaa !1
  %2133 = load float* %2131, align 4, !tbaa !1
  %2134 = fcmp olt float %2132, %2133
  %2135 = select i1 %2134, float %2133, float %2132
  store float %2135, float* %2129, align 4, !tbaa !1
  %2136 = add nsw i32 %i142.0602, 1
  %2137 = icmp slt i32 %2136, %2121
  br i1 %2137, label %2124, label %.loopexit298

; <label>:2138                                    ; preds = %0
  %2139 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2140 = load i32* %2139, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2140, i32 6) #17
  %2141 = load i32* %2139, align 4, !tbaa !66
  %2142 = add nsw i32 %2141, -3
  store i32 %2142, i32* %2139, align 4, !tbaa !66
  %2143 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2144 = load i32* %2143, align 4, !tbaa !17
  %2145 = icmp sgt i32 %2144, 0
  br i1 %2145, label %.lr.ph608, label %.loopexit298

.lr.ph608:                                        ; preds = %2138
  %2146 = mul nsw i32 %2144, 3
  %2147 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2148 = load float** %2147, align 8, !tbaa !71
  br label %2149

; <label>:2149                                    ; preds = %.lr.ph608, %2149
  %i144.0606 = phi i32 [ 0, %.lr.ph608 ], [ %2165, %2149 ]
  %2150 = mul nsw i32 %2142, %2144
  %2151 = add nsw i32 %2150, %i144.0606
  %2152 = sub nsw i32 %2151, %2146
  %2153 = sext i32 %2152 to i64
  %2154 = getelementptr inbounds float* %2148, i64 %2153
  %2155 = sext i32 %2151 to i64
  %2156 = getelementptr inbounds float* %2148, i64 %2155
  %2157 = load float* %2154, align 4, !tbaa !1
  %2158 = load float* %2156, align 4, !tbaa !1
  %2159 = fcmp olt float %2157, %2158
  %2160 = select i1 %2159, float %2158, float %2157
  %2161 = mul i32 %2144, -3
  %2162 = add i32 %2151, %2161
  %2163 = sext i32 %2162 to i64
  %2164 = getelementptr inbounds float* %2148, i64 %2163
  store float %2160, float* %2164, align 4, !tbaa !1
  %2165 = add nsw i32 %i144.0606, 1
  %2166 = icmp slt i32 %2165, %2146
  br i1 %2166, label %2149, label %.loopexit298

; <label>:2167                                    ; preds = %0
  %2168 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2169 = load i32* %2168, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2169, i32 8) #17
  %2170 = load i32* %2168, align 4, !tbaa !66
  %2171 = add nsw i32 %2170, -4
  store i32 %2171, i32* %2168, align 4, !tbaa !66
  %2172 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2173 = load i32* %2172, align 4, !tbaa !17
  %2174 = icmp sgt i32 %2173, 0
  br i1 %2174, label %.lr.ph612, label %.loopexit298

.lr.ph612:                                        ; preds = %2167
  %2175 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2176 = load float** %2175, align 8, !tbaa !71
  br label %2177

; <label>:2177                                    ; preds = %.lr.ph612, %2177
  %i146.0610 = phi i32 [ 0, %.lr.ph612 ], [ %2190, %2177 ]
  %2178 = mul nsw i32 %2171, %2173
  %2179 = add nsw i32 %2178, %i146.0610
  %2180 = shl nsw i32 %2173, 2
  %2181 = sub nsw i32 %2179, %2180
  %2182 = sext i32 %2181 to i64
  %2183 = getelementptr inbounds float* %2176, i64 %2182
  %2184 = sext i32 %2179 to i64
  %2185 = getelementptr inbounds float* %2176, i64 %2184
  %2186 = load float* %2183, align 4, !tbaa !1
  %2187 = load float* %2185, align 4, !tbaa !1
  %2188 = fcmp olt float %2186, %2187
  %2189 = select i1 %2188, float %2187, float %2186
  store float %2189, float* %2183, align 4, !tbaa !1
  %2190 = add nsw i32 %i146.0610, 1
  %2191 = icmp slt i32 %2190, %2173
  br i1 %2191, label %2177, label %.loopexit298

; <label>:2192                                    ; preds = %0
  %2193 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2194 = load i32* %2193, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2194, i32 3) #17
  %2195 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2196 = load i32* %2195, align 4, !tbaa !17
  %2197 = icmp sgt i32 %2196, 0
  %2198 = load i32* %2193, align 4, !tbaa !66
  br i1 %2197, label %.lr.ph616, label %._crit_edge617

.lr.ph616:                                        ; preds = %2192
  %2199 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2200 = load float** %2199, align 8, !tbaa !71
  br label %2201

; <label>:2201                                    ; preds = %.lr.ph616, %2201
  %i148.0614 = phi i32 [ 0, %.lr.ph616 ], [ %2221, %2201 ]
  %2202 = mul nsw i32 %2198, %2196
  %2203 = add nsw i32 %2202, %i148.0614
  %2204 = mul i32 %2196, -3
  %2205 = add i32 %2203, %2204
  %2206 = sext i32 %2205 to i64
  %2207 = getelementptr inbounds float* %2200, i64 %2206
  %2208 = load float* %2207, align 4, !tbaa !1
  %2209 = shl nsw i32 %2196, 1
  %2210 = sub nsw i32 %2203, %2209
  %2211 = sext i32 %2210 to i64
  %2212 = getelementptr inbounds float* %2200, i64 %2211
  %2213 = load float* %2212, align 4, !tbaa !1
  %2214 = sub nsw i32 %2203, %2196
  %2215 = sext i32 %2214 to i64
  %2216 = getelementptr inbounds float* %2200, i64 %2215
  %2217 = load float* %2216, align 4, !tbaa !1
  %2218 = fsub float %2213, %2208
  %2219 = fmul float %2218, %2217
  %2220 = fadd float %2208, %2219
  store float %2220, float* %2207, align 4, !tbaa !1
  %2221 = add nsw i32 %i148.0614, 1
  %2222 = icmp slt i32 %2221, %2196
  br i1 %2222, label %2201, label %._crit_edge617

._crit_edge617:                                   ; preds = %2201, %2192
  %2223 = add nsw i32 %2198, -2
  store i32 %2223, i32* %2193, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2224                                    ; preds = %0
  %2225 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2226 = load i32* %2225, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2226, i32 6) #17
  %2227 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2228 = load i32* %2227, align 4, !tbaa !17
  %2229 = icmp sgt i32 %2228, 0
  %2230 = load i32* %2225, align 4, !tbaa !66
  br i1 %2229, label %.lr.ph622, label %._crit_edge623

.lr.ph622:                                        ; preds = %2224
  %2231 = shl nsw i32 %2228, 1
  %2232 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2233 = load float** %2232, align 8, !tbaa !71
  br label %2234

; <label>:2234                                    ; preds = %.lr.ph622, %2234
  %i150.0620 = phi i32 [ 0, %.lr.ph622 ], [ %2254, %2234 ]
  %2235 = mul nsw i32 %2230, %2228
  %2236 = add nsw i32 %2235, %i150.0620
  %2237 = mul i32 %2228, -6
  %2238 = add i32 %2236, %2237
  %2239 = sext i32 %2238 to i64
  %2240 = getelementptr inbounds float* %2233, i64 %2239
  %2241 = load float* %2240, align 4, !tbaa !1
  %2242 = shl nsw i32 %2228, 2
  %2243 = sub nsw i32 %2236, %2242
  %2244 = sext i32 %2243 to i64
  %2245 = getelementptr inbounds float* %2233, i64 %2244
  %2246 = load float* %2245, align 4, !tbaa !1
  %2247 = sub nsw i32 %2236, %2231
  %2248 = sext i32 %2247 to i64
  %2249 = getelementptr inbounds float* %2233, i64 %2248
  %2250 = load float* %2249, align 4, !tbaa !1
  %2251 = fsub float %2246, %2241
  %2252 = fmul float %2251, %2250
  %2253 = fadd float %2241, %2252
  store float %2253, float* %2240, align 4, !tbaa !1
  %2254 = add nsw i32 %i150.0620, 1
  %2255 = icmp slt i32 %2254, %2231
  br i1 %2255, label %2234, label %._crit_edge623

._crit_edge623:                                   ; preds = %2234, %2224
  %2256 = add nsw i32 %2230, -4
  store i32 %2256, i32* %2225, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2257                                    ; preds = %0
  %2258 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2259 = load i32* %2258, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2259, i32 9) #17
  %2260 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2261 = load i32* %2260, align 4, !tbaa !17
  %2262 = icmp sgt i32 %2261, 0
  %2263 = load i32* %2258, align 4, !tbaa !66
  br i1 %2262, label %.lr.ph628, label %._crit_edge629

.lr.ph628:                                        ; preds = %2257
  %2264 = mul nsw i32 %2261, 3
  %2265 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2266 = load float** %2265, align 8, !tbaa !71
  br label %2267

; <label>:2267                                    ; preds = %.lr.ph628, %2267
  %i155.0626 = phi i32 [ 0, %.lr.ph628 ], [ %2287, %2267 ]
  %2268 = mul nsw i32 %2263, %2261
  %2269 = add nsw i32 %2268, %i155.0626
  %2270 = mul i32 %2261, -9
  %2271 = add i32 %2269, %2270
  %2272 = sext i32 %2271 to i64
  %2273 = getelementptr inbounds float* %2266, i64 %2272
  %2274 = load float* %2273, align 4, !tbaa !1
  %2275 = mul i32 %2261, -6
  %2276 = add i32 %2269, %2275
  %2277 = sext i32 %2276 to i64
  %2278 = getelementptr inbounds float* %2266, i64 %2277
  %2279 = load float* %2278, align 4, !tbaa !1
  %2280 = sub nsw i32 %2269, %2264
  %2281 = sext i32 %2280 to i64
  %2282 = getelementptr inbounds float* %2266, i64 %2281
  %2283 = load float* %2282, align 4, !tbaa !1
  %2284 = fsub float %2279, %2274
  %2285 = fmul float %2284, %2283
  %2286 = fadd float %2274, %2285
  store float %2286, float* %2273, align 4, !tbaa !1
  %2287 = add nsw i32 %i155.0626, 1
  %2288 = icmp slt i32 %2287, %2264
  br i1 %2288, label %2267, label %._crit_edge629

._crit_edge629:                                   ; preds = %2267, %2257
  %2289 = add nsw i32 %2263, -6
  store i32 %2289, i32* %2258, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2290                                    ; preds = %0
  %2291 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2292 = load i32* %2291, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2292, i32 12) #17
  %2293 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2294 = load i32* %2293, align 4, !tbaa !17
  %2295 = icmp sgt i32 %2294, 0
  %2296 = load i32* %2291, align 4, !tbaa !66
  br i1 %2295, label %.lr.ph634, label %._crit_edge635

.lr.ph634:                                        ; preds = %2290
  %2297 = shl nsw i32 %2294, 2
  %2298 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2299 = load float** %2298, align 8, !tbaa !71
  br label %2300

; <label>:2300                                    ; preds = %.lr.ph634, %2300
  %i160.0632 = phi i32 [ 0, %.lr.ph634 ], [ %2320, %2300 ]
  %2301 = mul nsw i32 %2296, %2294
  %2302 = add nsw i32 %2301, %i160.0632
  %2303 = mul i32 %2294, -12
  %2304 = add i32 %2302, %2303
  %2305 = sext i32 %2304 to i64
  %2306 = getelementptr inbounds float* %2299, i64 %2305
  %2307 = load float* %2306, align 4, !tbaa !1
  %2308 = shl nsw i32 %2294, 3
  %2309 = sub nsw i32 %2302, %2308
  %2310 = sext i32 %2309 to i64
  %2311 = getelementptr inbounds float* %2299, i64 %2310
  %2312 = load float* %2311, align 4, !tbaa !1
  %2313 = sub nsw i32 %2302, %2297
  %2314 = sext i32 %2313 to i64
  %2315 = getelementptr inbounds float* %2299, i64 %2314
  %2316 = load float* %2315, align 4, !tbaa !1
  %2317 = fsub float %2312, %2307
  %2318 = fmul float %2317, %2316
  %2319 = fadd float %2307, %2318
  store float %2319, float* %2306, align 4, !tbaa !1
  %2320 = add nsw i32 %i160.0632, 1
  %2321 = icmp slt i32 %2320, %2297
  br i1 %2321, label %2300, label %._crit_edge635

._crit_edge635:                                   ; preds = %2300, %2290
  %2322 = add nsw i32 %2296, -8
  store i32 %2322, i32* %2291, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2323                                    ; preds = %0
  %2324 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2325 = load i32* %2324, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2325, i32 5) #17
  %2326 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2327 = load i32* %2326, align 4, !tbaa !17
  %2328 = icmp sgt i32 %2327, 0
  %2329 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  br label %.preheader637

.preheader637:                                    ; preds = %._crit_edge640, %2323
  %j165.0641 = phi i32 [ 0, %2323 ], [ %2356, %._crit_edge640 ]
  br i1 %2328, label %.lr.ph639, label %._crit_edge640

.lr.ph639:                                        ; preds = %.preheader637
  %2330 = load i32* %2324, align 4, !tbaa !66
  %2331 = sub nsw i32 5, %j165.0641
  %2332 = load float** %2329, align 8, !tbaa !71
  %2333 = sub nsw i32 3, %j165.0641
  br label %2334

; <label>:2334                                    ; preds = %.lr.ph639, %2334
  %i166.0638 = phi i32 [ 0, %.lr.ph639 ], [ %2354, %2334 ]
  %2335 = mul nsw i32 %2330, %2327
  %2336 = add nsw i32 %2335, %i166.0638
  %2337 = mul nsw i32 %2327, %2331
  %2338 = sub nsw i32 %2336, %2337
  %2339 = sext i32 %2338 to i64
  %2340 = getelementptr inbounds float* %2332, i64 %2339
  %2341 = load float* %2340, align 4, !tbaa !1
  %2342 = mul nsw i32 %2327, %2333
  %2343 = sub nsw i32 %2336, %2342
  %2344 = sext i32 %2343 to i64
  %2345 = getelementptr inbounds float* %2332, i64 %2344
  %2346 = load float* %2345, align 4, !tbaa !1
  %2347 = sub nsw i32 %2336, %2327
  %2348 = sext i32 %2347 to i64
  %2349 = getelementptr inbounds float* %2332, i64 %2348
  %2350 = load float* %2349, align 4, !tbaa !1
  %2351 = fsub float %2346, %2341
  %2352 = fmul float %2351, %2350
  %2353 = fadd float %2341, %2352
  store float %2353, float* %2340, align 4, !tbaa !1
  %2354 = add nsw i32 %i166.0638, 1
  %2355 = icmp slt i32 %2354, %2327
  br i1 %2355, label %2334, label %._crit_edge640

._crit_edge640:                                   ; preds = %2334, %.preheader637
  %2356 = add nsw i32 %j165.0641, 1
  %exitcond754 = icmp eq i32 %2356, 2
  br i1 %exitcond754, label %2357, label %.preheader637

; <label>:2357                                    ; preds = %._crit_edge640
  %2358 = load i32* %2324, align 4, !tbaa !66
  %2359 = add nsw i32 %2358, -3
  store i32 %2359, i32* %2324, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2360                                    ; preds = %0
  %2361 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2362 = load i32* %2361, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2362, i32 7) #17
  %2363 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2364 = load i32* %2363, align 4, !tbaa !17
  %2365 = icmp sgt i32 %2364, 0
  %2366 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  br label %.preheader642

.preheader642:                                    ; preds = %._crit_edge645, %2360
  %j171.0646 = phi i32 [ 0, %2360 ], [ %2393, %._crit_edge645 ]
  br i1 %2365, label %.lr.ph644, label %._crit_edge645

.lr.ph644:                                        ; preds = %.preheader642
  %2367 = load i32* %2361, align 4, !tbaa !66
  %2368 = sub nsw i32 7, %j171.0646
  %2369 = load float** %2366, align 8, !tbaa !71
  %2370 = sub nsw i32 4, %j171.0646
  br label %2371

; <label>:2371                                    ; preds = %.lr.ph644, %2371
  %i172.0643 = phi i32 [ 0, %.lr.ph644 ], [ %2391, %2371 ]
  %2372 = mul nsw i32 %2367, %2364
  %2373 = add nsw i32 %2372, %i172.0643
  %2374 = mul nsw i32 %2364, %2368
  %2375 = sub nsw i32 %2373, %2374
  %2376 = sext i32 %2375 to i64
  %2377 = getelementptr inbounds float* %2369, i64 %2376
  %2378 = load float* %2377, align 4, !tbaa !1
  %2379 = mul nsw i32 %2364, %2370
  %2380 = sub nsw i32 %2373, %2379
  %2381 = sext i32 %2380 to i64
  %2382 = getelementptr inbounds float* %2369, i64 %2381
  %2383 = load float* %2382, align 4, !tbaa !1
  %2384 = sub nsw i32 %2373, %2364
  %2385 = sext i32 %2384 to i64
  %2386 = getelementptr inbounds float* %2369, i64 %2385
  %2387 = load float* %2386, align 4, !tbaa !1
  %2388 = fsub float %2383, %2378
  %2389 = fmul float %2388, %2387
  %2390 = fadd float %2378, %2389
  store float %2390, float* %2377, align 4, !tbaa !1
  %2391 = add nsw i32 %i172.0643, 1
  %2392 = icmp slt i32 %2391, %2364
  br i1 %2392, label %2371, label %._crit_edge645

._crit_edge645:                                   ; preds = %2371, %.preheader642
  %2393 = add nsw i32 %j171.0646, 1
  %exitcond755 = icmp eq i32 %2393, 3
  br i1 %exitcond755, label %2394, label %.preheader642

; <label>:2394                                    ; preds = %._crit_edge645
  %2395 = load i32* %2361, align 4, !tbaa !66
  %2396 = add nsw i32 %2395, -4
  store i32 %2396, i32* %2361, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2397                                    ; preds = %0
  %2398 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2399 = load i32* %2398, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2399, i32 9) #17
  %2400 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2401 = load i32* %2400, align 4, !tbaa !17
  %2402 = icmp sgt i32 %2401, 0
  %2403 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  br label %.preheader647

.preheader647:                                    ; preds = %._crit_edge650, %2397
  %j177.0651 = phi i32 [ 0, %2397 ], [ %2431, %._crit_edge650 ]
  br i1 %2402, label %.lr.ph649, label %._crit_edge650

.lr.ph649:                                        ; preds = %.preheader647
  %2404 = load i32* %2398, align 4, !tbaa !66
  %2405 = sub nsw i32 9, %j177.0651
  %2406 = load float** %2403, align 8, !tbaa !71
  %2407 = sub nsw i32 5, %j177.0651
  %2408 = shl nsw i32 %2401, 2
  br label %2409

; <label>:2409                                    ; preds = %.lr.ph649, %2409
  %i178.0648 = phi i32 [ 0, %.lr.ph649 ], [ %2429, %2409 ]
  %2410 = mul nsw i32 %2404, %2401
  %2411 = add nsw i32 %2410, %i178.0648
  %2412 = mul nsw i32 %2401, %2405
  %2413 = sub nsw i32 %2411, %2412
  %2414 = sext i32 %2413 to i64
  %2415 = getelementptr inbounds float* %2406, i64 %2414
  %2416 = load float* %2415, align 4, !tbaa !1
  %2417 = mul nsw i32 %2401, %2407
  %2418 = sub nsw i32 %2411, %2417
  %2419 = sext i32 %2418 to i64
  %2420 = getelementptr inbounds float* %2406, i64 %2419
  %2421 = load float* %2420, align 4, !tbaa !1
  %2422 = sub nsw i32 %2411, %2401
  %2423 = sext i32 %2422 to i64
  %2424 = getelementptr inbounds float* %2406, i64 %2423
  %2425 = load float* %2424, align 4, !tbaa !1
  %2426 = fsub float %2421, %2416
  %2427 = fmul float %2426, %2425
  %2428 = fadd float %2416, %2427
  store float %2428, float* %2415, align 4, !tbaa !1
  %2429 = add nsw i32 %i178.0648, 1
  %2430 = icmp slt i32 %2429, %2408
  br i1 %2430, label %2409, label %._crit_edge650

._crit_edge650:                                   ; preds = %2409, %.preheader647
  %2431 = add nsw i32 %j177.0651, 1
  %exitcond756 = icmp eq i32 %2431, 4
  br i1 %exitcond756, label %2432, label %.preheader647

; <label>:2432                                    ; preds = %._crit_edge650
  %2433 = load i32* %2398, align 4, !tbaa !66
  %2434 = add nsw i32 %2433, -5
  store i32 %2434, i32* %2398, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2435                                    ; preds = %0
  %2436 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2437 = load i32* %2436, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2437, i32 3) #17
  %2438 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2439 = load i32* %2438, align 4, !tbaa !17
  %2440 = icmp sgt i32 %2439, 0
  %2441 = load i32* %2436, align 4, !tbaa !66
  br i1 %2440, label %.lr.ph655, label %._crit_edge656

.lr.ph655:                                        ; preds = %2435
  %2442 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2443 = load float** %2442, align 8, !tbaa !71
  %2444 = mul i32 %2439, -3
  br label %2445

; <label>:2445                                    ; preds = %.lr.ph655, %2445
  %i183.0653 = phi i32 [ 0, %.lr.ph655 ], [ %2465, %2445 ]
  %2446 = mul nsw i32 %2441, %2439
  %2447 = add nsw i32 %2446, %i183.0653
  %2448 = add i32 %2447, %2444
  %2449 = sext i32 %2448 to i64
  %2450 = getelementptr inbounds float* %2443, i64 %2449
  %2451 = load float* %2450, align 4, !tbaa !1
  %2452 = shl nsw i32 %2439, 1
  %2453 = sub nsw i32 %2447, %2452
  %2454 = sext i32 %2453 to i64
  %2455 = getelementptr inbounds float* %2443, i64 %2454
  %2456 = load float* %2455, align 4, !tbaa !1
  %2457 = sub nsw i32 %2447, %2439
  %2458 = sext i32 %2457 to i64
  %2459 = getelementptr inbounds float* %2443, i64 %2458
  %2460 = load float* %2459, align 4, !tbaa !1
  %2461 = fcmp olt float %2460, %2451
  %2462 = select i1 %2461, float %2460, float %2451
  %2463 = fcmp olt float %2462, %2456
  %2464 = select i1 %2463, float %2456, float %2462
  store float %2464, float* %2450, align 4, !tbaa !1
  %2465 = add nsw i32 %i183.0653, 1
  %2466 = icmp slt i32 %2465, %2439
  br i1 %2466, label %2445, label %._crit_edge656

._crit_edge656:                                   ; preds = %2445, %2435
  %2467 = add nsw i32 %2441, -2
  store i32 %2467, i32* %2436, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2468                                    ; preds = %0
  %2469 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2470 = load i32* %2469, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2470, i32 6) #17
  %2471 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2472 = load i32* %2471, align 4, !tbaa !17
  %2473 = icmp sgt i32 %2472, 0
  %2474 = load i32* %2469, align 4, !tbaa !66
  br i1 %2473, label %.lr.ph661, label %._crit_edge662

.lr.ph661:                                        ; preds = %2468
  %2475 = shl nsw i32 %2472, 1
  %2476 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2477 = load float** %2476, align 8, !tbaa !71
  %2478 = mul i32 %2472, -6
  br label %2479

; <label>:2479                                    ; preds = %.lr.ph661, %2479
  %i187.0659 = phi i32 [ 0, %.lr.ph661 ], [ %2499, %2479 ]
  %2480 = mul nsw i32 %2474, %2472
  %2481 = add nsw i32 %2480, %i187.0659
  %2482 = add i32 %2481, %2478
  %2483 = sext i32 %2482 to i64
  %2484 = getelementptr inbounds float* %2477, i64 %2483
  %2485 = load float* %2484, align 4, !tbaa !1
  %2486 = shl nsw i32 %2472, 2
  %2487 = sub nsw i32 %2481, %2486
  %2488 = sext i32 %2487 to i64
  %2489 = getelementptr inbounds float* %2477, i64 %2488
  %2490 = load float* %2489, align 4, !tbaa !1
  %2491 = sub nsw i32 %2481, %2475
  %2492 = sext i32 %2491 to i64
  %2493 = getelementptr inbounds float* %2477, i64 %2492
  %2494 = load float* %2493, align 4, !tbaa !1
  %2495 = fcmp olt float %2494, %2485
  %2496 = select i1 %2495, float %2494, float %2485
  %2497 = fcmp olt float %2496, %2490
  %2498 = select i1 %2497, float %2490, float %2496
  store float %2498, float* %2484, align 4, !tbaa !1
  %2499 = add nsw i32 %i187.0659, 1
  %2500 = icmp slt i32 %2499, %2475
  br i1 %2500, label %2479, label %._crit_edge662

._crit_edge662:                                   ; preds = %2479, %2468
  %2501 = add nsw i32 %2474, -4
  store i32 %2501, i32* %2469, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2502                                    ; preds = %0
  %2503 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2504 = load i32* %2503, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2504, i32 9) #17
  %2505 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2506 = load i32* %2505, align 4, !tbaa !17
  %2507 = icmp sgt i32 %2506, 0
  %2508 = load i32* %2503, align 4, !tbaa !66
  br i1 %2507, label %.lr.ph667, label %._crit_edge668

.lr.ph667:                                        ; preds = %2502
  %2509 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2510 = load float** %2509, align 8, !tbaa !71
  %2511 = mul i32 %2506, -9
  %2512 = mul nsw i32 %2506, 3
  br label %2513

; <label>:2513                                    ; preds = %.lr.ph667, %2513
  %i192.0665 = phi i32 [ 0, %.lr.ph667 ], [ %2534, %2513 ]
  %2514 = mul nsw i32 %2508, %2506
  %2515 = add nsw i32 %2514, %i192.0665
  %2516 = add i32 %2515, %2511
  %2517 = sext i32 %2516 to i64
  %2518 = getelementptr inbounds float* %2510, i64 %2517
  %2519 = load float* %2518, align 4, !tbaa !1
  %2520 = mul i32 %2506, -6
  %2521 = add i32 %2515, %2520
  %2522 = sext i32 %2521 to i64
  %2523 = getelementptr inbounds float* %2510, i64 %2522
  %2524 = load float* %2523, align 4, !tbaa !1
  %2525 = mul i32 %2506, -3
  %2526 = add i32 %2515, %2525
  %2527 = sext i32 %2526 to i64
  %2528 = getelementptr inbounds float* %2510, i64 %2527
  %2529 = load float* %2528, align 4, !tbaa !1
  %2530 = fcmp olt float %2529, %2519
  %2531 = select i1 %2530, float %2529, float %2519
  %2532 = fcmp olt float %2531, %2524
  %2533 = select i1 %2532, float %2524, float %2531
  store float %2533, float* %2518, align 4, !tbaa !1
  %2534 = add nsw i32 %i192.0665, 1
  %2535 = icmp slt i32 %2534, %2512
  br i1 %2535, label %2513, label %._crit_edge668

._crit_edge668:                                   ; preds = %2513, %2502
  %2536 = add nsw i32 %2508, -6
  store i32 %2536, i32* %2503, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2537                                    ; preds = %0
  %2538 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2539 = load i32* %2538, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2539, i32 12) #17
  %2540 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2541 = load i32* %2540, align 4, !tbaa !17
  %2542 = icmp sgt i32 %2541, 0
  %2543 = load i32* %2538, align 4, !tbaa !66
  br i1 %2542, label %.lr.ph673, label %._crit_edge674

.lr.ph673:                                        ; preds = %2537
  %2544 = shl nsw i32 %2541, 2
  %2545 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2546 = load float** %2545, align 8, !tbaa !71
  %2547 = mul i32 %2541, -12
  br label %2548

; <label>:2548                                    ; preds = %.lr.ph673, %2548
  %i197.0671 = phi i32 [ 0, %.lr.ph673 ], [ %2568, %2548 ]
  %2549 = mul nsw i32 %2543, %2541
  %2550 = add nsw i32 %2549, %i197.0671
  %2551 = add i32 %2550, %2547
  %2552 = sext i32 %2551 to i64
  %2553 = getelementptr inbounds float* %2546, i64 %2552
  %2554 = load float* %2553, align 4, !tbaa !1
  %2555 = shl nsw i32 %2541, 3
  %2556 = sub nsw i32 %2550, %2555
  %2557 = sext i32 %2556 to i64
  %2558 = getelementptr inbounds float* %2546, i64 %2557
  %2559 = load float* %2558, align 4, !tbaa !1
  %2560 = sub nsw i32 %2550, %2544
  %2561 = sext i32 %2560 to i64
  %2562 = getelementptr inbounds float* %2546, i64 %2561
  %2563 = load float* %2562, align 4, !tbaa !1
  %2564 = fcmp olt float %2563, %2554
  %2565 = select i1 %2564, float %2563, float %2554
  %2566 = fcmp olt float %2565, %2559
  %2567 = select i1 %2566, float %2559, float %2565
  store float %2567, float* %2553, align 4, !tbaa !1
  %2568 = add nsw i32 %i197.0671, 1
  %2569 = icmp slt i32 %2568, %2544
  br i1 %2569, label %2548, label %._crit_edge674

._crit_edge674:                                   ; preds = %2548, %2537
  %2570 = add nsw i32 %2543, -8
  store i32 %2570, i32* %2538, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2571                                    ; preds = %0
  %2572 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2573 = load i32* %2572, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2573, i32 1) #17
  %2574 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2575 = load i32* %2574, align 4, !tbaa !17
  %2576 = icmp sgt i32 %2575, 0
  br i1 %2576, label %.lr.ph679, label %.loopexit298

.lr.ph679:                                        ; preds = %2571
  %2577 = load i32* %2572, align 4, !tbaa !66
  %2578 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2579 = load float** %2578, align 8, !tbaa !71
  br label %2580

; <label>:2580                                    ; preds = %.lr.ph679, %2580
  %i202.0677 = phi i32 [ 0, %.lr.ph679 ], [ %2588, %2580 ]
  %2581 = mul nsw i32 %2577, %2575
  %2582 = sub i32 %i202.0677, %2575
  %2583 = add i32 %2582, %2581
  %2584 = sext i32 %2583 to i64
  %2585 = getelementptr inbounds float* %2579, i64 %2584
  %2586 = load float* %2585, align 4, !tbaa !1
  %2587 = tail call float @fabsf(float %2586) #16
  store float %2587, float* %2585, align 4, !tbaa !1
  %2588 = add nsw i32 %i202.0677, 1
  %2589 = icmp slt i32 %2588, %2575
  br i1 %2589, label %2580, label %.loopexit298

; <label>:2590                                    ; preds = %0
  %2591 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2592 = load i32* %2591, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2592, i32 2) #17
  %2593 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2594 = load i32* %2593, align 4, !tbaa !17
  %2595 = icmp sgt i32 %2594, 0
  br i1 %2595, label %.lr.ph683, label %.loopexit298

.lr.ph683:                                        ; preds = %2590
  %2596 = shl nsw i32 %2594, 1
  %2597 = load i32* %2591, align 4, !tbaa !66
  %2598 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2599 = load float** %2598, align 8, !tbaa !71
  br label %2600

; <label>:2600                                    ; preds = %.lr.ph683, %2600
  %i204.0681 = phi i32 [ 0, %.lr.ph683 ], [ %2608, %2600 ]
  %2601 = mul nsw i32 %2597, %2594
  %2602 = sub i32 %i204.0681, %2596
  %2603 = add i32 %2602, %2601
  %2604 = sext i32 %2603 to i64
  %2605 = getelementptr inbounds float* %2599, i64 %2604
  %2606 = load float* %2605, align 4, !tbaa !1
  %2607 = tail call float @fabsf(float %2606) #16
  store float %2607, float* %2605, align 4, !tbaa !1
  %2608 = add nsw i32 %i204.0681, 1
  %2609 = icmp slt i32 %2608, %2596
  br i1 %2609, label %2600, label %.loopexit298

; <label>:2610                                    ; preds = %0
  %2611 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2612 = load i32* %2611, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2612, i32 3) #17
  %2613 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2614 = load i32* %2613, align 4, !tbaa !17
  %2615 = icmp sgt i32 %2614, 0
  br i1 %2615, label %.lr.ph687, label %.loopexit298

.lr.ph687:                                        ; preds = %2610
  %2616 = mul nsw i32 %2614, 3
  %2617 = load i32* %2611, align 4, !tbaa !66
  %2618 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2619 = load float** %2618, align 8, !tbaa !71
  br label %2620

; <label>:2620                                    ; preds = %.lr.ph687, %2620
  %i206.0685 = phi i32 [ 0, %.lr.ph687 ], [ %2632, %2620 ]
  %2621 = mul nsw i32 %2617, %2614
  %2622 = add nsw i32 %2621, %i206.0685
  %2623 = sub nsw i32 %2622, %2616
  %2624 = sext i32 %2623 to i64
  %2625 = getelementptr inbounds float* %2619, i64 %2624
  %2626 = load float* %2625, align 4, !tbaa !1
  %2627 = tail call float @fabsf(float %2626) #16
  %2628 = mul i32 %2614, -3
  %2629 = add i32 %2622, %2628
  %2630 = sext i32 %2629 to i64
  %2631 = getelementptr inbounds float* %2619, i64 %2630
  store float %2627, float* %2631, align 4, !tbaa !1
  %2632 = add nsw i32 %i206.0685, 1
  %2633 = icmp slt i32 %2632, %2616
  br i1 %2633, label %2620, label %.loopexit298

; <label>:2634                                    ; preds = %0
  %2635 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2636 = load i32* %2635, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2636, i32 4) #17
  %2637 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2638 = load i32* %2637, align 4, !tbaa !17
  %2639 = icmp sgt i32 %2638, 0
  br i1 %2639, label %.lr.ph691, label %.loopexit298

.lr.ph691:                                        ; preds = %2634
  %2640 = shl nsw i32 %2638, 2
  %2641 = load i32* %2635, align 4, !tbaa !66
  %2642 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2643 = load float** %2642, align 8, !tbaa !71
  br label %2644

; <label>:2644                                    ; preds = %.lr.ph691, %2644
  %i208.0689 = phi i32 [ 0, %.lr.ph691 ], [ %2652, %2644 ]
  %2645 = mul nsw i32 %2641, %2638
  %2646 = sub i32 %i208.0689, %2640
  %2647 = add i32 %2646, %2645
  %2648 = sext i32 %2647 to i64
  %2649 = getelementptr inbounds float* %2643, i64 %2648
  %2650 = load float* %2649, align 4, !tbaa !1
  %2651 = tail call float @fabsf(float %2650) #16
  store float %2651, float* %2649, align 4, !tbaa !1
  %2652 = add nsw i32 %i208.0689, 1
  %2653 = icmp slt i32 %2652, %2640
  br i1 %2653, label %2644, label %.loopexit298

; <label>:2654                                    ; preds = %0
  %2655 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2656 = load i32* %2655, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2656, i32 2) #17
  %2657 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2658 = load i32* %2657, align 4, !tbaa !17
  %2659 = icmp sgt i32 %2658, 0
  %2660 = load i32* %2655, align 4, !tbaa !66
  br i1 %2659, label %.lr.ph695, label %._crit_edge696

.lr.ph695:                                        ; preds = %2654
  %2661 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2662 = load float** %2661, align 8, !tbaa !71
  br label %2663

; <label>:2663                                    ; preds = %.lr.ph695, %2663
  %i210.0693 = phi i32 [ 0, %.lr.ph695 ], [ %2677, %2663 ]
  %2664 = mul nsw i32 %2660, %2658
  %2665 = add nsw i32 %2664, %i210.0693
  %2666 = shl nsw i32 %2658, 1
  %2667 = sub nsw i32 %2665, %2666
  %2668 = sext i32 %2667 to i64
  %2669 = getelementptr inbounds float* %2662, i64 %2668
  %2670 = load float* %2669, align 4, !tbaa !1
  %2671 = sub nsw i32 %2665, %2658
  %2672 = sext i32 %2671 to i64
  %2673 = getelementptr inbounds float* %2662, i64 %2672
  %2674 = load float* %2673, align 4, !tbaa !1
  %2675 = fcmp ogt float %2670, %2674
  %2676 = select i1 %2675, float 0.000000e+00, float 1.000000e+00
  store float %2676, float* %2669, align 4, !tbaa !1
  %2677 = add nsw i32 %i210.0693, 1
  %2678 = icmp slt i32 %2677, %2658
  br i1 %2678, label %2663, label %._crit_edge696

._crit_edge696:                                   ; preds = %2663, %2654
  %2679 = add nsw i32 %2660, -1
  store i32 %2679, i32* %2655, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2680                                    ; preds = %0
  %2681 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2682 = load i32* %2681, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2682, i32 3) #17
  %2683 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2684 = load i32* %2683, align 4, !tbaa !17
  %2685 = icmp sgt i32 %2684, 0
  %2686 = load i32* %2681, align 4, !tbaa !66
  br i1 %2685, label %.lr.ph701, label %._crit_edge702

.lr.ph701:                                        ; preds = %2680
  %2687 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2688 = load float** %2687, align 8, !tbaa !71
  %2689 = mul i32 %2684, -3
  br label %2690

; <label>:2690                                    ; preds = %.lr.ph701, %_Z5clampfff.exit257
  %i214.0699 = phi i32 [ 0, %.lr.ph701 ], [ %2718, %_Z5clampfff.exit257 ]
  %2691 = mul nsw i32 %2686, %2684
  %2692 = add nsw i32 %2691, %i214.0699
  %2693 = add i32 %2692, %2689
  %2694 = sext i32 %2693 to i64
  %2695 = getelementptr inbounds float* %2688, i64 %2694
  %2696 = load float* %2695, align 4, !tbaa !1
  %2697 = shl nsw i32 %2684, 1
  %2698 = sub nsw i32 %2692, %2697
  %2699 = sext i32 %2698 to i64
  %2700 = getelementptr inbounds float* %2688, i64 %2699
  %2701 = load float* %2700, align 4, !tbaa !1
  %2702 = sub nsw i32 %2692, %2684
  %2703 = sext i32 %2702 to i64
  %2704 = getelementptr inbounds float* %2688, i64 %2703
  %2705 = load float* %2704, align 4, !tbaa !1
  %2706 = fsub float %2705, %2696
  %2707 = fsub float %2701, %2696
  %2708 = fdiv float %2706, %2707
  %2709 = fcmp olt float %2708, 0.000000e+00
  br i1 %2709, label %_Z5clampfff.exit257, label %2710

; <label>:2710                                    ; preds = %2690
  %2711 = fcmp ogt float %2708, 1.000000e+00
  %2712 = select i1 %2711, float 1.000000e+00, float %2708
  br label %_Z5clampfff.exit257

_Z5clampfff.exit257:                              ; preds = %2690, %2710
  %2713 = phi float [ %2712, %2710 ], [ 0.000000e+00, %2690 ]
  %2714 = fmul float %2713, %2713
  %2715 = fmul float %2713, 2.000000e+00
  %2716 = fsub float 3.000000e+00, %2715
  %2717 = fmul float %2714, %2716
  store float %2717, float* %2695, align 4, !tbaa !1
  %2718 = add nsw i32 %i214.0699, 1
  %2719 = icmp slt i32 %2718, %2684
  br i1 %2719, label %2690, label %._crit_edge702

._crit_edge702:                                   ; preds = %_Z5clampfff.exit257, %2680
  %2720 = add nsw i32 %2686, -2
  store i32 %2720, i32* %2681, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2721                                    ; preds = %0
  %2722 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2723 = load i32* %2722, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2723, i32 3) #17
  %2724 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2725 = load i32* %2724, align 4, !tbaa !17
  %2726 = icmp sgt i32 %2725, 0
  %2727 = load i32* %2722, align 4, !tbaa !66
  br i1 %2726, label %.lr.ph707, label %._crit_edge708

.lr.ph707:                                        ; preds = %2721
  %2728 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2729 = load float** %2728, align 8, !tbaa !71
  %2730 = mul i32 %2725, -3
  br label %2731

; <label>:2731                                    ; preds = %.lr.ph707, %_Z5clampfff.exit
  %i219.0705 = phi i32 [ 0, %.lr.ph707 ], [ %2758, %_Z5clampfff.exit ]
  %2732 = mul nsw i32 %2727, %2725
  %2733 = add nsw i32 %2732, %i219.0705
  %2734 = add i32 %2733, %2730
  %2735 = sext i32 %2734 to i64
  %2736 = getelementptr inbounds float* %2729, i64 %2735
  %2737 = load float* %2736, align 4, !tbaa !1
  %2738 = shl nsw i32 %2725, 1
  %2739 = sub nsw i32 %2733, %2738
  %2740 = sext i32 %2739 to i64
  %2741 = getelementptr inbounds float* %2729, i64 %2740
  %2742 = load float* %2741, align 4, !tbaa !1
  %2743 = sub nsw i32 %2733, %2725
  %2744 = sext i32 %2743 to i64
  %2745 = getelementptr inbounds float* %2729, i64 %2744
  %2746 = load float* %2745, align 4, !tbaa !1
  %2747 = fmul float %2742, %2746
  %2748 = fadd float %2737, %2747
  %2749 = fcmp olt float %2748, 0.000000e+00
  br i1 %2749, label %_Z5clampfff.exit, label %2750

; <label>:2750                                    ; preds = %2731
  %2751 = fcmp ogt float %2748, 1.000000e+00
  %2752 = select i1 %2751, float 1.000000e+00, float %2748
  br label %_Z5clampfff.exit

_Z5clampfff.exit:                                 ; preds = %2731, %2750
  %2753 = phi float [ %2752, %2750 ], [ 0.000000e+00, %2731 ]
  %2754 = fmul float %2753, %2753
  %2755 = fmul float %2753, 2.000000e+00
  %2756 = fsub float 3.000000e+00, %2755
  %2757 = fmul float %2754, %2756
  store float %2757, float* %2736, align 4, !tbaa !1
  %2758 = add nsw i32 %i219.0705, 1
  %2759 = icmp slt i32 %2758, %2725
  br i1 %2759, label %2731, label %._crit_edge708

._crit_edge708:                                   ; preds = %_Z5clampfff.exit, %2721
  %2760 = add nsw i32 %2727, -2
  store i32 %2760, i32* %2722, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2761                                    ; preds = %0
  %2762 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2763 = load i32* %2762, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2763, i32 4) #17
  %2764 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2765 = load i32* %2764, align 4, !tbaa !17
  %2766 = icmp sgt i32 %2765, 0
  %2767 = load i32* %2762, align 4, !tbaa !66
  br i1 %2766, label %.lr.ph713, label %._crit_edge714

.lr.ph713:                                        ; preds = %2761
  %2768 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2769 = load float** %2768, align 8, !tbaa !71
  br label %2770

; <label>:2770                                    ; preds = %.lr.ph713, %2770
  %i225.0711 = phi i32 [ 0, %.lr.ph713 ], [ %2795, %2770 ]
  %2771 = mul nsw i32 %2767, %2765
  %2772 = add nsw i32 %2771, %i225.0711
  %2773 = shl nsw i32 %2765, 2
  %2774 = sub nsw i32 %2772, %2773
  %2775 = sext i32 %2774 to i64
  %2776 = getelementptr inbounds float* %2769, i64 %2775
  %2777 = load float* %2776, align 4, !tbaa !1
  %2778 = mul i32 %2765, -3
  %2779 = add i32 %2772, %2778
  %2780 = sext i32 %2779 to i64
  %2781 = getelementptr inbounds float* %2769, i64 %2780
  %2782 = load float* %2781, align 4, !tbaa !1
  %2783 = fmul float %2777, %2782
  %2784 = shl nsw i32 %2765, 1
  %2785 = sub nsw i32 %2772, %2784
  %2786 = sext i32 %2785 to i64
  %2787 = getelementptr inbounds float* %2769, i64 %2786
  %2788 = load float* %2787, align 4, !tbaa !1
  %2789 = sub nsw i32 %2772, %2765
  %2790 = sext i32 %2789 to i64
  %2791 = getelementptr inbounds float* %2769, i64 %2790
  %2792 = load float* %2791, align 4, !tbaa !1
  %2793 = fmul float %2788, %2792
  %2794 = fadd float %2783, %2793
  store float %2794, float* %2776, align 4, !tbaa !1
  %2795 = add nsw i32 %i225.0711, 1
  %2796 = icmp slt i32 %2795, %2765
  br i1 %2796, label %2770, label %._crit_edge714

._crit_edge714:                                   ; preds = %2770, %2761
  %2797 = add nsw i32 %2767, -3
  store i32 %2797, i32* %2762, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2798                                    ; preds = %0
  %2799 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2800 = load i32* %2799, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2800, i32 6) #17
  %2801 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2802 = load i32* %2801, align 4, !tbaa !17
  %2803 = icmp sgt i32 %2802, 0
  %2804 = load i32* %2799, align 4, !tbaa !66
  br i1 %2803, label %.lr.ph719, label %._crit_edge720

.lr.ph719:                                        ; preds = %2798
  %2805 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2806 = load float** %2805, align 8, !tbaa !71
  br label %2807

; <label>:2807                                    ; preds = %.lr.ph719, %2807
  %i229.0717 = phi i32 [ 0, %.lr.ph719 ], [ %2844, %2807 ]
  %2808 = mul nsw i32 %2804, %2802
  %2809 = add nsw i32 %2808, %i229.0717
  %2810 = mul i32 %2802, -6
  %2811 = add i32 %2809, %2810
  %2812 = sext i32 %2811 to i64
  %2813 = getelementptr inbounds float* %2806, i64 %2812
  %2814 = load float* %2813, align 4, !tbaa !1
  %2815 = mul i32 %2802, -5
  %2816 = add i32 %2809, %2815
  %2817 = sext i32 %2816 to i64
  %2818 = getelementptr inbounds float* %2806, i64 %2817
  %2819 = load float* %2818, align 4, !tbaa !1
  %2820 = fmul float %2814, %2819
  %2821 = shl nsw i32 %2802, 2
  %2822 = sub nsw i32 %2809, %2821
  %2823 = sext i32 %2822 to i64
  %2824 = getelementptr inbounds float* %2806, i64 %2823
  %2825 = load float* %2824, align 4, !tbaa !1
  %2826 = mul i32 %2802, -3
  %2827 = add i32 %2809, %2826
  %2828 = sext i32 %2827 to i64
  %2829 = getelementptr inbounds float* %2806, i64 %2828
  %2830 = load float* %2829, align 4, !tbaa !1
  %2831 = fmul float %2825, %2830
  %2832 = shl nsw i32 %2802, 1
  %2833 = sub nsw i32 %2809, %2832
  %2834 = sext i32 %2833 to i64
  %2835 = getelementptr inbounds float* %2806, i64 %2834
  %2836 = load float* %2835, align 4, !tbaa !1
  %2837 = sub nsw i32 %2809, %2802
  %2838 = sext i32 %2837 to i64
  %2839 = getelementptr inbounds float* %2806, i64 %2838
  %2840 = load float* %2839, align 4, !tbaa !1
  %2841 = fmul float %2836, %2840
  %2842 = fadd float %2820, %2831
  %2843 = fadd float %2842, %2841
  store float %2843, float* %2813, align 4, !tbaa !1
  %2844 = add nsw i32 %i229.0717, 1
  %2845 = icmp slt i32 %2844, %2802
  br i1 %2845, label %2807, label %._crit_edge720

._crit_edge720:                                   ; preds = %2807, %2798
  %2846 = add nsw i32 %2804, -5
  store i32 %2846, i32* %2799, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2847                                    ; preds = %0
  %2848 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2849 = load i32* %2848, align 4, !tbaa !66
  tail call void @_ZN2VM16fullLoadConstantEii(%struct.VM* %this, i32 %2849, i32 3) #17
  %2850 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2851 = load i32* %2850, align 4, !tbaa !17
  %2852 = icmp sgt i32 %2851, 0
  br i1 %2852, label %.lr.ph725, label %.loopexit298

.lr.ph725:                                        ; preds = %2847
  %2853 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %.pre771 = load float** %2853, align 8, !tbaa !71
  br label %2854

; <label>:2854                                    ; preds = %.lr.ph725, %2854
  %2855 = phi float* [ %.pre771, %.lr.ph725 ], [ %2884, %2854 ]
  %2856 = phi i32 [ %2851, %.lr.ph725 ], [ %2881, %2854 ]
  %i234.0723 = phi i32 [ 0, %.lr.ph725 ], [ %2900, %2854 ]
  %2857 = load i32* %2848, align 4, !tbaa !66
  %2858 = mul nsw i32 %2857, %2856
  %2859 = add nsw i32 %2858, %i234.0723
  %2860 = sub nsw i32 %2859, %2856
  %2861 = sext i32 %2860 to i64
  %2862 = getelementptr inbounds float* %2855, i64 %2861
  %2863 = load float* %2862, align 4, !tbaa !1
  %2864 = shl nsw i32 %2856, 1
  %2865 = sub nsw i32 %2859, %2864
  %2866 = sext i32 %2865 to i64
  %2867 = getelementptr inbounds float* %2855, i64 %2866
  %2868 = load float* %2867, align 4, !tbaa !1
  %2869 = mul i32 %2856, -3
  %2870 = add i32 %2859, %2869
  %2871 = sext i32 %2870 to i64
  %2872 = getelementptr inbounds float* %2855, i64 %2871
  %2873 = load float* %2872, align 4, !tbaa !1
  %2874 = fmul float %2863, %2863
  %2875 = fmul float %2868, %2868
  %2876 = fadd float %2874, %2875
  %2877 = fmul float %2873, %2873
  %2878 = fadd float %2876, %2877
  %2879 = tail call float @sqrtf(float %2878) #18
  %2880 = fdiv float 1.000000e+00, %2879
  %2881 = load i32* %2850, align 4, !tbaa !17
  %2882 = sub nsw i32 %2859, %2881
  %2883 = sext i32 %2882 to i64
  %2884 = load float** %2853, align 8, !tbaa !71
  %2885 = getelementptr inbounds float* %2884, i64 %2883
  %2886 = load float* %2885, align 4, !tbaa !1
  %2887 = fmul float %2880, %2886
  store float %2887, float* %2885, align 4, !tbaa !1
  %2888 = shl nsw i32 %2881, 1
  %2889 = sub nsw i32 %2859, %2888
  %2890 = sext i32 %2889 to i64
  %2891 = getelementptr inbounds float* %2884, i64 %2890
  %2892 = load float* %2891, align 4, !tbaa !1
  %2893 = fmul float %2880, %2892
  store float %2893, float* %2891, align 4, !tbaa !1
  %2894 = mul i32 %2881, -3
  %2895 = add i32 %2894, %2859
  %2896 = sext i32 %2895 to i64
  %2897 = getelementptr inbounds float* %2884, i64 %2896
  %2898 = load float* %2897, align 4, !tbaa !1
  %2899 = fmul float %2880, %2898
  store float %2899, float* %2897, align 4, !tbaa !1
  %2900 = add nsw i32 %i234.0723, 1
  %2901 = icmp slt i32 %2900, %2881
  br i1 %2901, label %2854, label %.loopexit298

; <label>:2902                                    ; preds = %0
  %2903 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %2904 = load i32* %2903, align 4, !tbaa !66
  %2905 = sext i32 %2904 to i64
  %2906 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %2907 = load i32** %2906, align 8, !tbaa !69
  %2908 = getelementptr inbounds i32* %2907, i64 %2905
  store i32 0, i32* %2908, align 4, !tbaa !26
  %2909 = load i32* %2903, align 4, !tbaa !66
  %2910 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2911 = load i32* %2910, align 4, !tbaa !17
  %2912 = mul nsw i32 %2911, %2909
  %2913 = sext i32 %2912 to i64
  %2914 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2915 = load float** %2914, align 8, !tbaa !71
  %2916 = getelementptr inbounds float* %2915, i64 %2913
  %2917 = bitcast float* %2916 to i8*
  %2918 = getelementptr inbounds %struct.Instruction* %9, i64 %7, i32 1, i32 0
  %2919 = load i32* %2918, align 4, !tbaa !26
  %2920 = mul nsw i32 %2919, %2911
  %2921 = sext i32 %2920 to i64
  %2922 = getelementptr inbounds %struct.VM* %this, i64 0, i32 10
  %2923 = load float** %2922, align 8, !tbaa !25
  %2924 = getelementptr inbounds float* %2923, i64 %2921
  %2925 = bitcast float* %2924 to i8*
  %2926 = sext i32 %2911 to i64
  %2927 = shl nsw i64 %2926, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2917, i8* %2925, i64 %2927, i32 4, i1 false)
  %2928 = load i32* %2903, align 4, !tbaa !66
  %2929 = add nsw i32 %2928, 1
  store i32 %2929, i32* %2903, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2930                                    ; preds = %2930, %.preheader726
  %2931 = phi i32 [ %22, %.preheader726 ], [ %2936, %2930 ]
  %i239.0729 = phi i32 [ 0, %.preheader726 ], [ %2935, %2930 ]
  %2932 = add nsw i32 %2931, %i239.0729
  %2933 = sext i32 %2932 to i64
  %2934 = getelementptr inbounds i32* %24, i64 %2933
  store i32 0, i32* %2934, align 4, !tbaa !26
  %2935 = add nsw i32 %i239.0729, 1
  %2936 = load i32* %21, align 4, !tbaa !66
  %exitcond758 = icmp eq i32 %2935, 2
  br i1 %exitcond758, label %2937, label %2930

; <label>:2937                                    ; preds = %2930
  %2938 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2939 = load i32* %2938, align 4, !tbaa !17
  %2940 = mul nsw i32 %2939, %2936
  %2941 = sext i32 %2940 to i64
  %2942 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2943 = load float** %2942, align 8, !tbaa !71
  %2944 = getelementptr inbounds float* %2943, i64 %2941
  %2945 = bitcast float* %2944 to i8*
  %2946 = getelementptr inbounds %struct.Instruction* %9, i64 %7, i32 1, i32 0
  %2947 = load i32* %2946, align 4, !tbaa !26
  %2948 = mul nsw i32 %2947, %2939
  %2949 = sext i32 %2948 to i64
  %2950 = getelementptr inbounds %struct.VM* %this, i64 0, i32 10
  %2951 = load float** %2950, align 8, !tbaa !25
  %2952 = getelementptr inbounds float* %2951, i64 %2949
  %2953 = bitcast float* %2952 to i8*
  %2954 = sext i32 %2939 to i64
  %2955 = shl nsw i64 %2954, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2945, i8* %2953, i64 %2955, i32 4, i1 false)
  %2956 = load i32* %21, align 4, !tbaa !66
  %2957 = add nsw i32 %2956, 2
  store i32 %2957, i32* %21, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2958                                    ; preds = %2958, %.preheader730
  %2959 = phi i32 [ %18, %.preheader730 ], [ %2964, %2958 ]
  %i240.0733 = phi i32 [ 0, %.preheader730 ], [ %2963, %2958 ]
  %2960 = add nsw i32 %2959, %i240.0733
  %2961 = sext i32 %2960 to i64
  %2962 = getelementptr inbounds i32* %20, i64 %2961
  store i32 0, i32* %2962, align 4, !tbaa !26
  %2963 = add nsw i32 %i240.0733, 1
  %2964 = load i32* %17, align 4, !tbaa !66
  %exitcond760 = icmp eq i32 %2963, 3
  br i1 %exitcond760, label %2965, label %2958

; <label>:2965                                    ; preds = %2958
  %2966 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2967 = load i32* %2966, align 4, !tbaa !17
  %2968 = mul nsw i32 %2967, %2964
  %2969 = sext i32 %2968 to i64
  %2970 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2971 = load float** %2970, align 8, !tbaa !71
  %2972 = getelementptr inbounds float* %2971, i64 %2969
  %2973 = bitcast float* %2972 to i8*
  %2974 = getelementptr inbounds %struct.Instruction* %9, i64 %7, i32 1, i32 0
  %2975 = load i32* %2974, align 4, !tbaa !26
  %2976 = mul nsw i32 %2975, %2967
  %2977 = sext i32 %2976 to i64
  %2978 = getelementptr inbounds %struct.VM* %this, i64 0, i32 10
  %2979 = load float** %2978, align 8, !tbaa !25
  %2980 = getelementptr inbounds float* %2979, i64 %2977
  %2981 = bitcast float* %2980 to i8*
  %2982 = sext i32 %2967 to i64
  %2983 = mul i64 %2982, 12
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2973, i8* %2981, i64 %2983, i32 4, i1 false)
  %2984 = load i32* %17, align 4, !tbaa !66
  %2985 = add nsw i32 %2984, 3
  store i32 %2985, i32* %17, align 4, !tbaa !66
  br label %.loopexit298

; <label>:2986                                    ; preds = %2986, %.preheader734
  %2987 = phi i32 [ %14, %.preheader734 ], [ %2992, %2986 ]
  %i241.0737 = phi i32 [ 0, %.preheader734 ], [ %2991, %2986 ]
  %2988 = add nsw i32 %2987, %i241.0737
  %2989 = sext i32 %2988 to i64
  %2990 = getelementptr inbounds i32* %16, i64 %2989
  store i32 0, i32* %2990, align 4, !tbaa !26
  %2991 = add nsw i32 %i241.0737, 1
  %2992 = load i32* %13, align 4, !tbaa !66
  %exitcond762 = icmp eq i32 %2991, 4
  br i1 %exitcond762, label %2993, label %2986

; <label>:2993                                    ; preds = %2986
  %2994 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %2995 = load i32* %2994, align 4, !tbaa !17
  %2996 = mul nsw i32 %2995, %2992
  %2997 = sext i32 %2996 to i64
  %2998 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %2999 = load float** %2998, align 8, !tbaa !71
  %3000 = getelementptr inbounds float* %2999, i64 %2997
  %3001 = bitcast float* %3000 to i8*
  %3002 = getelementptr inbounds %struct.Instruction* %9, i64 %7, i32 1, i32 0
  %3003 = load i32* %3002, align 4, !tbaa !26
  %3004 = mul nsw i32 %3003, %2995
  %3005 = sext i32 %3004 to i64
  %3006 = getelementptr inbounds %struct.VM* %this, i64 0, i32 10
  %3007 = load float** %3006, align 8, !tbaa !25
  %3008 = getelementptr inbounds float* %3007, i64 %3005
  %3009 = bitcast float* %3008 to i8*
  %3010 = sext i32 %2995 to i64
  %3011 = shl nsw i64 %3010, 4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3001, i8* %3009, i64 %3011, i32 4, i1 false)
  %3012 = load i32* %13, align 4, !tbaa !66
  %3013 = add nsw i32 %3012, 4
  store i32 %3013, i32* %13, align 4, !tbaa !66
  br label %.loopexit298

; <label>:3014                                    ; preds = %0
  %3015 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %3016 = load i32* %3015, align 4, !tbaa !66
  %3017 = getelementptr inbounds %struct.Instruction* %9, i64 %7, i32 1, i32 0
  %3018 = load i32* %3017, align 4, !tbaa !26
  tail call void @_ZN2VM13storeConstantEiii(%struct.VM* %this, i32 %3016, i32 1, i32 %3018) #17
  %3019 = load i32* %3015, align 4, !tbaa !66
  %3020 = add nsw i32 %3019, -1
  store i32 %3020, i32* %3015, align 4, !tbaa !66
  br label %.loopexit298

; <label>:3021                                    ; preds = %0
  %3022 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %3023 = load i32* %3022, align 4, !tbaa !66
  %3024 = getelementptr inbounds %struct.Instruction* %9, i64 %7, i32 1, i32 0
  %3025 = load i32* %3024, align 4, !tbaa !26
  tail call void @_ZN2VM13storeConstantEiii(%struct.VM* %this, i32 %3023, i32 2, i32 %3025) #17
  %3026 = load i32* %3022, align 4, !tbaa !66
  %3027 = add nsw i32 %3026, -2
  store i32 %3027, i32* %3022, align 4, !tbaa !66
  br label %.loopexit298

; <label>:3028                                    ; preds = %0
  %3029 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %3030 = load i32* %3029, align 4, !tbaa !66
  %3031 = getelementptr inbounds %struct.Instruction* %9, i64 %7, i32 1, i32 0
  %3032 = load i32* %3031, align 4, !tbaa !26
  tail call void @_ZN2VM13storeConstantEiii(%struct.VM* %this, i32 %3030, i32 3, i32 %3032) #17
  %3033 = load i32* %3029, align 4, !tbaa !66
  %3034 = add nsw i32 %3033, -3
  store i32 %3034, i32* %3029, align 4, !tbaa !66
  br label %.loopexit298

; <label>:3035                                    ; preds = %0
  %3036 = getelementptr inbounds %struct.VM* %this, i64 0, i32 2
  %3037 = load i32* %3036, align 4, !tbaa !66
  %3038 = getelementptr inbounds %struct.Instruction* %9, i64 %7, i32 1, i32 0
  %3039 = load i32* %3038, align 4, !tbaa !26
  tail call void @_ZN2VM13storeConstantEiii(%struct.VM* %this, i32 %3037, i32 4, i32 %3039) #17
  %3040 = load i32* %3036, align 4, !tbaa !66
  %3041 = add nsw i32 %3040, -4
  store i32 %3041, i32* %3036, align 4, !tbaa !66
  br label %.loopexit298

; <label>:3042                                    ; preds = %0
  %3043 = getelementptr inbounds %struct.VM* %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 3, i32 0
  %3044 = load i32** %3043, align 8, !tbaa !96
  %3045 = getelementptr inbounds %struct.VM* %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 2, i32 0
  %3046 = load i32** %3045, align 8, !tbaa !96
  %3047 = icmp eq i32* %3044, %3046
  br i1 %3047, label %_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv.exit, label %3048

; <label>:3048                                    ; preds = %3042
  %3049 = getelementptr inbounds %struct.VM* %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 3
  %3050 = bitcast %"struct.std::_Deque_iterator"* %3049 to <2 x i32*>*
  %3051 = load <2 x i32*>* %3050, align 8, !tbaa !13
  %3052 = extractelement <2 x i32*> %3051, i32 0
  %3053 = extractelement <2 x i32*> %3051, i32 1
  %3054 = icmp eq i32* %3052, %3053
  %3055 = ptrtoint <2 x i32*> %3051 to <2 x i64>
  %3056 = bitcast <2 x i64> %3055 to i128
  %3057 = trunc i128 %3056 to i64
  %3058 = inttoptr i64 %3057 to i32*
  br i1 %3054, label %3059, label %_ZNSt5stackIiSt5dequeIiSaIiEEE3topEv.exit

; <label>:3059                                    ; preds = %3048
  %3060 = getelementptr inbounds %struct.VM* %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 3, i32 3
  %3061 = load i32*** %3060, align 8, !tbaa !97
  %3062 = getelementptr inbounds i32** %3061, i64 -1
  %3063 = load i32** %3062, align 8, !tbaa !13
  %3064 = getelementptr inbounds i32* %3063, i64 128
  br label %_ZNSt5stackIiSt5dequeIiSaIiEEE3topEv.exit

_ZNSt5stackIiSt5dequeIiSaIiEEE3topEv.exit:        ; preds = %3048, %3059
  %3065 = phi i32* [ %3064, %3059 ], [ %3052, %3048 ]
  %3066 = getelementptr inbounds i32* %3065, i64 -1
  %3067 = load i32* %3066, align 4, !tbaa !26
  store i32 %3067, i32* %5, align 4, !tbaa !67
  %3068 = getelementptr inbounds %struct.VM* %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 3, i32 1
  %3069 = load i32** %3068, align 8, !tbaa !98
  %3070 = icmp eq i32* %3058, %3069
  br i1 %3070, label %3073, label %3071

; <label>:3071                                    ; preds = %_ZNSt5stackIiSt5dequeIiSaIiEEE3topEv.exit
  %3072 = getelementptr inbounds i32* %3058, i64 -1
  store i32* %3072, i32** %3043, align 8, !tbaa !99
  br label %_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv.exit

; <label>:3073                                    ; preds = %_ZNSt5stackIiSt5dequeIiSaIiEEE3topEv.exit
  %3074 = inttoptr i64 %3057 to i8*
  tail call void @_ZdlPv(i8* %3074) #18
  %3075 = getelementptr inbounds %struct.VM* %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 3, i32 3
  %3076 = load i32*** %3075, align 8, !tbaa !89
  %3077 = getelementptr inbounds i32** %3076, i64 -1
  store i32** %3077, i32*** %3075, align 8, !tbaa !97
  %3078 = load i32** %3077, align 8, !tbaa !13
  store i32* %3078, i32** %3068, align 8, !tbaa !100
  %3079 = getelementptr inbounds i32* %3078, i64 128
  %3080 = getelementptr inbounds %struct.VM* %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 3, i32 2
  store i32* %3079, i32** %3080, align 8, !tbaa !101
  %3081 = getelementptr inbounds i32* %3078, i64 127
  store i32* %3081, i32** %3043, align 8, !tbaa !99
  br label %_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv.exit

; <label>:3082                                    ; preds = %0
  %3083 = add nsw i32 %6, 1
  store i32 %3083, i32* %1, align 4, !tbaa !26
  %3084 = getelementptr inbounds %struct.VM* %this, i64 0, i32 5, i32 0
  call void @_ZNSt5dequeIiSaIiEE12emplace_backIJiEEEvDpOT_(%"class.std::deque"* %3084, i32* %1) #17
  %3085 = getelementptr inbounds %struct.Instruction* %9, i64 %7, i32 1, i32 0
  %3086 = load i32* %3085, align 4, !tbaa !26
  store i32 %3086, i32* %5, align 4, !tbaa !67
  br label %_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv.exit

; <label>:3087                                    ; preds = %0
  %3088 = add nsw i32 %6, 1
  store i32 %3088, i32* %5, align 4, !tbaa !67
  %3089 = getelementptr inbounds %struct.Instruction* %9, i64 %7, i32 1, i32 0
  %3090 = getelementptr inbounds %"struct.std::pair"* %2, i64 0, i32 0
  store i32 %3088, i32* %3090, align 4, !tbaa !102
  %3091 = getelementptr inbounds %"struct.std::pair"* %2, i64 0, i32 1
  %3092 = load i32* %3089, align 4, !tbaa !26
  store i32 %3092, i32* %3091, align 4, !tbaa !104
  %3093 = getelementptr inbounds %struct.VM* %this, i64 0, i32 6, i32 0
  call void @_ZNSt5dequeISt4pairIiiESaIS1_EE12emplace_backIJS1_EEEvDpOT_(%"class.std::deque.10"* %3093, %"struct.std::pair"* %2) #17
  br label %_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv.exit

; <label>:3094                                    ; preds = %0
  %3095 = getelementptr inbounds %struct.VM* %this, i64 0, i32 6, i32 0, i32 0, i32 0, i32 3
  %3096 = bitcast %"struct.std::_Deque_iterator.15"* %3095 to <2 x %"struct.std::pair"*>*
  %3097 = load <2 x %"struct.std::pair"*>* %3096, align 8, !tbaa !13
  %3098 = extractelement <2 x %"struct.std::pair"*> %3097, i32 0
  %3099 = extractelement <2 x %"struct.std::pair"*> %3097, i32 1
  %3100 = icmp eq %"struct.std::pair"* %3098, %3099
  %3101 = ptrtoint <2 x %"struct.std::pair"*> %3097 to <2 x i64>
  %3102 = bitcast <2 x i64> %3101 to i128
  %3103 = trunc i128 %3102 to i64
  %3104 = inttoptr i64 %3103 to %"struct.std::pair"*
  br i1 %3100, label %3105, label %_ZNSt5stackISt4pairIiiESt5dequeIS1_SaIS1_EEE3topEv.exit

; <label>:3105                                    ; preds = %3094
  %3106 = getelementptr inbounds %struct.VM* %this, i64 0, i32 6, i32 0, i32 0, i32 0, i32 3, i32 3
  %3107 = load %"struct.std::pair"*** %3106, align 8, !tbaa !105
  %3108 = getelementptr inbounds %"struct.std::pair"** %3107, i64 -1
  %3109 = load %"struct.std::pair"** %3108, align 8, !tbaa !13
  %3110 = getelementptr inbounds %"struct.std::pair"* %3109, i64 64
  br label %_ZNSt5stackISt4pairIiiESt5dequeIS1_SaIS1_EEE3topEv.exit

_ZNSt5stackISt4pairIiiESt5dequeIS1_SaIS1_EEE3topEv.exit: ; preds = %3094, %3105
  %3111 = phi %"struct.std::pair"* [ %3110, %3105 ], [ %3098, %3094 ]
  %3112 = getelementptr inbounds %"struct.std::pair"* %3111, i64 -1, i32 1
  %3113 = load i32* %3112, align 4, !tbaa !104
  %3114 = add nsw i32 %3113, -1
  store i32 %3114, i32* %3112, align 4, !tbaa !104
  %3115 = icmp eq i32 %3114, 0
  br i1 %3115, label %3116, label %3134

; <label>:3116                                    ; preds = %_ZNSt5stackISt4pairIiiESt5dequeIS1_SaIS1_EEE3topEv.exit
  %3117 = getelementptr inbounds %struct.VM* %this, i64 0, i32 6, i32 0, i32 0, i32 0, i32 3, i32 0
  %3118 = getelementptr inbounds %struct.VM* %this, i64 0, i32 6, i32 0, i32 0, i32 0, i32 3, i32 1
  %3119 = load %"struct.std::pair"** %3118, align 8, !tbaa !106
  %3120 = icmp eq %"struct.std::pair"* %3104, %3119
  br i1 %3120, label %3123, label %3121

; <label>:3121                                    ; preds = %3116
  %3122 = getelementptr inbounds %"struct.std::pair"* %3104, i64 -1
  store %"struct.std::pair"* %3122, %"struct.std::pair"** %3117, align 8, !tbaa !107
  br label %_ZNSt5stackISt4pairIiiESt5dequeIS1_SaIS1_EEE3popEv.exit

; <label>:3123                                    ; preds = %3116
  %3124 = inttoptr i64 %3103 to i8*
  tail call void @_ZdlPv(i8* %3124) #18
  %3125 = getelementptr inbounds %struct.VM* %this, i64 0, i32 6, i32 0, i32 0, i32 0, i32 3, i32 3
  %3126 = load %"struct.std::pair"*** %3125, align 8, !tbaa !95
  %3127 = getelementptr inbounds %"struct.std::pair"** %3126, i64 -1
  store %"struct.std::pair"** %3127, %"struct.std::pair"*** %3125, align 8, !tbaa !105
  %3128 = load %"struct.std::pair"** %3127, align 8, !tbaa !13
  store %"struct.std::pair"* %3128, %"struct.std::pair"** %3118, align 8, !tbaa !108
  %3129 = getelementptr inbounds %"struct.std::pair"* %3128, i64 64
  %3130 = getelementptr inbounds %struct.VM* %this, i64 0, i32 6, i32 0, i32 0, i32 0, i32 3, i32 2
  store %"struct.std::pair"* %3129, %"struct.std::pair"** %3130, align 8, !tbaa !109
  %3131 = getelementptr inbounds %"struct.std::pair"* %3128, i64 63
  store %"struct.std::pair"* %3131, %"struct.std::pair"** %3117, align 8, !tbaa !107
  %.pre772 = load i32* %5, align 4, !tbaa !67
  br label %_ZNSt5stackISt4pairIiiESt5dequeIS1_SaIS1_EEE3popEv.exit

_ZNSt5stackISt4pairIiiESt5dequeIS1_SaIS1_EEE3popEv.exit: ; preds = %3121, %3123
  %3132 = phi i32 [ %6, %3121 ], [ %.pre772, %3123 ]
  %3133 = add nsw i32 %3132, 1
  store i32 %3133, i32* %5, align 4, !tbaa !67
  br label %_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv.exit

; <label>:3134                                    ; preds = %_ZNSt5stackISt4pairIiiESt5dequeIS1_SaIS1_EEE3topEv.exit
  %3135 = getelementptr inbounds %"struct.std::pair"* %3111, i64 -1, i32 0
  %3136 = load i32* %3135, align 4, !tbaa !102
  store i32 %3136, i32* %5, align 4, !tbaa !67
  br label %_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv.exit

; <label>:3137                                    ; preds = %0
  %3138 = tail call %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* @_ZSt4cerr, i8* getelementptr inbounds ([30 x i8]* @.str8, i64 0, i64 0), i64 29) #17
  %3139 = load i32* %5, align 4, !tbaa !67
  %3140 = tail call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cerr, i32 %3139) #17
  %3141 = bitcast %"class.std::basic_ostream"* %3140 to i8**
  %3142 = load i8** %3141, align 8, !tbaa !27
  %3143 = getelementptr i8* %3142, i64 -24
  %3144 = bitcast i8* %3143 to i64*
  %3145 = load i64* %3144, align 8
  %3146 = bitcast %"class.std::basic_ostream"* %3140 to i8*
  %3147 = getelementptr inbounds i8* %3146, i64 %3145
  %3148 = bitcast i8* %3147 to %"class.std::basic_ios"*
  %3149 = tail call signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* %3148, i8 signext 10) #17
  %3150 = tail call %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* %3140, i8 signext %3149) #17
  %3151 = tail call %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* %3150) #17
  br label %_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv.exit

.loopexit298:                                     ; preds = %2854, %2644, %2620, %2600, %2580, %2177, %2149, %2124, %2099, %2075, %2046, %2021, %1996, %1968, %1939, %1910, %1881, %728, %704, %684, %664, %645, %621, %601, %581, %562, %531, %492, %.loopexit319, %.loopexit310, %.loopexit301, %373, %2847, %2634, %2610, %2590, %2571, %2167, %2138, %2113, %2089, %2064, %2035, %2010, %1986, %1957, %1928, %1899, %1873, %718, %694, %674, %655, %635, %611, %591, %572, %.preheader335, %.preheader331, %.preheader327, %.preheader297, %._crit_edge563, %556, %525, %481, %367, %3035, %3028, %3021, %3014, %2993, %2965, %2937, %2902, %._crit_edge720, %._crit_edge714, %._crit_edge708, %._crit_edge702, %._crit_edge696, %._crit_edge674, %._crit_edge668, %._crit_edge662, %._crit_edge656, %2432, %2394, %2357, %._crit_edge635, %._crit_edge629, %._crit_edge623, %._crit_edge617, %._crit_edge557, %._crit_edge551, %._crit_edge545, %._crit_edge539, %._crit_edge533, %._crit_edge527, %._crit_edge521, %._crit_edge515, %._crit_edge509, %._crit_edge503, %._crit_edge497, %.loopexit485, %1459, %1430, %1401, %._crit_edge468, %._crit_edge462, %._crit_edge456, %.loopexit440, %._crit_edge438, %._crit_edge432, %._crit_edge426, %.loopexit414, %._crit_edge412, %._crit_edge406, %._crit_edge400, %.loopexit384, %._crit_edge382, %._crit_edge376, %._crit_edge370, %._crit_edge, %.loopexit295, %.loopexit, %201, %181, %178, %137, %133, %129, %125, %123, %110, %97, %70
  %3152 = load i32* %5, align 4, !tbaa !67
  %3153 = add nsw i32 %3152, 1
  store i32 %3153, i32* %5, align 4, !tbaa !67
  br label %_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv.exit

_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv.exit:        ; preds = %3073, %3071, %3042, %.loopexit298, %3137, %3134, %_ZNSt5stackISt4pairIiiESt5dequeIS1_SaIS1_EEE3popEv.exit, %3087, %3082
  %.0 = phi i1 [ false, %3137 ], [ true, %_ZNSt5stackISt4pairIiiESt5dequeIS1_SaIS1_EEE3popEv.exit ], [ true, %3134 ], [ true, %3087 ], [ true, %3082 ], [ true, %.loopexit298 ], [ false, %3042 ], [ true, %3071 ], [ true, %3073 ]
  ret i1 %.0
}

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #1

; Function Attrs: nounwind optsize uwtable
define linkonce_odr void @_ZN2VM16fullLoadConstantEii(%struct.VM* nocapture readonly %this, i32 %sp, i32 %n) #4 align 2 {
  %1 = icmp sgt i32 %n, 0
  br i1 %1, label %.lr.ph3, label %._crit_edge

.lr.ph3:                                          ; preds = %0
  %2 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %3 = load i32** %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %5 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %6 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %7 = sext i32 %n to i64
  br label %8

; <label>:8                                       ; preds = %.lr.ph3, %.loopexit
  %indvars.iv = phi i64 [ %7, %.lr.ph3 ], [ %indvars.iv.next, %.loopexit ]
  %9 = trunc i64 %indvars.iv to i32
  %10 = sub nsw i32 %sp, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32* %3, i64 %11
  %13 = load i32* %12, align 4, !tbaa !26
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %.loopexit

; <label>:15                                      ; preds = %8
  store i32 0, i32* %12, align 4, !tbaa !26
  %16 = load i32* %4, align 4, !tbaa !17
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %15
  %18 = load float** %5, align 8, !tbaa !70
  %19 = getelementptr inbounds float* %18, i64 %11
  %20 = load float** %6, align 8, !tbaa !71
  br label %21

; <label>:21                                      ; preds = %.lr.ph, %21
  %i.01 = phi i32 [ 0, %.lr.ph ], [ %27, %21 ]
  %22 = load float* %19, align 4, !tbaa !1
  %23 = mul nsw i32 %16, %10
  %24 = add nsw i32 %23, %i.01
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float* %20, i64 %25
  store float %22, float* %26, align 4, !tbaa !1
  %27 = add nsw i32 %i.01, 1
  %28 = icmp slt i32 %27, %16
  br i1 %28, label %21, label %.loopexit

.loopexit:                                        ; preds = %21, %15, %8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %29 = trunc i64 %indvars.iv.next to i32
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %8, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define linkonce_odr void @_ZN2VM13storeConstantEiii(%struct.VM* nocapture readonly %this, i32 %sp, i32 %n, i32 %slot) #4 align 2 {
  %1 = icmp sgt i32 %n, 0
  br i1 %1, label %.lr.ph3, label %._crit_edge

.lr.ph3:                                          ; preds = %0
  %2 = getelementptr inbounds %struct.VM* %this, i64 0, i32 7
  %3 = getelementptr inbounds %struct.VM* %this, i64 0, i32 1
  %4 = getelementptr inbounds %struct.VM* %this, i64 0, i32 10
  %5 = getelementptr inbounds %struct.VM* %this, i64 0, i32 9
  %6 = getelementptr inbounds %struct.VM* %this, i64 0, i32 8
  %7 = sext i32 %slot to i64
  br label %8

; <label>:8                                       ; preds = %.loopexit, %.lr.ph3
  %indvars.iv = phi i64 [ 0, %.lr.ph3 ], [ %indvars.iv.next, %.loopexit ]
  %9 = trunc i64 %indvars.iv to i32
  %10 = sub i32 %9, %n
  %11 = add i32 %10, %sp
  %12 = sext i32 %11 to i64
  %13 = load i32** %2, align 8, !tbaa !69
  %14 = getelementptr inbounds i32* %13, i64 %12
  %15 = load i32* %14, align 4, !tbaa !26
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %.preheader, label %32

.preheader:                                       ; preds = %8
  %17 = load i32* %3, align 4, !tbaa !17
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %19 = load float** %6, align 8, !tbaa !70
  %20 = getelementptr inbounds float* %19, i64 %12
  %21 = add nsw i64 %indvars.iv, %7
  %22 = load float** %4, align 8, !tbaa !25
  br label %23

; <label>:23                                      ; preds = %.lr.ph, %23
  %i.01 = phi i32 [ 0, %.lr.ph ], [ %30, %23 ]
  %24 = load float* %20, align 4, !tbaa !1
  %25 = trunc i64 %21 to i32
  %26 = mul nsw i32 %17, %25
  %27 = add nsw i32 %26, %i.01
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float* %22, i64 %28
  store float %24, float* %29, align 4, !tbaa !1
  %30 = add nsw i32 %i.01, 1
  %31 = icmp slt i32 %30, %17
  br i1 %31, label %23, label %.loopexit

; <label>:32                                      ; preds = %8
  %33 = add nsw i64 %indvars.iv, %7
  %34 = load i32* %3, align 4, !tbaa !17
  %35 = trunc i64 %33 to i32
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = load float** %4, align 8, !tbaa !25
  %39 = getelementptr inbounds float* %38, i64 %37
  %40 = bitcast float* %39 to i8*
  %41 = mul nsw i32 %34, %11
  %42 = sext i32 %41 to i64
  %43 = load float** %5, align 8, !tbaa !71
  %44 = getelementptr inbounds float* %43, i64 %42
  %45 = bitcast float* %44 to i8*
  %46 = sext i32 %34 to i64
  %47 = shl nsw i64 %46, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %45, i64 %47, i32 4, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %23, %.preheader, %32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %._crit_edge, label %8

._crit_edge:                                      ; preds = %.loopexit, %0
  ret void
}

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt5dequeISt4pairIiiESaIS1_EE12emplace_backIJS1_EEEvDpOT_(%"class.std::deque.10"* nocapture %this, %"struct.std::pair"* nocapture readonly %__args) #5 align 2 {
  %1 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 3, i32 0
  %2 = load %"struct.std::pair"** %1, align 8, !tbaa !107
  %3 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 3, i32 2
  %4 = load %"struct.std::pair"** %3, align 8, !tbaa !110
  %5 = getelementptr inbounds %"struct.std::pair"* %4, i64 -1
  %6 = icmp eq %"struct.std::pair"* %2, %5
  br i1 %6, label %15, label %7

; <label>:7                                       ; preds = %0
  %8 = icmp eq %"struct.std::pair"* %2, null
  br i1 %8, label %_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE9constructIS2_JS2_EEEvPT_DpOT0_.exit, label %9

; <label>:9                                       ; preds = %7
  %10 = bitcast %"struct.std::pair"* %__args to i64*
  %11 = bitcast %"struct.std::pair"* %2 to i64*
  %12 = load i64* %10, align 4
  store i64 %12, i64* %11, align 4
  %.pre = load %"struct.std::pair"** %1, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE9constructIS2_JS2_EEEvPT_DpOT0_.exit

_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE9constructIS2_JS2_EEEvPT_DpOT0_.exit: ; preds = %7, %9
  %13 = phi %"struct.std::pair"* [ null, %7 ], [ %.pre, %9 ]
  %14 = getelementptr inbounds %"struct.std::pair"* %13, i64 1
  store %"struct.std::pair"* %14, %"struct.std::pair"** %1, align 8, !tbaa !107
  br label %16

; <label>:15                                      ; preds = %0
  tail call void @_ZNSt5dequeISt4pairIiiESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(%"class.std::deque.10"* %this, %"struct.std::pair"* %__args) #17
  br label %16

; <label>:16                                      ; preds = %15, %_ZN9__gnu_cxx13new_allocatorISt4pairIiiEE9constructIS2_JS2_EEEvPT_DpOT0_.exit
  ret void
}

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt5dequeISt4pairIiiESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(%"class.std::deque.10"* nocapture %this, %"struct.std::pair"* nocapture readonly %__args) #5 align 2 {
  tail call void @_ZNSt5dequeISt4pairIiiESaIS1_EE22_M_reserve_map_at_backEm(%"class.std::deque.10"* %this, i64 1) #17
  %1 = tail call noalias i8* @_Znwm(i64 512) #17
  %2 = bitcast i8* %1 to %"struct.std::pair"*
  %3 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 3, i32 3
  %4 = load %"struct.std::pair"*** %3, align 8, !tbaa !95
  %5 = getelementptr inbounds %"struct.std::pair"** %4, i64 1
  store %"struct.std::pair"* %2, %"struct.std::pair"** %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 3, i32 0
  %7 = load %"struct.std::pair"** %6, align 8, !tbaa !107
  %8 = icmp eq %"struct.std::pair"* %7, null
  br i1 %8, label %13, label %9

; <label>:9                                       ; preds = %0
  %10 = bitcast %"struct.std::pair"* %__args to i64*
  %11 = bitcast %"struct.std::pair"* %7 to i64*
  %12 = load i64* %10, align 4
  store i64 %12, i64* %11, align 4
  br label %13

; <label>:13                                      ; preds = %9, %0
  %14 = load %"struct.std::pair"*** %3, align 8, !tbaa !95
  %15 = getelementptr inbounds %"struct.std::pair"** %14, i64 1
  store %"struct.std::pair"** %15, %"struct.std::pair"*** %3, align 8, !tbaa !105
  %16 = load %"struct.std::pair"** %15, align 8, !tbaa !13
  %17 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 3, i32 1
  store %"struct.std::pair"* %16, %"struct.std::pair"** %17, align 8, !tbaa !108
  %18 = getelementptr inbounds %"struct.std::pair"* %16, i64 64
  %19 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 3, i32 2
  store %"struct.std::pair"* %18, %"struct.std::pair"** %19, align 8, !tbaa !109
  store %"struct.std::pair"* %16, %"struct.std::pair"** %6, align 8, !tbaa !107
  ret void
}

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt5dequeISt4pairIiiESaIS1_EE22_M_reserve_map_at_backEm(%"class.std::deque.10"* nocapture %this, i64 %__nodes_to_add) #5 align 2 {
  %1 = add i64 %__nodes_to_add, 1
  %2 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 1
  %3 = load i64* %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 3, i32 3
  %5 = load %"struct.std::pair"*** %4, align 8, !tbaa !95
  %6 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 0
  %7 = load %"struct.std::pair"*** %6, align 8, !tbaa !90
  %8 = ptrtoint %"struct.std::pair"** %5 to i64
  %9 = ptrtoint %"struct.std::pair"** %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = sub i64 %3, %11
  %13 = icmp ugt i64 %1, %12
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %0
  tail call void @_ZNSt5dequeISt4pairIiiESaIS1_EE17_M_reallocate_mapEmb(%"class.std::deque.10"* %this, i64 %__nodes_to_add, i1 zeroext false) #17
  br label %15

; <label>:15                                      ; preds = %14, %0
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() #6

; Function Attrs: nobuiltin optsize
declare noalias i8* @_Znwm(i64) #11

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt5dequeISt4pairIiiESaIS1_EE17_M_reallocate_mapEmb(%"class.std::deque.10"* nocapture %this, i64 %__nodes_to_add, i1 zeroext %__add_at_front) #5 align 2 {
  %1 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 3, i32 3
  %2 = load %"struct.std::pair"*** %1, align 8, !tbaa !95
  %3 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 2, i32 3
  %4 = load %"struct.std::pair"*** %3, align 8, !tbaa !94
  %5 = ptrtoint %"struct.std::pair"** %2 to i64
  %6 = ptrtoint %"struct.std::pair"** %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = add nsw i64 %8, 1
  %10 = add i64 %9, %__nodes_to_add
  %11 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 1
  %12 = load i64* %11, align 8, !tbaa !111
  %13 = shl i64 %10, 1
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %39

; <label>:15                                      ; preds = %0
  %16 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 0
  %17 = load %"struct.std::pair"*** %16, align 8, !tbaa !90
  %18 = sub i64 %12, %10
  %19 = lshr i64 %18, 1
  %20 = select i1 %__add_at_front, i64 %__nodes_to_add, i64 0
  %.sum2 = add i64 %19, %20
  %21 = getelementptr inbounds %"struct.std::pair"** %17, i64 %.sum2
  %22 = icmp ult %"struct.std::pair"** %21, %4
  %23 = getelementptr inbounds %"struct.std::pair"** %2, i64 1
  br i1 %22, label %24, label %31

; <label>:24                                      ; preds = %15
  %25 = icmp eq %"struct.std::pair"** %23, %4
  br i1 %25, label %_ZSt4copyIPPSt4pairIiiES3_ET0_T_S5_S4_.exit, label %26

; <label>:26                                      ; preds = %24
  %27 = ptrtoint %"struct.std::pair"** %23 to i64
  %28 = sub i64 %27, %6
  %29 = bitcast %"struct.std::pair"** %21 to i8*
  %30 = bitcast %"struct.std::pair"** %4 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %29, i8* %30, i64 %28, i32 8, i1 false) #2
  br label %_ZSt4copyIPPSt4pairIiiES3_ET0_T_S5_S4_.exit

; <label>:31                                      ; preds = %15
  %32 = ptrtoint %"struct.std::pair"** %23 to i64
  %33 = sub i64 %32, %6
  %34 = ashr exact i64 %33, 3
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %_ZSt4copyIPPSt4pairIiiES3_ET0_T_S5_S4_.exit, label %36

; <label>:36                                      ; preds = %31
  %.sum3 = sub i64 %9, %34
  %.sum5 = add i64 %.sum3, %.sum2
  %.pre1.i.i.i.i = getelementptr inbounds %"struct.std::pair"** %17, i64 %.sum5
  %37 = bitcast %"struct.std::pair"** %.pre1.i.i.i.i to i8*
  %38 = bitcast %"struct.std::pair"** %4 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %37, i8* %38, i64 %33, i32 8, i1 false) #2
  br label %_ZSt4copyIPPSt4pairIiiES3_ET0_T_S5_S4_.exit

; <label>:39                                      ; preds = %0
  %40 = icmp ult i64 %12, %__nodes_to_add
  %41 = select i1 %40, i64 %__nodes_to_add, i64 %12
  %42 = add i64 %12, 2
  %43 = add i64 %42, %41
  %44 = icmp ugt i64 %43, 2305843009213693951
  br i1 %44, label %.noexc.i, label %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE15_M_allocate_mapEm.exit

.noexc.i:                                         ; preds = %39
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE15_M_allocate_mapEm.exit: ; preds = %39
  %45 = shl i64 %43, 3
  %46 = tail call noalias i8* @_Znwm(i64 %45) #17
  %47 = bitcast i8* %46 to %"struct.std::pair"**
  %48 = sub i64 %43, %10
  %49 = lshr i64 %48, 1
  %50 = select i1 %__add_at_front, i64 %__nodes_to_add, i64 0
  %.sum = add i64 %49, %50
  %51 = getelementptr inbounds %"struct.std::pair"** %47, i64 %.sum
  %52 = load %"struct.std::pair"*** %3, align 8, !tbaa !94
  %53 = load %"struct.std::pair"*** %1, align 8, !tbaa !95
  %54 = getelementptr inbounds %"struct.std::pair"** %53, i64 1
  %55 = icmp eq %"struct.std::pair"** %54, %52
  br i1 %55, label %_ZSt4copyIPPSt4pairIiiES3_ET0_T_S5_S4_.exit4, label %56

; <label>:56                                      ; preds = %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE15_M_allocate_mapEm.exit
  %57 = ptrtoint %"struct.std::pair"** %54 to i64
  %58 = ptrtoint %"struct.std::pair"** %52 to i64
  %59 = sub i64 %57, %58
  %60 = bitcast %"struct.std::pair"** %51 to i8*
  %61 = bitcast %"struct.std::pair"** %52 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %60, i8* %61, i64 %59, i32 8, i1 false) #2
  br label %_ZSt4copyIPPSt4pairIiiES3_ET0_T_S5_S4_.exit4

_ZSt4copyIPPSt4pairIiiES3_ET0_T_S5_S4_.exit4:     ; preds = %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE15_M_allocate_mapEm.exit, %56
  %62 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 0
  %63 = load %"struct.std::pair"*** %62, align 8, !tbaa !90
  %64 = bitcast %"struct.std::pair"** %63 to i8*
  tail call void @_ZdlPv(i8* %64) #18
  store %"struct.std::pair"** %47, %"struct.std::pair"*** %62, align 8, !tbaa !90
  store i64 %43, i64* %11, align 8, !tbaa !111
  br label %_ZSt4copyIPPSt4pairIiiES3_ET0_T_S5_S4_.exit

_ZSt4copyIPPSt4pairIiiES3_ET0_T_S5_S4_.exit:      ; preds = %36, %31, %26, %24, %_ZSt4copyIPPSt4pairIiiES3_ET0_T_S5_S4_.exit4
  %__new_nstart.0 = phi %"struct.std::pair"** [ %51, %_ZSt4copyIPPSt4pairIiiES3_ET0_T_S5_S4_.exit4 ], [ %21, %24 ], [ %21, %26 ], [ %21, %31 ], [ %21, %36 ]
  store %"struct.std::pair"** %__new_nstart.0, %"struct.std::pair"*** %3, align 8, !tbaa !105
  %65 = load %"struct.std::pair"** %__new_nstart.0, align 8, !tbaa !13
  %66 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 2, i32 1
  store %"struct.std::pair"* %65, %"struct.std::pair"** %66, align 8, !tbaa !108
  %67 = getelementptr inbounds %"struct.std::pair"* %65, i64 64
  %68 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 2, i32 2
  store %"struct.std::pair"* %67, %"struct.std::pair"** %68, align 8, !tbaa !109
  %69 = getelementptr inbounds %"struct.std::pair"** %__new_nstart.0, i64 %8
  store %"struct.std::pair"** %69, %"struct.std::pair"*** %1, align 8, !tbaa !105
  %70 = load %"struct.std::pair"** %69, align 8, !tbaa !13
  %71 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 3, i32 1
  store %"struct.std::pair"* %70, %"struct.std::pair"** %71, align 8, !tbaa !108
  %72 = getelementptr inbounds %"struct.std::pair"* %70, i64 64
  %73 = getelementptr inbounds %"class.std::deque.10"* %this, i64 0, i32 0, i32 0, i32 3, i32 2
  store %"struct.std::pair"* %72, %"struct.std::pair"** %73, align 8, !tbaa !109
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE12emplace_backIJiEEEvDpOT_(%"class.std::deque"* nocapture %this, i32* nocapture readonly %__args) #5 align 2 {
  %1 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 3, i32 0
  %2 = load i32** %1, align 8, !tbaa !99
  %3 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 3, i32 2
  %4 = load i32** %3, align 8, !tbaa !112
  %5 = getelementptr inbounds i32* %4, i64 -1
  %6 = icmp eq i32* %2, %5
  br i1 %6, label %12, label %7

; <label>:7                                       ; preds = %0
  %8 = icmp eq i32* %2, null
  br i1 %8, label %_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_.exit, label %9

; <label>:9                                       ; preds = %7
  %10 = load i32* %__args, align 4, !tbaa !26
  store i32 %10, i32* %2, align 4, !tbaa !26
  br label %_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_.exit

_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_.exit: ; preds = %7, %9
  %11 = getelementptr inbounds i32* %2, i64 1
  store i32* %11, i32** %1, align 8, !tbaa !99
  br label %13

; <label>:12                                      ; preds = %0
  tail call void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJiEEEvDpOT_(%"class.std::deque"* %this, i32* %__args) #17
  br label %13

; <label>:13                                      ; preds = %12, %_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_.exit
  ret void
}

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJiEEEvDpOT_(%"class.std::deque"* nocapture %this, i32* nocapture readonly %__args) #5 align 2 {
  tail call void @_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm(%"class.std::deque"* %this, i64 1) #17
  %1 = tail call noalias i8* @_Znwm(i64 512) #17
  %2 = bitcast i8* %1 to i32*
  %3 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 3, i32 3
  %4 = load i32*** %3, align 8, !tbaa !89
  %5 = getelementptr inbounds i32** %4, i64 1
  store i32* %2, i32** %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 3, i32 0
  %7 = load i32** %6, align 8, !tbaa !99
  %8 = icmp eq i32* %7, null
  br i1 %8, label %11, label %9

; <label>:9                                       ; preds = %0
  %10 = load i32* %__args, align 4, !tbaa !26
  store i32 %10, i32* %7, align 4, !tbaa !26
  br label %11

; <label>:11                                      ; preds = %9, %0
  %12 = load i32*** %3, align 8, !tbaa !89
  %13 = getelementptr inbounds i32** %12, i64 1
  store i32** %13, i32*** %3, align 8, !tbaa !97
  %14 = load i32** %13, align 8, !tbaa !13
  %15 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 3, i32 1
  store i32* %14, i32** %15, align 8, !tbaa !100
  %16 = getelementptr inbounds i32* %14, i64 128
  %17 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 3, i32 2
  store i32* %16, i32** %17, align 8, !tbaa !101
  store i32* %14, i32** %6, align 8, !tbaa !99
  ret void
}

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm(%"class.std::deque"* nocapture %this, i64 %__nodes_to_add) #5 align 2 {
  %1 = add i64 %__nodes_to_add, 1
  %2 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 1
  %3 = load i64* %2, align 8, !tbaa !113
  %4 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 3, i32 3
  %5 = load i32*** %4, align 8, !tbaa !89
  %6 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 0
  %7 = load i32*** %6, align 8, !tbaa !84
  %8 = ptrtoint i32** %5 to i64
  %9 = ptrtoint i32** %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = sub i64 %3, %11
  %13 = icmp ugt i64 %1, %12
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %0
  tail call void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* %this, i64 %__nodes_to_add, i1 zeroext false) #17
  br label %15

; <label>:15                                      ; preds = %14, %0
  ret void
}

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* nocapture %this, i64 %__nodes_to_add, i1 zeroext %__add_at_front) #5 align 2 {
  %1 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 3, i32 3
  %2 = load i32*** %1, align 8, !tbaa !89
  %3 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 2, i32 3
  %4 = load i32*** %3, align 8, !tbaa !88
  %5 = ptrtoint i32** %2 to i64
  %6 = ptrtoint i32** %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = add nsw i64 %8, 1
  %10 = add i64 %9, %__nodes_to_add
  %11 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 1
  %12 = load i64* %11, align 8, !tbaa !113
  %13 = shl i64 %10, 1
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %39

; <label>:15                                      ; preds = %0
  %16 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 0
  %17 = load i32*** %16, align 8, !tbaa !84
  %18 = sub i64 %12, %10
  %19 = lshr i64 %18, 1
  %20 = select i1 %__add_at_front, i64 %__nodes_to_add, i64 0
  %.sum2 = add i64 %19, %20
  %21 = getelementptr inbounds i32** %17, i64 %.sum2
  %22 = icmp ult i32** %21, %4
  %23 = getelementptr inbounds i32** %2, i64 1
  br i1 %22, label %24, label %31

; <label>:24                                      ; preds = %15
  %25 = icmp eq i32** %23, %4
  br i1 %25, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit, label %26

; <label>:26                                      ; preds = %24
  %27 = ptrtoint i32** %23 to i64
  %28 = sub i64 %27, %6
  %29 = bitcast i32** %21 to i8*
  %30 = bitcast i32** %4 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %29, i8* %30, i64 %28, i32 8, i1 false) #2
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

; <label>:31                                      ; preds = %15
  %32 = ptrtoint i32** %23 to i64
  %33 = sub i64 %32, %6
  %34 = ashr exact i64 %33, 3
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit, label %36

; <label>:36                                      ; preds = %31
  %.sum3 = sub i64 %9, %34
  %.sum5 = add i64 %.sum3, %.sum2
  %.pre1.i.i.i.i = getelementptr inbounds i32** %17, i64 %.sum5
  %37 = bitcast i32** %.pre1.i.i.i.i to i8*
  %38 = bitcast i32** %4 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %37, i8* %38, i64 %33, i32 8, i1 false) #2
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

; <label>:39                                      ; preds = %0
  %40 = icmp ult i64 %12, %__nodes_to_add
  %41 = select i1 %40, i64 %__nodes_to_add, i64 %12
  %42 = add i64 %12, 2
  %43 = add i64 %42, %41
  %44 = icmp ugt i64 %43, 2305843009213693951
  br i1 %44, label %.noexc.i, label %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit

.noexc.i:                                         ; preds = %39
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit: ; preds = %39
  %45 = shl i64 %43, 3
  %46 = tail call noalias i8* @_Znwm(i64 %45) #17
  %47 = bitcast i8* %46 to i32**
  %48 = sub i64 %43, %10
  %49 = lshr i64 %48, 1
  %50 = select i1 %__add_at_front, i64 %__nodes_to_add, i64 0
  %.sum = add i64 %49, %50
  %51 = getelementptr inbounds i32** %47, i64 %.sum
  %52 = load i32*** %3, align 8, !tbaa !88
  %53 = load i32*** %1, align 8, !tbaa !89
  %54 = getelementptr inbounds i32** %53, i64 1
  %55 = icmp eq i32** %54, %52
  br i1 %55, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit4, label %56

; <label>:56                                      ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  %57 = ptrtoint i32** %54 to i64
  %58 = ptrtoint i32** %52 to i64
  %59 = sub i64 %57, %58
  %60 = bitcast i32** %51 to i8*
  %61 = bitcast i32** %52 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %60, i8* %61, i64 %59, i32 8, i1 false) #2
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit4

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit4:               ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit, %56
  %62 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 0
  %63 = load i32*** %62, align 8, !tbaa !84
  %64 = bitcast i32** %63 to i8*
  tail call void @_ZdlPv(i8* %64) #18
  store i32** %47, i32*** %62, align 8, !tbaa !84
  store i64 %43, i64* %11, align 8, !tbaa !113
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit:                ; preds = %36, %31, %26, %24, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit4
  %__new_nstart.0 = phi i32** [ %51, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit4 ], [ %21, %24 ], [ %21, %26 ], [ %21, %31 ], [ %21, %36 ]
  store i32** %__new_nstart.0, i32*** %3, align 8, !tbaa !97
  %65 = load i32** %__new_nstart.0, align 8, !tbaa !13
  %66 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 2, i32 1
  store i32* %65, i32** %66, align 8, !tbaa !100
  %67 = getelementptr inbounds i32* %65, i64 128
  %68 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 2, i32 2
  store i32* %67, i32** %68, align 8, !tbaa !101
  %69 = getelementptr inbounds i32** %__new_nstart.0, i64 %8
  store i32** %69, i32*** %1, align 8, !tbaa !97
  %70 = load i32** %69, align 8, !tbaa !13
  %71 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 3, i32 1
  store i32* %70, i32** %71, align 8, !tbaa !100
  %72 = getelementptr inbounds i32* %70, i64 128
  %73 = getelementptr inbounds %"class.std::deque"* %this, i64 0, i32 0, i32 0, i32 3, i32 2
  store i32* %72, i32** %73, align 8, !tbaa !101
  ret void
}

; Function Attrs: nounwind optsize readnone
declare float @fabsf(float) #12

; Function Attrs: nounwind optsize readnone
declare float @powf(float, float) #12

; Function Attrs: nounwind optsize readnone
declare float @atan2f(float, float) #12

; Function Attrs: nounwind optsize readnone
declare float @cosf(float) #12

; Function Attrs: nounwind optsize readnone
declare float @sinf(float) #12

; Function Attrs: nounwind optsize readnone
declare float @expf(float) #12

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: optsize
declare %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"*, i64) #0

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE17_M_initialize_mapEm(%"class.std::_Deque_base.11"* nocapture %this, i64 %__num_elements) #5 align 2 {
  %1 = lshr i64 %__num_elements, 6
  %2 = add i64 %1, 1
  %3 = add i64 %1, 3
  %4 = icmp ugt i64 %3, 8
  %5 = select i1 %4, i64 %3, i64 8
  %6 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 1
  store i64 %5, i64* %6, align 8, !tbaa !111
  %7 = icmp ugt i64 %5, 2305843009213693951
  br i1 %7, label %.noexc.i, label %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE15_M_allocate_mapEm.exit

.noexc.i:                                         ; preds = %0
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE15_M_allocate_mapEm.exit: ; preds = %0
  %8 = shl nsw i64 %5, 3
  %9 = tail call noalias i8* @_Znwm(i64 %8) #17
  %10 = bitcast i8* %9 to %"struct.std::pair"**
  %11 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 0
  store %"struct.std::pair"** %10, %"struct.std::pair"*** %11, align 8, !tbaa !90
  %12 = load i64* %6, align 8, !tbaa !111
  %13 = sub i64 %12, %2
  %14 = lshr i64 %13, 1
  %15 = getelementptr inbounds %"struct.std::pair"** %10, i64 %14
  %.sum = add i64 %14, %2
  %16 = getelementptr inbounds %"struct.std::pair"** %10, i64 %.sum
  invoke void @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE15_M_create_nodesEPPS1_S5_(%"class.std::_Deque_base.11"* %this, %"struct.std::pair"** %15, %"struct.std::pair"** %16) #17
          to label %26 unwind label %17

; <label>:17                                      ; preds = %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE15_M_allocate_mapEm.exit
  %18 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = tail call i8* @__cxa_begin_catch(i8* %19) #2
  %21 = load %"struct.std::pair"*** %11, align 8, !tbaa !90
  %22 = bitcast %"struct.std::pair"** %21 to i8*
  tail call void @_ZdlPv(i8* %22) #18
  %23 = bitcast %"class.std::_Deque_base.11"* %this to i8*
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 16, i32 8, i1 false)
  invoke void @__cxa_rethrow() #20
          to label %46 unwind label %24

; <label>:24                                      ; preds = %17
  %25 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  invoke void @__cxa_end_catch()
          to label %42 unwind label %43

; <label>:26                                      ; preds = %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE15_M_allocate_mapEm.exit
  %27 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 2, i32 3
  store %"struct.std::pair"** %15, %"struct.std::pair"*** %27, align 8, !tbaa !105
  %28 = load %"struct.std::pair"** %15, align 8, !tbaa !13
  %29 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 2, i32 1
  store %"struct.std::pair"* %28, %"struct.std::pair"** %29, align 8, !tbaa !108
  %30 = getelementptr inbounds %"struct.std::pair"* %28, i64 64
  %31 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 2, i32 2
  store %"struct.std::pair"* %30, %"struct.std::pair"** %31, align 8, !tbaa !109
  %.sum1 = add i64 %14, %1
  %32 = getelementptr inbounds %"struct.std::pair"** %10, i64 %.sum1
  %33 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 3, i32 3
  store %"struct.std::pair"** %32, %"struct.std::pair"*** %33, align 8, !tbaa !105
  %34 = load %"struct.std::pair"** %32, align 8, !tbaa !13
  %35 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 3, i32 1
  store %"struct.std::pair"* %34, %"struct.std::pair"** %35, align 8, !tbaa !108
  %36 = getelementptr inbounds %"struct.std::pair"* %34, i64 64
  %37 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 3, i32 2
  store %"struct.std::pair"* %36, %"struct.std::pair"** %37, align 8, !tbaa !109
  %38 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 2, i32 0
  store %"struct.std::pair"* %28, %"struct.std::pair"** %38, align 8, !tbaa !114
  %39 = and i64 %__num_elements, 63
  %40 = getelementptr inbounds %"struct.std::pair"* %34, i64 %39
  %41 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 3, i32 0
  store %"struct.std::pair"* %40, %"struct.std::pair"** %41, align 8, !tbaa !107
  ret void

; <label>:42                                      ; preds = %24
  resume { i8*, i32 } %25

; <label>:43                                      ; preds = %24
  %44 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %45 = extractvalue { i8*, i32 } %44, 0
  tail call void @__clang_call_terminate(i8* %45) #15
  unreachable

; <label>:46                                      ; preds = %17
  unreachable
}

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE15_M_create_nodesEPPS1_S5_(%"class.std::_Deque_base.11"* nocapture readnone %this, %"struct.std::pair"** %__nstart, %"struct.std::pair"** readnone %__nfinish) #5 align 2 {
  %1 = icmp ult %"struct.std::pair"** %__nstart, %__nfinish
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %3
  %__cur.02 = phi %"struct.std::pair"** [ %5, %3 ], [ %__nstart, %0 ]
  %2 = invoke noalias i8* @_Znwm(i64 512) #17
          to label %3 unwind label %7

; <label>:3                                       ; preds = %.lr.ph
  %4 = bitcast i8* %2 to %"struct.std::pair"*
  store %"struct.std::pair"* %4, %"struct.std::pair"** %__cur.02, align 8, !tbaa !13
  %5 = getelementptr inbounds %"struct.std::pair"** %__cur.02, i64 1
  %6 = icmp ult %"struct.std::pair"** %5, %__nfinish
  br i1 %6, label %.lr.ph, label %._crit_edge

; <label>:7                                       ; preds = %.lr.ph
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = tail call i8* @__cxa_begin_catch(i8* %9) #2
  %11 = icmp ugt %"struct.std::pair"** %__cur.02, %__nstart
  br i1 %11, label %.lr.ph.i, label %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit

.lr.ph.i:                                         ; preds = %7, %.lr.ph.i
  %__n.01.i = phi %"struct.std::pair"** [ %14, %.lr.ph.i ], [ %__nstart, %7 ]
  %12 = load %"struct.std::pair"** %__n.01.i, align 8, !tbaa !13
  %13 = bitcast %"struct.std::pair"* %12 to i8*
  tail call void @_ZdlPv(i8* %13) #18
  %14 = getelementptr inbounds %"struct.std::pair"** %__n.01.i, i64 1
  %15 = icmp ult %"struct.std::pair"** %14, %__cur.02
  br i1 %15, label %.lr.ph.i, label %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit

_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit: ; preds = %.lr.ph.i, %7
  invoke void @__cxa_rethrow() #20
          to label %22 unwind label %16

; <label>:16                                      ; preds = %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit
  %17 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  invoke void @__cxa_end_catch()
          to label %18 unwind label %19

._crit_edge:                                      ; preds = %3, %0
  ret void

; <label>:18                                      ; preds = %16
  resume { i8*, i32 } %17

; <label>:19                                      ; preds = %16
  %20 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %21 = extractvalue { i8*, i32 } %20, 0
  tail call void @__clang_call_terminate(i8* %21) #15
  unreachable

; <label>:22                                      ; preds = %_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit
  unreachable
}

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EEC2EOS3_(%"class.std::_Deque_base.11"* nocapture %this, %"class.std::_Deque_base.11"* nocapture %__x) unnamed_addr #5 align 2 {
  %1 = bitcast %"class.std::_Deque_base.11"* %this to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 80, i32 8, i1 false) #2
  invoke void @_ZNSt11_Deque_baseISt4pairIiiESaIS1_EE17_M_initialize_mapEm(%"class.std::_Deque_base.11"* %this, i64 0) #17
          to label %2 unwind label %40

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %"class.std::_Deque_base.11"* %__x, i64 0, i32 0, i32 0
  %4 = load %"struct.std::pair"*** %3, align 8, !tbaa !90
  %5 = icmp eq %"struct.std::pair"** %4, null
  br i1 %5, label %42, label %6

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 2
  %8 = getelementptr inbounds %"class.std::_Deque_base.11"* %__x, i64 0, i32 0, i32 2
  %9 = bitcast %"struct.std::_Deque_iterator.15"* %7 to <2 x %"struct.std::pair"*>*
  %10 = load <2 x %"struct.std::pair"*>* %9, align 8, !tbaa !13
  %11 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 2, i32 2
  %12 = load %"struct.std::pair"** %11, align 8, !tbaa !109
  %13 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 2, i32 3
  %14 = load %"struct.std::pair"*** %13, align 8, !tbaa !105
  %15 = bitcast %"struct.std::_Deque_iterator.15"* %7 to i8*
  %16 = bitcast %"struct.std::_Deque_iterator.15"* %8 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false) #2, !tbaa.struct !115
  %17 = bitcast %"struct.std::_Deque_iterator.15"* %8 to <2 x %"struct.std::pair"*>*
  store <2 x %"struct.std::pair"*> %10, <2 x %"struct.std::pair"*>* %17, align 8
  %18 = getelementptr inbounds %"class.std::_Deque_base.11"* %__x, i64 0, i32 0, i32 2, i32 2
  store %"struct.std::pair"* %12, %"struct.std::pair"** %18, align 8
  %19 = getelementptr inbounds %"class.std::_Deque_base.11"* %__x, i64 0, i32 0, i32 2, i32 3
  store %"struct.std::pair"** %14, %"struct.std::pair"*** %19, align 8
  %20 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 3
  %21 = getelementptr inbounds %"class.std::_Deque_base.11"* %__x, i64 0, i32 0, i32 3
  %22 = bitcast %"struct.std::_Deque_iterator.15"* %20 to <2 x %"struct.std::pair"*>*
  %23 = load <2 x %"struct.std::pair"*>* %22, align 8, !tbaa !13
  %24 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 3, i32 2
  %25 = load %"struct.std::pair"** %24, align 8, !tbaa !109
  %26 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 3, i32 3
  %27 = load %"struct.std::pair"*** %26, align 8, !tbaa !105
  %28 = bitcast %"struct.std::_Deque_iterator.15"* %20 to i8*
  %29 = bitcast %"struct.std::_Deque_iterator.15"* %21 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 32, i32 8, i1 false) #2, !tbaa.struct !115
  %30 = bitcast %"struct.std::_Deque_iterator.15"* %21 to <2 x %"struct.std::pair"*>*
  store <2 x %"struct.std::pair"*> %23, <2 x %"struct.std::pair"*>* %30, align 8
  %31 = getelementptr inbounds %"class.std::_Deque_base.11"* %__x, i64 0, i32 0, i32 3, i32 2
  store %"struct.std::pair"* %25, %"struct.std::pair"** %31, align 8
  %32 = getelementptr inbounds %"class.std::_Deque_base.11"* %__x, i64 0, i32 0, i32 3, i32 3
  store %"struct.std::pair"** %27, %"struct.std::pair"*** %32, align 8
  %33 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 0
  %34 = load %"struct.std::pair"*** %33, align 8, !tbaa !13
  %35 = load %"struct.std::pair"*** %3, align 8, !tbaa !13
  store %"struct.std::pair"** %35, %"struct.std::pair"*** %33, align 8, !tbaa !13
  store %"struct.std::pair"** %34, %"struct.std::pair"*** %3, align 8, !tbaa !13
  %36 = getelementptr inbounds %"class.std::_Deque_base.11"* %this, i64 0, i32 0, i32 1
  %37 = getelementptr inbounds %"class.std::_Deque_base.11"* %__x, i64 0, i32 0, i32 1
  %38 = load i64* %36, align 8, !tbaa !116
  %39 = load i64* %37, align 8, !tbaa !116
  store i64 %39, i64* %36, align 8, !tbaa !116
  store i64 %38, i64* %37, align 8, !tbaa !116
  br label %42

; <label>:40                                      ; preds = %0
  %41 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  resume { i8*, i32 } %41

; <label>:42                                      ; preds = %2, %6
  ret void
}

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* nocapture %this, i64 %__num_elements) #5 align 2 {
  %1 = lshr i64 %__num_elements, 7
  %2 = add i64 %1, 1
  %3 = add i64 %1, 3
  %4 = icmp ugt i64 %3, 8
  %5 = select i1 %4, i64 %3, i64 8
  %6 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 1
  store i64 %5, i64* %6, align 8, !tbaa !113
  %7 = icmp ugt i64 %5, 2305843009213693951
  br i1 %7, label %.noexc.i, label %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit

.noexc.i:                                         ; preds = %0
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit: ; preds = %0
  %8 = shl nsw i64 %5, 3
  %9 = tail call noalias i8* @_Znwm(i64 %8) #17
  %10 = bitcast i8* %9 to i32**
  %11 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 0
  store i32** %10, i32*** %11, align 8, !tbaa !84
  %12 = load i64* %6, align 8, !tbaa !113
  %13 = sub i64 %12, %2
  %14 = lshr i64 %13, 1
  %15 = getelementptr inbounds i32** %10, i64 %14
  %.sum = add i64 %14, %2
  %16 = getelementptr inbounds i32** %10, i64 %.sum
  invoke void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(%"class.std::_Deque_base"* %this, i32** %15, i32** %16) #17
          to label %26 unwind label %17

; <label>:17                                      ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  %18 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = tail call i8* @__cxa_begin_catch(i8* %19) #2
  %21 = load i32*** %11, align 8, !tbaa !84
  %22 = bitcast i32** %21 to i8*
  tail call void @_ZdlPv(i8* %22) #18
  %23 = bitcast %"class.std::_Deque_base"* %this to i8*
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 16, i32 8, i1 false)
  invoke void @__cxa_rethrow() #20
          to label %46 unwind label %24

; <label>:24                                      ; preds = %17
  %25 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  invoke void @__cxa_end_catch()
          to label %42 unwind label %43

; <label>:26                                      ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  %27 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 2, i32 3
  store i32** %15, i32*** %27, align 8, !tbaa !97
  %28 = load i32** %15, align 8, !tbaa !13
  %29 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 2, i32 1
  store i32* %28, i32** %29, align 8, !tbaa !100
  %30 = getelementptr inbounds i32* %28, i64 128
  %31 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 2, i32 2
  store i32* %30, i32** %31, align 8, !tbaa !101
  %.sum1 = add i64 %14, %1
  %32 = getelementptr inbounds i32** %10, i64 %.sum1
  %33 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 3, i32 3
  store i32** %32, i32*** %33, align 8, !tbaa !97
  %34 = load i32** %32, align 8, !tbaa !13
  %35 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 3, i32 1
  store i32* %34, i32** %35, align 8, !tbaa !100
  %36 = getelementptr inbounds i32* %34, i64 128
  %37 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 3, i32 2
  store i32* %36, i32** %37, align 8, !tbaa !101
  %38 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 2, i32 0
  store i32* %28, i32** %38, align 8, !tbaa !117
  %39 = and i64 %__num_elements, 127
  %40 = getelementptr inbounds i32* %34, i64 %39
  %41 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 3, i32 0
  store i32* %40, i32** %41, align 8, !tbaa !99
  ret void

; <label>:42                                      ; preds = %24
  resume { i8*, i32 } %25

; <label>:43                                      ; preds = %24
  %44 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %45 = extractvalue { i8*, i32 } %44, 0
  tail call void @__clang_call_terminate(i8* %45) #15
  unreachable

; <label>:46                                      ; preds = %17
  unreachable
}

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(%"class.std::_Deque_base"* nocapture readnone %this, i32** %__nstart, i32** readnone %__nfinish) #5 align 2 {
  %1 = icmp ult i32** %__nstart, %__nfinish
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %3
  %__cur.02 = phi i32** [ %5, %3 ], [ %__nstart, %0 ]
  %2 = invoke noalias i8* @_Znwm(i64 512) #17
          to label %3 unwind label %7

; <label>:3                                       ; preds = %.lr.ph
  %4 = bitcast i8* %2 to i32*
  store i32* %4, i32** %__cur.02, align 8, !tbaa !13
  %5 = getelementptr inbounds i32** %__cur.02, i64 1
  %6 = icmp ult i32** %5, %__nfinish
  br i1 %6, label %.lr.ph, label %._crit_edge

; <label>:7                                       ; preds = %.lr.ph
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = tail call i8* @__cxa_begin_catch(i8* %9) #2
  %11 = icmp ugt i32** %__cur.02, %__nstart
  br i1 %11, label %.lr.ph.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit

.lr.ph.i:                                         ; preds = %7, %.lr.ph.i
  %__n.01.i = phi i32** [ %14, %.lr.ph.i ], [ %__nstart, %7 ]
  %12 = load i32** %__n.01.i, align 8, !tbaa !13
  %13 = bitcast i32* %12 to i8*
  tail call void @_ZdlPv(i8* %13) #18
  %14 = getelementptr inbounds i32** %__n.01.i, i64 1
  %15 = icmp ult i32** %14, %__cur.02
  br i1 %15, label %.lr.ph.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit: ; preds = %.lr.ph.i, %7
  invoke void @__cxa_rethrow() #20
          to label %22 unwind label %16

; <label>:16                                      ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit
  %17 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  invoke void @__cxa_end_catch()
          to label %18 unwind label %19

._crit_edge:                                      ; preds = %3, %0
  ret void

; <label>:18                                      ; preds = %16
  resume { i8*, i32 } %17

; <label>:19                                      ; preds = %16
  %20 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %21 = extractvalue { i8*, i32 } %20, 0
  tail call void @__clang_call_terminate(i8* %21) #15
  unreachable

; <label>:22                                      ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit
  unreachable
}

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEEC2EOS1_(%"class.std::_Deque_base"* nocapture %this, %"class.std::_Deque_base"* nocapture %__x) unnamed_addr #5 align 2 {
  %1 = bitcast %"class.std::_Deque_base"* %this to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 80, i32 8, i1 false) #2
  invoke void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this, i64 0) #17
          to label %2 unwind label %40

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %__x, i64 0, i32 0, i32 0
  %4 = load i32*** %3, align 8, !tbaa !84
  %5 = icmp eq i32** %4, null
  br i1 %5, label %42, label %6

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 2
  %8 = getelementptr inbounds %"class.std::_Deque_base"* %__x, i64 0, i32 0, i32 2
  %9 = bitcast %"struct.std::_Deque_iterator"* %7 to <2 x i32*>*
  %10 = load <2 x i32*>* %9, align 8, !tbaa !13
  %11 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 2, i32 2
  %12 = load i32** %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 2, i32 3
  %14 = load i32*** %13, align 8, !tbaa !97
  %15 = bitcast %"struct.std::_Deque_iterator"* %7 to i8*
  %16 = bitcast %"struct.std::_Deque_iterator"* %8 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false) #2, !tbaa.struct !115
  %17 = bitcast %"struct.std::_Deque_iterator"* %8 to <2 x i32*>*
  store <2 x i32*> %10, <2 x i32*>* %17, align 8
  %18 = getelementptr inbounds %"class.std::_Deque_base"* %__x, i64 0, i32 0, i32 2, i32 2
  store i32* %12, i32** %18, align 8
  %19 = getelementptr inbounds %"class.std::_Deque_base"* %__x, i64 0, i32 0, i32 2, i32 3
  store i32** %14, i32*** %19, align 8
  %20 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 3
  %21 = getelementptr inbounds %"class.std::_Deque_base"* %__x, i64 0, i32 0, i32 3
  %22 = bitcast %"struct.std::_Deque_iterator"* %20 to <2 x i32*>*
  %23 = load <2 x i32*>* %22, align 8, !tbaa !13
  %24 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 3, i32 2
  %25 = load i32** %24, align 8, !tbaa !101
  %26 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 3, i32 3
  %27 = load i32*** %26, align 8, !tbaa !97
  %28 = bitcast %"struct.std::_Deque_iterator"* %20 to i8*
  %29 = bitcast %"struct.std::_Deque_iterator"* %21 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 32, i32 8, i1 false) #2, !tbaa.struct !115
  %30 = bitcast %"struct.std::_Deque_iterator"* %21 to <2 x i32*>*
  store <2 x i32*> %23, <2 x i32*>* %30, align 8
  %31 = getelementptr inbounds %"class.std::_Deque_base"* %__x, i64 0, i32 0, i32 3, i32 2
  store i32* %25, i32** %31, align 8
  %32 = getelementptr inbounds %"class.std::_Deque_base"* %__x, i64 0, i32 0, i32 3, i32 3
  store i32** %27, i32*** %32, align 8
  %33 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 0
  %34 = load i32*** %33, align 8, !tbaa !13
  %35 = load i32*** %3, align 8, !tbaa !13
  store i32** %35, i32*** %33, align 8, !tbaa !13
  store i32** %34, i32*** %3, align 8, !tbaa !13
  %36 = getelementptr inbounds %"class.std::_Deque_base"* %this, i64 0, i32 0, i32 1
  %37 = getelementptr inbounds %"class.std::_Deque_base"* %__x, i64 0, i32 0, i32 1
  %38 = load i64* %36, align 8, !tbaa !116
  %39 = load i64* %37, align 8, !tbaa !116
  store i64 %39, i64* %36, align 8, !tbaa !116
  store i64 %38, i64* %37, align 8, !tbaa !116
  br label %42

; <label>:40                                      ; preds = %0
  %41 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  resume { i8*, i32 } %41

; <label>:42                                      ; preds = %2, %6
  ret void
}

; Function Attrs: optsize uwtable
define available_externally void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKSsSt13_Ios_Openmode(%"class.std::basic_ifstream"* %this, %"class.std::basic_string"* nocapture readonly %__s, i32 %__mode) unnamed_addr #5 align 2 {
  %1 = bitcast %"class.std::basic_ifstream"* %this to i8*
  %2 = getelementptr inbounds %"class.std::basic_ifstream"* %this, i64 0, i32 2
  %3 = getelementptr inbounds %"class.std::basic_ios"* %2, i64 0, i32 0
  tail call void @_ZNSt8ios_baseC2Ev(%"class.std::ios_base"* %3) #18
  %4 = getelementptr inbounds %"class.std::basic_ios"* %2, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([4 x i8*]* @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !27
  %5 = getelementptr inbounds %"class.std::basic_ifstream"* %this, i64 0, i32 2, i32 1
  store %"class.std::basic_ostream"* null, %"class.std::basic_ostream"** %5, align 8, !tbaa !118
  %6 = getelementptr inbounds %"class.std::basic_ifstream"* %this, i64 0, i32 2, i32 2
  store i8 0, i8* %6, align 1, !tbaa !119
  %7 = getelementptr inbounds %"class.std::basic_ifstream"* %this, i64 0, i32 2, i32 3
  store i8 0, i8* %7, align 1, !tbaa !120
  %8 = getelementptr inbounds %"class.std::basic_ifstream"* %this, i64 0, i32 2, i32 4
  %9 = bitcast %"class.std::basic_streambuf"** %8 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 32, i32 8, i1 false) #2
  %10 = load i8** getelementptr inbounds ([4 x i8*]* @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 1), align 8
  %11 = bitcast %"class.std::basic_ifstream"* %this to i8**
  %12 = getelementptr inbounds %"class.std::basic_ifstream"* %this, i64 0, i32 0, i32 0
  %.c.i = bitcast i8* %10 to i32 (...)**
  store i32 (...)** %.c.i, i32 (...)*** %12, align 8, !tbaa !27
  %13 = load i8** getelementptr inbounds ([4 x i8*]* @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 2), align 8
  %14 = getelementptr i8* %10, i64 -24
  %15 = bitcast i8* %14 to i64*
  %16 = load i64* %15, align 8
  %17 = getelementptr inbounds i8* %1, i64 %16
  %18 = bitcast i8* %17 to i8**
  store i8* %13, i8** %18, align 8, !tbaa !27
  %19 = getelementptr inbounds %"class.std::basic_ifstream"* %this, i64 0, i32 0, i32 1
  store i64 0, i64* %19, align 8, !tbaa !121
  %20 = load i8** %11, align 8, !tbaa !27
  %21 = getelementptr i8* %20, i64 -24
  %22 = bitcast i8* %21 to i64*
  %23 = load i64* %22, align 8
  %24 = getelementptr inbounds i8* %1, i64 %23
  %25 = bitcast i8* %24 to %"class.std::basic_ios"*
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(%"class.std::basic_ios"* %25, %"class.std::basic_streambuf"* null) #17
          to label %_ZNSiC2Ev.exit unwind label %37

_ZNSiC2Ev.exit:                                   ; preds = %0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([10 x i8*]* @_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 3) to i32 (...)**), i32 (...)*** %12, align 8, !tbaa !27
  store i32 (...)** bitcast (i8** getelementptr inbounds ([10 x i8*]* @_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 8) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !27
  %26 = getelementptr inbounds %"class.std::basic_ifstream"* %this, i64 0, i32 1
  invoke void @_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev(%"class.std::basic_filebuf"* %26) #17
          to label %27 unwind label %41

; <label>:27                                      ; preds = %_ZNSiC2Ev.exit
  %28 = load i8** %11, align 8, !tbaa !27
  %29 = getelementptr i8* %28, i64 -24
  %30 = bitcast i8* %29 to i64*
  %31 = load i64* %30, align 8
  %32 = getelementptr inbounds i8* %1, i64 %31
  %33 = bitcast i8* %32 to %"class.std::basic_ios"*
  %34 = getelementptr inbounds %"class.std::basic_filebuf"* %26, i64 0, i32 0
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(%"class.std::basic_ios"* %33, %"class.std::basic_streambuf"* %34) #17
          to label %35 unwind label %45

; <label>:35                                      ; preds = %27
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode(%"class.std::basic_ifstream"* %this, %"class.std::basic_string"* %__s, i32 %__mode) #17
          to label %36 unwind label %45

; <label>:36                                      ; preds = %35
  ret void

; <label>:37                                      ; preds = %0
  %38 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  %40 = extractvalue { i8*, i32 } %38, 1
  br label %53

; <label>:41                                      ; preds = %_ZNSiC2Ev.exit
  %42 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  %44 = extractvalue { i8*, i32 } %42, 1
  br label %49

; <label>:45                                      ; preds = %35, %27
  %46 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %47 = extractvalue { i8*, i32 } %46, 0
  %48 = extractvalue { i8*, i32 } %46, 1
  tail call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(%"class.std::basic_filebuf"* %26) #18
  br label %49

; <label>:49                                      ; preds = %45, %41
  %.01 = phi i8* [ %47, %45 ], [ %43, %41 ]
  %.0 = phi i32 [ %48, %45 ], [ %44, %41 ]
  store i32 (...)** %.c.i, i32 (...)*** %12, align 8, !tbaa !27
  %50 = load i64* %15, align 8
  %51 = getelementptr inbounds i8* %1, i64 %50
  %52 = bitcast i8* %51 to i8**
  store i8* %13, i8** %52, align 8, !tbaa !27
  store i64 0, i64* %19, align 8, !tbaa !121
  br label %53

; <label>:53                                      ; preds = %49, %37
  %.12 = phi i8* [ %.01, %49 ], [ %39, %37 ]
  %.1 = phi i32 [ %.0, %49 ], [ %40, %37 ]
  tail call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %3) #18
  %54 = insertvalue { i8*, i32 } undef, i8* %.12, 0
  %55 = insertvalue { i8*, i32 } %54, i32 %.1, 1
  resume { i8*, i32 } %55
}

; Function Attrs: optsize uwtable
define available_externally void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKSsSt13_Ios_Openmode(%"class.std::basic_istringstream"* %this, %"class.std::basic_string"* nocapture readonly %__str, i32 %__mode) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator.3", align 1
  %2 = bitcast %"class.std::basic_istringstream"* %this to i8*
  %3 = getelementptr inbounds %"class.std::basic_istringstream"* %this, i64 0, i32 2
  %4 = getelementptr inbounds %"class.std::basic_ios"* %3, i64 0, i32 0
  call void @_ZNSt8ios_baseC2Ev(%"class.std::ios_base"* %4) #18
  %5 = getelementptr inbounds %"class.std::basic_ios"* %3, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([4 x i8*]* @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %5, align 8, !tbaa !27
  %6 = getelementptr inbounds %"class.std::basic_istringstream"* %this, i64 0, i32 2, i32 1
  store %"class.std::basic_ostream"* null, %"class.std::basic_ostream"** %6, align 8, !tbaa !118
  %7 = getelementptr inbounds %"class.std::basic_istringstream"* %this, i64 0, i32 2, i32 2
  store i8 0, i8* %7, align 1, !tbaa !119
  %8 = getelementptr inbounds %"class.std::basic_istringstream"* %this, i64 0, i32 2, i32 3
  store i8 0, i8* %8, align 1, !tbaa !120
  %9 = getelementptr inbounds %"class.std::basic_istringstream"* %this, i64 0, i32 2, i32 4
  %10 = bitcast %"class.std::basic_streambuf"** %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 32, i32 8, i1 false) #2
  %11 = load i8** getelementptr inbounds ([4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 1), align 8
  %12 = bitcast %"class.std::basic_istringstream"* %this to i8**
  %13 = getelementptr inbounds %"class.std::basic_istringstream"* %this, i64 0, i32 0, i32 0
  %.c.i = bitcast i8* %11 to i32 (...)**
  store i32 (...)** %.c.i, i32 (...)*** %13, align 8, !tbaa !27
  %14 = load i8** getelementptr inbounds ([4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 2), align 8
  %15 = getelementptr i8* %11, i64 -24
  %16 = bitcast i8* %15 to i64*
  %17 = load i64* %16, align 8
  %18 = getelementptr inbounds i8* %2, i64 %17
  %19 = bitcast i8* %18 to i8**
  store i8* %14, i8** %19, align 8, !tbaa !27
  %20 = getelementptr inbounds %"class.std::basic_istringstream"* %this, i64 0, i32 0, i32 1
  store i64 0, i64* %20, align 8, !tbaa !121
  %21 = load i8** %12, align 8, !tbaa !27
  %22 = getelementptr i8* %21, i64 -24
  %23 = bitcast i8* %22 to i64*
  %24 = load i64* %23, align 8
  %25 = getelementptr inbounds i8* %2, i64 %24
  %26 = bitcast i8* %25 to %"class.std::basic_ios"*
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(%"class.std::basic_ios"* %26, %"class.std::basic_streambuf"* null) #17
          to label %_ZNSiC2Ev.exit unwind label %37

_ZNSiC2Ev.exit:                                   ; preds = %0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([10 x i8*]* @_ZTVSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !27
  store i32 (...)** bitcast (i8** getelementptr inbounds ([10 x i8*]* @_ZTVSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 8) to i32 (...)**), i32 (...)*** %5, align 8, !tbaa !27
  %27 = getelementptr inbounds %"class.std::basic_istringstream"* %this, i64 0, i32 1
  %28 = or i32 %__mode, 8
  invoke void @_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEEC2ERKSsSt13_Ios_Openmode(%"class.std::basic_stringbuf"* %27, %"class.std::basic_string"* %__str, i32 %28) #17
          to label %_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEEC1ERKSsSt13_Ios_Openmode.exit unwind label %41

_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEEC1ERKSsSt13_Ios_Openmode.exit: ; preds = %_ZNSiC2Ev.exit
  %29 = load i8** %12, align 8, !tbaa !27
  %30 = getelementptr i8* %29, i64 -24
  %31 = bitcast i8* %30 to i64*
  %32 = load i64* %31, align 8
  %33 = getelementptr inbounds i8* %2, i64 %32
  %34 = bitcast i8* %33 to %"class.std::basic_ios"*
  %35 = getelementptr inbounds %"class.std::basic_stringbuf"* %27, i64 0, i32 0
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(%"class.std::basic_ios"* %34, %"class.std::basic_streambuf"* %35) #17
          to label %36 unwind label %45

; <label>:36                                      ; preds = %_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEEC1ERKSsSt13_Ios_Openmode.exit
  ret void

; <label>:37                                      ; preds = %0
  %38 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  %40 = extractvalue { i8*, i32 } %38, 1
  br label %60

; <label>:41                                      ; preds = %_ZNSiC2Ev.exit
  %42 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  %44 = extractvalue { i8*, i32 } %42, 1
  br label %56

; <label>:45                                      ; preds = %_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEEC1ERKSsSt13_Ios_Openmode.exit
  %46 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %47 = extractvalue { i8*, i32 } %46, 0
  %48 = extractvalue { i8*, i32 } %46, 1
  %49 = getelementptr inbounds %"class.std::basic_stringbuf"* %27, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*]* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %49, align 8, !tbaa !27
  %50 = getelementptr inbounds %"class.std::allocator.3"* %1, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %50) #2
  %51 = getelementptr inbounds %"class.std::basic_istringstream"* %this, i64 0, i32 1, i32 2, i32 0, i32 0
  %52 = load i8** %51, align 8, !tbaa !14
  %53 = getelementptr inbounds i8* %52, i64 -24
  %54 = bitcast i8* %53 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %54, %"class.std::allocator.3"* %1) #18
  call void @llvm.lifetime.end(i64 1, i8* %50) #2
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*]* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %49, align 8, !tbaa !27
  %55 = getelementptr inbounds %"class.std::basic_istringstream"* %this, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* %55) #18
  br label %56

; <label>:56                                      ; preds = %45, %41
  %.01 = phi i8* [ %47, %45 ], [ %43, %41 ]
  %.0 = phi i32 [ %48, %45 ], [ %44, %41 ]
  store i32 (...)** %.c.i, i32 (...)*** %13, align 8, !tbaa !27
  %57 = load i64* %16, align 8
  %58 = getelementptr inbounds i8* %2, i64 %57
  %59 = bitcast i8* %58 to i8**
  store i8* %14, i8** %59, align 8, !tbaa !27
  store i64 0, i64* %20, align 8, !tbaa !121
  br label %60

; <label>:60                                      ; preds = %56, %37
  %.12 = phi i8* [ %.01, %56 ], [ %39, %37 ]
  %.1 = phi i32 [ %.0, %56 ], [ %40, %37 ]
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %4) #18
  %61 = insertvalue { i8*, i32 } undef, i8* %.12, 0
  %62 = insertvalue { i8*, i32 } %61, i32 %.1, 1
  resume { i8*, i32 } %62
}

; Function Attrs: inlinehint optsize uwtable
define linkonce_odr %"class.std::vector.24"* @_ZSt4copyISt16istream_iteratorISscSt11char_traitsIcElESt20back_insert_iteratorISt6vectorISsSaISsEEEET0_T_SA_S9_(%"class.std::istream_iterator"* %__first, %"class.std::istream_iterator"* %__last, %"class.std::vector.24"* %__result.coerce) #13 {
  %1 = alloca %"class.std::allocator.3", align 1
  %2 = alloca %"class.std::allocator.3", align 1
  %3 = alloca %"class.std::allocator.3", align 1
  %4 = alloca %"class.std::allocator.3", align 1
  %5 = alloca %"class.std::allocator.3", align 1
  %6 = alloca %"class.std::allocator.3", align 1
  %7 = alloca %"class.std::allocator.3", align 1
  %8 = alloca %"class.std::allocator.3", align 1
  %9 = alloca %"class.std::allocator.3", align 1
  %10 = alloca %"class.std::allocator.3", align 1
  %11 = alloca %"class.std::istream_iterator", align 8
  %12 = alloca %"class.std::allocator.3", align 1
  %13 = alloca %"class.std::allocator.3", align 1
  %14 = alloca %"class.std::istream_iterator", align 8
  %15 = alloca %"class.std::istream_iterator", align 8
  %16 = alloca %"class.std::istream_iterator", align 8
  %17 = alloca %"class.std::istream_iterator", align 8
  %18 = alloca %"class.std::istream_iterator", align 8
  %19 = getelementptr inbounds %"class.std::istream_iterator"* %16, i64 0, i32 0
  %20 = getelementptr inbounds %"class.std::istream_iterator"* %__first, i64 0, i32 0
  %21 = load %"class.std::basic_istream"** %20, align 8, !tbaa !48
  store %"class.std::basic_istream"* %21, %"class.std::basic_istream"** %19, align 8, !tbaa !48
  %22 = getelementptr inbounds %"class.std::istream_iterator"* %16, i64 0, i32 1
  %23 = getelementptr inbounds %"class.std::istream_iterator"* %__first, i64 0, i32 1
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* %22, %"class.std::basic_string"* %23) #17
  %24 = getelementptr inbounds %"class.std::istream_iterator"* %16, i64 0, i32 2
  %25 = getelementptr inbounds %"class.std::istream_iterator"* %__first, i64 0, i32 2
  %26 = load i8* %25, align 1, !tbaa !50, !range !123
  store i8 %26, i8* %24, align 8, !tbaa !50
  %27 = bitcast %"class.std::istream_iterator"* %14 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %27)
  %28 = getelementptr inbounds %"class.std::istream_iterator"* %14, i64 0, i32 0
  %29 = load %"class.std::basic_istream"** %19, align 8, !tbaa !48
  store %"class.std::basic_istream"* %29, %"class.std::basic_istream"** %28, align 8, !tbaa !48
  %30 = getelementptr inbounds %"class.std::istream_iterator"* %14, i64 0, i32 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %30, %"class.std::basic_string"* %22) #17
          to label %.noexc unwind label %106

.noexc:                                           ; preds = %0
  %31 = getelementptr inbounds %"class.std::istream_iterator"* %14, i64 0, i32 2
  %32 = load i8* %24, align 8, !tbaa !50, !range !123
  store i8 %32, i8* %31, align 8, !tbaa !50
  %33 = getelementptr inbounds %"class.std::istream_iterator"* %15, i64 0, i32 0
  %34 = load %"class.std::basic_istream"** %28, align 8, !tbaa !48
  store %"class.std::basic_istream"* %34, %"class.std::basic_istream"** %33, align 8, !tbaa !48
  %35 = getelementptr inbounds %"class.std::istream_iterator"* %15, i64 0, i32 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %35, %"class.std::basic_string"* %30) #17
          to label %43 unwind label %36

; <label>:36                                      ; preds = %.noexc
  %37 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %38 = getelementptr inbounds %"class.std::allocator.3"* %12, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %38) #2
  %39 = getelementptr inbounds %"class.std::istream_iterator"* %14, i64 0, i32 1, i32 0, i32 0
  %40 = load i8** %39, align 8, !tbaa !14
  %41 = getelementptr inbounds i8* %40, i64 -24
  %42 = bitcast i8* %41 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %42, %"class.std::allocator.3"* %12) #18
  call void @llvm.lifetime.end(i64 1, i8* %38) #2
  br label %.body

; <label>:43                                      ; preds = %.noexc
  %44 = getelementptr inbounds %"class.std::istream_iterator"* %15, i64 0, i32 2
  %45 = load i8* %31, align 8, !tbaa !50, !range !123
  store i8 %45, i8* %44, align 8, !tbaa !50
  %46 = getelementptr inbounds %"class.std::allocator.3"* %13, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %46) #2
  %47 = getelementptr inbounds %"class.std::istream_iterator"* %14, i64 0, i32 1, i32 0, i32 0
  %48 = load i8** %47, align 8, !tbaa !14
  %49 = getelementptr inbounds i8* %48, i64 -24
  %50 = bitcast i8* %49 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %50, %"class.std::allocator.3"* %13) #18
  call void @llvm.lifetime.end(i64 1, i8* %46) #2
  call void @llvm.lifetime.end(i64 24, i8* %27)
  %51 = getelementptr inbounds %"class.std::istream_iterator"* %18, i64 0, i32 0
  %52 = getelementptr inbounds %"class.std::istream_iterator"* %__last, i64 0, i32 0
  %53 = load %"class.std::basic_istream"** %52, align 8, !tbaa !48
  store %"class.std::basic_istream"* %53, %"class.std::basic_istream"** %51, align 8, !tbaa !48
  %54 = getelementptr inbounds %"class.std::istream_iterator"* %18, i64 0, i32 1
  %55 = getelementptr inbounds %"class.std::istream_iterator"* %__last, i64 0, i32 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %54, %"class.std::basic_string"* %55) #17
          to label %56 unwind label %110

; <label>:56                                      ; preds = %43
  %57 = getelementptr inbounds %"class.std::istream_iterator"* %18, i64 0, i32 2
  %58 = getelementptr inbounds %"class.std::istream_iterator"* %__last, i64 0, i32 2
  %59 = load i8* %58, align 1, !tbaa !50, !range !123
  store i8 %59, i8* %57, align 8, !tbaa !50
  %60 = bitcast %"class.std::istream_iterator"* %11 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %60)
  %61 = getelementptr inbounds %"class.std::istream_iterator"* %11, i64 0, i32 0
  %62 = load %"class.std::basic_istream"** %51, align 8, !tbaa !48
  store %"class.std::basic_istream"* %62, %"class.std::basic_istream"** %61, align 8, !tbaa !48
  %63 = getelementptr inbounds %"class.std::istream_iterator"* %11, i64 0, i32 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %63, %"class.std::basic_string"* %54) #17
          to label %.noexc6 unwind label %114

.noexc6:                                          ; preds = %56
  %64 = getelementptr inbounds %"class.std::istream_iterator"* %11, i64 0, i32 2
  %65 = load i8* %57, align 8, !tbaa !50, !range !123
  store i8 %65, i8* %64, align 8, !tbaa !50
  %66 = getelementptr inbounds %"class.std::istream_iterator"* %17, i64 0, i32 0
  %67 = load %"class.std::basic_istream"** %61, align 8, !tbaa !48
  store %"class.std::basic_istream"* %67, %"class.std::basic_istream"** %66, align 8, !tbaa !48
  %68 = getelementptr inbounds %"class.std::istream_iterator"* %17, i64 0, i32 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %68, %"class.std::basic_string"* %63) #17
          to label %76 unwind label %69

; <label>:69                                      ; preds = %.noexc6
  %70 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %71 = getelementptr inbounds %"class.std::allocator.3"* %9, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %71) #2
  %72 = getelementptr inbounds %"class.std::istream_iterator"* %11, i64 0, i32 1, i32 0, i32 0
  %73 = load i8** %72, align 8, !tbaa !14
  %74 = getelementptr inbounds i8* %73, i64 -24
  %75 = bitcast i8* %74 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %75, %"class.std::allocator.3"* %9) #18
  call void @llvm.lifetime.end(i64 1, i8* %71) #2
  br label %.body7

; <label>:76                                      ; preds = %.noexc6
  %77 = getelementptr inbounds %"class.std::istream_iterator"* %17, i64 0, i32 2
  %78 = load i8* %64, align 8, !tbaa !50, !range !123
  store i8 %78, i8* %77, align 8, !tbaa !50
  %79 = getelementptr inbounds %"class.std::allocator.3"* %10, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %79) #2
  %80 = getelementptr inbounds %"class.std::istream_iterator"* %11, i64 0, i32 1, i32 0, i32 0
  %81 = load i8** %80, align 8, !tbaa !14
  %82 = getelementptr inbounds i8* %81, i64 -24
  %83 = bitcast i8* %82 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %83, %"class.std::allocator.3"* %10) #18
  call void @llvm.lifetime.end(i64 1, i8* %79) #2
  call void @llvm.lifetime.end(i64 24, i8* %60)
  %84 = invoke %"class.std::vector.24"* @_ZSt14__copy_move_a2ILb0ESt16istream_iteratorISscSt11char_traitsIcElESt20back_insert_iteratorISt6vectorISsSaISsEEEET1_T0_SA_S9_(%"class.std::istream_iterator"* %15, %"class.std::istream_iterator"* %17, %"class.std::vector.24"* %__result.coerce) #17
          to label %85 unwind label %118

; <label>:85                                      ; preds = %76
  %86 = getelementptr inbounds %"class.std::allocator.3"* %8, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %86) #2
  %87 = getelementptr inbounds %"class.std::istream_iterator"* %17, i64 0, i32 1, i32 0, i32 0
  %88 = load i8** %87, align 8, !tbaa !14
  %89 = getelementptr inbounds i8* %88, i64 -24
  %90 = bitcast i8* %89 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %90, %"class.std::allocator.3"* %8) #18
  call void @llvm.lifetime.end(i64 1, i8* %86) #2
  %91 = getelementptr inbounds %"class.std::allocator.3"* %7, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %91) #2
  %92 = getelementptr inbounds %"class.std::istream_iterator"* %18, i64 0, i32 1, i32 0, i32 0
  %93 = load i8** %92, align 8, !tbaa !14
  %94 = getelementptr inbounds i8* %93, i64 -24
  %95 = bitcast i8* %94 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %95, %"class.std::allocator.3"* %7) #18
  call void @llvm.lifetime.end(i64 1, i8* %91) #2
  %96 = getelementptr inbounds %"class.std::allocator.3"* %6, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %96) #2
  %97 = getelementptr inbounds %"class.std::istream_iterator"* %15, i64 0, i32 1, i32 0, i32 0
  %98 = load i8** %97, align 8, !tbaa !14
  %99 = getelementptr inbounds i8* %98, i64 -24
  %100 = bitcast i8* %99 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %100, %"class.std::allocator.3"* %6) #18
  call void @llvm.lifetime.end(i64 1, i8* %96) #2
  %101 = getelementptr inbounds %"class.std::allocator.3"* %5, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %101) #2
  %102 = getelementptr inbounds %"class.std::istream_iterator"* %16, i64 0, i32 1, i32 0, i32 0
  %103 = load i8** %102, align 8, !tbaa !14
  %104 = getelementptr inbounds i8* %103, i64 -24
  %105 = bitcast i8* %104 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %105, %"class.std::allocator.3"* %5) #18
  call void @llvm.lifetime.end(i64 1, i8* %101) #2
  ret %"class.std::vector.24"* %84

; <label>:106                                     ; preds = %0
  %107 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  br label %.body

.body:                                            ; preds = %36, %106
  %eh.lpad-body = phi { i8*, i32 } [ %107, %106 ], [ %37, %36 ]
  %108 = extractvalue { i8*, i32 } %eh.lpad-body, 0
  %109 = extractvalue { i8*, i32 } %eh.lpad-body, 1
  br label %139

; <label>:110                                     ; preds = %43
  %111 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %112 = extractvalue { i8*, i32 } %111, 0
  %113 = extractvalue { i8*, i32 } %111, 1
  br label %133

; <label>:114                                     ; preds = %56
  %115 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  br label %.body7

.body7:                                           ; preds = %69, %114
  %eh.lpad-body8 = phi { i8*, i32 } [ %115, %114 ], [ %70, %69 ]
  %116 = extractvalue { i8*, i32 } %eh.lpad-body8, 0
  %117 = extractvalue { i8*, i32 } %eh.lpad-body8, 1
  br label %127

; <label>:118                                     ; preds = %76
  %119 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %120 = extractvalue { i8*, i32 } %119, 0
  %121 = extractvalue { i8*, i32 } %119, 1
  %122 = getelementptr inbounds %"class.std::allocator.3"* %4, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %122) #2
  %123 = getelementptr inbounds %"class.std::istream_iterator"* %17, i64 0, i32 1, i32 0, i32 0
  %124 = load i8** %123, align 8, !tbaa !14
  %125 = getelementptr inbounds i8* %124, i64 -24
  %126 = bitcast i8* %125 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %126, %"class.std::allocator.3"* %4) #18
  call void @llvm.lifetime.end(i64 1, i8* %122) #2
  br label %127

; <label>:127                                     ; preds = %118, %.body7
  %.02 = phi i32 [ %121, %118 ], [ %117, %.body7 ]
  %.0 = phi i8* [ %120, %118 ], [ %116, %.body7 ]
  %128 = getelementptr inbounds %"class.std::allocator.3"* %3, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %128) #2
  %129 = getelementptr inbounds %"class.std::istream_iterator"* %18, i64 0, i32 1, i32 0, i32 0
  %130 = load i8** %129, align 8, !tbaa !14
  %131 = getelementptr inbounds i8* %130, i64 -24
  %132 = bitcast i8* %131 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %132, %"class.std::allocator.3"* %3) #18
  call void @llvm.lifetime.end(i64 1, i8* %128) #2
  br label %133

; <label>:133                                     ; preds = %127, %110
  %.13 = phi i32 [ %.02, %127 ], [ %113, %110 ]
  %.1 = phi i8* [ %.0, %127 ], [ %112, %110 ]
  %134 = getelementptr inbounds %"class.std::allocator.3"* %2, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %134) #2
  %135 = getelementptr inbounds %"class.std::istream_iterator"* %15, i64 0, i32 1, i32 0, i32 0
  %136 = load i8** %135, align 8, !tbaa !14
  %137 = getelementptr inbounds i8* %136, i64 -24
  %138 = bitcast i8* %137 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %138, %"class.std::allocator.3"* %2) #18
  call void @llvm.lifetime.end(i64 1, i8* %134) #2
  br label %139

; <label>:139                                     ; preds = %133, %.body
  %.24 = phi i32 [ %.13, %133 ], [ %109, %.body ]
  %.2 = phi i8* [ %.1, %133 ], [ %108, %.body ]
  %140 = getelementptr inbounds %"class.std::allocator.3"* %1, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %140) #2
  %141 = getelementptr inbounds %"class.std::istream_iterator"* %16, i64 0, i32 1, i32 0, i32 0
  %142 = load i8** %141, align 8, !tbaa !14
  %143 = getelementptr inbounds i8* %142, i64 -24
  %144 = bitcast i8* %143 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %144, %"class.std::allocator.3"* %1) #18
  call void @llvm.lifetime.end(i64 1, i8* %140) #2
  %145 = insertvalue { i8*, i32 } undef, i8* %.2, 0
  %146 = insertvalue { i8*, i32 } %145, i32 %.24, 1
  resume { i8*, i32 } %146
}

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt16istream_iteratorISscSt11char_traitsIcElEC2ERSi(%"class.std::istream_iterator"* %this, %"class.std::basic_istream"* %__s) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator.3", align 1
  %2 = getelementptr inbounds %"class.std::istream_iterator"* %this, i64 0, i32 0
  store %"class.std::basic_istream"* %__s, %"class.std::basic_istream"** %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %"class.std::istream_iterator"* %this, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %3, align 8, !tbaa !46
  invoke void @_ZNSt16istream_iteratorISscSt11char_traitsIcElE7_M_readEv(%"class.std::istream_iterator"* %this) #17
          to label %4 unwind label %5

; <label>:4                                       ; preds = %0
  ret void

; <label>:5                                       ; preds = %0
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %7 = getelementptr inbounds %"class.std::allocator.3"* %1, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %7) #2
  %8 = load i8** %3, align 8, !tbaa !14
  %9 = getelementptr inbounds i8* %8, i64 -24
  %10 = bitcast i8* %9 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %10, %"class.std::allocator.3"* %1) #18
  call void @llvm.lifetime.end(i64 1, i8* %7) #2
  resume { i8*, i32 } %6
}

; Function Attrs: optsize uwtable
define linkonce_odr float @_Z2toIfET_Ss(%"class.std::basic_string"* nocapture readonly %in) #5 {
  %ss = alloca %"class.std::basic_istringstream", align 8
  %value = alloca float, align 4
  %1 = bitcast %"class.std::basic_istringstream"* %ss to i8*
  call void @llvm.lifetime.start(i64 360, i8* %1) #2
  call void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKSsSt13_Ios_Openmode(%"class.std::basic_istringstream"* %ss, %"class.std::basic_string"* %in, i32 8) #17
  %2 = bitcast %"class.std::basic_istringstream"* %ss to %"class.std::basic_istream"*
  %3 = invoke %"class.std::basic_istream"* @_ZNSi10_M_extractIfEERSiRT_(%"class.std::basic_istream"* %2, float* %value) #17
          to label %_ZNSirsERf.exit unwind label %6

_ZNSirsERf.exit:                                  ; preds = %0
  %4 = load float* %value, align 4, !tbaa !1
  call void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(%"class.std::basic_istringstream"* %ss, i8** getelementptr inbounds ([4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 0)) #18
  %5 = getelementptr inbounds %"class.std::basic_istringstream"* %ss, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %5) #18
  call void @llvm.lifetime.end(i64 360, i8* %1) #2
  ret float %4

; <label>:6                                       ; preds = %0
  %7 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  call void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(%"class.std::basic_istringstream"* %ss, i8** getelementptr inbounds ([4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 0)) #18
  %8 = getelementptr inbounds %"class.std::basic_istringstream"* %ss, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %8) #18
  resume { i8*, i32 } %7
}

; Function Attrs: optsize
declare void @_ZNSsC1ERKSs(%"class.std::basic_string"*, %"class.std::basic_string"*) #0

; Function Attrs: optsize uwtable
define linkonce_odr i32 @_Z2toIiET_Ss(%"class.std::basic_string"* nocapture readonly %in) #5 {
  %ss = alloca %"class.std::basic_istringstream", align 8
  %value = alloca i32, align 4
  %1 = bitcast %"class.std::basic_istringstream"* %ss to i8*
  call void @llvm.lifetime.start(i64 360, i8* %1) #2
  call void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKSsSt13_Ios_Openmode(%"class.std::basic_istringstream"* %ss, %"class.std::basic_string"* %in, i32 8) #17
  %2 = bitcast %"class.std::basic_istringstream"* %ss to %"class.std::basic_istream"*
  %3 = invoke %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* %2, i32* %value) #17
          to label %4 unwind label %7

; <label>:4                                       ; preds = %0
  %5 = load i32* %value, align 4, !tbaa !26
  call void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(%"class.std::basic_istringstream"* %ss, i8** getelementptr inbounds ([4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 0)) #18
  %6 = getelementptr inbounds %"class.std::basic_istringstream"* %ss, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %6) #18
  call void @llvm.lifetime.end(i64 360, i8* %1) #2
  ret i32 %5

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  call void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(%"class.std::basic_istringstream"* %ss, i8** getelementptr inbounds ([4 x i8*]* @_ZTTSt19basic_istringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 0)) #18
  %9 = getelementptr inbounds %"class.std::basic_istringstream"* %ss, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %9) #18
  resume { i8*, i32 } %8
}

; Function Attrs: nounwind optsize uwtable
define linkonce_odr void @_ZNSt6vectorISsSaISsEED2Ev(%"class.std::vector.24"* nocapture readonly %this) unnamed_addr #4 align 2 {
  %1 = alloca %"class.std::allocator.3", align 1
  %2 = getelementptr inbounds %"class.std::vector.24"* %this, i64 0, i32 0, i32 0, i32 0
  %3 = load %"class.std::basic_string"** %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.std::vector.24"* %this, i64 0, i32 0, i32 0, i32 1
  %5 = load %"class.std::basic_string"** %4, align 8, !tbaa !54
  %6 = icmp eq %"class.std::basic_string"* %3, %5
  br i1 %6, label %_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %0
  %7 = getelementptr inbounds %"class.std::allocator.3"* %1, i64 0, i32 0
  br label %8

; <label>:8                                       ; preds = %8, %.lr.ph.i.i.i
  %.01.i.i.i = phi %"class.std::basic_string"* [ %3, %.lr.ph.i.i.i ], [ %13, %8 ]
  call void @llvm.lifetime.start(i64 1, i8* %7) #2
  %9 = getelementptr inbounds %"class.std::basic_string"* %.01.i.i.i, i64 0, i32 0, i32 0
  %10 = load i8** %9, align 8, !tbaa !14
  %11 = getelementptr inbounds i8* %10, i64 -24
  %12 = bitcast i8* %11 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %12, %"class.std::allocator.3"* %1) #18
  call void @llvm.lifetime.end(i64 1, i8* %7) #2
  %13 = getelementptr inbounds %"class.std::basic_string"* %.01.i.i.i, i64 1
  %14 = icmp eq %"class.std::basic_string"* %13, %5
  br i1 %14, label %_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exit.loopexit, label %8

_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exit.loopexit: ; preds = %8
  %.pre = load %"class.std::basic_string"** %2, align 8, !tbaa !51
  br label %_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exit

_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exit:          ; preds = %_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exit.loopexit, %0
  %15 = phi %"class.std::basic_string"* [ %.pre, %_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exit.loopexit ], [ %3, %0 ]
  %16 = icmp eq %"class.std::basic_string"* %15, null
  br i1 %16, label %_ZNSt12_Vector_baseISsSaISsEED2Ev.exit, label %17

; <label>:17                                      ; preds = %_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exit
  %18 = bitcast %"class.std::basic_string"* %15 to i8*
  call void @_ZdlPv(i8* %18) #18
  br label %_ZNSt12_Vector_baseISsSaISsEED2Ev.exit

_ZNSt12_Vector_baseISsSaISsEED2Ev.exit:           ; preds = %_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exit, %17
  ret void
}

; Function Attrs: nounwind optsize uwtable
define available_externally void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* %this) unnamed_addr #4 align 2 {
  %1 = load i8** getelementptr inbounds ([4 x i8*]* @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 0), align 8
  %2 = getelementptr inbounds %"class.std::basic_ifstream"* %this, i64 0, i32 0, i32 0
  %.c.i = bitcast i8* %1 to i32 (...)**
  store i32 (...)** %.c.i, i32 (...)*** %2, align 8, !tbaa !27
  %3 = load i8** getelementptr inbounds ([4 x i8*]* @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 3), align 8
  %4 = getelementptr i8* %1, i64 -24
  %5 = bitcast i8* %4 to i64*
  %6 = load i64* %5, align 8
  %7 = bitcast %"class.std::basic_ifstream"* %this to i8*
  %8 = getelementptr inbounds i8* %7, i64 %6
  %9 = bitcast i8* %8 to i8**
  store i8* %3, i8** %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %"class.std::basic_ifstream"* %this, i64 0, i32 1
  tail call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(%"class.std::basic_filebuf"* %10) #18
  %11 = load i8** getelementptr inbounds ([4 x i8*]* @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 1), align 8
  %.c.i.i = bitcast i8* %11 to i32 (...)**
  store i32 (...)** %.c.i.i, i32 (...)*** %2, align 8, !tbaa !27
  %12 = load i8** getelementptr inbounds ([4 x i8*]* @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 2), align 8
  %13 = getelementptr i8* %11, i64 -24
  %14 = bitcast i8* %13 to i64*
  %15 = load i64* %14, align 8
  %16 = getelementptr inbounds i8* %7, i64 %15
  %17 = bitcast i8* %16 to i8**
  store i8* %12, i8** %17, align 8, !tbaa !27
  %18 = getelementptr inbounds %"class.std::basic_ifstream"* %this, i64 0, i32 0, i32 1
  store i64 0, i64* %18, align 8, !tbaa !121
  %19 = getelementptr inbounds %"class.std::basic_ifstream"* %this, i64 0, i32 2, i32 0
  tail call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* %19) #18
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"*) #1

; Function Attrs: nounwind optsize uwtable
define available_externally void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(%"class.std::basic_filebuf"* %this) unnamed_addr #4 align 2 {
  %1 = getelementptr inbounds %"class.std::basic_filebuf"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*]* @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %1, align 8, !tbaa !27
  %2 = invoke %"class.std::basic_filebuf"* @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(%"class.std::basic_filebuf"* %this) #17
          to label %3 unwind label %6

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %"class.std::basic_filebuf"* %this, i64 0, i32 2
  tail call void @_ZNSt12__basic_fileIcED1Ev(%"class.std::__basic_file"* %4) #18
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*]* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %1, align 8, !tbaa !27
  %5 = getelementptr inbounds %"class.std::basic_filebuf"* %this, i64 0, i32 0, i32 7
  tail call void @_ZNSt6localeD1Ev(%"class.std::locale"* %5) #18
  ret void

; <label>:6                                       ; preds = %0
  %7 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          filter [0 x i8*] zeroinitializer
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = getelementptr inbounds %"class.std::basic_filebuf"* %this, i64 0, i32 2
  tail call void @_ZNSt12__basic_fileIcED1Ev(%"class.std::__basic_file"* %9) #18
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*]* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %1, align 8, !tbaa !27
  %10 = getelementptr inbounds %"class.std::basic_filebuf"* %this, i64 0, i32 0, i32 7
  tail call void @_ZNSt6localeD1Ev(%"class.std::locale"* %10) #18
  tail call void @__cxa_call_unexpected(i8* %8) #15
  unreachable
}

; Function Attrs: optsize
declare %"class.std::basic_filebuf"* @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(%"class.std::basic_filebuf"*) #0

; Function Attrs: nounwind optsize
declare void @_ZNSt12__basic_fileIcED1Ev(%"class.std::__basic_file"*) #1

; Function Attrs: nounwind optsize
declare void @_ZNSt6localeD1Ev(%"class.std::locale"*) #1

; Function Attrs: nounwind optsize uwtable
define available_externally void @_ZNSt19basic_istringstreamIcSt11char_traitsIcESaIcEED2Ev(%"class.std::basic_istringstream"* %this, i8** nocapture readonly %vtt) unnamed_addr #4 align 2 {
  %1 = alloca %"class.std::allocator.3", align 1
  %2 = load i8** %vtt, align 8
  %3 = getelementptr inbounds %"class.std::basic_istringstream"* %this, i64 0, i32 0, i32 0
  %.c = bitcast i8* %2 to i32 (...)**
  store i32 (...)** %.c, i32 (...)*** %3, align 8, !tbaa !27
  %4 = getelementptr inbounds i8** %vtt, i64 3
  %5 = load i8** %4, align 8
  %6 = getelementptr i8* %2, i64 -24
  %7 = bitcast i8* %6 to i64*
  %8 = load i64* %7, align 8
  %9 = bitcast %"class.std::basic_istringstream"* %this to i8*
  %10 = getelementptr inbounds i8* %9, i64 %8
  %11 = bitcast i8* %10 to i8**
  store i8* %5, i8** %11, align 8, !tbaa !27
  %12 = getelementptr inbounds %"class.std::basic_istringstream"* %this, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*]* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %12, align 8, !tbaa !27
  %13 = getelementptr inbounds %"class.std::allocator.3"* %1, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %13) #2
  %14 = getelementptr inbounds %"class.std::basic_istringstream"* %this, i64 0, i32 1, i32 2, i32 0, i32 0
  %15 = load i8** %14, align 8, !tbaa !14
  %16 = getelementptr inbounds i8* %15, i64 -24
  %17 = bitcast i8* %16 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %17, %"class.std::allocator.3"* %1) #18
  call void @llvm.lifetime.end(i64 1, i8* %13) #2
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*]* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %12, align 8, !tbaa !27
  %18 = getelementptr inbounds %"class.std::basic_istringstream"* %this, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* %18) #18
  %19 = getelementptr inbounds i8** %vtt, i64 1
  %20 = load i8** %19, align 8
  %.c.i = bitcast i8* %20 to i32 (...)**
  store i32 (...)** %.c.i, i32 (...)*** %3, align 8, !tbaa !27
  %21 = getelementptr inbounds i8** %vtt, i64 2
  %22 = load i8** %21, align 8
  %23 = getelementptr i8* %20, i64 -24
  %24 = bitcast i8* %23 to i64*
  %25 = load i64* %24, align 8
  %26 = getelementptr inbounds i8* %9, i64 %25
  %27 = bitcast i8* %26 to i8**
  store i8* %22, i8** %27, align 8, !tbaa !27
  %28 = getelementptr inbounds %"class.std::basic_istringstream"* %this, i64 0, i32 0, i32 1
  store i64 0, i64* %28, align 8, !tbaa !121
  ret void
}

; Function Attrs: optsize
declare %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"*, i32*) #0

; Function Attrs: optsize
declare %"class.std::basic_istream"* @_ZNSi10_M_extractIfEERSiRT_(%"class.std::basic_istream"*, float*) #0

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt6vectorI11InstructionSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* nocapture %this, %struct.Instruction* nocapture readonly %__args) #5 align 2 {
  %1 = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  %2 = load %struct.Instruction** %1, align 8, !tbaa !55
  %3 = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 2
  %4 = load %struct.Instruction** %3, align 8, !tbaa !124
  %5 = icmp eq %struct.Instruction* %2, %4
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %0
  %7 = icmp eq %struct.Instruction* %2, null
  br i1 %7, label %_ZNSt16allocator_traitsISaI11InstructionEE9constructIS0_JS0_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS1_PT_DpOS4_.exit, label %8

; <label>:8                                       ; preds = %6
  %9 = bitcast %struct.Instruction* %__args to i64*
  %10 = bitcast %struct.Instruction* %2 to i64*
  %11 = load i64* %9, align 4
  store i64 %11, i64* %10, align 4
  %.pre = load %struct.Instruction** %1, align 8, !tbaa !55
  br label %_ZNSt16allocator_traitsISaI11InstructionEE9constructIS0_JS0_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS1_PT_DpOS4_.exit

_ZNSt16allocator_traitsISaI11InstructionEE9constructIS0_JS0_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS1_PT_DpOS4_.exit: ; preds = %6, %8
  %12 = phi %struct.Instruction* [ null, %6 ], [ %.pre, %8 ]
  %13 = getelementptr inbounds %struct.Instruction* %12, i64 1
  store %struct.Instruction* %13, %struct.Instruction** %1, align 8, !tbaa !55
  br label %15

; <label>:14                                      ; preds = %0
  tail call void @_ZNSt6vectorI11InstructionSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_(%"class.std::vector"* %this, %struct.Instruction* %__args) #17
  br label %15

; <label>:15                                      ; preds = %14, %_ZNSt16allocator_traitsISaI11InstructionEE9constructIS0_JS0_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS1_PT_DpOS4_.exit
  ret void
}

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt6vectorI11InstructionSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_(%"class.std::vector"* nocapture %this, %struct.Instruction* nocapture readonly %__args) #5 align 2 {
  %1 = tail call i64 @_ZNKSt6vectorI11InstructionSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 1, i8* getelementptr inbounds ([28 x i8]* @.str123, i64 0, i64 0)) #17
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %_ZNSt12_Vector_baseI11InstructionSaIS0_EE11_M_allocateEm.exit, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %_ZN9__gnu_cxx13new_allocatorI11InstructionE8allocateEmPKv.exit

; <label>:5                                       ; preds = %3
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZN9__gnu_cxx13new_allocatorI11InstructionE8allocateEmPKv.exit: ; preds = %3
  %6 = shl i64 %1, 3
  %7 = tail call noalias i8* @_Znwm(i64 %6) #17
  %8 = bitcast i8* %7 to %struct.Instruction*
  br label %_ZNSt12_Vector_baseI11InstructionSaIS0_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI11InstructionSaIS0_EE11_M_allocateEm.exit: ; preds = %0, %_ZN9__gnu_cxx13new_allocatorI11InstructionE8allocateEmPKv.exit
  %9 = phi %struct.Instruction* [ %8, %_ZN9__gnu_cxx13new_allocatorI11InstructionE8allocateEmPKv.exit ], [ null, %0 ]
  %10 = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  %11 = load %struct.Instruction** %10, align 8, !tbaa !55
  %12 = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0
  %13 = load %struct.Instruction** %12, align 8, !tbaa !35
  %14 = ptrtoint %struct.Instruction* %11 to i64
  %15 = ptrtoint %struct.Instruction* %13 to i64
  %16 = sub i64 %14, %15
  %17 = ashr exact i64 %16, 3
  %18 = getelementptr inbounds %struct.Instruction* %9, i64 %17
  %19 = icmp eq %struct.Instruction* %18, null
  br i1 %19, label %_ZNSt16allocator_traitsISaI11InstructionEE9constructIS0_JS0_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS1_PT_DpOS4_.exit, label %20

; <label>:20                                      ; preds = %_ZNSt12_Vector_baseI11InstructionSaIS0_EE11_M_allocateEm.exit
  %21 = bitcast %struct.Instruction* %__args to i64*
  %22 = bitcast %struct.Instruction* %18 to i64*
  %23 = load i64* %21, align 4
  store i64 %23, i64* %22, align 4
  br label %_ZNSt16allocator_traitsISaI11InstructionEE9constructIS0_JS0_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS1_PT_DpOS4_.exit

_ZNSt16allocator_traitsISaI11InstructionEE9constructIS0_JS0_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS1_PT_DpOS4_.exit: ; preds = %20, %_ZNSt12_Vector_baseI11InstructionSaIS0_EE11_M_allocateEm.exit
  %24 = icmp eq %struct.Instruction* %13, %11
  br i1 %24, label %_ZSt34__uninitialized_move_if_noexcept_aIP11InstructionS1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt16allocator_traitsISaI11InstructionEE9constructIS0_JS0_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS1_PT_DpOS4_.exit
  %scevgep.i.i.i.i = getelementptr %struct.Instruction* %11, i64 -1, i32 0
  br label %25

; <label>:25                                      ; preds = %_ZSt10_ConstructI11InstructionJS0_EEvPT_DpOT0_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %__cur.03.i.i.i.i = phi %struct.Instruction* [ %9, %.lr.ph.i.i.i.i ], [ %32, %_ZSt10_ConstructI11InstructionJS0_EEvPT_DpOT0_.exit.i.i.i.i ]
  %__first.coerce12.i.i.i.i = phi %struct.Instruction* [ %13, %.lr.ph.i.i.i.i ], [ %31, %_ZSt10_ConstructI11InstructionJS0_EEvPT_DpOT0_.exit.i.i.i.i ]
  %26 = icmp eq %struct.Instruction* %__cur.03.i.i.i.i, null
  br i1 %26, label %_ZSt10_ConstructI11InstructionJS0_EEvPT_DpOT0_.exit.i.i.i.i, label %27

; <label>:27                                      ; preds = %25
  %28 = bitcast %struct.Instruction* %__first.coerce12.i.i.i.i to i64*
  %29 = bitcast %struct.Instruction* %__cur.03.i.i.i.i to i64*
  %30 = load i64* %28, align 4
  store i64 %30, i64* %29, align 4
  br label %_ZSt10_ConstructI11InstructionJS0_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructI11InstructionJS0_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %27, %25
  %31 = getelementptr inbounds %struct.Instruction* %__first.coerce12.i.i.i.i, i64 1
  %32 = getelementptr inbounds %struct.Instruction* %__cur.03.i.i.i.i, i64 1
  %33 = icmp eq %struct.Instruction* %31, %11
  br i1 %33, label %._crit_edge.i.i.i.i, label %25

._crit_edge.i.i.i.i:                              ; preds = %_ZSt10_ConstructI11InstructionJS0_EEvPT_DpOT0_.exit.i.i.i.i
  %34 = ptrtoint i8* %scevgep.i.i.i.i to i64
  %35 = sub i64 %34, %15
  %36 = lshr i64 %35, 3
  %37 = add i64 %36, 1
  %scevgep7.i.i.i.i = getelementptr %struct.Instruction* %9, i64 %37
  %.pr = load %struct.Instruction** %12, align 8, !tbaa !35
  br label %_ZSt34__uninitialized_move_if_noexcept_aIP11InstructionS1_SaIS0_EET0_T_S4_S3_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIP11InstructionS1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %._crit_edge.i.i.i.i, %_ZNSt16allocator_traitsISaI11InstructionEE9constructIS0_JS0_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS1_PT_DpOS4_.exit
  %38 = phi %struct.Instruction* [ %.pr, %._crit_edge.i.i.i.i ], [ %11, %_ZNSt16allocator_traitsISaI11InstructionEE9constructIS0_JS0_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS1_PT_DpOS4_.exit ]
  %__cur.0.lcssa.i.i.i.i = phi %struct.Instruction* [ %scevgep7.i.i.i.i, %._crit_edge.i.i.i.i ], [ %9, %_ZNSt16allocator_traitsISaI11InstructionEE9constructIS0_JS0_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS1_PT_DpOS4_.exit ]
  %39 = getelementptr inbounds %struct.Instruction* %__cur.0.lcssa.i.i.i.i, i64 1
  %40 = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 2
  %41 = icmp eq %struct.Instruction* %38, null
  br i1 %41, label %_ZNSt12_Vector_baseI11InstructionSaIS0_EE13_M_deallocateEPS0_m.exit1, label %42

; <label>:42                                      ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP11InstructionS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %43 = getelementptr inbounds %struct.Instruction* %38, i64 0, i32 0
  tail call void @_ZdlPv(i8* %43) #18
  br label %_ZNSt12_Vector_baseI11InstructionSaIS0_EE13_M_deallocateEPS0_m.exit1

_ZNSt12_Vector_baseI11InstructionSaIS0_EE13_M_deallocateEPS0_m.exit1: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP11InstructionS1_SaIS0_EET0_T_S4_S3_RT1_.exit, %42
  store %struct.Instruction* %9, %struct.Instruction** %12, align 8, !tbaa !35
  store %struct.Instruction* %39, %struct.Instruction** %10, align 8, !tbaa !55
  %44 = getelementptr inbounds %struct.Instruction* %9, i64 %1
  store %struct.Instruction* %44, %struct.Instruction** %40, align 8, !tbaa !124
  ret void
}

; Function Attrs: optsize uwtable
define linkonce_odr i64 @_ZNKSt6vectorI11InstructionSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* nocapture readonly %this, i64 %__n, i8* %__s) #5 align 2 {
  %1 = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 1
  %2 = load %struct.Instruction** %1, align 8, !tbaa !55
  %3 = getelementptr inbounds %"class.std::vector"* %this, i64 0, i32 0, i32 0, i32 0
  %4 = load %struct.Instruction** %3, align 8, !tbaa !35
  %5 = ptrtoint %struct.Instruction* %2 to i64
  %6 = ptrtoint %struct.Instruction* %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = sub i64 2305843009213693951, %8
  %10 = icmp ult i64 %9, %__n
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  tail call void @_ZSt20__throw_length_errorPKc(i8* %__s) #19
  unreachable

; <label>:12                                      ; preds = %0
  %13 = icmp ult i64 %8, %__n
  %14 = select i1 %13, i64 %__n, i64 %8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %14)
  %15 = extractvalue { i64, i1 } %uadd, 0
  %16 = extractvalue { i64, i1 } %uadd, 1
  %17 = icmp ugt i64 %15, 2305843009213693951
  %or.cond = or i1 %16, %17
  %18 = select i1 %or.cond, i64 2305843009213693951, i64 %15
  ret i64 %18
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(i8*) #6

; Function Attrs: optsize uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE16_M_insert_uniqueIRKS2_EES0_ISt17_Rb_tree_iteratorIS2_EbEOT_(%"class.std::_Rb_tree"* %this, %"struct.std::pair.16"* %__v) #5 align 2 {
  %1 = getelementptr inbounds %"struct.std::pair.16"* %__v, i64 0, i32 0
  %2 = tail call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %this, %"class.std::basic_string"* %1) #17
  %3 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %2, 0
  %4 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %2, 1
  %5 = icmp eq %"struct.std::_Rb_tree_node_base"* %4, null
  br i1 %5, label %8, label %6

; <label>:6                                       ; preds = %0
  %7 = tail call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE10_M_insert_IRKS2_EESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSF_OT_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %3, %"struct.std::_Rb_tree_node_base"* %4, %"struct.std::pair.16"* %__v) #17
  br label %8

; <label>:8                                       ; preds = %0, %6
  %.sink4 = phi %"struct.std::_Rb_tree_node_base"* [ %7, %6 ], [ %3, %0 ]
  %9 = phi i8 [ 1, %6 ], [ 0, %0 ]
  %10 = insertvalue { %"struct.std::_Rb_tree_node_base"*, i8 } undef, %"struct.std::_Rb_tree_node_base"* %.sink4, 0
  %11 = insertvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %10, i8 %9, 1
  ret { %"struct.std::_Rb_tree_node_base"*, i8 } %11
}

; Function Attrs: nounwind optsize readonly uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE24_M_get_insert_unique_posERS1_(%"class.std::_Rb_tree"* %this, %"class.std::basic_string"* nocapture readonly %__k) #9 align 2 {
  %1 = getelementptr inbounds %"class.std::_Rb_tree"* %this, i64 0, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %"class.std::_Rb_tree"* %this, i64 0, i32 0, i32 1
  %.in3 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %3 = icmp eq %"struct.std::_Rb_tree_node_base"* %.in3, null
  br i1 %3, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %0, %.lr.ph
  %.in7 = phi %"struct.std::_Rb_tree_node_base"* [ %.in, %.lr.ph ], [ %.in3, %0 ]
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %.in7, i64 1
  %5 = bitcast %"struct.std::_Rb_tree_node_base"* %4 to %"class.std::basic_string"*
  %6 = tail call i32 @_ZNKSs7compareERKSs(%"class.std::basic_string"* %__k, %"class.std::basic_string"* %5) #18
  %7 = icmp slt i32 %6, 0
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %.in7, i64 0, i32 2
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %.in7, i64 0, i32 3
  %.in.in.be = select i1 %7, %"struct.std::_Rb_tree_node_base"** %8, %"struct.std::_Rb_tree_node_base"** %9
  %.in = load %"struct.std::_Rb_tree_node_base"** %.in.in.be, align 8
  %10 = icmp eq %"struct.std::_Rb_tree_node_base"* %.in, null
  br i1 %10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %7, label %._crit_edge.thread, label %16

._crit_edge.thread:                               ; preds = %0, %._crit_edge
  %.lcssa.in9 = phi %"struct.std::_Rb_tree_node_base"* [ %.in7, %._crit_edge ], [ %2, %0 ]
  %11 = getelementptr inbounds %"class.std::_Rb_tree"* %this, i64 0, i32 0, i32 1, i32 2
  %12 = load %"struct.std::_Rb_tree_node_base"** %11, align 8, !tbaa !125
  %13 = icmp eq %"struct.std::_Rb_tree_node_base"* %.lcssa.in9, %12
  br i1 %13, label %22, label %14

; <label>:14                                      ; preds = %._crit_edge.thread
  %15 = tail call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %.lcssa.in9) #21
  br label %16

; <label>:16                                      ; preds = %14, %._crit_edge
  %.lcssa.in10 = phi %"struct.std::_Rb_tree_node_base"* [ %.lcssa.in9, %14 ], [ %.in7, %._crit_edge ]
  %17 = phi %"struct.std::_Rb_tree_node_base"* [ %15, %14 ], [ %.in7, %._crit_edge ]
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %17, i64 1
  %19 = bitcast %"struct.std::_Rb_tree_node_base"* %18 to %"class.std::basic_string"*
  %20 = tail call i32 @_ZNKSs7compareERKSs(%"class.std::basic_string"* %19, %"class.std::basic_string"* %__k) #18
  %21 = icmp slt i32 %20, 0
  %. = select i1 %21, %"struct.std::_Rb_tree_node_base"* %.lcssa.in10, %"struct.std::_Rb_tree_node_base"* null
  %.2 = select i1 %21, %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"* %17
  br label %22

; <label>:22                                      ; preds = %._crit_edge.thread, %16
  %23 = phi %"struct.std::_Rb_tree_node_base"* [ %., %16 ], [ %.lcssa.in9, %._crit_edge.thread ]
  %24 = phi %"struct.std::_Rb_tree_node_base"* [ %.2, %16 ], [ null, %._crit_edge.thread ]
  %25 = insertvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } undef, %"struct.std::_Rb_tree_node_base"* %24, 0
  %26 = insertvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %25, %"struct.std::_Rb_tree_node_base"* %23, 1
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %26
}

; Function Attrs: optsize uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE10_M_insert_IRKS2_EESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSF_OT_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* readnone %__x, %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::pair.16"* %__v) #5 align 2 {
  %1 = icmp ne %"struct.std::_Rb_tree_node_base"* %__x, null
  %2 = getelementptr inbounds %"class.std::_Rb_tree"* %this, i64 0, i32 0, i32 1
  %3 = icmp eq %"struct.std::_Rb_tree_node_base"* %2, %__p
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %10, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %"struct.std::pair.16"* %__v, i64 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %__p, i64 1
  %7 = bitcast %"struct.std::_Rb_tree_node_base"* %6 to %"class.std::basic_string"*
  %8 = tail call i32 @_ZNKSs7compareERKSs(%"class.std::basic_string"* %5, %"class.std::basic_string"* %7) #18
  %9 = icmp slt i32 %8, 0
  br label %10

; <label>:10                                      ; preds = %0, %4
  %11 = phi i1 [ true, %0 ], [ %9, %4 ]
  %12 = tail call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt13_Rb_tree_nodeIS2_EDpOT_(%"class.std::_Rb_tree"* %this, %"struct.std::pair.16"* %__v) #17
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node"* %12, i64 0, i32 0
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext %11, %"struct.std::_Rb_tree_node_base"* %13, %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::_Rb_tree_node_base"* %2) #18
  %14 = getelementptr inbounds %"class.std::_Rb_tree"* %this, i64 0, i32 0, i32 2
  %15 = load i64* %14, align 8, !tbaa !126
  %16 = add i64 %15, 1
  store i64 %16, i64* %14, align 8, !tbaa !126
  ret %"struct.std::_Rb_tree_node_base"* %13
}

; Function Attrs: optsize uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt13_Rb_tree_nodeIS2_EDpOT_(%"class.std::_Rb_tree"* nocapture readnone %this, %"struct.std::pair.16"* %__args) #5 align 2 {
  %1 = tail call noalias i8* @_Znwm(i64 48) #17
  %2 = bitcast i8* %1 to %"struct.std::_Rb_tree_node"*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKSsiEEEE9constructIS4_JRKS3_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS5_PT_DpOSA_.exit, label %4

; <label>:4                                       ; preds = %0
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 8, i1 false)
  %5 = getelementptr inbounds i8* %1, i64 32
  %6 = bitcast i8* %5 to %"class.std::basic_string"*
  %7 = getelementptr inbounds %"struct.std::pair.16"* %__args, i64 0, i32 0
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %6, %"class.std::basic_string"* %7) #17
          to label %.noexc unwind label %12

.noexc:                                           ; preds = %4
  %8 = getelementptr inbounds i8* %1, i64 40
  %9 = bitcast i8* %8 to i32*
  %10 = getelementptr inbounds %"struct.std::pair.16"* %__args, i64 0, i32 1
  %11 = load i32* %10, align 4, !tbaa !56
  store i32 %11, i32* %9, align 4, !tbaa !56
  br label %_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKSsiEEEE9constructIS4_JRKS3_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS5_PT_DpOSA_.exit

; <label>:12                                      ; preds = %4
  %13 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  %15 = tail call i8* @__cxa_begin_catch(i8* %14) #2
  tail call void @_ZdlPv(i8* %1) #18
  invoke void @__cxa_rethrow() #20
          to label %22 unwind label %16

; <label>:16                                      ; preds = %12
  %17 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  invoke void @__cxa_end_catch()
          to label %18 unwind label %19

_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKSsiEEEE9constructIS4_JRKS3_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS5_PT_DpOSA_.exit: ; preds = %.noexc, %0
  ret %"struct.std::_Rb_tree_node"* %2

; <label>:18                                      ; preds = %16
  resume { i8*, i32 } %17

; <label>:19                                      ; preds = %16
  %20 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %21 = extractvalue { i8*, i32 } %20, 0
  tail call void @__clang_call_terminate(i8* %21) #15
  unreachable

; <label>:22                                      ; preds = %12
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind optsize readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #10

; Function Attrs: optsize
declare i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"*, i8*) #0

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt16istream_iteratorISscSt11char_traitsIcElE7_M_readEv(%"class.std::istream_iterator"* %this) #5 align 2 {
  %1 = getelementptr inbounds %"class.std::istream_iterator"* %this, i64 0, i32 0
  %2 = load %"class.std::basic_istream"** %1, align 8, !tbaa !48
  %3 = icmp eq %"class.std::basic_istream"* %2, null
  br i1 %3, label %.thread, label %5

.thread:                                          ; preds = %0
  %4 = getelementptr inbounds %"class.std::istream_iterator"* %this, i64 0, i32 2
  store i8 0, i8* %4, align 1, !tbaa !50
  br label %39

; <label>:5                                       ; preds = %0
  %6 = bitcast %"class.std::basic_istream"* %2 to i8**
  %7 = load i8** %6, align 8, !tbaa !27
  %8 = getelementptr i8* %7, i64 -24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64* %9, align 8
  %11 = bitcast %"class.std::basic_istream"* %2 to i8*
  %12 = getelementptr inbounds i8* %11, i64 %10
  %.sum = add i64 %10, 32
  %13 = getelementptr inbounds i8* %11, i64 %.sum
  %14 = bitcast i8* %13 to i32*
  %15 = load i32* %14, align 4, !tbaa !38
  %16 = and i32 %15, 5
  %17 = icmp ne i8* %12, null
  %not. = icmp eq i32 %16, 0
  %18 = and i1 %17, %not.
  %19 = getelementptr inbounds %"class.std::istream_iterator"* %this, i64 0, i32 2
  %20 = zext i1 %18 to i8
  store i8 %20, i8* %19, align 1, !tbaa !50
  br i1 %18, label %21, label %39

; <label>:21                                      ; preds = %5
  %22 = getelementptr inbounds %"class.std::istream_iterator"* %this, i64 0, i32 1
  %23 = tail call %"class.std::basic_istream"* @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E(%"class.std::basic_istream"* %2, %"class.std::basic_string"* %22) #17
  %24 = load %"class.std::basic_istream"** %1, align 8, !tbaa !48
  %25 = bitcast %"class.std::basic_istream"* %24 to i8**
  %26 = load i8** %25, align 8, !tbaa !27
  %27 = getelementptr i8* %26, i64 -24
  %28 = bitcast i8* %27 to i64*
  %29 = load i64* %28, align 8
  %30 = bitcast %"class.std::basic_istream"* %24 to i8*
  %31 = getelementptr inbounds i8* %30, i64 %29
  %.sum1 = add i64 %29, 32
  %32 = getelementptr inbounds i8* %30, i64 %.sum1
  %33 = bitcast i8* %32 to i32*
  %34 = load i32* %33, align 4, !tbaa !38
  %35 = and i32 %34, 5
  %36 = icmp ne i8* %31, null
  %not.2 = icmp eq i32 %35, 0
  %37 = and i1 %36, %not.2
  %38 = zext i1 %37 to i8
  store i8 %38, i8* %19, align 1, !tbaa !50
  br label %39

; <label>:39                                      ; preds = %.thread, %21, %5
  ret void
}

; Function Attrs: optsize
declare %"class.std::basic_istream"* @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E(%"class.std::basic_istream"*, %"class.std::basic_string"*) #0

; Function Attrs: inlinehint optsize uwtable
define linkonce_odr %"class.std::vector.24"* @_ZSt14__copy_move_a2ILb0ESt16istream_iteratorISscSt11char_traitsIcElESt20back_insert_iteratorISt6vectorISsSaISsEEEET1_T0_SA_S9_(%"class.std::istream_iterator"* %__first, %"class.std::istream_iterator"* %__last, %"class.std::vector.24"* %__result.coerce) #13 {
  %1 = alloca %"class.std::allocator.3", align 1
  %2 = alloca %"class.std::allocator.3", align 1
  %3 = alloca %"class.std::allocator.3", align 1
  %4 = alloca %"class.std::allocator.3", align 1
  %5 = alloca %"class.std::allocator.3", align 1
  %6 = alloca %"class.std::allocator.3", align 1
  %7 = alloca %"class.std::allocator.3", align 1
  %8 = alloca %"class.std::allocator.3", align 1
  %9 = alloca %"class.std::allocator.3", align 1
  %10 = alloca %"class.std::allocator.3", align 1
  %11 = alloca %"class.std::istream_iterator", align 8
  %12 = alloca %"class.std::allocator.3", align 1
  %13 = alloca %"class.std::allocator.3", align 1
  %14 = alloca %"class.std::istream_iterator", align 8
  %15 = alloca %"class.std::istream_iterator", align 8
  %16 = alloca %"class.std::istream_iterator", align 8
  %17 = alloca %"class.std::istream_iterator", align 8
  %18 = alloca %"class.std::istream_iterator", align 8
  %19 = getelementptr inbounds %"class.std::istream_iterator"* %16, i64 0, i32 0
  %20 = getelementptr inbounds %"class.std::istream_iterator"* %__first, i64 0, i32 0
  %21 = load %"class.std::basic_istream"** %20, align 8, !tbaa !48
  store %"class.std::basic_istream"* %21, %"class.std::basic_istream"** %19, align 8, !tbaa !48
  %22 = getelementptr inbounds %"class.std::istream_iterator"* %16, i64 0, i32 1
  %23 = getelementptr inbounds %"class.std::istream_iterator"* %__first, i64 0, i32 1
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* %22, %"class.std::basic_string"* %23) #17
  %24 = getelementptr inbounds %"class.std::istream_iterator"* %16, i64 0, i32 2
  %25 = getelementptr inbounds %"class.std::istream_iterator"* %__first, i64 0, i32 2
  %26 = load i8* %25, align 1, !tbaa !50, !range !123
  store i8 %26, i8* %24, align 8, !tbaa !50
  %27 = bitcast %"class.std::istream_iterator"* %14 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %27)
  %28 = getelementptr inbounds %"class.std::istream_iterator"* %14, i64 0, i32 0
  %29 = load %"class.std::basic_istream"** %19, align 8, !tbaa !48
  store %"class.std::basic_istream"* %29, %"class.std::basic_istream"** %28, align 8, !tbaa !48
  %30 = getelementptr inbounds %"class.std::istream_iterator"* %14, i64 0, i32 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %30, %"class.std::basic_string"* %22) #17
          to label %.noexc unwind label %106

.noexc:                                           ; preds = %0
  %31 = getelementptr inbounds %"class.std::istream_iterator"* %14, i64 0, i32 2
  %32 = load i8* %24, align 8, !tbaa !50, !range !123
  store i8 %32, i8* %31, align 8, !tbaa !50
  %33 = getelementptr inbounds %"class.std::istream_iterator"* %15, i64 0, i32 0
  %34 = load %"class.std::basic_istream"** %28, align 8, !tbaa !48
  store %"class.std::basic_istream"* %34, %"class.std::basic_istream"** %33, align 8, !tbaa !48
  %35 = getelementptr inbounds %"class.std::istream_iterator"* %15, i64 0, i32 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %35, %"class.std::basic_string"* %30) #17
          to label %43 unwind label %36

; <label>:36                                      ; preds = %.noexc
  %37 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %38 = getelementptr inbounds %"class.std::allocator.3"* %12, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %38) #2
  %39 = getelementptr inbounds %"class.std::istream_iterator"* %14, i64 0, i32 1, i32 0, i32 0
  %40 = load i8** %39, align 8, !tbaa !14
  %41 = getelementptr inbounds i8* %40, i64 -24
  %42 = bitcast i8* %41 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %42, %"class.std::allocator.3"* %12) #18
  call void @llvm.lifetime.end(i64 1, i8* %38) #2
  br label %.body

; <label>:43                                      ; preds = %.noexc
  %44 = getelementptr inbounds %"class.std::istream_iterator"* %15, i64 0, i32 2
  %45 = load i8* %31, align 8, !tbaa !50, !range !123
  store i8 %45, i8* %44, align 8, !tbaa !50
  %46 = getelementptr inbounds %"class.std::allocator.3"* %13, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %46) #2
  %47 = getelementptr inbounds %"class.std::istream_iterator"* %14, i64 0, i32 1, i32 0, i32 0
  %48 = load i8** %47, align 8, !tbaa !14
  %49 = getelementptr inbounds i8* %48, i64 -24
  %50 = bitcast i8* %49 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %50, %"class.std::allocator.3"* %13) #18
  call void @llvm.lifetime.end(i64 1, i8* %46) #2
  call void @llvm.lifetime.end(i64 24, i8* %27)
  %51 = getelementptr inbounds %"class.std::istream_iterator"* %18, i64 0, i32 0
  %52 = getelementptr inbounds %"class.std::istream_iterator"* %__last, i64 0, i32 0
  %53 = load %"class.std::basic_istream"** %52, align 8, !tbaa !48
  store %"class.std::basic_istream"* %53, %"class.std::basic_istream"** %51, align 8, !tbaa !48
  %54 = getelementptr inbounds %"class.std::istream_iterator"* %18, i64 0, i32 1
  %55 = getelementptr inbounds %"class.std::istream_iterator"* %__last, i64 0, i32 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %54, %"class.std::basic_string"* %55) #17
          to label %56 unwind label %110

; <label>:56                                      ; preds = %43
  %57 = getelementptr inbounds %"class.std::istream_iterator"* %18, i64 0, i32 2
  %58 = getelementptr inbounds %"class.std::istream_iterator"* %__last, i64 0, i32 2
  %59 = load i8* %58, align 1, !tbaa !50, !range !123
  store i8 %59, i8* %57, align 8, !tbaa !50
  %60 = bitcast %"class.std::istream_iterator"* %11 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %60)
  %61 = getelementptr inbounds %"class.std::istream_iterator"* %11, i64 0, i32 0
  %62 = load %"class.std::basic_istream"** %51, align 8, !tbaa !48
  store %"class.std::basic_istream"* %62, %"class.std::basic_istream"** %61, align 8, !tbaa !48
  %63 = getelementptr inbounds %"class.std::istream_iterator"* %11, i64 0, i32 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %63, %"class.std::basic_string"* %54) #17
          to label %.noexc7 unwind label %114

.noexc7:                                          ; preds = %56
  %64 = getelementptr inbounds %"class.std::istream_iterator"* %11, i64 0, i32 2
  %65 = load i8* %57, align 8, !tbaa !50, !range !123
  store i8 %65, i8* %64, align 8, !tbaa !50
  %66 = getelementptr inbounds %"class.std::istream_iterator"* %17, i64 0, i32 0
  %67 = load %"class.std::basic_istream"** %61, align 8, !tbaa !48
  store %"class.std::basic_istream"* %67, %"class.std::basic_istream"** %66, align 8, !tbaa !48
  %68 = getelementptr inbounds %"class.std::istream_iterator"* %17, i64 0, i32 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %68, %"class.std::basic_string"* %63) #17
          to label %76 unwind label %69

; <label>:69                                      ; preds = %.noexc7
  %70 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %71 = getelementptr inbounds %"class.std::allocator.3"* %9, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %71) #2
  %72 = getelementptr inbounds %"class.std::istream_iterator"* %11, i64 0, i32 1, i32 0, i32 0
  %73 = load i8** %72, align 8, !tbaa !14
  %74 = getelementptr inbounds i8* %73, i64 -24
  %75 = bitcast i8* %74 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %75, %"class.std::allocator.3"* %9) #18
  call void @llvm.lifetime.end(i64 1, i8* %71) #2
  br label %.body8

; <label>:76                                      ; preds = %.noexc7
  %77 = getelementptr inbounds %"class.std::istream_iterator"* %17, i64 0, i32 2
  %78 = load i8* %64, align 8, !tbaa !50, !range !123
  store i8 %78, i8* %77, align 8, !tbaa !50
  %79 = getelementptr inbounds %"class.std::allocator.3"* %10, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %79) #2
  %80 = getelementptr inbounds %"class.std::istream_iterator"* %11, i64 0, i32 1, i32 0, i32 0
  %81 = load i8** %80, align 8, !tbaa !14
  %82 = getelementptr inbounds i8* %81, i64 -24
  %83 = bitcast i8* %82 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %83, %"class.std::allocator.3"* %10) #18
  call void @llvm.lifetime.end(i64 1, i8* %79) #2
  call void @llvm.lifetime.end(i64 24, i8* %60)
  %84 = invoke %"class.std::vector.24"* @_ZSt13__copy_move_aILb0ESt16istream_iteratorISscSt11char_traitsIcElESt20back_insert_iteratorISt6vectorISsSaISsEEEET1_T0_SA_S9_(%"class.std::istream_iterator"* %15, %"class.std::istream_iterator"* %17, %"class.std::vector.24"* %__result.coerce) #17
          to label %85 unwind label %118

; <label>:85                                      ; preds = %76
  %86 = getelementptr inbounds %"class.std::allocator.3"* %8, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %86) #2
  %87 = getelementptr inbounds %"class.std::istream_iterator"* %17, i64 0, i32 1, i32 0, i32 0
  %88 = load i8** %87, align 8, !tbaa !14
  %89 = getelementptr inbounds i8* %88, i64 -24
  %90 = bitcast i8* %89 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %90, %"class.std::allocator.3"* %8) #18
  call void @llvm.lifetime.end(i64 1, i8* %86) #2
  %91 = getelementptr inbounds %"class.std::allocator.3"* %7, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %91) #2
  %92 = getelementptr inbounds %"class.std::istream_iterator"* %18, i64 0, i32 1, i32 0, i32 0
  %93 = load i8** %92, align 8, !tbaa !14
  %94 = getelementptr inbounds i8* %93, i64 -24
  %95 = bitcast i8* %94 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %95, %"class.std::allocator.3"* %7) #18
  call void @llvm.lifetime.end(i64 1, i8* %91) #2
  %96 = getelementptr inbounds %"class.std::allocator.3"* %6, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %96) #2
  %97 = getelementptr inbounds %"class.std::istream_iterator"* %15, i64 0, i32 1, i32 0, i32 0
  %98 = load i8** %97, align 8, !tbaa !14
  %99 = getelementptr inbounds i8* %98, i64 -24
  %100 = bitcast i8* %99 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %100, %"class.std::allocator.3"* %6) #18
  call void @llvm.lifetime.end(i64 1, i8* %96) #2
  %101 = getelementptr inbounds %"class.std::allocator.3"* %5, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %101) #2
  %102 = getelementptr inbounds %"class.std::istream_iterator"* %16, i64 0, i32 1, i32 0, i32 0
  %103 = load i8** %102, align 8, !tbaa !14
  %104 = getelementptr inbounds i8* %103, i64 -24
  %105 = bitcast i8* %104 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %105, %"class.std::allocator.3"* %5) #18
  call void @llvm.lifetime.end(i64 1, i8* %101) #2
  ret %"class.std::vector.24"* %84

; <label>:106                                     ; preds = %0
  %107 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  br label %.body

.body:                                            ; preds = %36, %106
  %eh.lpad-body = phi { i8*, i32 } [ %107, %106 ], [ %37, %36 ]
  %108 = extractvalue { i8*, i32 } %eh.lpad-body, 0
  %109 = extractvalue { i8*, i32 } %eh.lpad-body, 1
  br label %139

; <label>:110                                     ; preds = %43
  %111 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %112 = extractvalue { i8*, i32 } %111, 0
  %113 = extractvalue { i8*, i32 } %111, 1
  br label %133

; <label>:114                                     ; preds = %56
  %115 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  br label %.body8

.body8:                                           ; preds = %69, %114
  %eh.lpad-body9 = phi { i8*, i32 } [ %115, %114 ], [ %70, %69 ]
  %116 = extractvalue { i8*, i32 } %eh.lpad-body9, 0
  %117 = extractvalue { i8*, i32 } %eh.lpad-body9, 1
  br label %127

; <label>:118                                     ; preds = %76
  %119 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %120 = extractvalue { i8*, i32 } %119, 0
  %121 = extractvalue { i8*, i32 } %119, 1
  %122 = getelementptr inbounds %"class.std::allocator.3"* %4, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %122) #2
  %123 = getelementptr inbounds %"class.std::istream_iterator"* %17, i64 0, i32 1, i32 0, i32 0
  %124 = load i8** %123, align 8, !tbaa !14
  %125 = getelementptr inbounds i8* %124, i64 -24
  %126 = bitcast i8* %125 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %126, %"class.std::allocator.3"* %4) #18
  call void @llvm.lifetime.end(i64 1, i8* %122) #2
  br label %127

; <label>:127                                     ; preds = %118, %.body8
  %.03 = phi i32 [ %121, %118 ], [ %117, %.body8 ]
  %.0 = phi i8* [ %120, %118 ], [ %116, %.body8 ]
  %128 = getelementptr inbounds %"class.std::allocator.3"* %3, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %128) #2
  %129 = getelementptr inbounds %"class.std::istream_iterator"* %18, i64 0, i32 1, i32 0, i32 0
  %130 = load i8** %129, align 8, !tbaa !14
  %131 = getelementptr inbounds i8* %130, i64 -24
  %132 = bitcast i8* %131 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %132, %"class.std::allocator.3"* %3) #18
  call void @llvm.lifetime.end(i64 1, i8* %128) #2
  br label %133

; <label>:133                                     ; preds = %127, %110
  %.14 = phi i32 [ %.03, %127 ], [ %113, %110 ]
  %.1 = phi i8* [ %.0, %127 ], [ %112, %110 ]
  %134 = getelementptr inbounds %"class.std::allocator.3"* %2, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %134) #2
  %135 = getelementptr inbounds %"class.std::istream_iterator"* %15, i64 0, i32 1, i32 0, i32 0
  %136 = load i8** %135, align 8, !tbaa !14
  %137 = getelementptr inbounds i8* %136, i64 -24
  %138 = bitcast i8* %137 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %138, %"class.std::allocator.3"* %2) #18
  call void @llvm.lifetime.end(i64 1, i8* %134) #2
  br label %139

; <label>:139                                     ; preds = %133, %.body
  %.25 = phi i32 [ %.14, %133 ], [ %109, %.body ]
  %.2 = phi i8* [ %.1, %133 ], [ %108, %.body ]
  %140 = getelementptr inbounds %"class.std::allocator.3"* %1, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %140) #2
  %141 = getelementptr inbounds %"class.std::istream_iterator"* %16, i64 0, i32 1, i32 0, i32 0
  %142 = load i8** %141, align 8, !tbaa !14
  %143 = getelementptr inbounds i8* %142, i64 -24
  %144 = bitcast i8* %143 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %144, %"class.std::allocator.3"* %1) #18
  call void @llvm.lifetime.end(i64 1, i8* %140) #2
  %145 = insertvalue { i8*, i32 } undef, i8* %.2, 0
  %146 = insertvalue { i8*, i32 } %145, i32 %.25, 1
  resume { i8*, i32 } %146
}

; Function Attrs: inlinehint optsize uwtable
define linkonce_odr %"class.std::vector.24"* @_ZSt13__copy_move_aILb0ESt16istream_iteratorISscSt11char_traitsIcElESt20back_insert_iteratorISt6vectorISsSaISsEEEET1_T0_SA_S9_(%"class.std::istream_iterator"* %__first, %"class.std::istream_iterator"* %__last, %"class.std::vector.24"* %__result.coerce) #13 {
  %1 = alloca %"class.std::allocator.3", align 1
  %2 = alloca %"class.std::allocator.3", align 1
  %3 = alloca %"class.std::allocator.3", align 1
  %4 = alloca %"class.std::allocator.3", align 1
  %5 = alloca %"class.std::istream_iterator", align 8
  %6 = alloca %"class.std::istream_iterator", align 8
  %7 = getelementptr inbounds %"class.std::istream_iterator"* %5, i64 0, i32 0
  %8 = getelementptr inbounds %"class.std::istream_iterator"* %__first, i64 0, i32 0
  %9 = load %"class.std::basic_istream"** %8, align 8, !tbaa !48
  store %"class.std::basic_istream"* %9, %"class.std::basic_istream"** %7, align 8, !tbaa !48
  %10 = getelementptr inbounds %"class.std::istream_iterator"* %5, i64 0, i32 1
  %11 = getelementptr inbounds %"class.std::istream_iterator"* %__first, i64 0, i32 1
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* %10, %"class.std::basic_string"* %11) #17
  %12 = getelementptr inbounds %"class.std::istream_iterator"* %5, i64 0, i32 2
  %13 = getelementptr inbounds %"class.std::istream_iterator"* %__first, i64 0, i32 2
  %14 = load i8* %13, align 1, !tbaa !50, !range !123
  store i8 %14, i8* %12, align 8, !tbaa !50
  %15 = getelementptr inbounds %"class.std::istream_iterator"* %6, i64 0, i32 0
  %16 = getelementptr inbounds %"class.std::istream_iterator"* %__last, i64 0, i32 0
  %17 = load %"class.std::basic_istream"** %16, align 8, !tbaa !48
  store %"class.std::basic_istream"* %17, %"class.std::basic_istream"** %15, align 8, !tbaa !48
  %18 = getelementptr inbounds %"class.std::istream_iterator"* %6, i64 0, i32 1
  %19 = getelementptr inbounds %"class.std::istream_iterator"* %__last, i64 0, i32 1
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %18, %"class.std::basic_string"* %19) #17
          to label %20 unwind label %36

; <label>:20                                      ; preds = %0
  %21 = getelementptr inbounds %"class.std::istream_iterator"* %6, i64 0, i32 2
  %22 = getelementptr inbounds %"class.std::istream_iterator"* %__last, i64 0, i32 2
  %23 = load i8* %22, align 1, !tbaa !50, !range !123
  store i8 %23, i8* %21, align 8, !tbaa !50
  %24 = invoke %"class.std::vector.24"* @_ZNSt11__copy_moveILb0ELb0ESt18input_iterator_tagE8__copy_mISt16istream_iteratorISscSt11char_traitsIcElESt20back_insert_iteratorISt6vectorISsSaISsEEEEET0_T_SD_SC_(%"class.std::istream_iterator"* %5, %"class.std::istream_iterator"* %6, %"class.std::vector.24"* %__result.coerce) #17
          to label %25 unwind label %40

; <label>:25                                      ; preds = %20
  %26 = getelementptr inbounds %"class.std::allocator.3"* %4, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %26) #2
  %27 = getelementptr inbounds %"class.std::istream_iterator"* %6, i64 0, i32 1, i32 0, i32 0
  %28 = load i8** %27, align 8, !tbaa !14
  %29 = getelementptr inbounds i8* %28, i64 -24
  %30 = bitcast i8* %29 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %30, %"class.std::allocator.3"* %4) #18
  call void @llvm.lifetime.end(i64 1, i8* %26) #2
  %31 = getelementptr inbounds %"class.std::allocator.3"* %3, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %31) #2
  %32 = getelementptr inbounds %"class.std::istream_iterator"* %5, i64 0, i32 1, i32 0, i32 0
  %33 = load i8** %32, align 8, !tbaa !14
  %34 = getelementptr inbounds i8* %33, i64 -24
  %35 = bitcast i8* %34 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %35, %"class.std::allocator.3"* %3) #18
  call void @llvm.lifetime.end(i64 1, i8* %31) #2
  ret %"class.std::vector.24"* %24

; <label>:36                                      ; preds = %0
  %37 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %38 = extractvalue { i8*, i32 } %37, 0
  %39 = extractvalue { i8*, i32 } %37, 1
  br label %49

; <label>:40                                      ; preds = %20
  %41 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %42 = extractvalue { i8*, i32 } %41, 0
  %43 = extractvalue { i8*, i32 } %41, 1
  %44 = getelementptr inbounds %"class.std::allocator.3"* %2, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %44) #2
  %45 = getelementptr inbounds %"class.std::istream_iterator"* %6, i64 0, i32 1, i32 0, i32 0
  %46 = load i8** %45, align 8, !tbaa !14
  %47 = getelementptr inbounds i8* %46, i64 -24
  %48 = bitcast i8* %47 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %48, %"class.std::allocator.3"* %2) #18
  call void @llvm.lifetime.end(i64 1, i8* %44) #2
  br label %49

; <label>:49                                      ; preds = %40, %36
  %.02 = phi i32 [ %43, %40 ], [ %39, %36 ]
  %.0 = phi i8* [ %42, %40 ], [ %38, %36 ]
  %50 = getelementptr inbounds %"class.std::allocator.3"* %1, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %50) #2
  %51 = getelementptr inbounds %"class.std::istream_iterator"* %5, i64 0, i32 1, i32 0, i32 0
  %52 = load i8** %51, align 8, !tbaa !14
  %53 = getelementptr inbounds i8* %52, i64 -24
  %54 = bitcast i8* %53 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %54, %"class.std::allocator.3"* %1) #18
  call void @llvm.lifetime.end(i64 1, i8* %50) #2
  %55 = insertvalue { i8*, i32 } undef, i8* %.0, 0
  %56 = insertvalue { i8*, i32 } %55, i32 %.02, 1
  resume { i8*, i32 } %56
}

; Function Attrs: optsize uwtable
define linkonce_odr %"class.std::vector.24"* @_ZNSt11__copy_moveILb0ELb0ESt18input_iterator_tagE8__copy_mISt16istream_iteratorISscSt11char_traitsIcElESt20back_insert_iteratorISt6vectorISsSaISsEEEEET0_T_SD_SC_(%"class.std::istream_iterator"* %__first, %"class.std::istream_iterator"* nocapture readonly %__last, %"class.std::vector.24"* %__result.coerce) #5 align 2 {
  %1 = getelementptr inbounds %"class.std::istream_iterator"* %__first, i64 0, i32 0
  %2 = getelementptr inbounds %"class.std::istream_iterator"* %__first, i64 0, i32 2
  %3 = getelementptr inbounds %"class.std::istream_iterator"* %__last, i64 0, i32 2
  %4 = getelementptr inbounds %"class.std::istream_iterator"* %__last, i64 0, i32 0
  %5 = getelementptr inbounds %"class.std::istream_iterator"* %__first, i64 0, i32 1
  br label %6

; <label>:6                                       ; preds = %_ZStneISscSt11char_traitsIcElEbRKSt16istream_iteratorIT_T0_T1_T2_ES9_.exit.thread, %0
  %7 = load i8* %2, align 1, !tbaa !50, !range !123
  %8 = load i8* %3, align 1, !tbaa !50, !range !123
  %9 = icmp eq i8 %7, %8
  br i1 %9, label %10, label %_ZStneISscSt11char_traitsIcElEbRKSt16istream_iteratorIT_T0_T1_T2_ES9_.exit.thread

; <label>:10                                      ; preds = %6
  %11 = icmp eq i8 %7, 0
  br i1 %11, label %_ZStneISscSt11char_traitsIcElEbRKSt16istream_iteratorIT_T0_T1_T2_ES9_.exit.thread1, label %_ZStneISscSt11char_traitsIcElEbRKSt16istream_iteratorIT_T0_T1_T2_ES9_.exit

_ZStneISscSt11char_traitsIcElEbRKSt16istream_iteratorIT_T0_T1_T2_ES9_.exit: ; preds = %10
  %12 = load %"class.std::basic_istream"** %1, align 8, !tbaa !48
  %13 = load %"class.std::basic_istream"** %4, align 8, !tbaa !48
  %phitmp.i = icmp eq %"class.std::basic_istream"* %12, %13
  br i1 %phitmp.i, label %_ZStneISscSt11char_traitsIcElEbRKSt16istream_iteratorIT_T0_T1_T2_ES9_.exit.thread1, label %_ZStneISscSt11char_traitsIcElEbRKSt16istream_iteratorIT_T0_T1_T2_ES9_.exit.thread

_ZStneISscSt11char_traitsIcElEbRKSt16istream_iteratorIT_T0_T1_T2_ES9_.exit.thread: ; preds = %_ZStneISscSt11char_traitsIcElEbRKSt16istream_iteratorIT_T0_T1_T2_ES9_.exit, %6
  tail call void @_ZNSt6vectorISsSaISsEE9push_backERKSs(%"class.std::vector.24"* %__result.coerce, %"class.std::basic_string"* %5) #17
  tail call void @_ZNSt16istream_iteratorISscSt11char_traitsIcElE7_M_readEv(%"class.std::istream_iterator"* %__first) #17
  br label %6

_ZStneISscSt11char_traitsIcElEbRKSt16istream_iteratorIT_T0_T1_T2_ES9_.exit.thread1: ; preds = %_ZStneISscSt11char_traitsIcElEbRKSt16istream_iteratorIT_T0_T1_T2_ES9_.exit, %10
  ret %"class.std::vector.24"* %__result.coerce
}

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt6vectorISsSaISsEE9push_backERKSs(%"class.std::vector.24"* nocapture %this, %"class.std::basic_string"* %__x) #5 align 2 {
  %1 = getelementptr inbounds %"class.std::vector.24"* %this, i64 0, i32 0, i32 0, i32 1
  %2 = load %"class.std::basic_string"** %1, align 8, !tbaa !54
  %3 = getelementptr inbounds %"class.std::vector.24"* %this, i64 0, i32 0, i32 0, i32 2
  %4 = load %"class.std::basic_string"** %3, align 8, !tbaa !127
  %5 = icmp eq %"class.std::basic_string"* %2, %4
  br i1 %5, label %11, label %6

; <label>:6                                       ; preds = %0
  %7 = icmp eq %"class.std::basic_string"* %2, null
  br i1 %7, label %_ZNSt16allocator_traitsISaISsEE9constructISsJRKSsEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit, label %8

; <label>:8                                       ; preds = %6
  tail call void @_ZNSsC1ERKSs(%"class.std::basic_string"* %2, %"class.std::basic_string"* %__x) #17
  %.pre = load %"class.std::basic_string"** %1, align 8, !tbaa !54
  br label %_ZNSt16allocator_traitsISaISsEE9constructISsJRKSsEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit

_ZNSt16allocator_traitsISaISsEE9constructISsJRKSsEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit: ; preds = %6, %8
  %9 = phi %"class.std::basic_string"* [ null, %6 ], [ %.pre, %8 ]
  %10 = getelementptr inbounds %"class.std::basic_string"* %9, i64 1
  store %"class.std::basic_string"* %10, %"class.std::basic_string"** %1, align 8, !tbaa !54
  br label %12

; <label>:11                                      ; preds = %0
  tail call void @_ZNSt6vectorISsSaISsEE19_M_emplace_back_auxIJRKSsEEEvDpOT_(%"class.std::vector.24"* %this, %"class.std::basic_string"* %__x) #17
  br label %12

; <label>:12                                      ; preds = %11, %_ZNSt16allocator_traitsISaISsEE9constructISsJRKSsEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit
  ret void
}

; Function Attrs: optsize uwtable
define linkonce_odr void @_ZNSt6vectorISsSaISsEE19_M_emplace_back_auxIJRKSsEEEvDpOT_(%"class.std::vector.24"* nocapture %this, %"class.std::basic_string"* %__args) #5 align 2 {
  %1 = alloca %"class.std::allocator.3", align 1
  %2 = call i64 @_ZNKSt6vectorISsSaISsEE12_M_check_lenEmPKc(%"class.std::vector.24"* %this, i64 1, i8* getelementptr inbounds ([28 x i8]* @.str123, i64 0, i64 0)) #17
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %_ZNSt12_Vector_baseISsSaISsEE11_M_allocateEm.exit, label %4

; <label>:4                                       ; preds = %0
  %5 = icmp ugt i64 %2, 2305843009213693951
  br i1 %5, label %6, label %_ZN9__gnu_cxx13new_allocatorISsE8allocateEmPKv.exit

; <label>:6                                       ; preds = %4
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZN9__gnu_cxx13new_allocatorISsE8allocateEmPKv.exit: ; preds = %4
  %7 = shl i64 %2, 3
  %8 = call noalias i8* @_Znwm(i64 %7) #17
  %9 = bitcast i8* %8 to %"class.std::basic_string"*
  br label %_ZNSt12_Vector_baseISsSaISsEE11_M_allocateEm.exit

_ZNSt12_Vector_baseISsSaISsEE11_M_allocateEm.exit: ; preds = %0, %_ZN9__gnu_cxx13new_allocatorISsE8allocateEmPKv.exit
  %10 = phi %"class.std::basic_string"* [ %9, %_ZN9__gnu_cxx13new_allocatorISsE8allocateEmPKv.exit ], [ null, %0 ]
  %11 = getelementptr inbounds %"class.std::vector.24"* %this, i64 0, i32 0, i32 0, i32 1
  %12 = load %"class.std::basic_string"** %11, align 8, !tbaa !54
  %13 = getelementptr inbounds %"class.std::vector.24"* %this, i64 0, i32 0, i32 0, i32 0
  %14 = load %"class.std::basic_string"** %13, align 8, !tbaa !51
  %15 = ptrtoint %"class.std::basic_string"* %12 to i64
  %16 = ptrtoint %"class.std::basic_string"* %14 to i64
  %17 = sub i64 %15, %16
  %18 = ashr exact i64 %17, 3
  %19 = getelementptr inbounds %"class.std::basic_string"* %10, i64 %18
  %20 = icmp eq %"class.std::basic_string"* %19, null
  br i1 %20, label %_ZNSt16allocator_traitsISaISsEE9constructISsJRKSsEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit, label %21

; <label>:21                                      ; preds = %_ZNSt12_Vector_baseISsSaISsEE11_M_allocateEm.exit
  invoke void @_ZNSsC1ERKSs(%"class.std::basic_string"* %19, %"class.std::basic_string"* %__args) #17
          to label %._ZNSt16allocator_traitsISaISsEE9constructISsJRKSsEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit_crit_edge unwind label %54

._ZNSt16allocator_traitsISaISsEE9constructISsJRKSsEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit_crit_edge: ; preds = %21
  %.pre = load %"class.std::basic_string"** %13, align 8, !tbaa !51
  %.pre2 = load %"class.std::basic_string"** %11, align 8, !tbaa !54
  br label %_ZNSt16allocator_traitsISaISsEE9constructISsJRKSsEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit

_ZNSt16allocator_traitsISaISsEE9constructISsJRKSsEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit: ; preds = %._ZNSt16allocator_traitsISaISsEE9constructISsJRKSsEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit_crit_edge, %_ZNSt12_Vector_baseISsSaISsEE11_M_allocateEm.exit
  %22 = phi %"class.std::basic_string"* [ %.pre2, %._ZNSt16allocator_traitsISaISsEE9constructISsJRKSsEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit_crit_edge ], [ %12, %_ZNSt12_Vector_baseISsSaISsEE11_M_allocateEm.exit ]
  %23 = phi %"class.std::basic_string"* [ %.pre, %._ZNSt16allocator_traitsISaISsEE9constructISsJRKSsEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit_crit_edge ], [ %14, %_ZNSt12_Vector_baseISsSaISsEE11_M_allocateEm.exit ]
  %24 = icmp eq %"class.std::basic_string"* %23, %22
  br i1 %24, label %_ZSt34__uninitialized_move_if_noexcept_aIPSsS0_SaISsEET0_T_S3_S2_RT1_.exit.thread, label %.lr.ph.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPSsS0_SaISsEET0_T_S3_S2_RT1_.exit.thread: ; preds = %_ZNSt16allocator_traitsISaISsEE9constructISsJRKSsEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit
  %25 = getelementptr inbounds %"class.std::basic_string"* %10, i64 1
  br label %_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exit

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt16allocator_traitsISaISsEE9constructISsJRKSsEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS0_PT_DpOS5_.exit
  %scevgep.i.i.i.i = getelementptr %"class.std::basic_string"* %22, i64 -1, i32 0, i32 0
  br label %26

; <label>:26                                      ; preds = %_ZSt10_ConstructISsJSsEEvPT_DpOT0_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %__cur.03.i.i.i.i = phi %"class.std::basic_string"* [ %10, %.lr.ph.i.i.i.i ], [ %33, %_ZSt10_ConstructISsJSsEEvPT_DpOT0_.exit.i.i.i.i ]
  %__first.coerce12.i.i.i.i = phi %"class.std::basic_string"* [ %23, %.lr.ph.i.i.i.i ], [ %32, %_ZSt10_ConstructISsJSsEEvPT_DpOT0_.exit.i.i.i.i ]
  %27 = icmp eq %"class.std::basic_string"* %__cur.03.i.i.i.i, null
  br i1 %27, label %_ZSt10_ConstructISsJSsEEvPT_DpOT0_.exit.i.i.i.i, label %28

; <label>:28                                      ; preds = %26
  %29 = getelementptr inbounds %"class.std::basic_string"* %__cur.03.i.i.i.i, i64 0, i32 0, i32 0
  %30 = getelementptr inbounds %"class.std::basic_string"* %__first.coerce12.i.i.i.i, i64 0, i32 0, i32 0
  %31 = load i8** %30, align 8, !tbaa !46
  store i8* %31, i8** %29, align 8, !tbaa !46
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !14
  br label %_ZSt10_ConstructISsJSsEEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructISsJSsEEvPT_DpOT0_.exit.i.i.i.i:  ; preds = %28, %26
  %32 = getelementptr inbounds %"class.std::basic_string"* %__first.coerce12.i.i.i.i, i64 1
  %33 = getelementptr inbounds %"class.std::basic_string"* %__cur.03.i.i.i.i, i64 1
  %34 = icmp eq %"class.std::basic_string"* %32, %22
  br i1 %34, label %_ZSt34__uninitialized_move_if_noexcept_aIPSsS0_SaISsEET0_T_S3_S2_RT1_.exit, label %26

_ZSt34__uninitialized_move_if_noexcept_aIPSsS0_SaISsEET0_T_S3_S2_RT1_.exit: ; preds = %_ZSt10_ConstructISsJSsEEvPT_DpOT0_.exit.i.i.i.i
  %35 = ptrtoint i8** %scevgep.i.i.i.i to i64
  %__first.coerce5.i.i.i.i = ptrtoint %"class.std::basic_string"* %23 to i64
  %36 = sub i64 %35, %__first.coerce5.i.i.i.i
  %37 = lshr i64 %36, 3
  %scevgep7.i.i.i.i.sum = add i64 %37, 2
  %38 = getelementptr inbounds %"class.std::basic_string"* %10, i64 %scevgep7.i.i.i.i.sum
  br i1 %24, label %_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSsS0_SaISsEET0_T_S3_S2_RT1_.exit
  %39 = getelementptr inbounds %"class.std::allocator.3"* %1, i64 0, i32 0
  br label %40

; <label>:40                                      ; preds = %40, %.lr.ph.i.i.i
  %.01.i.i.i = phi %"class.std::basic_string"* [ %23, %.lr.ph.i.i.i ], [ %45, %40 ]
  call void @llvm.lifetime.start(i64 1, i8* %39) #2
  %41 = getelementptr inbounds %"class.std::basic_string"* %.01.i.i.i, i64 0, i32 0, i32 0
  %42 = load i8** %41, align 8, !tbaa !14
  %43 = getelementptr inbounds i8* %42, i64 -24
  %44 = bitcast i8* %43 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %44, %"class.std::allocator.3"* %1) #18
  call void @llvm.lifetime.end(i64 1, i8* %39) #2
  %45 = getelementptr inbounds %"class.std::basic_string"* %.01.i.i.i, i64 1
  %46 = icmp eq %"class.std::basic_string"* %45, %22
  br i1 %46, label %_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exitthread-pre-split, label %40

_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exitthread-pre-split: ; preds = %40
  %.pr = load %"class.std::basic_string"** %13, align 8, !tbaa !51
  br label %_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exit

_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exit:          ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSsS0_SaISsEET0_T_S3_S2_RT1_.exit.thread, %_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exitthread-pre-split, %_ZSt34__uninitialized_move_if_noexcept_aIPSsS0_SaISsEET0_T_S3_S2_RT1_.exit
  %47 = phi %"class.std::basic_string"* [ %38, %_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exitthread-pre-split ], [ %38, %_ZSt34__uninitialized_move_if_noexcept_aIPSsS0_SaISsEET0_T_S3_S2_RT1_.exit ], [ %25, %_ZSt34__uninitialized_move_if_noexcept_aIPSsS0_SaISsEET0_T_S3_S2_RT1_.exit.thread ]
  %48 = phi %"class.std::basic_string"* [ %.pr, %_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exitthread-pre-split ], [ %22, %_ZSt34__uninitialized_move_if_noexcept_aIPSsS0_SaISsEET0_T_S3_S2_RT1_.exit ], [ %22, %_ZSt34__uninitialized_move_if_noexcept_aIPSsS0_SaISsEET0_T_S3_S2_RT1_.exit.thread ]
  %49 = getelementptr inbounds %"class.std::vector.24"* %this, i64 0, i32 0, i32 0, i32 2
  %50 = icmp eq %"class.std::basic_string"* %48, null
  br i1 %50, label %_ZNSt12_Vector_baseISsSaISsEE13_M_deallocateEPSsm.exit1, label %51

; <label>:51                                      ; preds = %_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exit
  %52 = bitcast %"class.std::basic_string"* %48 to i8*
  call void @_ZdlPv(i8* %52) #18
  br label %_ZNSt12_Vector_baseISsSaISsEE13_M_deallocateEPSsm.exit1

_ZNSt12_Vector_baseISsSaISsEE13_M_deallocateEPSsm.exit1: ; preds = %_ZSt8_DestroyIPSsSsEvT_S1_RSaIT0_E.exit, %51
  store %"class.std::basic_string"* %10, %"class.std::basic_string"** %13, align 8, !tbaa !51
  store %"class.std::basic_string"* %47, %"class.std::basic_string"** %11, align 8, !tbaa !54
  %53 = getelementptr inbounds %"class.std::basic_string"* %10, i64 %2
  store %"class.std::basic_string"* %53, %"class.std::basic_string"** %49, align 8, !tbaa !127
  ret void

; <label>:54                                      ; preds = %21
  %55 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %56 = extractvalue { i8*, i32 } %55, 0
  %57 = call i8* @__cxa_begin_catch(i8* %56) #2
  %58 = icmp eq %"class.std::basic_string"* %10, null
  br i1 %58, label %.thread, label %_ZNSt12_Vector_baseISsSaISsEE13_M_deallocateEPSsm.exit

.thread:                                          ; preds = %54
  call void @llvm.trap()
  unreachable

; <label>:59                                      ; preds = %_ZNSt12_Vector_baseISsSaISsEE13_M_deallocateEPSsm.exit
  %60 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  invoke void @__cxa_end_catch()
          to label %62 unwind label %63

_ZNSt12_Vector_baseISsSaISsEE13_M_deallocateEPSsm.exit: ; preds = %54
  %61 = bitcast %"class.std::basic_string"* %10 to i8*
  call void @_ZdlPv(i8* %61) #18
  invoke void @__cxa_rethrow() #20
          to label %66 unwind label %59

; <label>:62                                      ; preds = %59
  resume { i8*, i32 } %60

; <label>:63                                      ; preds = %59
  %64 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %65 = extractvalue { i8*, i32 } %64, 0
  call void @__clang_call_terminate(i8* %65) #15
  unreachable

; <label>:66                                      ; preds = %_ZNSt12_Vector_baseISsSaISsEE13_M_deallocateEPSsm.exit
  unreachable
}

; Function Attrs: optsize uwtable
define linkonce_odr i64 @_ZNKSt6vectorISsSaISsEE12_M_check_lenEmPKc(%"class.std::vector.24"* nocapture readonly %this, i64 %__n, i8* %__s) #5 align 2 {
  %1 = getelementptr inbounds %"class.std::vector.24"* %this, i64 0, i32 0, i32 0, i32 1
  %2 = load %"class.std::basic_string"** %1, align 8, !tbaa !54
  %3 = getelementptr inbounds %"class.std::vector.24"* %this, i64 0, i32 0, i32 0, i32 0
  %4 = load %"class.std::basic_string"** %3, align 8, !tbaa !51
  %5 = ptrtoint %"class.std::basic_string"* %2 to i64
  %6 = ptrtoint %"class.std::basic_string"* %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = sub i64 2305843009213693951, %8
  %10 = icmp ult i64 %9, %__n
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  tail call void @_ZSt20__throw_length_errorPKc(i8* %__s) #19
  unreachable

; <label>:12                                      ; preds = %0
  %13 = icmp ult i64 %8, %__n
  %14 = select i1 %13, i64 %__n, i64 %8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %14)
  %15 = extractvalue { i64, i1 } %uadd, 0
  %16 = extractvalue { i64, i1 } %uadd, 1
  %17 = icmp ugt i64 %15, 2305843009213693951
  %or.cond = or i1 %16, %17
  %18 = select i1 %or.cond, i64 2305843009213693951, i64 %15
  ret i64 %18
}

; Function Attrs: optsize
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(%"class.std::basic_ios"*, %"class.std::basic_streambuf"*) #0

; Function Attrs: optsize uwtable
define available_externally void @_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEEC2ERKSsSt13_Ios_Openmode(%"class.std::basic_stringbuf"* %this, %"class.std::basic_string"* nocapture readonly %__str, i32 %__mode) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator.3", align 1
  %2 = alloca %"class.std::allocator.3", align 1
  %3 = getelementptr inbounds %"class.std::basic_stringbuf"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*]* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %3, align 8, !tbaa !27
  %4 = getelementptr inbounds %"class.std::basic_stringbuf"* %this, i64 0, i32 0, i32 1
  %5 = getelementptr inbounds %"class.std::basic_stringbuf"* %this, i64 0, i32 0, i32 7
  %6 = bitcast i8** %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 48, i32 8, i1 false) #2
  call void @_ZNSt6localeC1Ev(%"class.std::locale"* %5) #18
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*]* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %3, align 8, !tbaa !27
  %7 = getelementptr inbounds %"class.std::basic_stringbuf"* %this, i64 0, i32 1
  store i32 0, i32* %7, align 4, !tbaa !128
  %8 = getelementptr inbounds %"class.std::basic_stringbuf"* %this, i64 0, i32 2
  %9 = getelementptr inbounds %"class.std::basic_string"* %__str, i64 0, i32 0, i32 0
  %10 = load i8** %9, align 8, !tbaa !14
  %11 = getelementptr inbounds i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64* %12, align 8, !tbaa !44
  invoke void @_ZNSsC1EPKcmRKSaIcE(%"class.std::basic_string"* %8, i8* %10, i64 %13, %"class.std::allocator.3"* %2) #17
          to label %14 unwind label %21

; <label>:14                                      ; preds = %0
  store i32 %__mode, i32* %7, align 4, !tbaa !128
  %15 = and i32 %__mode, 3
  %16 = icmp eq i32 %15, 0
  %.phi.trans.insert.i = getelementptr inbounds %"class.std::basic_stringbuf"* %this, i64 0, i32 2, i32 0, i32 0
  %.pre.i = load i8** %.phi.trans.insert.i, align 8, !tbaa !14
  br i1 %16, label %._crit_edge.i, label %17

; <label>:17                                      ; preds = %14
  %18 = getelementptr inbounds i8* %.pre.i, i64 -24
  %19 = bitcast i8* %18 to i64*
  %20 = load i64* %19, align 8, !tbaa !44
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %17, %14
  %__len.0.i = phi i64 [ %20, %17 ], [ 0, %14 ]
  invoke void @_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(%"class.std::basic_stringbuf"* %this, i8* %.pre.i, i64 0, i64 %__len.0.i) #17
          to label %_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEE17_M_stringbuf_initESt13_Ios_Openmode.exit unwind label %25

_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEE17_M_stringbuf_initESt13_Ios_Openmode.exit: ; preds = %._crit_edge.i
  ret void

; <label>:21                                      ; preds = %0
  %22 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  %24 = extractvalue { i8*, i32 } %22, 1
  br label %34

; <label>:25                                      ; preds = %._crit_edge.i
  %26 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  %28 = extractvalue { i8*, i32 } %26, 1
  %29 = getelementptr inbounds %"class.std::allocator.3"* %1, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %29) #2
  %30 = getelementptr inbounds %"class.std::basic_string"* %8, i64 0, i32 0, i32 0
  %31 = load i8** %30, align 8, !tbaa !14
  %32 = getelementptr inbounds i8* %31, i64 -24
  %33 = bitcast i8* %32 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  call void @_ZNSs4_Rep10_M_disposeERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %33, %"class.std::allocator.3"* %1) #18
  call void @llvm.lifetime.end(i64 1, i8* %29) #2
  br label %34

; <label>:34                                      ; preds = %25, %21
  %.01 = phi i8* [ %27, %25 ], [ %23, %21 ]
  %.0 = phi i32 [ %28, %25 ], [ %24, %21 ]
  store i32 (...)** bitcast (i8** getelementptr inbounds ([16 x i8*]* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, i64 2) to i32 (...)**), i32 (...)*** %3, align 8, !tbaa !27
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* %5) #18
  %35 = insertvalue { i8*, i32 } undef, i8* %.01, 0
  %36 = insertvalue { i8*, i32 } %35, i32 %.0, 1
  resume { i8*, i32 } %36
}

; Function Attrs: optsize
declare void @_ZNSsC1EPKcmRKSaIcE(%"class.std::basic_string"*, i8*, i64, %"class.std::allocator.3"*) #0

; Function Attrs: optsize
declare void @_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(%"class.std::basic_stringbuf"*, i8*, i64, i64) #0

; Function Attrs: nounwind optsize
declare void @_ZNSt6localeC1Ev(%"class.std::locale"*) #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_baseC2Ev(%"class.std::ios_base"*) #1

; Function Attrs: optsize
declare void @_ZNSs12_M_leak_hardEv(%"class.std::basic_string"*) #0

; Function Attrs: optsize
declare %"class.std::basic_istream"* @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_ES4_(%"class.std::basic_istream"*, %"class.std::basic_string"*, i8 signext) #0

; Function Attrs: optsize
declare void @_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev(%"class.std::basic_filebuf"*) #0

; Function Attrs: optsize uwtable
define available_externally void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode(%"class.std::basic_ifstream"* %this, %"class.std::basic_string"* nocapture readonly %__s, i32 %__mode) #5 align 2 {
  %1 = getelementptr inbounds %"class.std::basic_ifstream"* %this, i64 0, i32 1
  %2 = or i32 %__mode, 8
  %3 = getelementptr inbounds %"class.std::basic_string"* %__s, i64 0, i32 0, i32 0
  %4 = load i8** %3, align 8, !tbaa !14
  %5 = tail call %"class.std::basic_filebuf"* @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_filebuf"* %1, i8* %4, i32 %2) #17
  %6 = icmp eq %"class.std::basic_filebuf"* %5, null
  %7 = bitcast %"class.std::basic_ifstream"* %this to i8**
  %8 = load i8** %7, align 8, !tbaa !27
  %9 = getelementptr i8* %8, i64 -24
  %10 = bitcast i8* %9 to i64*
  %11 = load i64* %10, align 8
  %12 = bitcast %"class.std::basic_ifstream"* %this to i8*
  %13 = getelementptr inbounds i8* %12, i64 %11
  %14 = bitcast i8* %13 to %"class.std::basic_ios"*
  br i1 %6, label %15, label %20

; <label>:15                                      ; preds = %0
  %.sum = add i64 %11, 32
  %16 = getelementptr inbounds i8* %12, i64 %.sum
  %17 = bitcast i8* %16 to i32*
  %18 = load i32* %17, align 4, !tbaa !38
  %19 = or i32 %18, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %14, i32 %19) #17
  br label %21

; <label>:20                                      ; preds = %0
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %14, i32 0) #17
  br label %21

; <label>:21                                      ; preds = %20, %15
  ret void
}

; Function Attrs: optsize
declare %"class.std::basic_filebuf"* @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_filebuf"*, i8*, i32) #0

; Function Attrs: nounwind optsize readnone
declare float @floorf(float) #12

define internal void @_GLOBAL__I_a() section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit) #17
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* @__dso_handle) #2
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #14

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #15

attributes #0 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { nobuiltin nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nobuiltin optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readnone }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind optsize readnone }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize }
attributes #19 = { noreturn optsize }
attributes #20 = { noreturn }
attributes #21 = { nounwind optsize readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (branches/release_34 198681)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"float", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
!5 = metadata !{metadata !6, metadata !10, i64 24}
!6 = metadata !{metadata !"_ZTSNSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", metadata !7, i64 0, metadata !8, i64 8, metadata !11, i64 40}
!7 = metadata !{metadata !"_ZTSSt4lessISsE"}
!8 = metadata !{metadata !"_ZTSSt18_Rb_tree_node_base", metadata !9, i64 0, metadata !10, i64 8, metadata !10, i64 16, metadata !10, i64 24}
!9 = metadata !{metadata !"_ZTSSt14_Rb_tree_color", metadata !3, i64 0}
!10 = metadata !{metadata !"any pointer", metadata !3, i64 0}
!11 = metadata !{metadata !"long", metadata !3, i64 0}
!12 = metadata !{metadata !6, metadata !10, i64 32}
!13 = metadata !{metadata !10, metadata !10, i64 0}
!14 = metadata !{metadata !15, metadata !10, i64 0}
!15 = metadata !{metadata !"_ZTSSs", metadata !16, i64 0}
!16 = metadata !{metadata !"_ZTSNSs12_Alloc_hiderE", metadata !10, i64 0}
!17 = metadata !{metadata !18, metadata !19, i64 8}
!18 = metadata !{metadata !"_ZTS2VM", metadata !3, i64 0, metadata !19, i64 8, metadata !19, i64 12, metadata !19, i64 16, metadata !20, i64 20, metadata !21, i64 24, metadata !23, i64 104, metadata !10, i64 184, metadata !10, i64 192, metadata !10, i64 200, metadata !10, i64 208, metadata !3, i64 216, metadata !3, i64 672}
!19 = metadata !{metadata !"int", metadata !3, i64 0}
!20 = metadata !{metadata !"bool", metadata !3, i64 0}
!21 = metadata !{metadata !"_ZTSSt5stackIiSt5dequeIiSaIiEEE", metadata !22, i64 0}
!22 = metadata !{metadata !"_ZTSSt5dequeIiSaIiEE"}
!23 = metadata !{metadata !"_ZTSSt5stackISt4pairIiiESt5dequeIS1_SaIS1_EEE", metadata !24, i64 0}
!24 = metadata !{metadata !"_ZTSSt5dequeISt4pairIiiESaIS1_EE"}
!25 = metadata !{metadata !18, metadata !10, i64 208}
!26 = metadata !{metadata !19, metadata !19, i64 0}
!27 = metadata !{metadata !28, metadata !28, i64 0}
!28 = metadata !{metadata !"vtable pointer", metadata !4, i64 0}
!29 = metadata !{metadata !29, metadata !30, metadata !31}
!30 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!31 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!32 = metadata !{metadata !3, metadata !3, i64 0}
!33 = metadata !{metadata !34, metadata !10, i64 16}
!34 = metadata !{metadata !"_ZTSSt8_Rb_treeISsSt4pairIKSsiESt10_Select1stIS2_ESt4lessISsESaIS2_EE", metadata !6, i64 0}
!35 = metadata !{metadata !36, metadata !10, i64 0}
!36 = metadata !{metadata !"_ZTSSt12_Vector_baseI11InstructionSaIS0_EE", metadata !37, i64 0}
!37 = metadata !{metadata !"_ZTSNSt12_Vector_baseI11InstructionSaIS0_EE12_Vector_implE", metadata !10, i64 0, metadata !10, i64 8, metadata !10, i64 16}
!38 = metadata !{metadata !39, metadata !41, i64 32}
!39 = metadata !{metadata !"_ZTSSt8ios_base", metadata !11, i64 8, metadata !11, i64 16, metadata !40, i64 24, metadata !41, i64 28, metadata !41, i64 32, metadata !10, i64 40, metadata !42, i64 48, metadata !3, i64 64, metadata !19, i64 192, metadata !10, i64 200, metadata !43, i64 208}
!40 = metadata !{metadata !"_ZTSSt13_Ios_Fmtflags", metadata !3, i64 0}
!41 = metadata !{metadata !"_ZTSSt12_Ios_Iostate", metadata !3, i64 0}
!42 = metadata !{metadata !"_ZTSNSt8ios_base6_WordsE", metadata !10, i64 0, metadata !11, i64 8}
!43 = metadata !{metadata !"_ZTSSt6locale", metadata !10, i64 0}
!44 = metadata !{metadata !45, metadata !11, i64 0}
!45 = metadata !{metadata !"_ZTSNSs9_Rep_baseE", metadata !11, i64 0, metadata !11, i64 8, metadata !19, i64 16}
!46 = metadata !{metadata !16, metadata !10, i64 0}
!47 = metadata !{metadata !45, metadata !19, i64 16}
!48 = metadata !{metadata !49, metadata !10, i64 0}
!49 = metadata !{metadata !"_ZTSSt16istream_iteratorISscSt11char_traitsIcElE", metadata !10, i64 0, metadata !15, i64 8, metadata !20, i64 16}
!50 = metadata !{metadata !49, metadata !20, i64 16}
!51 = metadata !{metadata !52, metadata !10, i64 0}
!52 = metadata !{metadata !"_ZTSSt12_Vector_baseISsSaISsEE", metadata !53, i64 0}
!53 = metadata !{metadata !"_ZTSNSt12_Vector_baseISsSaISsEE12_Vector_implE", metadata !10, i64 0, metadata !10, i64 8, metadata !10, i64 16}
!54 = metadata !{metadata !52, metadata !10, i64 8}
!55 = metadata !{metadata !36, metadata !10, i64 8}
!56 = metadata !{metadata !57, metadata !19, i64 8}
!57 = metadata !{metadata !"_ZTSSt4pairIKSsiE", metadata !15, i64 0, metadata !19, i64 8}
!58 = metadata !{metadata !59, metadata !60, i64 0}
!59 = metadata !{metadata !"_ZTS11Instruction", metadata !60, i64 0, metadata !3, i64 4}
!60 = metadata !{metadata !"_ZTS8Bytecode", metadata !3, i64 0}
!61 = metadata !{metadata !62, metadata !19, i64 0}
!62 = metadata !{metadata !"_ZTS7Program", metadata !19, i64 0, metadata !19, i64 4, metadata !63, i64 8, metadata !64, i64 32}
!63 = metadata !{metadata !"_ZTSSt6vectorI11InstructionSaIS0_EE"}
!64 = metadata !{metadata !"_ZTSSt3mapISsiSt4lessISsESaISt4pairIKSsiEEE", metadata !34, i64 0}
!65 = metadata !{metadata !62, metadata !19, i64 4}
!66 = metadata !{metadata !18, metadata !19, i64 12}
!67 = metadata !{metadata !18, metadata !19, i64 16}
!68 = metadata !{metadata !18, metadata !20, i64 20}
!69 = metadata !{metadata !18, metadata !10, i64 184}
!70 = metadata !{metadata !18, metadata !10, i64 192}
!71 = metadata !{metadata !18, metadata !10, i64 200}
!72 = metadata !{metadata !73, metadata !73, i64 0}
!73 = metadata !{metadata !"double", metadata !3, i64 0}
!74 = metadata !{metadata !75, metadata !11, i64 0}
!75 = metadata !{metadata !"_ZTS8timespec", metadata !11, i64 0, metadata !11, i64 8}
!76 = metadata !{metadata !75, metadata !11, i64 8}
!77 = metadata !{metadata !78, metadata !10, i64 240}
!78 = metadata !{metadata !"_ZTSSt9basic_iosIcSt11char_traitsIcEE", metadata !10, i64 216, metadata !3, i64 224, metadata !20, i64 225, metadata !10, i64 232, metadata !10, i64 240, metadata !10, i64 248, metadata !10, i64 256}
!79 = metadata !{metadata !80, metadata !3, i64 56}
!80 = metadata !{metadata !"_ZTSSt5ctypeIcE", metadata !10, i64 16, metadata !20, i64 24, metadata !10, i64 32, metadata !10, i64 40, metadata !10, i64 48, metadata !3, i64 56, metadata !3, i64 57, metadata !3, i64 313, metadata !3, i64 569}
!81 = metadata !{metadata !"branch_weights", i32 64, i32 4}
!82 = metadata !{metadata !8, metadata !10, i64 24}
!83 = metadata !{metadata !8, metadata !10, i64 16}
!84 = metadata !{metadata !85, metadata !10, i64 0}
!85 = metadata !{metadata !"_ZTSSt11_Deque_baseIiSaIiEE", metadata !86, i64 0}
!86 = metadata !{metadata !"_ZTSNSt11_Deque_baseIiSaIiEE11_Deque_implE", metadata !10, i64 0, metadata !11, i64 8, metadata !87, i64 16, metadata !87, i64 48}
!87 = metadata !{metadata !"_ZTSSt15_Deque_iteratorIiRiPiE", metadata !10, i64 0, metadata !10, i64 8, metadata !10, i64 16, metadata !10, i64 24}
!88 = metadata !{metadata !85, metadata !10, i64 40}
!89 = metadata !{metadata !85, metadata !10, i64 72}
!90 = metadata !{metadata !91, metadata !10, i64 0}
!91 = metadata !{metadata !"_ZTSSt11_Deque_baseISt4pairIiiESaIS1_EE", metadata !92, i64 0}
!92 = metadata !{metadata !"_ZTSNSt11_Deque_baseISt4pairIiiESaIS1_EE11_Deque_implE", metadata !10, i64 0, metadata !11, i64 8, metadata !93, i64 16, metadata !93, i64 48}
!93 = metadata !{metadata !"_ZTSSt15_Deque_iteratorISt4pairIiiERS1_PS1_E", metadata !10, i64 0, metadata !10, i64 8, metadata !10, i64 16, metadata !10, i64 24}
!94 = metadata !{metadata !91, metadata !10, i64 40}
!95 = metadata !{metadata !91, metadata !10, i64 72}
!96 = metadata !{metadata !87, metadata !10, i64 0}
!97 = metadata !{metadata !87, metadata !10, i64 24}
!98 = metadata !{metadata !85, metadata !10, i64 56}
!99 = metadata !{metadata !85, metadata !10, i64 48}
!100 = metadata !{metadata !87, metadata !10, i64 8}
!101 = metadata !{metadata !87, metadata !10, i64 16}
!102 = metadata !{metadata !103, metadata !19, i64 0}
!103 = metadata !{metadata !"_ZTSSt4pairIiiE", metadata !19, i64 0, metadata !19, i64 4}
!104 = metadata !{metadata !103, metadata !19, i64 4}
!105 = metadata !{metadata !93, metadata !10, i64 24}
!106 = metadata !{metadata !91, metadata !10, i64 56}
!107 = metadata !{metadata !91, metadata !10, i64 48}
!108 = metadata !{metadata !93, metadata !10, i64 8}
!109 = metadata !{metadata !93, metadata !10, i64 16}
!110 = metadata !{metadata !91, metadata !10, i64 64}
!111 = metadata !{metadata !91, metadata !11, i64 8}
!112 = metadata !{metadata !85, metadata !10, i64 64}
!113 = metadata !{metadata !85, metadata !11, i64 8}
!114 = metadata !{metadata !91, metadata !10, i64 16}
!115 = metadata !{i64 0, i64 8, metadata !13, i64 8, i64 8, metadata !13, i64 16, i64 8, metadata !13, i64 24, i64 8, metadata !13}
!116 = metadata !{metadata !11, metadata !11, i64 0}
!117 = metadata !{metadata !85, metadata !10, i64 16}
!118 = metadata !{metadata !78, metadata !10, i64 216}
!119 = metadata !{metadata !78, metadata !3, i64 224}
!120 = metadata !{metadata !78, metadata !20, i64 225}
!121 = metadata !{metadata !122, metadata !11, i64 8}
!122 = metadata !{metadata !"_ZTSSi", metadata !11, i64 8}
!123 = metadata !{i8 0, i8 2}
!124 = metadata !{metadata !36, metadata !10, i64 16}
!125 = metadata !{metadata !34, metadata !10, i64 24}
!126 = metadata !{metadata !34, metadata !11, i64 40}
!127 = metadata !{metadata !52, metadata !10, i64 16}
!128 = metadata !{metadata !129, metadata !130, i64 64}
!129 = metadata !{metadata !"_ZTSSt15basic_stringbufIcSt11char_traitsIcESaIcEE", metadata !130, i64 64, metadata !15, i64 72}
!130 = metadata !{metadata !"_ZTSSt13_Ios_Openmode", metadata !3, i64 0}
