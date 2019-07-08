/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;
/* Structure forward decls */
typedef struct l_struct_OC_coordcube_t l_struct_OC_coordcube_t;
typedef struct l_struct_OC_search_t l_struct_OC_search_t;
typedef struct l_struct_OC_cubiecube l_struct_OC_cubiecube;
typedef struct l_struct_OC_facecube l_struct_OC_facecube;

/* Structure contents */
struct l_struct_OC_coordcube_t {
  unsigned short field0;
  unsigned short field1;
  unsigned short field2;
  unsigned short field3;
  unsigned short field4;
  unsigned short field5;
  unsigned short field6;
  unsigned int field7;
};

struct l_struct_OC_search_t {
  signed int field0[31];
  signed int field1[31];
  signed int field2[31];
  signed int field3[31];
  signed int field4[31];
  signed int field5[31];
  signed int field6[31];
  signed int field7[31];
  signed int field8[31];
  signed int field9[31];
  signed int field10[31];
  signed int field11[31];
  signed int field12[31];
};

struct l_struct_OC_cubiecube {
   char field0[8];
   char field1[8];
   char field2[12];
   char field3[12];
};

struct l_struct_OC_facecube {
   char field0[54];
};


/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void setPruning( char *llvm_cbe_table, signed int llvm_cbe_index,  char llvm_cbe_value);
 char getPruning( char *llvm_cbe_table, signed int llvm_cbe_index);
l_struct_OC_coordcube_t *get_coordcube(l_struct_OC_cubiecube *llvm_cbe_cubiecube);
signed short getTwist(l_struct_OC_cubiecube *);
signed short getFlip(l_struct_OC_cubiecube *);
signed short cornerParity(l_struct_OC_cubiecube *);
signed short getFRtoBR(l_struct_OC_cubiecube *);
signed short getURFtoDLF(l_struct_OC_cubiecube *);
signed short getURtoUL(l_struct_OC_cubiecube *);
signed short getUBtoDF(l_struct_OC_cubiecube *);
signed int getURtoDF(l_struct_OC_cubiecube *);
void solutionToString(l_struct_OC_search_t *llvm_cbe_search, signed int llvm_cbe_length, signed int llvm_cbe_depthPhase1,  char *llvm_cbe_encode_array);
void solution( char *llvm_cbe_facelets,  char llvm_cbe_maxDepth, bool *llvm_cbe_unsolvable,  char *llvm_cbe_encode_length,  char *llvm_cbe_encode_array, signed short *llvm_cbe_twistMove2, signed short *llvm_cbe_flipMove2, signed short *llvm_cbe_FRtoBR_Move2, signed short *llvm_cbe_URFtoDLF_Move2, signed short *llvm_cbe_URtoDF_Move2, signed short *llvm_cbe_URtoUL_Move2, signed short *llvm_cbe_UBtoDF_Move2, signed short *llvm_cbe_MergeURtoULandUBtoDF2,  char *llvm_cbe_Slice_URFtoDLF_Parity_Prun2,  char *llvm_cbe_Slice_URtoDF_Parity_Prun2,  char *llvm_cbe_Slice_Twist_Prun2,  char *llvm_cbe_Slice_Flip_Prun2);
l_struct_OC_facecube *get_facecube_fromstring( char *);
l_struct_OC_cubiecube *toCubieCube(l_struct_OC_facecube *);
signed int verify(l_struct_OC_cubiecube *);
signed int totalDepth(l_struct_OC_search_t *llvm_cbe_search, signed int llvm_cbe_depthPhase1,  char llvm_cbe_maxDepth, signed short *llvm_cbe_FRtoBR_Move2, signed short *llvm_cbe_URFtoDLF_Move2, signed short *llvm_cbe_URtoDF_Move2, signed short *llvm_cbe_URtoUL_Move2, signed short *llvm_cbe_UBtoDF_Move2, signed short *llvm_cbe_MergeURtoULandUBtoDF2,  char *llvm_cbe_Slice_URFtoDLF_Parity_Prun2,  char *llvm_cbe_Slice_URtoDF_Parity_Prun2);


/* Global Variable Definitions and Initialization */
static l_struct_OC_coordcube_t aesl_internal_get_coordcube_OC_result[1];
static l_struct_OC_search_t aesl_internal_solution_OC_search[1];
static signed short aesl_internal_totalDepth_OC_parityMove[2][18] = { { ((unsigned short )1), ((unsigned short )0), ((unsigned short )1), ((unsigned short )1), ((unsigned short )0), ((unsigned short )1), ((unsigned short )1), ((unsigned short )0), ((unsigned short )1), ((unsigned short )1), ((unsigned short )0), ((unsigned short )1), ((unsigned short )1), ((unsigned short )0), ((unsigned short )1), ((unsigned short )1), ((unsigned short )0), ((unsigned short )1) }, { ((unsigned short )0), ((unsigned short )1), ((unsigned short )0), ((unsigned short )0), ((unsigned short )1), ((unsigned short )0), ((unsigned short )0), ((unsigned short )1), ((unsigned short )0), ((unsigned short )0), ((unsigned short )1), ((unsigned short )0), ((unsigned short )0), ((unsigned short )1), ((unsigned short )0), ((unsigned short )0), ((unsigned short )1), ((unsigned short )0) } };


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

void setPruning( char *llvm_cbe_table, signed int llvm_cbe_index,  char llvm_cbe_value) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  unsigned int llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  unsigned char llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  unsigned int llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  unsigned long long llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
   char *llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  unsigned char llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  unsigned char llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  unsigned char llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  unsigned char llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  unsigned long long llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
   char *llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  unsigned char llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  unsigned char llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @setPruning\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = and i32 %%index, 1, !dbg !18 for 0x%I64xth hint within @setPruning  --> \n", ++aesl_llvm_cbe_11_count);
  llvm_cbe_tmp__1 = (unsigned int )llvm_cbe_index & 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__1);
  if (((llvm_cbe_tmp__1&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__15;
  } else {
    goto llvm_cbe_tmp__16;
  }

llvm_cbe_tmp__15:
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = or i8 %%value, -16, !dbg !17 for 0x%I64xth hint within @setPruning  --> \n", ++aesl_llvm_cbe_14_count);
  llvm_cbe_tmp__2 = (unsigned char )((unsigned char )(llvm_cbe_value | ((unsigned char )-16)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = sdiv i32 %%index, 2, !dbg !17 for 0x%I64xth hint within @setPruning  --> \n", ++aesl_llvm_cbe_15_count);
  llvm_cbe_tmp__3 = (unsigned int )((signed int )(((signed int )llvm_cbe_index) / ((signed int )2u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__3));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = sext i32 %%5 to i64, !dbg !17 for 0x%I64xth hint within @setPruning  --> \n", ++aesl_llvm_cbe_16_count);
  llvm_cbe_tmp__4 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds i8* %%table, i64 %%6, !dbg !17 for 0x%I64xth hint within @setPruning  --> \n", ++aesl_llvm_cbe_17_count);
  llvm_cbe_tmp__5 = ( char *)(&llvm_cbe_table[(((signed long long )llvm_cbe_tmp__4))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__4));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i8* %%7, align 1, !dbg !17 for 0x%I64xth hint within @setPruning  --> \n", ++aesl_llvm_cbe_18_count);
  llvm_cbe_tmp__6 = (unsigned char )*llvm_cbe_tmp__5;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = and i8 %%8, %%4, !dbg !17 for 0x%I64xth hint within @setPruning  --> \n", ++aesl_llvm_cbe_19_count);
  llvm_cbe_tmp__7 = (unsigned char )((unsigned char )(llvm_cbe_tmp__6 & llvm_cbe_tmp__2));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__7);
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%9, i8* %%7, align 1, !dbg !17 for 0x%I64xth hint within @setPruning  --> \n", ++aesl_llvm_cbe_20_count);
  *llvm_cbe_tmp__5 = llvm_cbe_tmp__7;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__7);
  goto llvm_cbe_tmp__17;

llvm_cbe_tmp__16:
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = shl i8 %%value, 4, !dbg !17 for 0x%I64xth hint within @setPruning  --> \n", ++aesl_llvm_cbe_22_count);
  llvm_cbe_tmp__8 = (unsigned char )((unsigned char )(llvm_cbe_value << ((unsigned char )4)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = or i8 %%11, 15, !dbg !17 for 0x%I64xth hint within @setPruning  --> \n", ++aesl_llvm_cbe_23_count);
  llvm_cbe_tmp__9 = (unsigned char )((unsigned char )(llvm_cbe_tmp__8 | ((unsigned char )15)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__9);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = sdiv i32 %%index, 2, !dbg !17 for 0x%I64xth hint within @setPruning  --> \n", ++aesl_llvm_cbe_24_count);
  llvm_cbe_tmp__10 = (unsigned int )((signed int )(((signed int )llvm_cbe_index) / ((signed int )2u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__10));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = sext i32 %%13 to i64, !dbg !17 for 0x%I64xth hint within @setPruning  --> \n", ++aesl_llvm_cbe_25_count);
  llvm_cbe_tmp__11 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__10);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds i8* %%table, i64 %%14, !dbg !17 for 0x%I64xth hint within @setPruning  --> \n", ++aesl_llvm_cbe_26_count);
  llvm_cbe_tmp__12 = ( char *)(&llvm_cbe_table[(((signed long long )llvm_cbe_tmp__11))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__11));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = load i8* %%15, align 1, !dbg !17 for 0x%I64xth hint within @setPruning  --> \n", ++aesl_llvm_cbe_27_count);
  llvm_cbe_tmp__13 = (unsigned char )*llvm_cbe_tmp__12;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__13);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = and i8 %%16, %%12, !dbg !17 for 0x%I64xth hint within @setPruning  --> \n", ++aesl_llvm_cbe_28_count);
  llvm_cbe_tmp__14 = (unsigned char )((unsigned char )(llvm_cbe_tmp__13 & llvm_cbe_tmp__9));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%17, i8* %%15, align 1, !dbg !17 for 0x%I64xth hint within @setPruning  --> \n", ++aesl_llvm_cbe_29_count);
  *llvm_cbe_tmp__12 = llvm_cbe_tmp__14;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
  goto llvm_cbe_tmp__17;

llvm_cbe_tmp__17:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @setPruning}\n");
  return;
}


 char getPruning( char *llvm_cbe_table, signed int llvm_cbe_index) {
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  unsigned int llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  unsigned int llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  unsigned long long llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
   char *llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  unsigned char llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  unsigned char llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  unsigned int llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  unsigned long long llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
   char *llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  unsigned char llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  unsigned char llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge_count = 0;
  unsigned char llvm_cbe_storemerge;
  unsigned char llvm_cbe_storemerge__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @getPruning\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = and i32 %%index, 1, !dbg !18 for 0x%I64xth hint within @getPruning  --> \n", ++aesl_llvm_cbe_39_count);
  llvm_cbe_tmp__18 = (unsigned int )llvm_cbe_index & 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__18);
  if (((llvm_cbe_tmp__18&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__29;
  } else {
    goto llvm_cbe_tmp__30;
  }

llvm_cbe_tmp__29:
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = sdiv i32 %%index, 2, !dbg !17 for 0x%I64xth hint within @getPruning  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__19 = (unsigned int )((signed int )(((signed int )llvm_cbe_index) / ((signed int )2u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__19));
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = sext i32 %%4 to i64, !dbg !17 for 0x%I64xth hint within @getPruning  --> \n", ++aesl_llvm_cbe_43_count);
  llvm_cbe_tmp__20 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__19);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__20);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds i8* %%table, i64 %%5, !dbg !17 for 0x%I64xth hint within @getPruning  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__21 = ( char *)(&llvm_cbe_table[(((signed long long )llvm_cbe_tmp__20))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__20));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = load i8* %%6, align 1, !dbg !17 for 0x%I64xth hint within @getPruning  --> \n", ++aesl_llvm_cbe_45_count);
  llvm_cbe_tmp__22 = (unsigned char )*llvm_cbe_tmp__21;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__22);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = and i8 %%7, 15, !dbg !17 for 0x%I64xth hint within @getPruning  --> \n", ++aesl_llvm_cbe_46_count);
  llvm_cbe_tmp__23 = (unsigned char )((unsigned char )(llvm_cbe_tmp__22 & ((unsigned char )15)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__23);
  llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned char )llvm_cbe_tmp__23;   /* for PHI node */
  goto llvm_cbe_tmp__31;

llvm_cbe_tmp__30:
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = sdiv i32 %%index, 2, !dbg !17 for 0x%I64xth hint within @getPruning  --> \n", ++aesl_llvm_cbe_49_count);
  llvm_cbe_tmp__24 = (unsigned int )((signed int )(((signed int )llvm_cbe_index) / ((signed int )2u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__24));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = sext i32 %%10 to i64, !dbg !17 for 0x%I64xth hint within @getPruning  --> \n", ++aesl_llvm_cbe_50_count);
  llvm_cbe_tmp__25 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__24);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__25);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds i8* %%table, i64 %%11, !dbg !17 for 0x%I64xth hint within @getPruning  --> \n", ++aesl_llvm_cbe_51_count);
  llvm_cbe_tmp__26 = ( char *)(&llvm_cbe_table[(((signed long long )llvm_cbe_tmp__25))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__25));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = load i8* %%12, align 1, !dbg !17 for 0x%I64xth hint within @getPruning  --> \n", ++aesl_llvm_cbe_52_count);
  llvm_cbe_tmp__27 = (unsigned char )*llvm_cbe_tmp__26;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__27);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = lshr i8 %%13, 4, !dbg !17 for 0x%I64xth hint within @getPruning  --> \n", ++aesl_llvm_cbe_53_count);
  llvm_cbe_tmp__28 = (unsigned char )((unsigned char )(((unsigned char )(((unsigned char )(llvm_cbe_tmp__27&255ull)) >> ((unsigned char )(((unsigned char )4)&255ull))))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__28&255ull)));
  llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned char )llvm_cbe_tmp__28;   /* for PHI node */
  goto llvm_cbe_tmp__31;

llvm_cbe_tmp__31:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge = phi i8 [ %%14, %%9 ], [ %%8, %%3  for 0x%I64xth hint within @getPruning  --> \n", ++aesl_llvm_cbe_storemerge_count);
  llvm_cbe_storemerge = (unsigned char )llvm_cbe_storemerge__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge = 0x%X",llvm_cbe_storemerge);
printf("\n = 0x%X",llvm_cbe_tmp__28);
printf("\n = 0x%X",llvm_cbe_tmp__23);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @getPruning}\n");
  return llvm_cbe_storemerge;
}


l_struct_OC_coordcube_t *get_coordcube(l_struct_OC_cubiecube *llvm_cbe_cubiecube) {
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  unsigned short llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  unsigned short llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  unsigned short llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  unsigned short llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  unsigned short llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  unsigned short llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  unsigned short llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  unsigned int llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @get_coordcube\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = tail call signext i16 @getTwist(%%struct.cubiecube* %%cubiecube) nounwind, !dbg !17 for 0x%I64xth hint within @get_coordcube  --> \n", ++aesl_llvm_cbe_67_count);
  llvm_cbe_tmp__32 = (unsigned short ) /*tail*/ getTwist((l_struct_OC_cubiecube *)llvm_cbe_cubiecube);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__32);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%1, i16* getelementptr inbounds ([1 x %%struct.coordcube_t]* @aesl_internal_get_coordcube.result, i64 0, i64 0, i32 0), align 16, !dbg !17 for 0x%I64xth hint within @get_coordcube  --> \n", ++aesl_llvm_cbe_68_count);
  *((&aesl_internal_get_coordcube_OC_result[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0)) = llvm_cbe_tmp__32;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = tail call signext i16 @getFlip(%%struct.cubiecube* %%cubiecube) nounwind, !dbg !17 for 0x%I64xth hint within @get_coordcube  --> \n", ++aesl_llvm_cbe_69_count);
  llvm_cbe_tmp__33 = (unsigned short ) /*tail*/ getFlip((l_struct_OC_cubiecube *)llvm_cbe_cubiecube);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__33);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%2, i16* getelementptr inbounds ([1 x %%struct.coordcube_t]* @aesl_internal_get_coordcube.result, i64 0, i64 0, i32 1), align 2, !dbg !17 for 0x%I64xth hint within @get_coordcube  --> \n", ++aesl_llvm_cbe_70_count);
  *((&aesl_internal_get_coordcube_OC_result[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field1)) = llvm_cbe_tmp__33;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__33);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = tail call signext i16 @cornerParity(%%struct.cubiecube* %%cubiecube) nounwind, !dbg !18 for 0x%I64xth hint within @get_coordcube  --> \n", ++aesl_llvm_cbe_71_count);
  llvm_cbe_tmp__34 = (unsigned short ) /*tail*/ cornerParity((l_struct_OC_cubiecube *)llvm_cbe_cubiecube);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__34);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%3, i16* getelementptr inbounds ([1 x %%struct.coordcube_t]* @aesl_internal_get_coordcube.result, i64 0, i64 0, i32 2), align 4, !dbg !18 for 0x%I64xth hint within @get_coordcube  --> \n", ++aesl_llvm_cbe_72_count);
  *((&aesl_internal_get_coordcube_OC_result[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2)) = llvm_cbe_tmp__34;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__34);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = tail call signext i16 @getFRtoBR(%%struct.cubiecube* %%cubiecube) nounwind, !dbg !18 for 0x%I64xth hint within @get_coordcube  --> \n", ++aesl_llvm_cbe_73_count);
  llvm_cbe_tmp__35 = (unsigned short ) /*tail*/ getFRtoBR((l_struct_OC_cubiecube *)llvm_cbe_cubiecube);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__35);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%4, i16* getelementptr inbounds ([1 x %%struct.coordcube_t]* @aesl_internal_get_coordcube.result, i64 0, i64 0, i32 3), align 2, !dbg !18 for 0x%I64xth hint within @get_coordcube  --> \n", ++aesl_llvm_cbe_74_count);
  *((&aesl_internal_get_coordcube_OC_result[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field3)) = llvm_cbe_tmp__35;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__35);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = tail call signext i16 @getURFtoDLF(%%struct.cubiecube* %%cubiecube) nounwind, !dbg !18 for 0x%I64xth hint within @get_coordcube  --> \n", ++aesl_llvm_cbe_75_count);
  llvm_cbe_tmp__36 = (unsigned short ) /*tail*/ getURFtoDLF((l_struct_OC_cubiecube *)llvm_cbe_cubiecube);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__36);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%5, i16* getelementptr inbounds ([1 x %%struct.coordcube_t]* @aesl_internal_get_coordcube.result, i64 0, i64 0, i32 4), align 8, !dbg !18 for 0x%I64xth hint within @get_coordcube  --> \n", ++aesl_llvm_cbe_76_count);
  *((&aesl_internal_get_coordcube_OC_result[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field4)) = llvm_cbe_tmp__36;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__36);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = tail call signext i16 @getURtoUL(%%struct.cubiecube* %%cubiecube) nounwind, !dbg !18 for 0x%I64xth hint within @get_coordcube  --> \n", ++aesl_llvm_cbe_77_count);
  llvm_cbe_tmp__37 = (unsigned short ) /*tail*/ getURtoUL((l_struct_OC_cubiecube *)llvm_cbe_cubiecube);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__37);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%6, i16* getelementptr inbounds ([1 x %%struct.coordcube_t]* @aesl_internal_get_coordcube.result, i64 0, i64 0, i32 5), align 2, !dbg !18 for 0x%I64xth hint within @get_coordcube  --> \n", ++aesl_llvm_cbe_78_count);
  *((&aesl_internal_get_coordcube_OC_result[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field5)) = llvm_cbe_tmp__37;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__37);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = tail call signext i16 @getUBtoDF(%%struct.cubiecube* %%cubiecube) nounwind, !dbg !18 for 0x%I64xth hint within @get_coordcube  --> \n", ++aesl_llvm_cbe_79_count);
  llvm_cbe_tmp__38 = (unsigned short ) /*tail*/ getUBtoDF((l_struct_OC_cubiecube *)llvm_cbe_cubiecube);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__38);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i16 %%7, i16* getelementptr inbounds ([1 x %%struct.coordcube_t]* @aesl_internal_get_coordcube.result, i64 0, i64 0, i32 6), align 4, !dbg !18 for 0x%I64xth hint within @get_coordcube  --> \n", ++aesl_llvm_cbe_80_count);
  *((&aesl_internal_get_coordcube_OC_result[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field6)) = llvm_cbe_tmp__38;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__38);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = tail call i32 @getURtoDF(%%struct.cubiecube* %%cubiecube) nounwind, !dbg !18 for 0x%I64xth hint within @get_coordcube  --> \n", ++aesl_llvm_cbe_81_count);
  llvm_cbe_tmp__39 = (unsigned int ) /*tail*/ getURtoDF((l_struct_OC_cubiecube *)llvm_cbe_cubiecube);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__39);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%8, i32* getelementptr inbounds ([1 x %%struct.coordcube_t]* @aesl_internal_get_coordcube.result, i64 0, i64 0, i32 7), align 16, !dbg !18 for 0x%I64xth hint within @get_coordcube  --> \n", ++aesl_llvm_cbe_82_count);
  *((&aesl_internal_get_coordcube_OC_result[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field7)) = llvm_cbe_tmp__39;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__39);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @get_coordcube}\n");
  return ((&aesl_internal_get_coordcube_OC_result[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
]));
}


void solutionToString(l_struct_OC_search_t *llvm_cbe_search, signed int llvm_cbe_length, signed int llvm_cbe_depthPhase1,  char *llvm_cbe_encode_array) {
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  unsigned int llvm_cbe_tmp__40;
  unsigned int llvm_cbe_tmp__40__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  unsigned long long llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  signed int *llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  unsigned int llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  unsigned int llvm_cbe_tmp__44;
  unsigned int llvm_cbe_tmp__44__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  signed int *llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  unsigned int llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  unsigned int llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  unsigned int llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  unsigned int llvm_cbe_tmp__49;
  unsigned int llvm_cbe_tmp__49__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  unsigned char llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
   char *llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  unsigned int llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @solutionToString\n");
  if ((((signed int )llvm_cbe_length) > ((signed int )0u))) {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    llvm_cbe_tmp__40__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e__crit_edge;
  }

  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ %%24, %%20 ], [ 0, %%0  for 0x%I64xth hint within @solutionToString  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",llvm_cbe_tmp__52);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = phi i32 [ %%21, %%20 ], [ 0, %%0  for 0x%I64xth hint within @solutionToString  --> \n", ++aesl_llvm_cbe_104_count);
  llvm_cbe_tmp__40 = (unsigned int )llvm_cbe_tmp__40__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__40);
printf("\n = 0x%X",llvm_cbe_tmp__49);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = sext i32 %%storemerge1 to i64, !dbg !17 for 0x%I64xth hint within @solutionToString  --> \n", ++aesl_llvm_cbe_105_count);
  llvm_cbe_tmp__41 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__41);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 0, i64 %%3, !dbg !17 for 0x%I64xth hint within @solutionToString  --> \n", ++aesl_llvm_cbe_106_count);
  llvm_cbe_tmp__42 = (signed int *)(&llvm_cbe_search->field0[(((signed long long )llvm_cbe_tmp__41))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__41));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = load i32* %%4, align 4, !dbg !17 for 0x%I64xth hint within @solutionToString  --> \n", ++aesl_llvm_cbe_107_count);
  llvm_cbe_tmp__43 = (unsigned int )*llvm_cbe_tmp__42;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__43);
  switch (((unsigned int )(llvm_cbe_tmp__43&4294967295ull))) {
  default:
    llvm_cbe_tmp__44__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__40;   /* for PHI node */
    goto llvm_cbe_tmp__53;
;
  case ((unsigned int )(0u&4294967295ull)):
    goto llvm_cbe_tmp__54;
    break;
  case ((unsigned int )(1u&4294967295ull)):
    goto llvm_cbe_tmp__55;
  case ((unsigned int )(2u&4294967295ull)):
    goto llvm_cbe_tmp__56;
  case ((unsigned int )(3u&4294967295ull)):
    goto llvm_cbe_tmp__57;
  case ((unsigned int )(4u&4294967295ull)):
    goto llvm_cbe_tmp__58;
  case ((unsigned int )(5u&4294967295ull)):
    goto llvm_cbe_tmp__59;
  }
llvm_cbe_tmp__60:
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = phi i32 [ %%19, %%18 ], [ %%17, %%16 ], [ %%13, %%12  for 0x%I64xth hint within @solutionToString  --> \n", ++aesl_llvm_cbe_155_count);
  llvm_cbe_tmp__49 = (unsigned int )llvm_cbe_tmp__49__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__49);
printf("\n = 0x%X",llvm_cbe_tmp__48);
printf("\n = 0x%X",llvm_cbe_tmp__47);
printf("\n = 0x%X",llvm_cbe_tmp__44);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = trunc i32 %%21 to i8, !dbg !18 for 0x%I64xth hint within @solutionToString  --> \n", ++aesl_llvm_cbe_156_count);
  llvm_cbe_tmp__50 = (unsigned char )((unsigned char )llvm_cbe_tmp__49&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__50);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = getelementptr inbounds i8* %%encode_array, i64 %%3, !dbg !18 for 0x%I64xth hint within @solutionToString  --> \n", ++aesl_llvm_cbe_157_count);
  llvm_cbe_tmp__51 = ( char *)(&llvm_cbe_encode_array[(((signed long long )llvm_cbe_tmp__41))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__41));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%22, i8* %%23, align 1, !dbg !18 for 0x%I64xth hint within @solutionToString  --> \n", ++aesl_llvm_cbe_158_count);
  *llvm_cbe_tmp__51 = llvm_cbe_tmp__50;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__50);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = add nsw i32 %%storemerge1, 1, !dbg !19 for 0x%I64xth hint within @solutionToString  --> \n", ++aesl_llvm_cbe_159_count);
  llvm_cbe_tmp__52 = (unsigned int )((unsigned int )(llvm_cbe_storemerge1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__52&4294967295ull)));
  if (((llvm_cbe_tmp__52&4294967295U) == (llvm_cbe_length&4294967295U))) {
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__52;   /* for PHI node */
    llvm_cbe_tmp__40__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__49;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  }

llvm_cbe_tmp__53:
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = phi i32 [ %%5, %%11 ], [ %%5, %%10 ], [ %%5, %%9 ], [ %%5, %%8 ], [ %%5, %%7 ], [ %%5, %%6 ], [ %%2, %%.lr.ph  for 0x%I64xth hint within @solutionToString  --> \n", ++aesl_llvm_cbe_139_count);
  llvm_cbe_tmp__44 = (unsigned int )llvm_cbe_tmp__44__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__44);
printf("\n = 0x%X",llvm_cbe_tmp__43);
printf("\n = 0x%X",llvm_cbe_tmp__43);
printf("\n = 0x%X",llvm_cbe_tmp__43);
printf("\n = 0x%X",llvm_cbe_tmp__43);
printf("\n = 0x%X",llvm_cbe_tmp__43);
printf("\n = 0x%X",llvm_cbe_tmp__43);
printf("\n = 0x%X",llvm_cbe_tmp__40);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 1, i64 %%3, !dbg !18 for 0x%I64xth hint within @solutionToString  --> \n", ++aesl_llvm_cbe_140_count);
  llvm_cbe_tmp__45 = (signed int *)(&llvm_cbe_search->field1[(((signed long long )llvm_cbe_tmp__41))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__41));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = load i32* %%14, align 4, !dbg !18 for 0x%I64xth hint within @solutionToString  --> \n", ++aesl_llvm_cbe_141_count);
  llvm_cbe_tmp__46 = (unsigned int )*llvm_cbe_tmp__45;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__46);
  switch (((unsigned int )(llvm_cbe_tmp__46&4294967295ull))) {
  default:
    llvm_cbe_tmp__49__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__44;   /* for PHI node */
    goto llvm_cbe_tmp__60;
;
  case ((unsigned int )(3u&4294967295ull)):
    goto llvm_cbe_tmp__61;
  case ((unsigned int )(2u&4294967295ull)):
    goto llvm_cbe_tmp__62;
    break;
  }
llvm_cbe_tmp__54:
  llvm_cbe_tmp__44__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__43;   /* for PHI node */
  goto llvm_cbe_tmp__53;

llvm_cbe_tmp__55:
  llvm_cbe_tmp__44__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__43;   /* for PHI node */
  goto llvm_cbe_tmp__53;

llvm_cbe_tmp__56:
  llvm_cbe_tmp__44__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__43;   /* for PHI node */
  goto llvm_cbe_tmp__53;

llvm_cbe_tmp__57:
  llvm_cbe_tmp__44__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__43;   /* for PHI node */
  goto llvm_cbe_tmp__53;

llvm_cbe_tmp__58:
  llvm_cbe_tmp__44__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__43;   /* for PHI node */
  goto llvm_cbe_tmp__53;

llvm_cbe_tmp__59:
  llvm_cbe_tmp__44__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__43;   /* for PHI node */
  goto llvm_cbe_tmp__53;

llvm_cbe_tmp__62:
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = add i32 %%13, 12, !dbg !19 for 0x%I64xth hint within @solutionToString  --> \n", ++aesl_llvm_cbe_143_count);
  llvm_cbe_tmp__47 = (unsigned int )((unsigned int )(llvm_cbe_tmp__44&4294967295ull)) + ((unsigned int )(12u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__47&4294967295ull)));
  llvm_cbe_tmp__49__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__47;   /* for PHI node */
  goto llvm_cbe_tmp__60;

llvm_cbe_tmp__61:
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = add i32 %%13, 6, !dbg !19 for 0x%I64xth hint within @solutionToString  --> \n", ++aesl_llvm_cbe_149_count);
  llvm_cbe_tmp__48 = (unsigned int )((unsigned int )(llvm_cbe_tmp__44&4294967295ull)) + ((unsigned int )(6u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__48&4294967295ull)));
  llvm_cbe_tmp__49__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__48;   /* for PHI node */
  goto llvm_cbe_tmp__60;

  } while (1); /* end of syntactic loop '.lr.ph' */
llvm_cbe__2e__crit_edge:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @solutionToString}\n");
  return;
}


void solution( char *llvm_cbe_facelets,  char llvm_cbe_maxDepth, bool *llvm_cbe_unsolvable,  char *llvm_cbe_encode_length,  char *llvm_cbe_encode_array, signed short *llvm_cbe_twistMove2, signed short *llvm_cbe_flipMove2, signed short *llvm_cbe_FRtoBR_Move2, signed short *llvm_cbe_URFtoDLF_Move2, signed short *llvm_cbe_URtoDF_Move2, signed short *llvm_cbe_URtoUL_Move2, signed short *llvm_cbe_UBtoDF_Move2, signed short *llvm_cbe_MergeURtoULandUBtoDF2,  char *llvm_cbe_Slice_URFtoDLF_Parity_Prun2,  char *llvm_cbe_Slice_URtoDF_Parity_Prun2,  char *llvm_cbe_Slice_Twist_Prun2,  char *llvm_cbe_Slice_Flip_Prun2) {
  static  unsigned long long aesl_llvm_cbe_count_count = 0;
  signed int llvm_cbe_count[6];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;
  static  unsigned long long aesl_llvm_cbe_197_count = 0;
  static  unsigned long long aesl_llvm_cbe_198_count = 0;
  static  unsigned long long aesl_llvm_cbe_199_count = 0;
  static  unsigned long long aesl_llvm_cbe_200_count = 0;
  static  unsigned long long aesl_llvm_cbe_201_count = 0;
  static  unsigned long long aesl_llvm_cbe_202_count = 0;
  static  unsigned long long aesl_llvm_cbe_203_count = 0;
  static  unsigned long long aesl_llvm_cbe_204_count = 0;
  static  unsigned long long aesl_llvm_cbe_205_count = 0;
  static  unsigned long long aesl_llvm_cbe_206_count = 0;
  static  unsigned long long aesl_llvm_cbe_207_count = 0;
  static  unsigned long long aesl_llvm_cbe_208_count = 0;
  static  unsigned long long aesl_llvm_cbe_209_count = 0;
  static  unsigned long long aesl_llvm_cbe_210_count = 0;
  static  unsigned long long aesl_llvm_cbe_211_count = 0;
  static  unsigned long long aesl_llvm_cbe_212_count = 0;
  static  unsigned long long aesl_llvm_cbe_213_count = 0;
  static  unsigned long long aesl_llvm_cbe_214_count = 0;
  static  unsigned long long aesl_llvm_cbe_215_count = 0;
  static  unsigned long long aesl_llvm_cbe_216_count = 0;
  static  unsigned long long aesl_llvm_cbe_217_count = 0;
  static  unsigned long long aesl_llvm_cbe_218_count = 0;
  static  unsigned long long aesl_llvm_cbe_219_count = 0;
  static  unsigned long long aesl_llvm_cbe_220_count = 0;
  static  unsigned long long aesl_llvm_cbe_221_count = 0;
  static  unsigned long long aesl_llvm_cbe_222_count = 0;
  static  unsigned long long aesl_llvm_cbe_223_count = 0;
  static  unsigned long long aesl_llvm_cbe_224_count = 0;
  static  unsigned long long aesl_llvm_cbe_225_count = 0;
  static  unsigned long long aesl_llvm_cbe_226_count = 0;
  static  unsigned long long aesl_llvm_cbe_227_count = 0;
  static  unsigned long long aesl_llvm_cbe_228_count = 0;
  static  unsigned long long aesl_llvm_cbe_229_count = 0;
  static  unsigned long long aesl_llvm_cbe_230_count = 0;
   char *llvm_cbe_tmp__63;
  static  unsigned long long aesl_llvm_cbe_231_count = 0;
   char *llvm_cbe_tmp__64;
  static  unsigned long long aesl_llvm_cbe_232_count = 0;
  static  unsigned long long aesl_llvm_cbe_233_count = 0;
  static  unsigned long long aesl_llvm_cbe_234_count = 0;
  static  unsigned long long aesl_llvm_cbe_235_count = 0;
  static  unsigned long long aesl_llvm_cbe_236_count = 0;
  static  unsigned long long aesl_llvm_cbe_237_count = 0;
  static  unsigned long long aesl_llvm_cbe_238_count = 0;
  static  unsigned long long aesl_llvm_cbe_239_count = 0;
  static  unsigned long long aesl_llvm_cbe_240_count = 0;
  static  unsigned long long aesl_llvm_cbe_241_count = 0;
  static  unsigned long long aesl_llvm_cbe_242_count = 0;
  static  unsigned long long aesl_llvm_cbe_243_count = 0;
  static  unsigned long long aesl_llvm_cbe_244_count = 0;
  static  unsigned long long aesl_llvm_cbe_245_count = 0;
  static  unsigned long long aesl_llvm_cbe_246_count = 0;
  static  unsigned long long aesl_llvm_cbe_247_count = 0;
  static  unsigned long long aesl_llvm_cbe_248_count = 0;
  static  unsigned long long aesl_llvm_cbe_249_count = 0;
  static  unsigned long long aesl_llvm_cbe_250_count = 0;
  static  unsigned long long aesl_llvm_cbe_251_count = 0;
  static  unsigned long long aesl_llvm_cbe_252_count = 0;
  static  unsigned long long aesl_llvm_cbe_253_count = 0;
  static  unsigned long long aesl_llvm_cbe_254_count = 0;
  static  unsigned long long aesl_llvm_cbe_255_count = 0;
  static  unsigned long long aesl_llvm_cbe_256_count = 0;
  static  unsigned long long aesl_llvm_cbe_257_count = 0;
  static  unsigned long long aesl_llvm_cbe_258_count = 0;
  static  unsigned long long aesl_llvm_cbe_259_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge20_count = 0;
  unsigned int llvm_cbe_storemerge20;
  unsigned int llvm_cbe_storemerge20__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_260_count = 0;
  bool llvm_cbe_tmp__65;
  bool llvm_cbe_tmp__65__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_261_count = 0;
  unsigned int llvm_cbe_tmp__66;
  static  unsigned long long aesl_llvm_cbe_262_count = 0;
  unsigned long long llvm_cbe_tmp__67;
  static  unsigned long long aesl_llvm_cbe_263_count = 0;
   char *llvm_cbe_tmp__68;
  static  unsigned long long aesl_llvm_cbe_264_count = 0;
  unsigned char llvm_cbe_tmp__69;
  static  unsigned long long aesl_llvm_cbe_265_count = 0;
  unsigned int llvm_cbe_tmp__70;
  static  unsigned long long aesl_llvm_cbe_266_count = 0;
  unsigned long long llvm_cbe_tmp__71;
  static  unsigned long long aesl_llvm_cbe_267_count = 0;
   char *llvm_cbe_tmp__72;
  static  unsigned long long aesl_llvm_cbe_268_count = 0;
  unsigned char llvm_cbe_tmp__73;
  static  unsigned long long aesl_llvm_cbe_269_count = 0;
  static  unsigned long long aesl_llvm_cbe_270_count = 0;
  static  unsigned long long aesl_llvm_cbe_271_count = 0;
  unsigned int llvm_cbe_tmp__74;
  static  unsigned long long aesl_llvm_cbe_272_count = 0;
  unsigned long long llvm_cbe_tmp__75;
  static  unsigned long long aesl_llvm_cbe_273_count = 0;
   char *llvm_cbe_tmp__76;
  static  unsigned long long aesl_llvm_cbe_274_count = 0;
  unsigned char llvm_cbe_tmp__77;
  static  unsigned long long aesl_llvm_cbe_275_count = 0;
  static  unsigned long long aesl_llvm_cbe_276_count = 0;
  static  unsigned long long aesl_llvm_cbe_277_count = 0;
  unsigned int llvm_cbe_tmp__78;
  static  unsigned long long aesl_llvm_cbe_278_count = 0;
  unsigned long long llvm_cbe_tmp__79;
  static  unsigned long long aesl_llvm_cbe_279_count = 0;
   char *llvm_cbe_tmp__80;
  static  unsigned long long aesl_llvm_cbe_280_count = 0;
  unsigned char llvm_cbe_tmp__81;
  static  unsigned long long aesl_llvm_cbe_281_count = 0;
  static  unsigned long long aesl_llvm_cbe_282_count = 0;
  static  unsigned long long aesl_llvm_cbe_283_count = 0;
  unsigned int llvm_cbe_tmp__82;
  static  unsigned long long aesl_llvm_cbe_284_count = 0;
  unsigned long long llvm_cbe_tmp__83;
  static  unsigned long long aesl_llvm_cbe_285_count = 0;
   char *llvm_cbe_tmp__84;
  static  unsigned long long aesl_llvm_cbe_286_count = 0;
  unsigned char llvm_cbe_tmp__85;
  static  unsigned long long aesl_llvm_cbe_287_count = 0;
  static  unsigned long long aesl_llvm_cbe_288_count = 0;
  static  unsigned long long aesl_llvm_cbe_289_count = 0;
  unsigned int llvm_cbe_tmp__86;
  static  unsigned long long aesl_llvm_cbe_290_count = 0;
  unsigned long long llvm_cbe_tmp__87;
  static  unsigned long long aesl_llvm_cbe_291_count = 0;
   char *llvm_cbe_tmp__88;
  static  unsigned long long aesl_llvm_cbe_292_count = 0;
  unsigned char llvm_cbe_tmp__89;
  static  unsigned long long aesl_llvm_cbe_293_count = 0;
  static  unsigned long long aesl_llvm_cbe_294_count = 0;
  static  unsigned long long aesl_llvm_cbe_295_count = 0;
  unsigned int llvm_cbe_tmp__90;
  static  unsigned long long aesl_llvm_cbe_296_count = 0;
  unsigned long long llvm_cbe_tmp__91;
  static  unsigned long long aesl_llvm_cbe_297_count = 0;
   char *llvm_cbe_tmp__92;
  static  unsigned long long aesl_llvm_cbe_298_count = 0;
  unsigned char llvm_cbe_tmp__93;
  static  unsigned long long aesl_llvm_cbe_299_count = 0;
  static  unsigned long long aesl_llvm_cbe_300_count = 0;
  static  unsigned long long aesl_llvm_cbe_301_count = 0;
  unsigned int llvm_cbe_tmp__94;
  static  unsigned long long aesl_llvm_cbe_302_count = 0;
  unsigned long long llvm_cbe_tmp__95;
  static  unsigned long long aesl_llvm_cbe_303_count = 0;
   char *llvm_cbe_tmp__96;
  static  unsigned long long aesl_llvm_cbe_304_count = 0;
  unsigned char llvm_cbe_tmp__97;
  static  unsigned long long aesl_llvm_cbe_305_count = 0;
  static  unsigned long long aesl_llvm_cbe_306_count = 0;
  static  unsigned long long aesl_llvm_cbe_307_count = 0;
  unsigned int llvm_cbe_tmp__98;
  static  unsigned long long aesl_llvm_cbe_308_count = 0;
  unsigned long long llvm_cbe_tmp__99;
  static  unsigned long long aesl_llvm_cbe_309_count = 0;
   char *llvm_cbe_tmp__100;
  static  unsigned long long aesl_llvm_cbe_310_count = 0;
  unsigned char llvm_cbe_tmp__101;
  static  unsigned long long aesl_llvm_cbe_311_count = 0;
  static  unsigned long long aesl_llvm_cbe_312_count = 0;
  static  unsigned long long aesl_llvm_cbe_313_count = 0;
  static  unsigned long long aesl_llvm_cbe_314_count = 0;
  static  unsigned long long aesl_llvm_cbe_315_count = 0;
  static  unsigned long long aesl_llvm_cbe_316_count = 0;
  bool llvm_cbe_tmp__102;
  bool llvm_cbe_tmp__102__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_317_count = 0;
  unsigned int llvm_cbe_tmp__103;
  static  unsigned long long aesl_llvm_cbe_318_count = 0;
  static  unsigned long long aesl_llvm_cbe_319_count = 0;
  static  unsigned long long aesl_llvm_cbe_320_count = 0;
  static  unsigned long long aesl_llvm_cbe_321_count = 0;
  static  unsigned long long aesl_llvm_cbe_322_count = 0;
  static  unsigned long long aesl_llvm_cbe_323_count = 0;
  static  unsigned long long aesl_llvm_cbe_324_count = 0;
  static  unsigned long long aesl_llvm_cbe_325_count = 0;
  static  unsigned long long aesl_llvm_cbe_326_count = 0;
  static  unsigned long long aesl_llvm_cbe_327_count = 0;
  static  unsigned long long aesl_llvm_cbe_328_count = 0;
  static  unsigned long long aesl_llvm_cbe_329_count = 0;
  static  unsigned long long aesl_llvm_cbe_330_count = 0;
  static  unsigned long long aesl_llvm_cbe_331_count = 0;
  static  unsigned long long aesl_llvm_cbe_332_count = 0;
  static  unsigned long long aesl_llvm_cbe_333_count = 0;
  static  unsigned long long aesl_llvm_cbe_334_count = 0;
  static  unsigned long long aesl_llvm_cbe_335_count = 0;
  static  unsigned long long aesl_llvm_cbe_336_count = 0;
  static  unsigned long long aesl_llvm_cbe_337_count = 0;
  static  unsigned long long aesl_llvm_cbe_338_count = 0;
  static  unsigned long long aesl_llvm_cbe_339_count = 0;
  static  unsigned long long aesl_llvm_cbe_340_count = 0;
  static  unsigned long long aesl_llvm_cbe_341_count = 0;
  static  unsigned long long aesl_llvm_cbe_342_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond26_count = 0;
  static  unsigned long long aesl_llvm_cbe_343_count = 0;
  static  unsigned long long aesl_llvm_cbe_344_count = 0;
  static  unsigned long long aesl_llvm_cbe_345_count = 0;
  static  unsigned long long aesl_llvm_cbe_346_count = 0;
  static  unsigned long long aesl_llvm_cbe_347_count = 0;
  static  unsigned long long aesl_llvm_cbe_348_count = 0;
  static  unsigned long long aesl_llvm_cbe_349_count = 0;
  static  unsigned long long aesl_llvm_cbe_350_count = 0;
  static  unsigned long long aesl_llvm_cbe_351_count = 0;
  static  unsigned long long aesl_llvm_cbe_352_count = 0;
  static  unsigned long long aesl_llvm_cbe_353_count = 0;
  static  unsigned long long aesl_llvm_cbe_354_count = 0;
  static  unsigned long long aesl_llvm_cbe_355_count = 0;
  static  unsigned long long aesl_llvm_cbe_356_count = 0;
  static  unsigned long long aesl_llvm_cbe_357_count = 0;
  static  unsigned long long aesl_llvm_cbe_358_count = 0;
  static  unsigned long long aesl_llvm_cbe_359_count = 0;
  static  unsigned long long aesl_llvm_cbe_360_count = 0;
  static  unsigned long long aesl_llvm_cbe_361_count = 0;
  static  unsigned long long aesl_llvm_cbe_362_count = 0;
  static  unsigned long long aesl_llvm_cbe_363_count = 0;
  static  unsigned long long aesl_llvm_cbe_364_count = 0;
  static  unsigned long long aesl_llvm_cbe_365_count = 0;
  static  unsigned long long aesl_llvm_cbe_366_count = 0;
  static  unsigned long long aesl_llvm_cbe_367_count = 0;
  static  unsigned long long aesl_llvm_cbe_368_count = 0;
  static  unsigned long long aesl_llvm_cbe_369_count = 0;
  signed int *llvm_cbe_tmp__104;
  static  unsigned long long aesl_llvm_cbe_370_count = 0;
  signed int *llvm_cbe_tmp__105;
  static  unsigned long long aesl_llvm_cbe_371_count = 0;
  signed int *llvm_cbe_tmp__106;
  static  unsigned long long aesl_llvm_cbe_372_count = 0;
  signed int *llvm_cbe_tmp__107;
  static  unsigned long long aesl_llvm_cbe_373_count = 0;
  signed int *llvm_cbe_tmp__108;
  static  unsigned long long aesl_llvm_cbe_374_count = 0;
  signed int *llvm_cbe_tmp__109;
  static  unsigned long long aesl_llvm_cbe_375_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge118_count = 0;
  unsigned int llvm_cbe_storemerge118;
  unsigned int llvm_cbe_storemerge118__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_376_count = 0;
  unsigned long long llvm_cbe_tmp__110;
  static  unsigned long long aesl_llvm_cbe_377_count = 0;
   char *llvm_cbe_tmp__111;
  static  unsigned long long aesl_llvm_cbe_378_count = 0;
  unsigned char llvm_cbe_tmp__112;
  static  unsigned long long aesl_llvm_cbe_379_count = 0;
  unsigned int llvm_cbe_tmp__113;
  static  unsigned long long aesl_llvm_cbe_380_count = 0;
  static  unsigned long long aesl_llvm_cbe_381_count = 0;
  unsigned int llvm_cbe_tmp__114;
  static  unsigned long long aesl_llvm_cbe_382_count = 0;
  unsigned int llvm_cbe_tmp__115;
  static  unsigned long long aesl_llvm_cbe_383_count = 0;
  static  unsigned long long aesl_llvm_cbe_384_count = 0;
  static  unsigned long long aesl_llvm_cbe_385_count = 0;
  unsigned int llvm_cbe_tmp__116;
  static  unsigned long long aesl_llvm_cbe_386_count = 0;
  unsigned int llvm_cbe_tmp__117;
  static  unsigned long long aesl_llvm_cbe_387_count = 0;
  static  unsigned long long aesl_llvm_cbe_388_count = 0;
  static  unsigned long long aesl_llvm_cbe_389_count = 0;
  unsigned int llvm_cbe_tmp__118;
  static  unsigned long long aesl_llvm_cbe_390_count = 0;
  unsigned int llvm_cbe_tmp__119;
  static  unsigned long long aesl_llvm_cbe_391_count = 0;
  static  unsigned long long aesl_llvm_cbe_392_count = 0;
  static  unsigned long long aesl_llvm_cbe_393_count = 0;
  unsigned int llvm_cbe_tmp__120;
  static  unsigned long long aesl_llvm_cbe_394_count = 0;
  unsigned int llvm_cbe_tmp__121;
  static  unsigned long long aesl_llvm_cbe_395_count = 0;
  static  unsigned long long aesl_llvm_cbe_396_count = 0;
  static  unsigned long long aesl_llvm_cbe_397_count = 0;
  unsigned int llvm_cbe_tmp__122;
  static  unsigned long long aesl_llvm_cbe_398_count = 0;
  unsigned int llvm_cbe_tmp__123;
  static  unsigned long long aesl_llvm_cbe_399_count = 0;
  static  unsigned long long aesl_llvm_cbe_400_count = 0;
  static  unsigned long long aesl_llvm_cbe_401_count = 0;
  unsigned int llvm_cbe_tmp__124;
  static  unsigned long long aesl_llvm_cbe_402_count = 0;
  unsigned int llvm_cbe_tmp__125;
  static  unsigned long long aesl_llvm_cbe_403_count = 0;
  static  unsigned long long aesl_llvm_cbe_404_count = 0;
  static  unsigned long long aesl_llvm_cbe_405_count = 0;
  unsigned int llvm_cbe_tmp__126;
  static  unsigned long long aesl_llvm_cbe_406_count = 0;
  static  unsigned long long aesl_llvm_cbe_407_count = 0;
  static  unsigned long long aesl_llvm_cbe_408_count = 0;
  static  unsigned long long aesl_llvm_cbe_409_count = 0;
  static  unsigned long long aesl_llvm_cbe_410_count = 0;
  static  unsigned long long aesl_llvm_cbe_411_count = 0;
  static  unsigned long long aesl_llvm_cbe_412_count = 0;
  static  unsigned long long aesl_llvm_cbe_413_count = 0;
  static  unsigned long long aesl_llvm_cbe_414_count = 0;
  static  unsigned long long aesl_llvm_cbe_415_count = 0;
  static  unsigned long long aesl_llvm_cbe_416_count = 0;
  static  unsigned long long aesl_llvm_cbe_417_count = 0;
  static  unsigned long long aesl_llvm_cbe_418_count = 0;
  static  unsigned long long aesl_llvm_cbe_419_count = 0;
  static  unsigned long long aesl_llvm_cbe_420_count = 0;
  static  unsigned long long aesl_llvm_cbe_421_count = 0;
  static  unsigned long long aesl_llvm_cbe_422_count = 0;
  static  unsigned long long aesl_llvm_cbe_423_count = 0;
  static  unsigned long long aesl_llvm_cbe_424_count = 0;
  static  unsigned long long aesl_llvm_cbe_425_count = 0;
  static  unsigned long long aesl_llvm_cbe_426_count = 0;
  static  unsigned long long aesl_llvm_cbe_427_count = 0;
  static  unsigned long long aesl_llvm_cbe_428_count = 0;
  static  unsigned long long aesl_llvm_cbe_429_count = 0;
  static  unsigned long long aesl_llvm_cbe_430_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_431_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_count = 0;
  unsigned int llvm_cbe_storemerge2;
  unsigned int llvm_cbe_storemerge2__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_432_count = 0;
  static  unsigned long long aesl_llvm_cbe_433_count = 0;
  static  unsigned long long aesl_llvm_cbe_434_count = 0;
  static  unsigned long long aesl_llvm_cbe_435_count = 0;
  static  unsigned long long aesl_llvm_cbe_436_count = 0;
  static  unsigned long long aesl_llvm_cbe_437_count = 0;
  static  unsigned long long aesl_llvm_cbe_438_count = 0;
  static  unsigned long long aesl_llvm_cbe_439_count = 0;
  static  unsigned long long aesl_llvm_cbe_440_count = 0;
  static  unsigned long long aesl_llvm_cbe_441_count = 0;
  static  unsigned long long aesl_llvm_cbe_442_count = 0;
  static  unsigned long long aesl_llvm_cbe_443_count = 0;
  static  unsigned long long aesl_llvm_cbe_444_count = 0;
  static  unsigned long long aesl_llvm_cbe_445_count = 0;
  static  unsigned long long aesl_llvm_cbe_446_count = 0;
  static  unsigned long long aesl_llvm_cbe_447_count = 0;
  static  unsigned long long aesl_llvm_cbe_448_count = 0;
  static  unsigned long long aesl_llvm_cbe_449_count = 0;
  static  unsigned long long aesl_llvm_cbe_450_count = 0;
  static  unsigned long long aesl_llvm_cbe_451_count = 0;
  static  unsigned long long aesl_llvm_cbe_452_count = 0;
  static  unsigned long long aesl_llvm_cbe_453_count = 0;
  static  unsigned long long aesl_llvm_cbe_454_count = 0;
  static  unsigned long long aesl_llvm_cbe_455_count = 0;
  static  unsigned long long aesl_llvm_cbe_456_count = 0;
  static  unsigned long long aesl_llvm_cbe_457_count = 0;
  static  unsigned long long aesl_llvm_cbe_458_count = 0;
  unsigned long long llvm_cbe_tmp__127;
  static  unsigned long long aesl_llvm_cbe_459_count = 0;
  signed int *llvm_cbe_tmp__128;
  static  unsigned long long aesl_llvm_cbe_460_count = 0;
  unsigned int llvm_cbe_tmp__129;
  static  unsigned long long aesl_llvm_cbe_461_count = 0;
  static  unsigned long long aesl_llvm_cbe_462_count = 0;
  unsigned int llvm_cbe_tmp__130;
  static  unsigned long long aesl_llvm_cbe_463_count = 0;
  static  unsigned long long aesl_llvm_cbe_464_count = 0;
  static  unsigned long long aesl_llvm_cbe_465_count = 0;
  static  unsigned long long aesl_llvm_cbe_466_count = 0;
  static  unsigned long long aesl_llvm_cbe_467_count = 0;
  l_struct_OC_facecube *llvm_cbe_tmp__131;
  static  unsigned long long aesl_llvm_cbe_468_count = 0;
  static  unsigned long long aesl_llvm_cbe_469_count = 0;
  static  unsigned long long aesl_llvm_cbe_470_count = 0;
  l_struct_OC_cubiecube *llvm_cbe_tmp__132;
  static  unsigned long long aesl_llvm_cbe_471_count = 0;
  static  unsigned long long aesl_llvm_cbe_472_count = 0;
  static  unsigned long long aesl_llvm_cbe_473_count = 0;
  static  unsigned long long aesl_llvm_cbe_474_count = 0;
  unsigned int llvm_cbe_tmp__133;
  static  unsigned long long aesl_llvm_cbe_475_count = 0;
  static  unsigned long long aesl_llvm_cbe_476_count = 0;
  static  unsigned long long aesl_llvm_cbe_477_count = 0;
  static  unsigned long long aesl_llvm_cbe_478_count = 0;
  static  unsigned long long aesl_llvm_cbe_479_count = 0;
  static  unsigned long long aesl_llvm_cbe_480_count = 0;
  static  unsigned long long aesl_llvm_cbe_481_count = 0;
  static  unsigned long long aesl_llvm_cbe_482_count = 0;
  static  unsigned long long aesl_llvm_cbe_483_count = 0;
  l_struct_OC_coordcube_t *llvm_cbe_tmp__134;
  static  unsigned long long aesl_llvm_cbe_484_count = 0;
  static  unsigned long long aesl_llvm_cbe_485_count = 0;
  static  unsigned long long aesl_llvm_cbe_486_count = 0;
  static  unsigned long long aesl_llvm_cbe_487_count = 0;
  static  unsigned long long aesl_llvm_cbe_488_count = 0;
  static  unsigned long long aesl_llvm_cbe_489_count = 0;
  static  unsigned long long aesl_llvm_cbe_490_count = 0;
  static  unsigned long long aesl_llvm_cbe_491_count = 0;
  static  unsigned long long aesl_llvm_cbe_492_count = 0;
  static  unsigned long long aesl_llvm_cbe_493_count = 0;
  static  unsigned long long aesl_llvm_cbe_494_count = 0;
  unsigned short llvm_cbe_tmp__135;
  static  unsigned long long aesl_llvm_cbe_495_count = 0;
  unsigned int llvm_cbe_tmp__136;
  static  unsigned long long aesl_llvm_cbe_496_count = 0;
  static  unsigned long long aesl_llvm_cbe_497_count = 0;
  unsigned short llvm_cbe_tmp__137;
  static  unsigned long long aesl_llvm_cbe_498_count = 0;
  unsigned int llvm_cbe_tmp__138;
  static  unsigned long long aesl_llvm_cbe_499_count = 0;
  static  unsigned long long aesl_llvm_cbe_500_count = 0;
  unsigned short llvm_cbe_tmp__139;
  static  unsigned long long aesl_llvm_cbe_501_count = 0;
  unsigned int llvm_cbe_tmp__140;
  static  unsigned long long aesl_llvm_cbe_502_count = 0;
  static  unsigned long long aesl_llvm_cbe_503_count = 0;
  unsigned short llvm_cbe_tmp__141;
  static  unsigned long long aesl_llvm_cbe_504_count = 0;
  unsigned int llvm_cbe_tmp__142;
  static  unsigned long long aesl_llvm_cbe_505_count = 0;
  unsigned int llvm_cbe_tmp__143;
  static  unsigned long long aesl_llvm_cbe_506_count = 0;
  static  unsigned long long aesl_llvm_cbe_507_count = 0;
  unsigned short llvm_cbe_tmp__144;
  static  unsigned long long aesl_llvm_cbe_508_count = 0;
  unsigned int llvm_cbe_tmp__145;
  static  unsigned long long aesl_llvm_cbe_509_count = 0;
  static  unsigned long long aesl_llvm_cbe_510_count = 0;
  static  unsigned long long aesl_llvm_cbe_511_count = 0;
  unsigned short llvm_cbe_tmp__146;
  static  unsigned long long aesl_llvm_cbe_512_count = 0;
  unsigned int llvm_cbe_tmp__147;
  static  unsigned long long aesl_llvm_cbe_513_count = 0;
  static  unsigned long long aesl_llvm_cbe_514_count = 0;
  unsigned short llvm_cbe_tmp__148;
  static  unsigned long long aesl_llvm_cbe_515_count = 0;
  unsigned int llvm_cbe_tmp__149;
  static  unsigned long long aesl_llvm_cbe_516_count = 0;
  static  unsigned long long aesl_llvm_cbe_517_count = 0;
  static  unsigned long long aesl_llvm_cbe_518_count = 0;
  static  unsigned long long aesl_llvm_cbe_519_count = 0;
  static  unsigned long long aesl_llvm_cbe_520_count = 0;
  static  unsigned long long aesl_llvm_cbe_521_count = 0;
  static  unsigned long long aesl_llvm_cbe_522_count = 0;
  static  unsigned long long aesl_llvm_cbe_523_count = 0;
  static  unsigned long long aesl_llvm_cbe_524_count = 0;
  static  unsigned long long aesl_llvm_cbe_525_count = 0;
  static  unsigned long long aesl_llvm_cbe_526_count = 0;
  static  unsigned long long aesl_llvm_cbe_527_count = 0;
  static  unsigned long long aesl_llvm_cbe_528_count = 0;
  static  unsigned long long aesl_llvm_cbe_529_count = 0;
  static  unsigned long long aesl_llvm_cbe_530_count = 0;
  static  unsigned long long aesl_llvm_cbe_531_count = 0;
  static  unsigned long long aesl_llvm_cbe_532_count = 0;
  static  unsigned long long aesl_llvm_cbe_533_count = 0;
  static  unsigned long long aesl_llvm_cbe_534_count = 0;
  static  unsigned long long aesl_llvm_cbe_535_count = 0;
  static  unsigned long long aesl_llvm_cbe_536_count = 0;
  static  unsigned long long aesl_llvm_cbe_537_count = 0;
  static  unsigned long long aesl_llvm_cbe_538_count = 0;
  static  unsigned long long aesl_llvm_cbe_539_count = 0;
  static  unsigned long long aesl_llvm_cbe_540_count = 0;
  static  unsigned long long aesl_llvm_cbe_541_count = 0;
  static  unsigned long long aesl_llvm_cbe_542_count = 0;
  static  unsigned long long aesl_llvm_cbe_543_count = 0;
  static  unsigned long long aesl_llvm_cbe_544_count = 0;
  static  unsigned long long aesl_llvm_cbe_545_count = 0;
  static  unsigned long long aesl_llvm_cbe_546_count = 0;
  static  unsigned long long aesl_llvm_cbe_547_count = 0;
  static  unsigned long long aesl_llvm_cbe_548_count = 0;
  static  unsigned long long aesl_llvm_cbe_549_count = 0;
  static  unsigned long long aesl_llvm_cbe_550_count = 0;
  static  unsigned long long aesl_llvm_cbe_551_count = 0;
  static  unsigned long long aesl_llvm_cbe_552_count = 0;
  static  unsigned long long aesl_llvm_cbe_553_count = 0;
  static  unsigned long long aesl_llvm_cbe_554_count = 0;
  static  unsigned long long aesl_llvm_cbe_555_count = 0;
  static  unsigned long long aesl_llvm_cbe_556_count = 0;
  static  unsigned long long aesl_llvm_cbe_557_count = 0;
  static  unsigned long long aesl_llvm_cbe_558_count = 0;
  static  unsigned long long aesl_llvm_cbe_559_count = 0;
  static  unsigned long long aesl_llvm_cbe_560_count = 0;
  static  unsigned long long aesl_llvm_cbe_561_count = 0;
  static  unsigned long long aesl_llvm_cbe_562_count = 0;
  static  unsigned long long aesl_llvm_cbe_563_count = 0;
  static  unsigned long long aesl_llvm_cbe_564_count = 0;
  static  unsigned long long aesl_llvm_cbe_565_count = 0;
  static  unsigned long long aesl_llvm_cbe_566_count = 0;
  static  unsigned long long aesl_llvm_cbe_567_count = 0;
  static  unsigned long long aesl_llvm_cbe_568_count = 0;
  static  unsigned long long aesl_llvm_cbe_569_count = 0;
  static  unsigned long long aesl_llvm_cbe_570_count = 0;
  static  unsigned long long aesl_llvm_cbe_571_count = 0;
  static  unsigned long long aesl_llvm_cbe_572_count = 0;
  static  unsigned long long aesl_llvm_cbe_573_count = 0;
  static  unsigned long long aesl_llvm_cbe_574_count = 0;
  static  unsigned long long aesl_llvm_cbe_575_count = 0;
  static  unsigned long long aesl_llvm_cbe_576_count = 0;
  static  unsigned long long aesl_llvm_cbe_577_count = 0;
  static  unsigned long long aesl_llvm_cbe_578_count = 0;
  unsigned int llvm_cbe_tmp__150;
  static  unsigned long long aesl_llvm_cbe_579_count = 0;
  static  unsigned long long aesl_llvm_cbe_580_count = 0;
  unsigned int llvm_cbe_tmp__151;
  unsigned int llvm_cbe_tmp__151__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_581_count = 0;
  bool llvm_cbe_tmp__152;
  bool llvm_cbe_tmp__152__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_582_count = 0;
  unsigned int llvm_cbe_tmp__153;
  unsigned int llvm_cbe_tmp__153__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_583_count = 0;
  unsigned int llvm_cbe_tmp__154;
  static  unsigned long long aesl_llvm_cbe_584_count = 0;
  unsigned int llvm_cbe_tmp__155;
  static  unsigned long long aesl_llvm_cbe_585_count = 0;
  unsigned long long llvm_cbe_tmp__156;
  static  unsigned long long aesl_llvm_cbe_586_count = 0;
  signed int *llvm_cbe_tmp__157;
  static  unsigned long long aesl_llvm_cbe_587_count = 0;
  unsigned int llvm_cbe_tmp__158;
  static  unsigned long long aesl_llvm_cbe_588_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond_count = 0;
  bool llvm_cbe_or_2e_cond;
  static  unsigned long long aesl_llvm_cbe_589_count = 0;
  static  unsigned long long aesl_llvm_cbe_590_count = 0;
  unsigned long long llvm_cbe_tmp__159;
  static  unsigned long long aesl_llvm_cbe_591_count = 0;
  signed int *llvm_cbe_tmp__160;
  static  unsigned long long aesl_llvm_cbe_592_count = 0;
  unsigned int llvm_cbe_tmp__161;
  static  unsigned long long aesl_llvm_cbe_593_count = 0;
  static  unsigned long long aesl_llvm_cbe_594_count = 0;
  static  unsigned long long aesl_llvm_cbe_595_count = 0;
  static  unsigned long long aesl_llvm_cbe_596_count = 0;
  static  unsigned long long aesl_llvm_cbe_597_count = 0;
  static  unsigned long long aesl_llvm_cbe_598_count = 0;
  static  unsigned long long aesl_llvm_cbe_599_count = 0;
  static  unsigned long long aesl_llvm_cbe_600_count = 0;
  static  unsigned long long aesl_llvm_cbe_601_count = 0;
  static  unsigned long long aesl_llvm_cbe_602_count = 0;
  static  unsigned long long aesl_llvm_cbe_603_count = 0;
  static  unsigned long long aesl_llvm_cbe_604_count = 0;
  static  unsigned long long aesl_llvm_cbe_605_count = 0;
  static  unsigned long long aesl_llvm_cbe_606_count = 0;
  static  unsigned long long aesl_llvm_cbe_607_count = 0;
  static  unsigned long long aesl_llvm_cbe_608_count = 0;
  static  unsigned long long aesl_llvm_cbe_609_count = 0;
  static  unsigned long long aesl_llvm_cbe_610_count = 0;
  static  unsigned long long aesl_llvm_cbe_611_count = 0;
  static  unsigned long long aesl_llvm_cbe_612_count = 0;
  static  unsigned long long aesl_llvm_cbe_613_count = 0;
  static  unsigned long long aesl_llvm_cbe_614_count = 0;
  static  unsigned long long aesl_llvm_cbe_615_count = 0;
  static  unsigned long long aesl_llvm_cbe_616_count = 0;
  static  unsigned long long aesl_llvm_cbe_617_count = 0;
  static  unsigned long long aesl_llvm_cbe_618_count = 0;
  static  unsigned long long aesl_llvm_cbe_619_count = 0;
  static  unsigned long long aesl_llvm_cbe_620_count = 0;
  static  unsigned long long aesl_llvm_cbe_621_count = 0;
  static  unsigned long long aesl_llvm_cbe_622_count = 0;
  static  unsigned long long aesl_llvm_cbe_623_count = 0;
  static  unsigned long long aesl_llvm_cbe_624_count = 0;
  static  unsigned long long aesl_llvm_cbe_625_count = 0;
  static  unsigned long long aesl_llvm_cbe_626_count = 0;
  static  unsigned long long aesl_llvm_cbe_627_count = 0;
  static  unsigned long long aesl_llvm_cbe_628_count = 0;
  static  unsigned long long aesl_llvm_cbe_629_count = 0;
  static  unsigned long long aesl_llvm_cbe_630_count = 0;
  static  unsigned long long aesl_llvm_cbe_631_count = 0;
  static  unsigned long long aesl_llvm_cbe_632_count = 0;
  static  unsigned long long aesl_llvm_cbe_633_count = 0;
  static  unsigned long long aesl_llvm_cbe_634_count = 0;
  static  unsigned long long aesl_llvm_cbe_635_count = 0;
  signed int *llvm_cbe_tmp__162;
  static  unsigned long long aesl_llvm_cbe_636_count = 0;
  static  unsigned long long aesl_llvm_cbe_637_count = 0;
  signed int *llvm_cbe_tmp__163;
  static  unsigned long long aesl_llvm_cbe_638_count = 0;
  static  unsigned long long aesl_llvm_cbe_639_count = 0;
  static  unsigned long long aesl_llvm_cbe_640_count = 0;
  unsigned long long llvm_cbe_tmp__164;
  static  unsigned long long aesl_llvm_cbe_641_count = 0;
  signed int *llvm_cbe_tmp__165;
  static  unsigned long long aesl_llvm_cbe_642_count = 0;
  unsigned int llvm_cbe_tmp__166;
  static  unsigned long long aesl_llvm_cbe_643_count = 0;
  unsigned int llvm_cbe_tmp__167;
  static  unsigned long long aesl_llvm_cbe_644_count = 0;
  static  unsigned long long aesl_llvm_cbe_645_count = 0;
  static  unsigned long long aesl_llvm_cbe_646_count = 0;
  static  unsigned long long aesl_llvm_cbe_647_count = 0;
  signed int *llvm_cbe_tmp__168;
  static  unsigned long long aesl_llvm_cbe_648_count = 0;
  static  unsigned long long aesl_llvm_cbe_649_count = 0;
  unsigned int llvm_cbe_tmp__169;
  static  unsigned long long aesl_llvm_cbe_650_count = 0;
  static  unsigned long long aesl_llvm_cbe_651_count = 0;
  static  unsigned long long aesl_llvm_cbe_652_count = 0;
  static  unsigned long long aesl_llvm_cbe_653_count = 0;
  static  unsigned long long aesl_llvm_cbe_654_count = 0;
  static  unsigned long long aesl_llvm_cbe_655_count = 0;
  static  unsigned long long aesl_llvm_cbe_656_count = 0;
  static  unsigned long long aesl_llvm_cbe_657_count = 0;
  static  unsigned long long aesl_llvm_cbe_658_count = 0;
  static  unsigned long long aesl_llvm_cbe_659_count = 0;
  static  unsigned long long aesl_llvm_cbe_660_count = 0;
  static  unsigned long long aesl_llvm_cbe_661_count = 0;
  static  unsigned long long aesl_llvm_cbe_662_count = 0;
  static  unsigned long long aesl_llvm_cbe_663_count = 0;
  static  unsigned long long aesl_llvm_cbe_664_count = 0;
  static  unsigned long long aesl_llvm_cbe_665_count = 0;
  static  unsigned long long aesl_llvm_cbe_666_count = 0;
  static  unsigned long long aesl_llvm_cbe_667_count = 0;
  static  unsigned long long aesl_llvm_cbe_668_count = 0;
  static  unsigned long long aesl_llvm_cbe_669_count = 0;
  static  unsigned long long aesl_llvm_cbe_670_count = 0;
  static  unsigned long long aesl_llvm_cbe_671_count = 0;
  static  unsigned long long aesl_llvm_cbe_672_count = 0;
  static  unsigned long long aesl_llvm_cbe_673_count = 0;
  static  unsigned long long aesl_llvm_cbe_674_count = 0;
  static  unsigned long long aesl_llvm_cbe_675_count = 0;
  static  unsigned long long aesl_llvm_cbe_676_count = 0;
  static  unsigned long long aesl_llvm_cbe_677_count = 0;
  static  unsigned long long aesl_llvm_cbe_678_count = 0;
  static  unsigned long long aesl_llvm_cbe_679_count = 0;
  static  unsigned long long aesl_llvm_cbe_680_count = 0;
  static  unsigned long long aesl_llvm_cbe_681_count = 0;
  static  unsigned long long aesl_llvm_cbe_682_count = 0;
  static  unsigned long long aesl_llvm_cbe_683_count = 0;
  static  unsigned long long aesl_llvm_cbe_684_count = 0;
  static  unsigned long long aesl_llvm_cbe_685_count = 0;
  static  unsigned long long aesl_llvm_cbe_686_count = 0;
  static  unsigned long long aesl_llvm_cbe_687_count = 0;
  static  unsigned long long aesl_llvm_cbe_688_count = 0;
  static  unsigned long long aesl_llvm_cbe_689_count = 0;
  static  unsigned long long aesl_llvm_cbe_690_count = 0;
  static  unsigned long long aesl_llvm_cbe_691_count = 0;
  unsigned long long llvm_cbe_tmp__170;
  static  unsigned long long aesl_llvm_cbe_692_count = 0;
  signed int *llvm_cbe_tmp__171;
  static  unsigned long long aesl_llvm_cbe__2e_promoted_count = 0;
  unsigned int llvm_cbe__2e_promoted;
  static  unsigned long long aesl_llvm_cbe_693_count = 0;
  static  unsigned long long aesl_llvm_cbe_694_count = 0;
  unsigned int llvm_cbe_tmp__172;
  static  unsigned long long aesl_llvm_cbe_695_count = 0;
  static  unsigned long long aesl_llvm_cbe_696_count = 0;
  static  unsigned long long aesl_llvm_cbe_697_count = 0;
  static  unsigned long long aesl_llvm_cbe_698_count = 0;
  static  unsigned long long aesl_llvm_cbe_699_count = 0;
  static  unsigned long long aesl_llvm_cbe_700_count = 0;
  static  unsigned long long aesl_llvm_cbe_701_count = 0;
  static  unsigned long long aesl_llvm_cbe_702_count = 0;
  static  unsigned long long aesl_llvm_cbe_703_count = 0;
  static  unsigned long long aesl_llvm_cbe_704_count = 0;
  unsigned int llvm_cbe_tmp__173;
  unsigned int llvm_cbe_tmp__173__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_705_count = 0;
  unsigned int llvm_cbe_tmp__174;
  static  unsigned long long aesl_llvm_cbe_706_count = 0;
  static  unsigned long long aesl_llvm_cbe_707_count = 0;
  static  unsigned long long aesl_llvm_cbe_708_count = 0;
  static  unsigned long long aesl_llvm_cbe_709_count = 0;
  static  unsigned long long aesl_llvm_cbe_710_count = 0;
  static  unsigned long long aesl_llvm_cbe_711_count = 0;
  static  unsigned long long aesl_llvm_cbe_712_count = 0;
  static  unsigned long long aesl_llvm_cbe_713_count = 0;
  static  unsigned long long aesl_llvm_cbe_714_count = 0;
  unsigned int llvm_cbe_tmp__175;
  static  unsigned long long aesl_llvm_cbe_715_count = 0;
  static  unsigned long long aesl_llvm_cbe_716_count = 0;
  static  unsigned long long aesl_llvm_cbe_717_count = 0;
  static  unsigned long long aesl_llvm_cbe_718_count = 0;
  static  unsigned long long aesl_llvm_cbe_719_count = 0;
  static  unsigned long long aesl_llvm_cbe_720_count = 0;
  static  unsigned long long aesl_llvm_cbe_721_count = 0;
  static  unsigned long long aesl_llvm_cbe_722_count = 0;
  static  unsigned long long aesl_llvm_cbe_723_count = 0;
  static  unsigned long long aesl_llvm_cbe_724_count = 0;
  static  unsigned long long aesl_llvm_cbe_725_count = 0;
  static  unsigned long long aesl_llvm_cbe_726_count = 0;
  static  unsigned long long aesl_llvm_cbe_727_count = 0;
  static  unsigned long long aesl_llvm_cbe_728_count = 0;
  static  unsigned long long aesl_llvm_cbe_729_count = 0;
  static  unsigned long long aesl_llvm_cbe_730_count = 0;
  static  unsigned long long aesl_llvm_cbe_731_count = 0;
  static  unsigned long long aesl_llvm_cbe_732_count = 0;
  static  unsigned long long aesl_llvm_cbe_733_count = 0;
  static  unsigned long long aesl_llvm_cbe_734_count = 0;
  static  unsigned long long aesl_llvm_cbe_735_count = 0;
  static  unsigned long long aesl_llvm_cbe_736_count = 0;
  static  unsigned long long aesl_llvm_cbe_737_count = 0;
  unsigned int llvm_cbe_tmp__176;
  static  unsigned long long aesl_llvm_cbe_738_count = 0;
  static  unsigned long long aesl_llvm_cbe_739_count = 0;
  unsigned int llvm_cbe_tmp__177;
  static  unsigned long long aesl_llvm_cbe_740_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond8_count = 0;
  bool llvm_cbe_or_2e_cond8;
  static  unsigned long long aesl_llvm_cbe_741_count = 0;
  static  unsigned long long aesl_llvm_cbe_742_count = 0;
  static  unsigned long long aesl_llvm_cbe_743_count = 0;
  static  unsigned long long aesl_llvm_cbe_744_count = 0;
  static  unsigned long long aesl_llvm_cbe_745_count = 0;
  static  unsigned long long aesl_llvm_cbe_746_count = 0;
  static  unsigned long long aesl_llvm_cbe_747_count = 0;
  static  unsigned long long aesl_llvm_cbe_748_count = 0;
  static  unsigned long long aesl_llvm_cbe_749_count = 0;
  static  unsigned long long aesl_llvm_cbe_750_count = 0;
  static  unsigned long long aesl_llvm_cbe_751_count = 0;
  static  unsigned long long aesl_llvm_cbe_752_count = 0;
  static  unsigned long long aesl_llvm_cbe_753_count = 0;
  static  unsigned long long aesl_llvm_cbe_754_count = 0;
  static  unsigned long long aesl_llvm_cbe_755_count = 0;
  static  unsigned long long aesl_llvm_cbe_756_count = 0;
  static  unsigned long long aesl_llvm_cbe_757_count = 0;
  static  unsigned long long aesl_llvm_cbe_758_count = 0;
  static  unsigned long long aesl_llvm_cbe_759_count = 0;
  static  unsigned long long aesl_llvm_cbe_760_count = 0;
  static  unsigned long long aesl_llvm_cbe_761_count = 0;
  static  unsigned long long aesl_llvm_cbe_762_count = 0;
  static  unsigned long long aesl_llvm_cbe_763_count = 0;
  static  unsigned long long aesl_llvm_cbe_764_count = 0;
  static  unsigned long long aesl_llvm_cbe_765_count = 0;
  static  unsigned long long aesl_llvm_cbe_766_count = 0;
  static  unsigned long long aesl_llvm_cbe_767_count = 0;
  static  unsigned long long aesl_llvm_cbe_768_count = 0;
  static  unsigned long long aesl_llvm_cbe_769_count = 0;
  static  unsigned long long aesl_llvm_cbe_770_count = 0;
  static  unsigned long long aesl_llvm_cbe_771_count = 0;
  static  unsigned long long aesl_llvm_cbe_772_count = 0;
  static  unsigned long long aesl_llvm_cbe_773_count = 0;
  static  unsigned long long aesl_llvm_cbe_774_count = 0;
  static  unsigned long long aesl_llvm_cbe_775_count = 0;
  static  unsigned long long aesl_llvm_cbe_776_count = 0;
  static  unsigned long long aesl_llvm_cbe_777_count = 0;
  static  unsigned long long aesl_llvm_cbe_778_count = 0;
  static  unsigned long long aesl_llvm_cbe_779_count = 0;
  static  unsigned long long aesl_llvm_cbe_780_count = 0;
  static  unsigned long long aesl_llvm_cbe_781_count = 0;
  static  unsigned long long aesl_llvm_cbe_782_count = 0;
  static  unsigned long long aesl_llvm_cbe_783_count = 0;
  signed int *llvm_cbe_tmp__178;
  static  unsigned long long aesl_llvm_cbe_784_count = 0;
  static  unsigned long long aesl_llvm_cbe_785_count = 0;
  signed int *llvm_cbe_tmp__179;
  static  unsigned long long aesl_llvm_cbe_786_count = 0;
  static  unsigned long long aesl_llvm_cbe_787_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e_lcssa13_count = 0;
  unsigned int llvm_cbe__2e_lcssa13;
  unsigned int llvm_cbe__2e_lcssa13__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe__2e_ph_count = 0;
  unsigned int llvm_cbe__2e_ph;
  unsigned int llvm_cbe__2e_ph__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_788_count = 0;
  static  unsigned long long aesl_llvm_cbe_789_count = 0;
  static  unsigned long long aesl_llvm_cbe_790_count = 0;
  unsigned int llvm_cbe_tmp__180;
  unsigned int llvm_cbe_tmp__180__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_791_count = 0;
  unsigned int llvm_cbe_tmp__181;
  unsigned int llvm_cbe_tmp__181__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_792_count = 0;
  unsigned long long llvm_cbe_tmp__182;
  static  unsigned long long aesl_llvm_cbe_793_count = 0;
  signed int *llvm_cbe_tmp__183;
  static  unsigned long long aesl_llvm_cbe_794_count = 0;
  unsigned int llvm_cbe_tmp__184;
  static  unsigned long long aesl_llvm_cbe_795_count = 0;
  unsigned int llvm_cbe_tmp__185;
  static  unsigned long long aesl_llvm_cbe_796_count = 0;
  signed int *llvm_cbe_tmp__186;
  static  unsigned long long aesl_llvm_cbe_797_count = 0;
  unsigned int llvm_cbe_tmp__187;
  static  unsigned long long aesl_llvm_cbe_798_count = 0;
  unsigned int llvm_cbe_tmp__188;
  static  unsigned long long aesl_llvm_cbe_799_count = 0;
  unsigned int llvm_cbe_tmp__189;
  static  unsigned long long aesl_llvm_cbe_800_count = 0;
  static  unsigned long long aesl_llvm_cbe_801_count = 0;
  static  unsigned long long aesl_llvm_cbe_802_count = 0;
  static  unsigned long long aesl_llvm_cbe_803_count = 0;
  static  unsigned long long aesl_llvm_cbe_804_count = 0;
  signed int *llvm_cbe_tmp__190;
  static  unsigned long long aesl_llvm_cbe_805_count = 0;
  unsigned int llvm_cbe_tmp__191;
  static  unsigned long long aesl_llvm_cbe_806_count = 0;
  unsigned int llvm_cbe_tmp__192;
  static  unsigned long long aesl_llvm_cbe_807_count = 0;
  unsigned int llvm_cbe_tmp__193;
  static  unsigned long long aesl_llvm_cbe_808_count = 0;
  unsigned long long llvm_cbe_tmp__194;
  static  unsigned long long aesl_llvm_cbe_809_count = 0;
  signed short *llvm_cbe_tmp__195;
  static  unsigned long long aesl_llvm_cbe_810_count = 0;
  unsigned short llvm_cbe_tmp__196;
  static  unsigned long long aesl_llvm_cbe_811_count = 0;
  unsigned int llvm_cbe_tmp__197;
  static  unsigned long long aesl_llvm_cbe_812_count = 0;
  unsigned int llvm_cbe_tmp__198;
  static  unsigned long long aesl_llvm_cbe_813_count = 0;
  unsigned long long llvm_cbe_tmp__199;
  static  unsigned long long aesl_llvm_cbe_814_count = 0;
  signed int *llvm_cbe_tmp__200;
  static  unsigned long long aesl_llvm_cbe_815_count = 0;
  static  unsigned long long aesl_llvm_cbe_816_count = 0;
  signed int *llvm_cbe_tmp__201;
  static  unsigned long long aesl_llvm_cbe_817_count = 0;
  unsigned int llvm_cbe_tmp__202;
  static  unsigned long long aesl_llvm_cbe_818_count = 0;
  unsigned int llvm_cbe_tmp__203;
  static  unsigned long long aesl_llvm_cbe_819_count = 0;
  unsigned int llvm_cbe_tmp__204;
  static  unsigned long long aesl_llvm_cbe_820_count = 0;
  unsigned long long llvm_cbe_tmp__205;
  static  unsigned long long aesl_llvm_cbe_821_count = 0;
  signed short *llvm_cbe_tmp__206;
  static  unsigned long long aesl_llvm_cbe_822_count = 0;
  unsigned short llvm_cbe_tmp__207;
  static  unsigned long long aesl_llvm_cbe_823_count = 0;
  unsigned int llvm_cbe_tmp__208;
  static  unsigned long long aesl_llvm_cbe_824_count = 0;
  signed int *llvm_cbe_tmp__209;
  static  unsigned long long aesl_llvm_cbe_825_count = 0;
  static  unsigned long long aesl_llvm_cbe_826_count = 0;
  signed int *llvm_cbe_tmp__210;
  static  unsigned long long aesl_llvm_cbe_827_count = 0;
  unsigned int llvm_cbe_tmp__211;
  static  unsigned long long aesl_llvm_cbe_828_count = 0;
  unsigned int llvm_cbe_tmp__212;
  static  unsigned long long aesl_llvm_cbe_829_count = 0;
  unsigned int llvm_cbe_tmp__213;
  static  unsigned long long aesl_llvm_cbe_830_count = 0;
  unsigned long long llvm_cbe_tmp__214;
  static  unsigned long long aesl_llvm_cbe_831_count = 0;
  signed short *llvm_cbe_tmp__215;
  static  unsigned long long aesl_llvm_cbe_832_count = 0;
  unsigned short llvm_cbe_tmp__216;
  static  unsigned long long aesl_llvm_cbe_833_count = 0;
  unsigned int llvm_cbe_tmp__217;
  static  unsigned long long aesl_llvm_cbe_834_count = 0;
  unsigned int llvm_cbe_tmp__218;
  static  unsigned long long aesl_llvm_cbe_835_count = 0;
  signed int *llvm_cbe_tmp__219;
  static  unsigned long long aesl_llvm_cbe_836_count = 0;
  static  unsigned long long aesl_llvm_cbe_837_count = 0;
  unsigned int llvm_cbe_tmp__220;
  static  unsigned long long aesl_llvm_cbe_838_count = 0;
  unsigned int llvm_cbe_tmp__221;
  static  unsigned long long aesl_llvm_cbe_839_count = 0;
  unsigned char llvm_cbe_tmp__222;
  static  unsigned long long aesl_llvm_cbe_840_count = 0;
  unsigned int llvm_cbe_tmp__223;
  static  unsigned long long aesl_llvm_cbe_841_count = 0;
  unsigned int llvm_cbe_tmp__224;
  static  unsigned long long aesl_llvm_cbe_842_count = 0;
  unsigned char llvm_cbe_tmp__225;
  static  unsigned long long aesl_llvm_cbe_843_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e__count = 0;
  unsigned char llvm_cbe__2e_;
  static  unsigned long long aesl_llvm_cbe_844_count = 0;
  unsigned int llvm_cbe_tmp__226;
  static  unsigned long long aesl_llvm_cbe_845_count = 0;
  signed int *llvm_cbe_tmp__227;
  static  unsigned long long aesl_llvm_cbe_846_count = 0;
  static  unsigned long long aesl_llvm_cbe_847_count = 0;
  static  unsigned long long aesl_llvm_cbe_848_count = 0;
  static  unsigned long long aesl_llvm_cbe_849_count = 0;
  unsigned int llvm_cbe_tmp__228;
  static  unsigned long long aesl_llvm_cbe_850_count = 0;
  static  unsigned long long aesl_llvm_cbe_851_count = 0;
  static  unsigned long long aesl_llvm_cbe_852_count = 0;
  static  unsigned long long aesl_llvm_cbe_853_count = 0;
  unsigned int llvm_cbe_tmp__229;
  static  unsigned long long aesl_llvm_cbe_854_count = 0;
  static  unsigned long long aesl_llvm_cbe_855_count = 0;
  static  unsigned long long aesl_llvm_cbe_856_count = 0;
  unsigned int llvm_cbe_tmp__230;
  static  unsigned long long aesl_llvm_cbe_857_count = 0;
  static  unsigned long long aesl_llvm_cbe_858_count = 0;
  static  unsigned long long aesl_llvm_cbe_859_count = 0;
  static  unsigned long long aesl_llvm_cbe_860_count = 0;
  static  unsigned long long aesl_llvm_cbe_861_count = 0;
  static  unsigned long long aesl_llvm_cbe_862_count = 0;
  static  unsigned long long aesl_llvm_cbe_863_count = 0;
  static  unsigned long long aesl_llvm_cbe_864_count = 0;
  static  unsigned long long aesl_llvm_cbe_865_count = 0;
  unsigned int llvm_cbe_tmp__231;
  static  unsigned long long aesl_llvm_cbe_866_count = 0;
  unsigned long long llvm_cbe_tmp__232;
  static  unsigned long long aesl_llvm_cbe_867_count = 0;
  signed int *llvm_cbe_tmp__233;
  static  unsigned long long aesl_llvm_cbe_868_count = 0;
  unsigned int llvm_cbe_tmp__234;
  static  unsigned long long aesl_llvm_cbe_869_count = 0;
  static  unsigned long long aesl_llvm_cbe_870_count = 0;
  unsigned int llvm_cbe_tmp__235;
  static  unsigned long long aesl_llvm_cbe_871_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond10_count = 0;
  bool llvm_cbe_or_2e_cond10;
  static  unsigned long long aesl_llvm_cbe_872_count = 0;
  static  unsigned long long aesl_llvm_cbe_873_count = 0;
  static  unsigned long long aesl_llvm_cbe_874_count = 0;
  unsigned char llvm_cbe_tmp__236;
  static  unsigned long long aesl_llvm_cbe_875_count = 0;
  static  unsigned long long aesl_llvm_cbe_876_count = 0;
  static  unsigned long long aesl_llvm_cbe_877_count = 0;
  static  unsigned long long aesl_llvm_cbe_878_count = 0;
  static  unsigned long long aesl_llvm_cbe_879_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @solution\n");
if (AESL_DEBUG_TRACE)
printf("\n  store i1 false, i1* %%unsolvable, align 1, !dbg !19 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_227_count);
  *llvm_cbe_unsolvable = ((0) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0);
if (AESL_DEBUG_TRACE)
printf("\n  store i8 0, i8* %%encode_length, align 1, !dbg !20 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_228_count);
  *llvm_cbe_encode_length = ((unsigned char )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = bitcast [6 x i32]* %%count to i8*, !dbg !24 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_230_count);
  llvm_cbe_tmp__63 = ( char *)(( char *)(&llvm_cbe_count));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = call i8* @memset(i8* %%1, i32 0, i64 24 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_231_count);
  ( char *)memset(( char *)llvm_cbe_tmp__63, 0u, 24ull);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%I64X",24ull);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__64);
}
  llvm_cbe_storemerge20__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_tmp__65__PHI_TEMPORARY = (bool )1;   /* for PHI node */
  goto llvm_cbe_tmp__237;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__237:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge20 = phi i32 [ 0, %%0 ], [ %%59, %%57  for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_storemerge20_count);
  llvm_cbe_storemerge20 = (unsigned int )llvm_cbe_storemerge20__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge20 = 0x%X",llvm_cbe_storemerge20);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__103);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = phi i1 [ true, %%0 ], [ %%58, %%57  for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_260_count);
  llvm_cbe_tmp__65 = (bool )((llvm_cbe_tmp__65__PHI_TEMPORARY)&1);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__65);
printf("\n = 0x%X",1);
printf("\n = 0x%X",llvm_cbe_tmp__102);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = mul nsw i32 %%storemerge20, 9, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_261_count);
  llvm_cbe_tmp__66 = (unsigned int )((unsigned int )(llvm_cbe_storemerge20&4294967295ull)) * ((unsigned int )(9u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__66&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = sext i32 %%5 to i64, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_262_count);
  llvm_cbe_tmp__67 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__66);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__67);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds i8* %%facelets, i64 %%6, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_263_count);
  llvm_cbe_tmp__68 = ( char *)(&llvm_cbe_facelets[(((signed long long )llvm_cbe_tmp__67))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__67));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i8* %%7, align 1, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_264_count);
  llvm_cbe_tmp__69 = (unsigned char )*llvm_cbe_tmp__68;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__69);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = add nsw i32 %%5, 1, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_265_count);
  llvm_cbe_tmp__70 = (unsigned int )((unsigned int )(llvm_cbe_tmp__66&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__70&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = sext i32 %%9 to i64, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_266_count);
  llvm_cbe_tmp__71 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__70);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__71);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds i8* %%facelets, i64 %%10, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_267_count);
  llvm_cbe_tmp__72 = ( char *)(&llvm_cbe_facelets[(((signed long long )llvm_cbe_tmp__71))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__71));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = load i8* %%11, align 1, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_268_count);
  llvm_cbe_tmp__73 = (unsigned char )*llvm_cbe_tmp__72;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__73);
  if (((llvm_cbe_tmp__69&255U) == (llvm_cbe_tmp__73&255U))) {
    goto llvm_cbe_tmp__238;
  } else {
    goto llvm_cbe_tmp__239;
  }

llvm_cbe_tmp__240:
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = phi i1 [ false, %%56 ], [ %%4, %%50  for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_316_count);
  llvm_cbe_tmp__102 = (bool )((llvm_cbe_tmp__102__PHI_TEMPORARY)&1);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__102);
printf("\n = 0x%X",0);
printf("\n = 0x%X",llvm_cbe_tmp__65);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = add nsw i32 %%storemerge20, 1, !dbg !25 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_317_count);
  llvm_cbe_tmp__103 = (unsigned int )((unsigned int )(llvm_cbe_storemerge20&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__103&4294967295ull)));
  if (((llvm_cbe_tmp__103&4294967295U) == (6u&4294967295U))) {
    goto llvm_cbe_tmp__241;
  } else {
    llvm_cbe_storemerge20__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__103;   /* for PHI node */
    llvm_cbe_tmp__65__PHI_TEMPORARY = (bool )llvm_cbe_tmp__102;   /* for PHI node */
    goto llvm_cbe_tmp__237;
  }

llvm_cbe_tmp__242:
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = add nsw i32 %%5, 8, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_307_count);
  llvm_cbe_tmp__98 = (unsigned int )((unsigned int )(llvm_cbe_tmp__66&4294967295ull)) + ((unsigned int )(8u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__98&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = sext i32 %%51 to i64, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_308_count);
  llvm_cbe_tmp__99 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__98);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__99);
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = getelementptr inbounds i8* %%facelets, i64 %%52, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_309_count);
  llvm_cbe_tmp__100 = ( char *)(&llvm_cbe_facelets[(((signed long long )llvm_cbe_tmp__99))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__99));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = load i8* %%53, align 1, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_310_count);
  llvm_cbe_tmp__101 = (unsigned char )*llvm_cbe_tmp__100;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__101);
  if (((llvm_cbe_tmp__69&255U) == (llvm_cbe_tmp__101&255U))) {
    llvm_cbe_tmp__102__PHI_TEMPORARY = (bool )llvm_cbe_tmp__65;   /* for PHI node */
    goto llvm_cbe_tmp__240;
  } else {
    goto llvm_cbe_tmp__239;
  }

llvm_cbe_tmp__243:
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = add nsw i32 %%5, 7, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_301_count);
  llvm_cbe_tmp__94 = (unsigned int )((unsigned int )(llvm_cbe_tmp__66&4294967295ull)) + ((unsigned int )(7u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__94&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = sext i32 %%45 to i64, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_302_count);
  llvm_cbe_tmp__95 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__94);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__95);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = getelementptr inbounds i8* %%facelets, i64 %%46, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_303_count);
  llvm_cbe_tmp__96 = ( char *)(&llvm_cbe_facelets[(((signed long long )llvm_cbe_tmp__95))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__95));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = load i8* %%47, align 1, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_304_count);
  llvm_cbe_tmp__97 = (unsigned char )*llvm_cbe_tmp__96;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__97);
  if (((llvm_cbe_tmp__69&255U) == (llvm_cbe_tmp__97&255U))) {
    goto llvm_cbe_tmp__242;
  } else {
    goto llvm_cbe_tmp__239;
  }

llvm_cbe_tmp__244:
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = add nsw i32 %%5, 6, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_295_count);
  llvm_cbe_tmp__90 = (unsigned int )((unsigned int )(llvm_cbe_tmp__66&4294967295ull)) + ((unsigned int )(6u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__90&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = sext i32 %%39 to i64, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_296_count);
  llvm_cbe_tmp__91 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__90);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__91);
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = getelementptr inbounds i8* %%facelets, i64 %%40, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_297_count);
  llvm_cbe_tmp__92 = ( char *)(&llvm_cbe_facelets[(((signed long long )llvm_cbe_tmp__91))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__91));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = load i8* %%41, align 1, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_298_count);
  llvm_cbe_tmp__93 = (unsigned char )*llvm_cbe_tmp__92;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__93);
  if (((llvm_cbe_tmp__69&255U) == (llvm_cbe_tmp__93&255U))) {
    goto llvm_cbe_tmp__243;
  } else {
    goto llvm_cbe_tmp__239;
  }

llvm_cbe_tmp__245:
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = add nsw i32 %%5, 5, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_289_count);
  llvm_cbe_tmp__86 = (unsigned int )((unsigned int )(llvm_cbe_tmp__66&4294967295ull)) + ((unsigned int )(5u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__86&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = sext i32 %%33 to i64, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_290_count);
  llvm_cbe_tmp__87 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__86);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__87);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = getelementptr inbounds i8* %%facelets, i64 %%34, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_291_count);
  llvm_cbe_tmp__88 = ( char *)(&llvm_cbe_facelets[(((signed long long )llvm_cbe_tmp__87))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__87));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = load i8* %%35, align 1, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_292_count);
  llvm_cbe_tmp__89 = (unsigned char )*llvm_cbe_tmp__88;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__89);
  if (((llvm_cbe_tmp__69&255U) == (llvm_cbe_tmp__89&255U))) {
    goto llvm_cbe_tmp__244;
  } else {
    goto llvm_cbe_tmp__239;
  }

llvm_cbe_tmp__246:
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = add nsw i32 %%5, 4, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_283_count);
  llvm_cbe_tmp__82 = (unsigned int )((unsigned int )(llvm_cbe_tmp__66&4294967295ull)) + ((unsigned int )(4u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__82&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = sext i32 %%27 to i64, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_284_count);
  llvm_cbe_tmp__83 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__82);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__83);
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = getelementptr inbounds i8* %%facelets, i64 %%28, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_285_count);
  llvm_cbe_tmp__84 = ( char *)(&llvm_cbe_facelets[(((signed long long )llvm_cbe_tmp__83))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__83));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = load i8* %%29, align 1, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_286_count);
  llvm_cbe_tmp__85 = (unsigned char )*llvm_cbe_tmp__84;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__85);
  if (((llvm_cbe_tmp__69&255U) == (llvm_cbe_tmp__85&255U))) {
    goto llvm_cbe_tmp__245;
  } else {
    goto llvm_cbe_tmp__239;
  }

llvm_cbe_tmp__247:
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = add nsw i32 %%5, 3, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_277_count);
  llvm_cbe_tmp__78 = (unsigned int )((unsigned int )(llvm_cbe_tmp__66&4294967295ull)) + ((unsigned int )(3u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__78&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = sext i32 %%21 to i64, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_278_count);
  llvm_cbe_tmp__79 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__78);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__79);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = getelementptr inbounds i8* %%facelets, i64 %%22, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_279_count);
  llvm_cbe_tmp__80 = ( char *)(&llvm_cbe_facelets[(((signed long long )llvm_cbe_tmp__79))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__79));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = load i8* %%23, align 1, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_280_count);
  llvm_cbe_tmp__81 = (unsigned char )*llvm_cbe_tmp__80;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__81);
  if (((llvm_cbe_tmp__69&255U) == (llvm_cbe_tmp__81&255U))) {
    goto llvm_cbe_tmp__246;
  } else {
    goto llvm_cbe_tmp__239;
  }

llvm_cbe_tmp__238:
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = add nsw i32 %%5, 2, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_271_count);
  llvm_cbe_tmp__74 = (unsigned int )((unsigned int )(llvm_cbe_tmp__66&4294967295ull)) + ((unsigned int )(2u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__74&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = sext i32 %%15 to i64, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_272_count);
  llvm_cbe_tmp__75 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__74);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__75);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds i8* %%facelets, i64 %%16, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_273_count);
  llvm_cbe_tmp__76 = ( char *)(&llvm_cbe_facelets[(((signed long long )llvm_cbe_tmp__75))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__75));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = load i8* %%17, align 1, !dbg !17 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_274_count);
  llvm_cbe_tmp__77 = (unsigned char )*llvm_cbe_tmp__76;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__77);
  if (((llvm_cbe_tmp__69&255U) == (llvm_cbe_tmp__77&255U))) {
    goto llvm_cbe_tmp__247;
  } else {
    goto llvm_cbe_tmp__239;
  }

llvm_cbe_tmp__239:
  llvm_cbe_tmp__102__PHI_TEMPORARY = (bool )0;   /* for PHI node */
  goto llvm_cbe_tmp__240;

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__241:
  if (llvm_cbe_tmp__102) {
    goto llvm_cbe_tmp__248;
  } else {
    goto llvm_cbe__2e_preheader17;
  }

llvm_cbe__2e_preheader17:
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = getelementptr inbounds [6 x i32]* %%count, i64 0, i64 0, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_369_count);
  llvm_cbe_tmp__104 = (signed int *)(&llvm_cbe_count[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 6
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = getelementptr inbounds [6 x i32]* %%count, i64 0, i64 1, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_370_count);
  llvm_cbe_tmp__105 = (signed int *)(&llvm_cbe_count[(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 6
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = getelementptr inbounds [6 x i32]* %%count, i64 0, i64 2, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_371_count);
  llvm_cbe_tmp__106 = (signed int *)(&llvm_cbe_count[(((signed long long )2ull))
#ifdef AESL_BC_SIM
 % 6
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%64 = getelementptr inbounds [6 x i32]* %%count, i64 0, i64 3, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_372_count);
  llvm_cbe_tmp__107 = (signed int *)(&llvm_cbe_count[(((signed long long )3ull))
#ifdef AESL_BC_SIM
 % 6
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = getelementptr inbounds [6 x i32]* %%count, i64 0, i64 4, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_373_count);
  llvm_cbe_tmp__108 = (signed int *)(&llvm_cbe_count[(((signed long long )4ull))
#ifdef AESL_BC_SIM
 % 6
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = getelementptr inbounds [6 x i32]* %%count, i64 0, i64 5, !dbg !27 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_374_count);
  llvm_cbe_tmp__109 = (signed int *)(&llvm_cbe_count[(((signed long long )5ull))
#ifdef AESL_BC_SIM
 % 6
#endif
]);
if (AESL_DEBUG_TRACE) {
}
  llvm_cbe_storemerge118__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__249;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__249:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge118 = phi i32 [ 0, %%.preheader17 ], [ %%91, %%90  for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_storemerge118_count);
  llvm_cbe_storemerge118 = (unsigned int )llvm_cbe_storemerge118__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge118 = 0x%X",llvm_cbe_storemerge118);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__126);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = sext i32 %%storemerge118 to i64, !dbg !18 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_376_count);
  llvm_cbe_tmp__110 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge118);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__110);
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = getelementptr inbounds i8* %%facelets, i64 %%68, !dbg !18 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_377_count);
  llvm_cbe_tmp__111 = ( char *)(&llvm_cbe_facelets[(((signed long long )llvm_cbe_tmp__110))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__110));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%70 = load i8* %%69, align 1, !dbg !18 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_378_count);
  llvm_cbe_tmp__112 = (unsigned char )*llvm_cbe_tmp__111;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__112);
if (AESL_DEBUG_TRACE)
printf("\n  %%71 = sext i8 %%70 to i32, !dbg !18 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_379_count);
  llvm_cbe_tmp__113 = (unsigned int )((signed int )( char )llvm_cbe_tmp__112);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__113);
  switch (((unsigned int )(llvm_cbe_tmp__113&4294967295ull))) {
  default:
    goto llvm_cbe_tmp__250;
;
  case ((unsigned int )(85u&4294967295ull)):
    goto llvm_cbe_tmp__251;
    break;
  case ((unsigned int )(82u&4294967295ull)):
    goto llvm_cbe_tmp__252;
  case ((unsigned int )(70u&4294967295ull)):
    goto llvm_cbe_tmp__253;
  case ((unsigned int )(68u&4294967295ull)):
    goto llvm_cbe_tmp__254;
  case ((unsigned int )(76u&4294967295ull)):
    goto llvm_cbe_tmp__255;
  case ((unsigned int )(66u&4294967295ull)):
    goto llvm_cbe_tmp__256;
  }
llvm_cbe_tmp__250:
if (AESL_DEBUG_TRACE)
printf("\n  %%91 = add nsw i32 %%storemerge118, 1, !dbg !25 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_405_count);
  llvm_cbe_tmp__126 = (unsigned int )((unsigned int )(llvm_cbe_storemerge118&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__126&4294967295ull)));
  if (((llvm_cbe_tmp__126&4294967295U) == (54u&4294967295U))) {
    llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  } else {
    llvm_cbe_storemerge118__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__126;   /* for PHI node */
    goto llvm_cbe_tmp__249;
  }

llvm_cbe_tmp__251:

#ifdef AESL_BC_SIM
  if (!(((signed long long )0ull) < 6)) fprintf(stderr, "%s:%d: warning: Read access out of array 'count' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = load i32* %%61, align 16, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_381_count);
  llvm_cbe_tmp__114 = (unsigned int )*llvm_cbe_tmp__104;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__114);
if (AESL_DEBUG_TRACE)
printf("\n  %%74 = add nsw i32 %%73, 1, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_382_count);
  llvm_cbe_tmp__115 = (unsigned int )((unsigned int )(llvm_cbe_tmp__114&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__115&4294967295ull)));

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 6 && "Write access out of array 'count' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%74, i32* %%61, align 16, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_383_count);
  *llvm_cbe_tmp__104 = llvm_cbe_tmp__115;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__115);
  goto llvm_cbe_tmp__250;

llvm_cbe_tmp__252:

#ifdef AESL_BC_SIM
  if (!(((signed long long )1ull) < 6)) fprintf(stderr, "%s:%d: warning: Read access out of array 'count' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%76 = load i32* %%62, align 4, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_385_count);
  llvm_cbe_tmp__116 = (unsigned int )*llvm_cbe_tmp__105;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__116);
if (AESL_DEBUG_TRACE)
printf("\n  %%77 = add nsw i32 %%76, 1, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_386_count);
  llvm_cbe_tmp__117 = (unsigned int )((unsigned int )(llvm_cbe_tmp__116&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__117&4294967295ull)));

#ifdef AESL_BC_SIM
  assert(((signed long long )1ull) < 6 && "Write access out of array 'count' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%77, i32* %%62, align 4, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_387_count);
  *llvm_cbe_tmp__105 = llvm_cbe_tmp__117;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__117);
  goto llvm_cbe_tmp__250;

llvm_cbe_tmp__253:

#ifdef AESL_BC_SIM
  if (!(((signed long long )2ull) < 6)) fprintf(stderr, "%s:%d: warning: Read access out of array 'count' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%79 = load i32* %%63, align 8, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_389_count);
  llvm_cbe_tmp__118 = (unsigned int )*llvm_cbe_tmp__106;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__118);
if (AESL_DEBUG_TRACE)
printf("\n  %%80 = add nsw i32 %%79, 1, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_390_count);
  llvm_cbe_tmp__119 = (unsigned int )((unsigned int )(llvm_cbe_tmp__118&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__119&4294967295ull)));

#ifdef AESL_BC_SIM
  assert(((signed long long )2ull) < 6 && "Write access out of array 'count' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%80, i32* %%63, align 8, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_391_count);
  *llvm_cbe_tmp__106 = llvm_cbe_tmp__119;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__119);
  goto llvm_cbe_tmp__250;

llvm_cbe_tmp__254:

#ifdef AESL_BC_SIM
  if (!(((signed long long )3ull) < 6)) fprintf(stderr, "%s:%d: warning: Read access out of array 'count' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%82 = load i32* %%64, align 4, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_393_count);
  llvm_cbe_tmp__120 = (unsigned int )*llvm_cbe_tmp__107;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__120);
if (AESL_DEBUG_TRACE)
printf("\n  %%83 = add nsw i32 %%82, 1, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_394_count);
  llvm_cbe_tmp__121 = (unsigned int )((unsigned int )(llvm_cbe_tmp__120&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__121&4294967295ull)));

#ifdef AESL_BC_SIM
  assert(((signed long long )3ull) < 6 && "Write access out of array 'count' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%83, i32* %%64, align 4, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_395_count);
  *llvm_cbe_tmp__107 = llvm_cbe_tmp__121;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__121);
  goto llvm_cbe_tmp__250;

llvm_cbe_tmp__255:

#ifdef AESL_BC_SIM
  if (!(((signed long long )4ull) < 6)) fprintf(stderr, "%s:%d: warning: Read access out of array 'count' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%85 = load i32* %%65, align 16, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_397_count);
  llvm_cbe_tmp__122 = (unsigned int )*llvm_cbe_tmp__108;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__122);
if (AESL_DEBUG_TRACE)
printf("\n  %%86 = add nsw i32 %%85, 1, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_398_count);
  llvm_cbe_tmp__123 = (unsigned int )((unsigned int )(llvm_cbe_tmp__122&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__123&4294967295ull)));

#ifdef AESL_BC_SIM
  assert(((signed long long )4ull) < 6 && "Write access out of array 'count' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%86, i32* %%65, align 16, !dbg !26 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_399_count);
  *llvm_cbe_tmp__108 = llvm_cbe_tmp__123;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__123);
  goto llvm_cbe_tmp__250;

llvm_cbe_tmp__256:

#ifdef AESL_BC_SIM
  if (!(((signed long long )5ull) < 6)) fprintf(stderr, "%s:%d: warning: Read access out of array 'count' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%88 = load i32* %%66, align 4, !dbg !27 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_401_count);
  llvm_cbe_tmp__124 = (unsigned int )*llvm_cbe_tmp__109;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__124);
if (AESL_DEBUG_TRACE)
printf("\n  %%89 = add nsw i32 %%88, 1, !dbg !27 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_402_count);
  llvm_cbe_tmp__125 = (unsigned int )((unsigned int )(llvm_cbe_tmp__124&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__125&4294967295ull)));

#ifdef AESL_BC_SIM
  assert(((signed long long )5ull) < 6 && "Write access out of array 'count' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%89, i32* %%66, align 4, !dbg !27 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_403_count);
  *llvm_cbe_tmp__109 = llvm_cbe_tmp__125;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__125);
  goto llvm_cbe_tmp__250;

  } while (1); /* end of syntactic loop '' */
  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2 = phi i32 [ %%98, %%93 ], [ 0, %%90  for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_storemerge2_count);
  llvm_cbe_storemerge2 = (unsigned int )llvm_cbe_storemerge2__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2 = 0x%X",llvm_cbe_storemerge2);
printf("\n = 0x%X",llvm_cbe_tmp__130);
printf("\n = 0x%X",0u);
}
  if ((((signed int )llvm_cbe_storemerge2) < ((signed int )6u))) {
    goto llvm_cbe_tmp__257;
  } else {
    goto llvm_cbe_tmp__258;
  }

llvm_cbe_tmp__257:
if (AESL_DEBUG_TRACE)
printf("\n  %%94 = sext i32 %%storemerge2 to i64, !dbg !25 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_458_count);
  llvm_cbe_tmp__127 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge2);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__127);
if (AESL_DEBUG_TRACE)
printf("\n  %%95 = getelementptr inbounds [6 x i32]* %%count, i64 0, i64 %%94, !dbg !25 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_459_count);
  llvm_cbe_tmp__128 = (signed int *)(&llvm_cbe_count[(((signed long long )llvm_cbe_tmp__127))
#ifdef AESL_BC_SIM
 % 6
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__127));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__127) < 6)) fprintf(stderr, "%s:%d: warning: Read access out of array 'count' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%96 = load i32* %%95, align 4, !dbg !25 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_460_count);
  llvm_cbe_tmp__129 = (unsigned int )*llvm_cbe_tmp__128;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__129);
if (AESL_DEBUG_TRACE)
printf("\n  %%98 = add nsw i32 %%storemerge2, 1, !dbg !25 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_462_count);
  llvm_cbe_tmp__130 = (unsigned int )((unsigned int )(llvm_cbe_storemerge2&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__130&4294967295ull)));
  if (((llvm_cbe_tmp__129&4294967295U) == (9u&4294967295U))) {
    llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__130;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  } else {
    goto llvm_cbe_tmp__259;
  }

  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe_tmp__259:
if (AESL_DEBUG_TRACE)
printf("\n  store i1 true, i1* %%unsolvable, align 1, !dbg !19 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_465_count);
  *llvm_cbe_unsolvable = ((1) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1);
  goto llvm_cbe_tmp__248;

llvm_cbe_tmp__258:
if (AESL_DEBUG_TRACE)
printf("\n  %%101 = call %%struct.facecube* @get_facecube_fromstring(i8* %%facelets) nounwind, !dbg !18 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_467_count);
  llvm_cbe_tmp__131 = (l_struct_OC_facecube *)get_facecube_fromstring(( char *)llvm_cbe_facelets);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__131);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%102 = call %%struct.cubiecube* @toCubieCube(%%struct.facecube* %%101) nounwind, !dbg !29 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_470_count);
  llvm_cbe_tmp__132 = (l_struct_OC_cubiecube *)toCubieCube((l_struct_OC_facecube *)llvm_cbe_tmp__131);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__132);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%103 = call i32 @verify(%%struct.cubiecube* %%102) nounwind, !dbg !29 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_474_count);
  llvm_cbe_tmp__133 = (unsigned int )verify((l_struct_OC_cubiecube *)llvm_cbe_tmp__132);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__133);
}
  if (((llvm_cbe_tmp__133&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__260;
  } else {
    goto llvm_cbe_tmp__261;
  }

llvm_cbe_tmp__261:
if (AESL_DEBUG_TRACE)
printf("\n  store i1 true, i1* %%unsolvable, align 1, !dbg !20 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_481_count);
  *llvm_cbe_unsolvable = ((1) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1);
  goto llvm_cbe_tmp__248;

llvm_cbe_tmp__260:
if (AESL_DEBUG_TRACE)
printf("\n  %%107 = call %%struct.coordcube_t* @get_coordcube(%%struct.cubiecube* %%102), !dbg !29 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_483_count);
  get_coordcube((l_struct_OC_cubiecube *)llvm_cbe_tmp__132);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__134);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* getelementptr inbounds ([1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 1, i64 0), align 4, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_492_count);
  *((&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field1[(((signed long long )0ull))])) = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* getelementptr inbounds ([1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 0, i64 0), align 16, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_493_count);
  *((&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )0ull))])) = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  %%108 = load i16* getelementptr inbounds ([1 x %%struct.coordcube_t]* @aesl_internal_get_coordcube.result, i64 0, i64 0, i32 1), align 2, !dbg !29 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_494_count);
  llvm_cbe_tmp__135 = (unsigned short )*((&aesl_internal_get_coordcube_OC_result[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field1));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__135);
if (AESL_DEBUG_TRACE)
printf("\n  %%109 = sext i16 %%108 to i32, !dbg !29 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_495_count);
  llvm_cbe_tmp__136 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__135);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__136);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%109, i32* getelementptr inbounds ([1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 2, i64 0), align 8, !dbg !29 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_496_count);
  *((&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2[(((signed long long )0ull))])) = llvm_cbe_tmp__136;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__136);
if (AESL_DEBUG_TRACE)
printf("\n  %%110 = load i16* getelementptr inbounds ([1 x %%struct.coordcube_t]* @aesl_internal_get_coordcube.result, i64 0, i64 0, i32 0), align 16, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_497_count);
  llvm_cbe_tmp__137 = (unsigned short )*((&aesl_internal_get_coordcube_OC_result[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__137);
if (AESL_DEBUG_TRACE)
printf("\n  %%111 = sext i16 %%110 to i32, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_498_count);
  llvm_cbe_tmp__138 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__137);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__138);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%111, i32* getelementptr inbounds ([1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 3, i64 0), align 4, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_499_count);
  *((&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field3[(((signed long long )0ull))])) = llvm_cbe_tmp__138;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__138);
if (AESL_DEBUG_TRACE)
printf("\n  %%112 = load i16* getelementptr inbounds ([1 x %%struct.coordcube_t]* @aesl_internal_get_coordcube.result, i64 0, i64 0, i32 2), align 4, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_500_count);
  llvm_cbe_tmp__139 = (unsigned short )*((&aesl_internal_get_coordcube_OC_result[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__139);
if (AESL_DEBUG_TRACE)
printf("\n  %%113 = sext i16 %%112 to i32, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_501_count);
  llvm_cbe_tmp__140 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__139);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__140);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%113, i32* getelementptr inbounds ([1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 5, i64 0), align 4, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_502_count);
  *((&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field5[(((signed long long )0ull))])) = llvm_cbe_tmp__140;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__140);
if (AESL_DEBUG_TRACE)
printf("\n  %%114 = load i16* getelementptr inbounds ([1 x %%struct.coordcube_t]* @aesl_internal_get_coordcube.result, i64 0, i64 0, i32 3), align 2, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_503_count);
  llvm_cbe_tmp__141 = (unsigned short )*((&aesl_internal_get_coordcube_OC_result[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field3));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__141);
if (AESL_DEBUG_TRACE)
printf("\n  %%115 = sext i16 %%114 to i32, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_504_count);
  llvm_cbe_tmp__142 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__141);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__142);
if (AESL_DEBUG_TRACE)
printf("\n  %%116 = sdiv i32 %%115, 24, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_505_count);
  llvm_cbe_tmp__143 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__142) / ((signed int )24u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__143));
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%116, i32* getelementptr inbounds ([1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 4, i64 0), align 16, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_506_count);
  *((&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field4[(((signed long long )0ull))])) = llvm_cbe_tmp__143;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__143);
if (AESL_DEBUG_TRACE)
printf("\n  %%117 = load i16* getelementptr inbounds ([1 x %%struct.coordcube_t]* @aesl_internal_get_coordcube.result, i64 0, i64 0, i32 4), align 8, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_507_count);
  llvm_cbe_tmp__144 = (unsigned short )*((&aesl_internal_get_coordcube_OC_result[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field4));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__144);
if (AESL_DEBUG_TRACE)
printf("\n  %%118 = sext i16 %%117 to i32, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_508_count);
  llvm_cbe_tmp__145 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__144);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__145);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%118, i32* getelementptr inbounds ([1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 6, i64 0), align 8, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_509_count);
  *((&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field6[(((signed long long )0ull))])) = llvm_cbe_tmp__145;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__145);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%115, i32* getelementptr inbounds ([1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 7, i64 0), align 4, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_510_count);
  *((&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field7[(((signed long long )0ull))])) = llvm_cbe_tmp__142;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__142);
if (AESL_DEBUG_TRACE)
printf("\n  %%119 = load i16* getelementptr inbounds ([1 x %%struct.coordcube_t]* @aesl_internal_get_coordcube.result, i64 0, i64 0, i32 5), align 2, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_511_count);
  llvm_cbe_tmp__146 = (unsigned short )*((&aesl_internal_get_coordcube_OC_result[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field5));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__146);
if (AESL_DEBUG_TRACE)
printf("\n  %%120 = sext i16 %%119 to i32, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_512_count);
  llvm_cbe_tmp__147 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__146);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__147);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%120, i32* getelementptr inbounds ([1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 8, i64 0), align 16, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_513_count);
  *((&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field8[(((signed long long )0ull))])) = llvm_cbe_tmp__147;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__147);
if (AESL_DEBUG_TRACE)
printf("\n  %%121 = load i16* getelementptr inbounds ([1 x %%struct.coordcube_t]* @aesl_internal_get_coordcube.result, i64 0, i64 0, i32 6), align 4, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_514_count);
  llvm_cbe_tmp__148 = (unsigned short )*((&aesl_internal_get_coordcube_OC_result[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field6));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__148);
if (AESL_DEBUG_TRACE)
printf("\n  %%122 = sext i16 %%121 to i32, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_515_count);
  llvm_cbe_tmp__149 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__148);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__149);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%122, i32* getelementptr inbounds ([1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 9, i64 0), align 4, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_516_count);
  *((&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field9[(((signed long long )0ull))])) = llvm_cbe_tmp__149;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__149);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* getelementptr inbounds ([1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 11, i64 1), align 4, !dbg !30 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_517_count);
  *((&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field11[(((signed long long )1ull))])) = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
if (AESL_DEBUG_TRACE)
printf("\n  %%123 = sext i8 %%maxDepth to i32, !dbg !18 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_578_count);
  llvm_cbe_tmp__150 = (unsigned int )((signed int )( char )llvm_cbe_maxDepth);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__150);
  llvm_cbe_tmp__151__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
  llvm_cbe_tmp__152__PHI_TEMPORARY = (bool )1;   /* for PHI node */
  llvm_cbe_tmp__153__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_backedge;

  do {     /* Syntactic loop '.backedge' to make GCC happy */
llvm_cbe__2e_backedge:
if (AESL_DEBUG_TRACE)
printf("\n  %%124 = phi i32 [ 1, %%106 ], [ %%168, %%239 ], [ %%124, %%.us-lcssa.us  for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_580_count);
  llvm_cbe_tmp__151 = (unsigned int )llvm_cbe_tmp__151__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__151);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",llvm_cbe_tmp__181);
printf("\n = 0x%X",llvm_cbe_tmp__151);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%125 = phi i1 [ true, %%106 ], [ true, %%239 ], [ false, %%.us-lcssa.us ], !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_581_count);
  llvm_cbe_tmp__152 = (bool )((llvm_cbe_tmp__152__PHI_TEMPORARY)&1);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__152);
printf("\n = 0x%X",1);
printf("\n = 0x%X",1);
printf("\n = 0x%X",0);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%126 = phi i32 [ 0, %%106 ], [ %%167, %%239 ], [ %%147, %%.us-lcssa.us  for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_582_count);
  llvm_cbe_tmp__153 = (unsigned int )llvm_cbe_tmp__153__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__153);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__180);
printf("\n = 0x%X",llvm_cbe_tmp__169);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%127 = sub nsw i32 %%124, %%126, !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_583_count);
  llvm_cbe_tmp__154 = (unsigned int )((unsigned int )(llvm_cbe_tmp__151&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__153&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__154&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%128 = add nsw i32 %%126, 1, !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_584_count);
  llvm_cbe_tmp__155 = (unsigned int )((unsigned int )(llvm_cbe_tmp__153&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__155&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%129 = sext i32 %%128 to i64, !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_585_count);
  llvm_cbe_tmp__156 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__155);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__156);
if (AESL_DEBUG_TRACE)
printf("\n  %%130 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 11, i64 %%129, !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_586_count);
  llvm_cbe_tmp__157 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field11[(((signed long long )llvm_cbe_tmp__156))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__156));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )0ull) < 1)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_solution.search' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%131 = load i32* %%130, align 4, !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_587_count);
  llvm_cbe_tmp__158 = (unsigned int )*llvm_cbe_tmp__157;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__158);
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond = and i1 %%132, %%125, !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_or_2e_cond_count);
  llvm_cbe_or_2e_cond = (bool )(((((signed int )llvm_cbe_tmp__154) > ((signed int )llvm_cbe_tmp__158)) & llvm_cbe_tmp__152)&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond = 0x%X\n", llvm_cbe_or_2e_cond);
  if (llvm_cbe_or_2e_cond) {
    goto llvm_cbe_tmp__262;
  } else {
    goto llvm_cbe_tmp__263;
  }

llvm_cbe__2e_us_2d_lcssa_2e_us:

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_solution.search' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%153, i32* %%145, align 4, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_708_count);
  *llvm_cbe_tmp__168 = llvm_cbe_tmp__174;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__174);
  if (((llvm_cbe_tmp__153&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__264;
  } else {
    llvm_cbe_tmp__151__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__151;   /* for PHI node */
    llvm_cbe_tmp__152__PHI_TEMPORARY = (bool )0;   /* for PHI node */
    llvm_cbe_tmp__153__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__169;   /* for PHI node */
    goto llvm_cbe__2e_backedge;
  }

  do {     /* Syntactic loop '.critedge3' to make GCC happy */
llvm_cbe__2e_critedge3:
if (AESL_DEBUG_TRACE)
printf("\n  %%152 = phi i32 [ %%153, %%160 ], [ %%.promoted, %%.critedge3.preheader ], !dbg !32 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_704_count);
  llvm_cbe_tmp__173 = (unsigned int )llvm_cbe_tmp__173__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__173);
printf("\n = 0x%X",llvm_cbe_tmp__174);
printf("\n.promoted = 0x%X",llvm_cbe__2e_promoted);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%153 = add nsw i32 %%152, 1, !dbg !32 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_705_count);
  llvm_cbe_tmp__174 = (unsigned int )((unsigned int )(llvm_cbe_tmp__173&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__174&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__174) > ((signed int )5u))) {
    goto llvm_cbe__2e_us_2d_lcssa_2e_us;
  } else {
    goto llvm_cbe_tmp__265;
  }

llvm_cbe_tmp__265:

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_solution.search' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%141, align 4, !dbg !32 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_733_count);
  *llvm_cbe_tmp__165 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);

#ifdef AESL_BC_SIM
  if (!(((signed long long )0ull) < 1)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_solution.search' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%161 = load i32* %%149, align 4, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_737_count);
  llvm_cbe_tmp__176 = (unsigned int )*llvm_cbe_tmp__171;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__176);
if (AESL_DEBUG_TRACE)
printf("\n  %%163 = add nsw i32 %%161, -3, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_739_count);
  llvm_cbe_tmp__177 = (unsigned int )((unsigned int )(llvm_cbe_tmp__176&4294967295ull)) + ((unsigned int )(4294967293u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__177&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond8 = or i1 %%162, %%16 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_or_2e_cond8_count);
  llvm_cbe_or_2e_cond8 = (bool )((((llvm_cbe_tmp__176&4294967295U) == (llvm_cbe_tmp__174&4294967295U)) | ((llvm_cbe_tmp__177&4294967295U) == (llvm_cbe_tmp__174&4294967295U)))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond8 = 0x%X\n", llvm_cbe_or_2e_cond8);
  if (llvm_cbe_or_2e_cond8) {
    llvm_cbe_tmp__173__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__174;   /* for PHI node */
    goto llvm_cbe__2e_critedge3;
  } else {
    llvm_cbe__2e_lcssa13__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__174;   /* for PHI node */
    llvm_cbe__2e_ph__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__153;   /* for PHI node */
    goto llvm_cbe__2e_critedge_2e_thread_2e_loopexit;
  }

  } while (1); /* end of syntactic loop '.critedge3' */
llvm_cbe__2e_critedge3_2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%145 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 0, i64 %%140, !dbg !32 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_647_count);
  llvm_cbe_tmp__168 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )llvm_cbe_tmp__164))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__164));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%147 = add nsw i32 %%126, -1, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_649_count);
  llvm_cbe_tmp__169 = (unsigned int )((unsigned int )(llvm_cbe_tmp__153&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__169&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%148 = sext i32 %%147 to i64, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_691_count);
  llvm_cbe_tmp__170 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__169);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__170);
if (AESL_DEBUG_TRACE)
printf("\n  %%149 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 0, i64 %%148, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_692_count);
  llvm_cbe_tmp__171 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )llvm_cbe_tmp__170))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__170));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )0ull) < 1)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_solution.search' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%.promoted = load i32* %%145, align 4, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe__2e_promoted_count);
  llvm_cbe__2e_promoted = (unsigned int )*llvm_cbe_tmp__168;
if (AESL_DEBUG_TRACE)
printf("\n.promoted = 0x%X\n", llvm_cbe__2e_promoted);
  if (((llvm_cbe_tmp__153&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe__2e_critedge3_2e_preheader_2e_split_2e_us;
  } else {
    llvm_cbe_tmp__173__PHI_TEMPORARY = (unsigned int )llvm_cbe__2e_promoted;   /* for PHI node */
    goto llvm_cbe__2e_critedge3;
  }

llvm_cbe_tmp__263:
if (AESL_DEBUG_TRACE)
printf("\n  %%140 = sext i32 %%126 to i64, !dbg !32 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_640_count);
  llvm_cbe_tmp__164 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__153);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__164);
if (AESL_DEBUG_TRACE)
printf("\n  %%141 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 1, i64 %%140, !dbg !32 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_641_count);
  llvm_cbe_tmp__165 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field1[(((signed long long )llvm_cbe_tmp__164))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__164));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )0ull) < 1)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_solution.search' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%142 = load i32* %%141, align 4, !dbg !32 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_642_count);
  llvm_cbe_tmp__166 = (unsigned int )*llvm_cbe_tmp__165;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__166);
if (AESL_DEBUG_TRACE)
printf("\n  %%143 = add nsw i32 %%142, 1, !dbg !32 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_643_count);
  llvm_cbe_tmp__167 = (unsigned int )((unsigned int )(llvm_cbe_tmp__166&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__167&4294967295ull)));

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_solution.search' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%143, i32* %%141, align 4, !dbg !32 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_644_count);
  *llvm_cbe_tmp__165 = llvm_cbe_tmp__167;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__167);
  if ((((signed int )llvm_cbe_tmp__167) > ((signed int )3u))) {
    goto llvm_cbe__2e_critedge3_2e_preheader;
  } else {
    llvm_cbe_tmp__180__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__153;   /* for PHI node */
    llvm_cbe_tmp__181__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__151;   /* for PHI node */
    goto llvm_cbe__2e_critedge_2e_thread;
  }

llvm_cbe_tmp__266:
  llvm_cbe_tmp__151__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__181;   /* for PHI node */
  llvm_cbe_tmp__152__PHI_TEMPORARY = (bool )1;   /* for PHI node */
  llvm_cbe_tmp__153__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__180;   /* for PHI node */
  goto llvm_cbe__2e_backedge;

llvm_cbe__2e_critedge_2e_thread:
if (AESL_DEBUG_TRACE)
printf("\n  %%167 = phi i32 [ %%128, %%.critedge ], [ %%128, %%.critedge.thread5 ], [ 0, %%158 ], [ %%126, %%139 ], [ %%.ph, %%.critedge.thread.loopexit  for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_790_count);
  llvm_cbe_tmp__180 = (unsigned int )llvm_cbe_tmp__180__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__180);
printf("\n = 0x%X",llvm_cbe_tmp__155);
printf("\n = 0x%X",llvm_cbe_tmp__155);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__153);
printf("\n.ph = 0x%X",llvm_cbe__2e_ph);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%168 = phi i32 [ %%124, %%.critedge ], [ %%124, %%.critedge.thread5 ], [ %%159, %%158 ], [ %%124, %%139 ], [ %%124, %%.critedge.thread.loopexit  for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_791_count);
  llvm_cbe_tmp__181 = (unsigned int )llvm_cbe_tmp__181__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__181);
printf("\n = 0x%X",llvm_cbe_tmp__151);
printf("\n = 0x%X",llvm_cbe_tmp__151);
printf("\n = 0x%X",llvm_cbe_tmp__175);
printf("\n = 0x%X",llvm_cbe_tmp__151);
printf("\n = 0x%X",llvm_cbe_tmp__151);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%169 = sext i32 %%167 to i64, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_792_count);
  llvm_cbe_tmp__182 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__180);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__182);
if (AESL_DEBUG_TRACE)
printf("\n  %%170 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 0, i64 %%169, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_793_count);
  llvm_cbe_tmp__183 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )llvm_cbe_tmp__182))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__182));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )0ull) < 1)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_solution.search' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%171 = load i32* %%170, align 4, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_794_count);
  llvm_cbe_tmp__184 = (unsigned int )*llvm_cbe_tmp__183;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__184);
if (AESL_DEBUG_TRACE)
printf("\n  %%172 = mul nsw i32 %%171, 3, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_795_count);
  llvm_cbe_tmp__185 = (unsigned int )((unsigned int )(llvm_cbe_tmp__184&4294967295ull)) * ((unsigned int )(3u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__185&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%173 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 1, i64 %%169, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_796_count);
  llvm_cbe_tmp__186 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field1[(((signed long long )llvm_cbe_tmp__182))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__182));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )0ull) < 1)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_solution.search' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%174 = load i32* %%173, align 4, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_797_count);
  llvm_cbe_tmp__187 = (unsigned int )*llvm_cbe_tmp__186;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__187);
if (AESL_DEBUG_TRACE)
printf("\n  %%175 = add i32 %%174, -1, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_798_count);
  llvm_cbe_tmp__188 = (unsigned int )((unsigned int )(llvm_cbe_tmp__187&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__188&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%176 = add i32 %%175, %%172, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_799_count);
  llvm_cbe_tmp__189 = (unsigned int )((unsigned int )(llvm_cbe_tmp__188&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__185&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__189&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%177 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 2, i64 %%169, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_804_count);
  llvm_cbe_tmp__190 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2[(((signed long long )llvm_cbe_tmp__182))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__182));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )0ull) < 1)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_solution.search' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%178 = load i32* %%177, align 4, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_805_count);
  llvm_cbe_tmp__191 = (unsigned int )*llvm_cbe_tmp__190;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__191);
if (AESL_DEBUG_TRACE)
printf("\n  %%179 = mul nsw i32 %%178, 18, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_806_count);
  llvm_cbe_tmp__192 = (unsigned int )((unsigned int )(llvm_cbe_tmp__191&4294967295ull)) * ((unsigned int )(18u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__192&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%180 = add nsw i32 %%179, %%176, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_807_count);
  llvm_cbe_tmp__193 = (unsigned int )((unsigned int )(llvm_cbe_tmp__192&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__189&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__193&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%181 = sext i32 %%180 to i64, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_808_count);
  llvm_cbe_tmp__194 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__193);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__194);
if (AESL_DEBUG_TRACE)
printf("\n  %%182 = getelementptr inbounds i16* %%flipMove2, i64 %%181, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_809_count);
  llvm_cbe_tmp__195 = (signed short *)(&llvm_cbe_flipMove2[(((signed long long )llvm_cbe_tmp__194))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__194));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%183 = load i16* %%182, align 2, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_810_count);
  llvm_cbe_tmp__196 = (unsigned short )*llvm_cbe_tmp__195;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__196);
if (AESL_DEBUG_TRACE)
printf("\n  %%184 = sext i16 %%183 to i32, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_811_count);
  llvm_cbe_tmp__197 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__196);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__197);
if (AESL_DEBUG_TRACE)
printf("\n  %%185 = add nsw i32 %%167, 1, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_812_count);
  llvm_cbe_tmp__198 = (unsigned int )((unsigned int )(llvm_cbe_tmp__180&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__198&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%186 = sext i32 %%185 to i64, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_813_count);
  llvm_cbe_tmp__199 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__198);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__199);
if (AESL_DEBUG_TRACE)
printf("\n  %%187 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 2, i64 %%186, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_814_count);
  llvm_cbe_tmp__200 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2[(((signed long long )llvm_cbe_tmp__199))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__199));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_solution.search' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%184, i32* %%187, align 4, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_815_count);
  *llvm_cbe_tmp__200 = llvm_cbe_tmp__197;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__197);
if (AESL_DEBUG_TRACE)
printf("\n  %%188 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 3, i64 %%169, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_816_count);
  llvm_cbe_tmp__201 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field3[(((signed long long )llvm_cbe_tmp__182))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__182));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )0ull) < 1)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_solution.search' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%189 = load i32* %%188, align 4, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_817_count);
  llvm_cbe_tmp__202 = (unsigned int )*llvm_cbe_tmp__201;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__202);
if (AESL_DEBUG_TRACE)
printf("\n  %%190 = mul nsw i32 %%189, 18, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_818_count);
  llvm_cbe_tmp__203 = (unsigned int )((unsigned int )(llvm_cbe_tmp__202&4294967295ull)) * ((unsigned int )(18u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__203&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%191 = add nsw i32 %%190, %%176, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_819_count);
  llvm_cbe_tmp__204 = (unsigned int )((unsigned int )(llvm_cbe_tmp__203&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__189&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__204&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%192 = sext i32 %%191 to i64, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_820_count);
  llvm_cbe_tmp__205 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__204);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__205);
if (AESL_DEBUG_TRACE)
printf("\n  %%193 = getelementptr inbounds i16* %%twistMove2, i64 %%192, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_821_count);
  llvm_cbe_tmp__206 = (signed short *)(&llvm_cbe_twistMove2[(((signed long long )llvm_cbe_tmp__205))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__205));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%194 = load i16* %%193, align 2, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_822_count);
  llvm_cbe_tmp__207 = (unsigned short )*llvm_cbe_tmp__206;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__207);
if (AESL_DEBUG_TRACE)
printf("\n  %%195 = sext i16 %%194 to i32, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_823_count);
  llvm_cbe_tmp__208 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__207);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__208);
if (AESL_DEBUG_TRACE)
printf("\n  %%196 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 3, i64 %%186, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_824_count);
  llvm_cbe_tmp__209 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field3[(((signed long long )llvm_cbe_tmp__199))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__199));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_solution.search' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%195, i32* %%196, align 4, !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_825_count);
  *llvm_cbe_tmp__209 = llvm_cbe_tmp__208;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__208);
if (AESL_DEBUG_TRACE)
printf("\n  %%197 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 4, i64 %%169, !dbg !22 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_826_count);
  llvm_cbe_tmp__210 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field4[(((signed long long )llvm_cbe_tmp__182))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__182));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )0ull) < 1)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_solution.search' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%198 = load i32* %%197, align 4, !dbg !22 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_827_count);
  llvm_cbe_tmp__211 = (unsigned int )*llvm_cbe_tmp__210;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__211);
if (AESL_DEBUG_TRACE)
printf("\n  %%199 = mul i32 %%198, 432, !dbg !22 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_828_count);
  llvm_cbe_tmp__212 = (unsigned int )((unsigned int )(llvm_cbe_tmp__211&4294967295ull)) * ((unsigned int )(432u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__212&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%200 = add nsw i32 %%199, %%176, !dbg !22 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_829_count);
  llvm_cbe_tmp__213 = (unsigned int )((unsigned int )(llvm_cbe_tmp__212&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__189&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__213&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%201 = sext i32 %%200 to i64, !dbg !22 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_830_count);
  llvm_cbe_tmp__214 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__213);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__214);
if (AESL_DEBUG_TRACE)
printf("\n  %%202 = getelementptr inbounds i16* %%FRtoBR_Move2, i64 %%201, !dbg !22 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_831_count);
  llvm_cbe_tmp__215 = (signed short *)(&llvm_cbe_FRtoBR_Move2[(((signed long long )llvm_cbe_tmp__214))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__214));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%203 = load i16* %%202, align 2, !dbg !22 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_832_count);
  llvm_cbe_tmp__216 = (unsigned short )*llvm_cbe_tmp__215;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__216);
if (AESL_DEBUG_TRACE)
printf("\n  %%204 = sext i16 %%203 to i32, !dbg !22 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_833_count);
  llvm_cbe_tmp__217 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__216);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__217);
if (AESL_DEBUG_TRACE)
printf("\n  %%205 = sdiv i32 %%204, 24, !dbg !22 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_834_count);
  llvm_cbe_tmp__218 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__217) / ((signed int )24u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__218));
if (AESL_DEBUG_TRACE)
printf("\n  %%206 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 4, i64 %%186, !dbg !22 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_835_count);
  llvm_cbe_tmp__219 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field4[(((signed long long )llvm_cbe_tmp__199))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__199));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_solution.search' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%205, i32* %%206, align 4, !dbg !22 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_836_count);
  *llvm_cbe_tmp__219 = llvm_cbe_tmp__218;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__218);
if (AESL_DEBUG_TRACE)
printf("\n  %%207 = mul nsw i32 %%184, 495, !dbg !23 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_837_count);
  llvm_cbe_tmp__220 = (unsigned int )((unsigned int )(llvm_cbe_tmp__197&4294967295ull)) * ((unsigned int )(495u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__220&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%208 = add nsw i32 %%207, %%205, !dbg !23 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_838_count);
  llvm_cbe_tmp__221 = (unsigned int )((unsigned int )(llvm_cbe_tmp__220&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__218&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__221&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%209 = call signext i8 @getPruning(i8* %%Slice_Flip_Prun2, i32 %%208), !dbg !23 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_839_count);
  llvm_cbe_tmp__222 = (unsigned char )getPruning(( char *)llvm_cbe_Slice_Flip_Prun2, llvm_cbe_tmp__221);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__221);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__222);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%210 = mul nsw i32 %%195, 495, !dbg !23 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_840_count);
  llvm_cbe_tmp__223 = (unsigned int )((unsigned int )(llvm_cbe_tmp__208&4294967295ull)) * ((unsigned int )(495u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__223&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%211 = add nsw i32 %%210, %%205, !dbg !23 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_841_count);
  llvm_cbe_tmp__224 = (unsigned int )((unsigned int )(llvm_cbe_tmp__223&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__218&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__224&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%212 = call signext i8 @getPruning(i8* %%Slice_Twist_Prun2, i32 %%211), !dbg !23 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_842_count);
  llvm_cbe_tmp__225 = (unsigned char )getPruning(( char *)llvm_cbe_Slice_Twist_Prun2, llvm_cbe_tmp__224);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__224);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__225);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%. = select i1 %%213, i8 %%209, i8 %%212, !dbg !23 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe__2e__count);
  llvm_cbe__2e_ = (unsigned char )((((( char )llvm_cbe_tmp__222) > (( char )llvm_cbe_tmp__225))) ? ((unsigned char )llvm_cbe_tmp__222) : ((unsigned char )llvm_cbe_tmp__225));
if (AESL_DEBUG_TRACE)
printf("\n. = 0x%X\n", llvm_cbe__2e_);
if (AESL_DEBUG_TRACE)
printf("\n  %%214 = sext i8 %%. to i32, !dbg !23 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_844_count);
  llvm_cbe_tmp__226 = (unsigned int )((signed int )( char )llvm_cbe__2e_);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__226);
if (AESL_DEBUG_TRACE)
printf("\n  %%215 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 11, i64 %%186, !dbg !23 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_845_count);
  llvm_cbe_tmp__227 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field11[(((signed long long )llvm_cbe_tmp__199))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__199));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_solution.search' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%214, i32* %%215, align 4, !dbg !23 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_846_count);
  *llvm_cbe_tmp__227 = llvm_cbe_tmp__226;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__226);
  if (((llvm_cbe__2e_&255U) == (((unsigned char )0)&255U))) {
    goto llvm_cbe_tmp__267;
  } else {
    goto llvm_cbe_tmp__266;
  }

llvm_cbe__2e_critedge_2e_thread5:
if (AESL_DEBUG_TRACE)
printf("\n  %%137 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 0, i64 %%129, !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_635_count);
  llvm_cbe_tmp__162 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )llvm_cbe_tmp__156))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__156));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_solution.search' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%137, align 4, !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_636_count);
  *llvm_cbe_tmp__162 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  %%138 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 1, i64 %%129, !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_637_count);
  llvm_cbe_tmp__163 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field1[(((signed long long )llvm_cbe_tmp__156))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__156));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_solution.search' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%138, align 4, !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_638_count);
  *llvm_cbe_tmp__163 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  llvm_cbe_tmp__180__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__155;   /* for PHI node */
  llvm_cbe_tmp__181__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__151;   /* for PHI node */
  goto llvm_cbe__2e_critedge_2e_thread;

llvm_cbe_tmp__262:
if (AESL_DEBUG_TRACE)
printf("\n  %%134 = sext i32 %%126 to i64, !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_590_count);
  llvm_cbe_tmp__159 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__153);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__159);
if (AESL_DEBUG_TRACE)
printf("\n  %%135 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 0, i64 %%134, !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_591_count);
  llvm_cbe_tmp__160 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )llvm_cbe_tmp__159))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__159));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )0ull) < 1)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_solution.search' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%136 = load i32* %%135, align 4, !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_592_count);
  llvm_cbe_tmp__161 = (unsigned int )*llvm_cbe_tmp__160;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__161);
  switch (((unsigned int )(llvm_cbe_tmp__161&4294967295ull))) {
  default:
    goto llvm_cbe__2e_critedge_2e_thread5;
;
  case ((unsigned int )(3u&4294967295ull)):
    goto llvm_cbe__2e_critedge;
  case ((unsigned int )(0u&4294967295ull)):
    goto llvm_cbe__2e_critedge;
  }
llvm_cbe_tmp__268:
if (AESL_DEBUG_TRACE)
printf("\n  %%159 = add nsw i32 %%124, 1, !dbg !34 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_714_count);
  llvm_cbe_tmp__175 = (unsigned int )((unsigned int )(llvm_cbe_tmp__151&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__175&4294967295ull)));

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_solution.search' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%145, align 4, !dbg !32 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_727_count);
  *llvm_cbe_tmp__168 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_solution.search' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%141, align 4, !dbg !32 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_728_count);
  *llvm_cbe_tmp__165 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  llvm_cbe_tmp__180__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_tmp__181__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__175;   /* for PHI node */
  goto llvm_cbe__2e_critedge_2e_thread;

llvm_cbe_tmp__264:
  if ((((signed int )llvm_cbe_tmp__151) < ((signed int )llvm_cbe_tmp__150))) {
    goto llvm_cbe_tmp__268;
  } else {
    goto llvm_cbe_tmp__269;
  }

llvm_cbe__2e_us_2d_lcssa_2e_us_2e_thread:

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_solution.search' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%150, i32* %%145, align 4, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_697_count);
  *llvm_cbe_tmp__168 = llvm_cbe_tmp__172;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__172);
  goto llvm_cbe_tmp__264;

llvm_cbe__2e_critedge3_2e_preheader_2e_split_2e_us:
if (AESL_DEBUG_TRACE)
printf("\n  %%150 = add nsw i32 %%.promoted, 1, !dbg !32 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_694_count);
  llvm_cbe_tmp__172 = (unsigned int )((unsigned int )(llvm_cbe__2e_promoted&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__172&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__172) > ((signed int )5u))) {
    goto llvm_cbe__2e_us_2d_lcssa_2e_us_2e_thread;
  } else {
    goto llvm_cbe__2e_critedge_2e_thread_2e_loopexit_2e_us_2d_lcssa_2e_us;
  }

llvm_cbe__2e_critedge:
if (AESL_DEBUG_TRACE)
printf("\n  %%165 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 0, i64 %%129, !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_783_count);
  llvm_cbe_tmp__178 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )llvm_cbe_tmp__156))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__156));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_solution.search' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%165, align 4, !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_784_count);
  *llvm_cbe_tmp__178 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
if (AESL_DEBUG_TRACE)
printf("\n  %%166 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 1, i64 %%129, !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_785_count);
  llvm_cbe_tmp__179 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field1[(((signed long long )llvm_cbe_tmp__156))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__156));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_solution.search' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%166, align 4, !dbg !31 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_786_count);
  *llvm_cbe_tmp__179 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  llvm_cbe_tmp__180__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__155;   /* for PHI node */
  llvm_cbe_tmp__181__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__151;   /* for PHI node */
  goto llvm_cbe__2e_critedge_2e_thread;

llvm_cbe__2e_critedge_2e_thread_2e_loopexit:
if (AESL_DEBUG_TRACE)
printf("\n  %%.lcssa13 = phi i32 [ %%150, %%.critedge.thread.loopexit.us-lcssa.us ], [ %%153, %%160  for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe__2e_lcssa13_count);
  llvm_cbe__2e_lcssa13 = (unsigned int )llvm_cbe__2e_lcssa13__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n.lcssa13 = 0x%X",llvm_cbe__2e_lcssa13);
printf("\n = 0x%X",llvm_cbe_tmp__172);
printf("\n = 0x%X",llvm_cbe_tmp__174);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%.ph = phi i32 [ 0, %%.critedge.thread.loopexit.us-lcssa.us ], [ %%126, %%160  for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe__2e_ph_count);
  llvm_cbe__2e_ph = (unsigned int )llvm_cbe__2e_ph__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n.ph = 0x%X",llvm_cbe__2e_ph);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__153);
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_solution.search' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%.lcssa13, i32* %%145, align 4, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_788_count);
  *llvm_cbe_tmp__168 = llvm_cbe__2e_lcssa13;
if (AESL_DEBUG_TRACE)
printf("\n.lcssa13 = 0x%X\n", llvm_cbe__2e_lcssa13);
  llvm_cbe_tmp__180__PHI_TEMPORARY = (unsigned int )llvm_cbe__2e_ph;   /* for PHI node */
  llvm_cbe_tmp__181__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__151;   /* for PHI node */
  goto llvm_cbe__2e_critedge_2e_thread;

llvm_cbe__2e_critedge_2e_thread_2e_loopexit_2e_us_2d_lcssa_2e_us:

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_solution.search' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%141, align 4, !dbg !32 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_699_count);
  *llvm_cbe_tmp__165 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  llvm_cbe__2e_lcssa13__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__172;   /* for PHI node */
  llvm_cbe__2e_ph__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_critedge_2e_thread_2e_loopexit;

llvm_cbe_tmp__267:
if (AESL_DEBUG_TRACE)
printf("\n  %%218 = add nsw i32 %%168, -5, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_849_count);
  llvm_cbe_tmp__228 = (unsigned int )((unsigned int )(llvm_cbe_tmp__181&4294967295ull)) + ((unsigned int )(4294967291u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__228&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__180) < ((signed int )llvm_cbe_tmp__228))) {
    goto llvm_cbe_tmp__266;
  } else {
    goto llvm_cbe_tmp__270;
  }

llvm_cbe_tmp__271:
  goto llvm_cbe_tmp__266;

llvm_cbe_tmp__270:

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_solution.search' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 10, i32* %%215, align 4, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_852_count);
  *llvm_cbe_tmp__227 = 10u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 10u);
if (AESL_DEBUG_TRACE)
printf("\n  %%221 = add nsw i32 %%168, -1, !dbg !33 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_853_count);
  llvm_cbe_tmp__229 = (unsigned int )((unsigned int )(llvm_cbe_tmp__181&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__229&4294967295ull)));
  if (((llvm_cbe_tmp__180&4294967295U) == (llvm_cbe_tmp__229&4294967295U))) {
    goto llvm_cbe_tmp__272;
  } else {
    goto llvm_cbe_tmp__271;
  }

llvm_cbe_tmp__272:
if (AESL_DEBUG_TRACE)
printf("\n  %%224 = call i32 @totalDepth(%%struct.search_t* getelementptr inbounds ([1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0), i32 %%168, i8 signext %%maxDepth, i16* %%FRtoBR_Move2, i16* %%URFtoDLF_Move2, i16* %%URtoDF_Move2, i16* %%URtoUL_Move2, i16* %%UBtoDF_Move2, i16* %%MergeURtoULandUBtoDF2, i8* %%Slice_URFtoDLF_Parity_Prun2, i8* %%Slice_URtoDF_Parity_Prun2), !dbg !19 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_856_count);
  llvm_cbe_tmp__230 = (unsigned int )totalDepth((l_struct_OC_search_t *)((&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
])), llvm_cbe_tmp__181, llvm_cbe_maxDepth, (signed short *)llvm_cbe_FRtoBR_Move2, (signed short *)llvm_cbe_URFtoDLF_Move2, (signed short *)llvm_cbe_URtoDF_Move2, (signed short *)llvm_cbe_URtoUL_Move2, (signed short *)llvm_cbe_UBtoDF_Move2, (signed short *)llvm_cbe_MergeURtoULandUBtoDF2, ( char *)llvm_cbe_Slice_URFtoDLF_Parity_Prun2, ( char *)llvm_cbe_Slice_URtoDF_Parity_Prun2);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__181);
printf("\nArgument maxDepth = 0x%X",llvm_cbe_maxDepth);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__230);
}
  if ((((signed int )llvm_cbe_tmp__230) > ((signed int )4294967295u))) {
    goto llvm_cbe_tmp__273;
  } else {
    goto llvm_cbe_tmp__271;
  }

llvm_cbe_tmp__274:

#ifdef AESL_BC_SIM
  if (!(((signed long long )0ull) < 1)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_solution.search' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%229 = load i32* %%170, align 4, !dbg !29 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_865_count);
  llvm_cbe_tmp__231 = (unsigned int )*llvm_cbe_tmp__183;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__231);
if (AESL_DEBUG_TRACE)
printf("\n  %%230 = sext i32 %%168 to i64, !dbg !29 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_866_count);
  llvm_cbe_tmp__232 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__181);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__232);
if (AESL_DEBUG_TRACE)
printf("\n  %%231 = getelementptr inbounds [1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0, i32 0, i64 %%230, !dbg !29 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_867_count);
  llvm_cbe_tmp__233 = (signed int *)(&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )llvm_cbe_tmp__232))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__232));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )0ull) < 1)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_solution.search' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%232 = load i32* %%231, align 4, !dbg !29 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_868_count);
  llvm_cbe_tmp__234 = (unsigned int )*llvm_cbe_tmp__233;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__234);
if (AESL_DEBUG_TRACE)
printf("\n  %%234 = add nsw i32 %%232, 3, !dbg !29 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_870_count);
  llvm_cbe_tmp__235 = (unsigned int )((unsigned int )(llvm_cbe_tmp__234&4294967295ull)) + ((unsigned int )(3u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__235&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond10 = or i1 %%233, %%235, !dbg !29 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_or_2e_cond10_count);
  llvm_cbe_or_2e_cond10 = (bool )((((llvm_cbe_tmp__231&4294967295U) == (llvm_cbe_tmp__234&4294967295U)) | ((llvm_cbe_tmp__231&4294967295U) == (llvm_cbe_tmp__235&4294967295U)))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond10 = 0x%X\n", llvm_cbe_or_2e_cond10);
  if (llvm_cbe_or_2e_cond10) {
    goto llvm_cbe_tmp__271;
  } else {
    goto llvm_cbe_tmp__275;
  }

llvm_cbe_tmp__273:
  if (((llvm_cbe_tmp__230&4294967295U) == (llvm_cbe_tmp__181&4294967295U))) {
    goto llvm_cbe_tmp__275;
  } else {
    goto llvm_cbe_tmp__274;
  }

  } while (1); /* end of syntactic loop '.backedge' */
llvm_cbe_tmp__269:
if (AESL_DEBUG_TRACE)
printf("\n  store i1 true, i1* %%unsolvable, align 1, !dbg !20 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_712_count);
  *llvm_cbe_unsolvable = ((1) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1);
  goto llvm_cbe_tmp__248;

llvm_cbe_tmp__275:
if (AESL_DEBUG_TRACE)
printf("\n  call void @solutionToString(%%struct.search_t* getelementptr inbounds ([1 x %%struct.search_t]* @aesl_internal_solution.search, i64 0, i64 0), i32 %%224, i32 -1, i8* %%encode_array), !dbg !21 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_873_count);
  solutionToString((l_struct_OC_search_t *)((&aesl_internal_solution_OC_search[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
])), llvm_cbe_tmp__230, 4294967295u, ( char *)llvm_cbe_encode_array);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__230);
printf("\nArgument  = 0x%X",4294967295u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%237 = trunc i32 %%224 to i8, !dbg !20 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_874_count);
  llvm_cbe_tmp__236 = (unsigned char )((unsigned char )llvm_cbe_tmp__230&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__236);
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%237, i8* %%encode_length, align 1, !dbg !20 for 0x%I64xth hint within @solution  --> \n", ++aesl_llvm_cbe_875_count);
  *llvm_cbe_encode_length = llvm_cbe_tmp__236;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__236);
  goto llvm_cbe_tmp__248;

llvm_cbe_tmp__248:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @solution}\n");
  return;
}


signed int totalDepth(l_struct_OC_search_t *llvm_cbe_search, signed int llvm_cbe_depthPhase1,  char llvm_cbe_maxDepth, signed short *llvm_cbe_FRtoBR_Move2, signed short *llvm_cbe_URFtoDLF_Move2, signed short *llvm_cbe_URtoDF_Move2, signed short *llvm_cbe_URtoUL_Move2, signed short *llvm_cbe_UBtoDF_Move2, signed short *llvm_cbe_MergeURtoULandUBtoDF2,  char *llvm_cbe_Slice_URFtoDLF_Parity_Prun2,  char *llvm_cbe_Slice_URtoDF_Parity_Prun2) {
  static  unsigned long long aesl_llvm_cbe_880_count = 0;
  static  unsigned long long aesl_llvm_cbe_881_count = 0;
  static  unsigned long long aesl_llvm_cbe_882_count = 0;
  static  unsigned long long aesl_llvm_cbe_883_count = 0;
  static  unsigned long long aesl_llvm_cbe_884_count = 0;
  static  unsigned long long aesl_llvm_cbe_885_count = 0;
  static  unsigned long long aesl_llvm_cbe_886_count = 0;
  static  unsigned long long aesl_llvm_cbe_887_count = 0;
  static  unsigned long long aesl_llvm_cbe_888_count = 0;
  static  unsigned long long aesl_llvm_cbe_889_count = 0;
  static  unsigned long long aesl_llvm_cbe_890_count = 0;
  static  unsigned long long aesl_llvm_cbe_891_count = 0;
  static  unsigned long long aesl_llvm_cbe_892_count = 0;
  static  unsigned long long aesl_llvm_cbe_893_count = 0;
  static  unsigned long long aesl_llvm_cbe_894_count = 0;
  static  unsigned long long aesl_llvm_cbe_895_count = 0;
  static  unsigned long long aesl_llvm_cbe_896_count = 0;
  static  unsigned long long aesl_llvm_cbe_897_count = 0;
  static  unsigned long long aesl_llvm_cbe_898_count = 0;
  static  unsigned long long aesl_llvm_cbe_899_count = 0;
  static  unsigned long long aesl_llvm_cbe_900_count = 0;
  static  unsigned long long aesl_llvm_cbe_901_count = 0;
  static  unsigned long long aesl_llvm_cbe_902_count = 0;
  static  unsigned long long aesl_llvm_cbe_903_count = 0;
  static  unsigned long long aesl_llvm_cbe_904_count = 0;
  static  unsigned long long aesl_llvm_cbe_905_count = 0;
  static  unsigned long long aesl_llvm_cbe_906_count = 0;
  static  unsigned long long aesl_llvm_cbe_907_count = 0;
  static  unsigned long long aesl_llvm_cbe_908_count = 0;
  static  unsigned long long aesl_llvm_cbe_909_count = 0;
  static  unsigned long long aesl_llvm_cbe_910_count = 0;
  static  unsigned long long aesl_llvm_cbe_911_count = 0;
  static  unsigned long long aesl_llvm_cbe_912_count = 0;
  static  unsigned long long aesl_llvm_cbe_913_count = 0;
  static  unsigned long long aesl_llvm_cbe_914_count = 0;
  static  unsigned long long aesl_llvm_cbe_915_count = 0;
  static  unsigned long long aesl_llvm_cbe_916_count = 0;
  static  unsigned long long aesl_llvm_cbe_917_count = 0;
  static  unsigned long long aesl_llvm_cbe_918_count = 0;
  static  unsigned long long aesl_llvm_cbe_919_count = 0;
  static  unsigned long long aesl_llvm_cbe_920_count = 0;
  static  unsigned long long aesl_llvm_cbe_921_count = 0;
  static  unsigned long long aesl_llvm_cbe_922_count = 0;
  static  unsigned long long aesl_llvm_cbe_923_count = 0;
  static  unsigned long long aesl_llvm_cbe_924_count = 0;
  static  unsigned long long aesl_llvm_cbe_925_count = 0;
  static  unsigned long long aesl_llvm_cbe_926_count = 0;
  static  unsigned long long aesl_llvm_cbe_927_count = 0;
  static  unsigned long long aesl_llvm_cbe_928_count = 0;
  static  unsigned long long aesl_llvm_cbe_929_count = 0;
  static  unsigned long long aesl_llvm_cbe_930_count = 0;
  static  unsigned long long aesl_llvm_cbe_931_count = 0;
  static  unsigned long long aesl_llvm_cbe_932_count = 0;
  static  unsigned long long aesl_llvm_cbe_933_count = 0;
  static  unsigned long long aesl_llvm_cbe_934_count = 0;
  static  unsigned long long aesl_llvm_cbe_935_count = 0;
  static  unsigned long long aesl_llvm_cbe_936_count = 0;
  static  unsigned long long aesl_llvm_cbe_937_count = 0;
  static  unsigned long long aesl_llvm_cbe_938_count = 0;
  static  unsigned long long aesl_llvm_cbe_939_count = 0;
  static  unsigned long long aesl_llvm_cbe_940_count = 0;
  static  unsigned long long aesl_llvm_cbe_941_count = 0;
  static  unsigned long long aesl_llvm_cbe_942_count = 0;
  static  unsigned long long aesl_llvm_cbe_943_count = 0;
  static  unsigned long long aesl_llvm_cbe_944_count = 0;
  static  unsigned long long aesl_llvm_cbe_945_count = 0;
  static  unsigned long long aesl_llvm_cbe_946_count = 0;
  static  unsigned long long aesl_llvm_cbe_947_count = 0;
  static  unsigned long long aesl_llvm_cbe_948_count = 0;
  static  unsigned long long aesl_llvm_cbe_949_count = 0;
  static  unsigned long long aesl_llvm_cbe_950_count = 0;
  static  unsigned long long aesl_llvm_cbe_951_count = 0;
  static  unsigned long long aesl_llvm_cbe_952_count = 0;
  static  unsigned long long aesl_llvm_cbe_953_count = 0;
  static  unsigned long long aesl_llvm_cbe_954_count = 0;
  static  unsigned long long aesl_llvm_cbe_955_count = 0;
  static  unsigned long long aesl_llvm_cbe_956_count = 0;
  static  unsigned long long aesl_llvm_cbe_957_count = 0;
  static  unsigned long long aesl_llvm_cbe_958_count = 0;
  static  unsigned long long aesl_llvm_cbe_959_count = 0;
  static  unsigned long long aesl_llvm_cbe_960_count = 0;
  static  unsigned long long aesl_llvm_cbe_961_count = 0;
  static  unsigned long long aesl_llvm_cbe_962_count = 0;
  static  unsigned long long aesl_llvm_cbe_963_count = 0;
  static  unsigned long long aesl_llvm_cbe_964_count = 0;
  static  unsigned long long aesl_llvm_cbe_965_count = 0;
  static  unsigned long long aesl_llvm_cbe_966_count = 0;
  static  unsigned long long aesl_llvm_cbe_967_count = 0;
  static  unsigned long long aesl_llvm_cbe_968_count = 0;
  static  unsigned long long aesl_llvm_cbe_969_count = 0;
  static  unsigned long long aesl_llvm_cbe_970_count = 0;
  static  unsigned long long aesl_llvm_cbe_971_count = 0;
  static  unsigned long long aesl_llvm_cbe_972_count = 0;
  static  unsigned long long aesl_llvm_cbe_973_count = 0;
  static  unsigned long long aesl_llvm_cbe_974_count = 0;
  static  unsigned long long aesl_llvm_cbe_975_count = 0;
  static  unsigned long long aesl_llvm_cbe_976_count = 0;
  static  unsigned long long aesl_llvm_cbe_977_count = 0;
  static  unsigned long long aesl_llvm_cbe_978_count = 0;
  static  unsigned long long aesl_llvm_cbe_979_count = 0;
  static  unsigned long long aesl_llvm_cbe_980_count = 0;
  static  unsigned long long aesl_llvm_cbe_981_count = 0;
  static  unsigned long long aesl_llvm_cbe_982_count = 0;
  static  unsigned long long aesl_llvm_cbe_983_count = 0;
  static  unsigned long long aesl_llvm_cbe_984_count = 0;
  static  unsigned long long aesl_llvm_cbe_985_count = 0;
  static  unsigned long long aesl_llvm_cbe_986_count = 0;
  static  unsigned long long aesl_llvm_cbe_987_count = 0;
  static  unsigned long long aesl_llvm_cbe_988_count = 0;
  static  unsigned long long aesl_llvm_cbe_989_count = 0;
  static  unsigned long long aesl_llvm_cbe_990_count = 0;
  static  unsigned long long aesl_llvm_cbe_991_count = 0;
  static  unsigned long long aesl_llvm_cbe_992_count = 0;
  static  unsigned long long aesl_llvm_cbe_993_count = 0;
  static  unsigned long long aesl_llvm_cbe_994_count = 0;
  static  unsigned long long aesl_llvm_cbe_995_count = 0;
  static  unsigned long long aesl_llvm_cbe_996_count = 0;
  static  unsigned long long aesl_llvm_cbe_997_count = 0;
  static  unsigned long long aesl_llvm_cbe_998_count = 0;
  static  unsigned long long aesl_llvm_cbe_999_count = 0;
  static  unsigned long long aesl_llvm_cbe_1000_count = 0;
  static  unsigned long long aesl_llvm_cbe_1001_count = 0;
  static  unsigned long long aesl_llvm_cbe_1002_count = 0;
  static  unsigned long long aesl_llvm_cbe_1003_count = 0;
  static  unsigned long long aesl_llvm_cbe_1004_count = 0;
  static  unsigned long long aesl_llvm_cbe_1005_count = 0;
  static  unsigned long long aesl_llvm_cbe_1006_count = 0;
  static  unsigned long long aesl_llvm_cbe_1007_count = 0;
  static  unsigned long long aesl_llvm_cbe_1008_count = 0;
  static  unsigned long long aesl_llvm_cbe_1009_count = 0;
  static  unsigned long long aesl_llvm_cbe_1010_count = 0;
  static  unsigned long long aesl_llvm_cbe_1011_count = 0;
  static  unsigned long long aesl_llvm_cbe_1012_count = 0;
  static  unsigned long long aesl_llvm_cbe_1013_count = 0;
  static  unsigned long long aesl_llvm_cbe_1014_count = 0;
  static  unsigned long long aesl_llvm_cbe_1015_count = 0;
  static  unsigned long long aesl_llvm_cbe_1016_count = 0;
  static  unsigned long long aesl_llvm_cbe_1017_count = 0;
  static  unsigned long long aesl_llvm_cbe_1018_count = 0;
  static  unsigned long long aesl_llvm_cbe_1019_count = 0;
  static  unsigned long long aesl_llvm_cbe_1020_count = 0;
  unsigned int llvm_cbe_tmp__276;
  static  unsigned long long aesl_llvm_cbe_1021_count = 0;
  unsigned int llvm_cbe_tmp__277;
  static  unsigned long long aesl_llvm_cbe_1022_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e__count = 0;
  unsigned int llvm_cbe__2e_;
  static  unsigned long long aesl_llvm_cbe_1023_count = 0;
  static  unsigned long long aesl_llvm_cbe_1024_count = 0;
  static  unsigned long long aesl_llvm_cbe_1025_count = 0;
  static  unsigned long long aesl_llvm_cbe_1026_count = 0;
  static  unsigned long long aesl_llvm_cbe_1027_count = 0;
  static  unsigned long long aesl_llvm_cbe_1028_count = 0;
  static  unsigned long long aesl_llvm_cbe_1029_count = 0;
  static  unsigned long long aesl_llvm_cbe_1030_count = 0;
  static  unsigned long long aesl_llvm_cbe_1031_count = 0;
  static  unsigned long long aesl_llvm_cbe_1032_count = 0;
  static  unsigned long long aesl_llvm_cbe_1033_count = 0;
  static  unsigned long long aesl_llvm_cbe_1034_count = 0;
  static  unsigned long long aesl_llvm_cbe_1035_count = 0;
  static  unsigned long long aesl_llvm_cbe_1036_count = 0;
  static  unsigned long long aesl_llvm_cbe_1037_count = 0;
  static  unsigned long long aesl_llvm_cbe_1038_count = 0;
  static  unsigned long long aesl_llvm_cbe_1039_count = 0;
  static  unsigned long long aesl_llvm_cbe_1040_count = 0;
  static  unsigned long long aesl_llvm_cbe_1041_count = 0;
  static  unsigned long long aesl_llvm_cbe_1042_count = 0;
  static  unsigned long long aesl_llvm_cbe_1043_count = 0;
  static  unsigned long long aesl_llvm_cbe_1044_count = 0;
  static  unsigned long long aesl_llvm_cbe_1045_count = 0;
  static  unsigned long long aesl_llvm_cbe_1046_count = 0;
  static  unsigned long long aesl_llvm_cbe_1047_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge15_count = 0;
  unsigned int llvm_cbe_storemerge15;
  unsigned int llvm_cbe_storemerge15__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1048_count = 0;
  unsigned long long llvm_cbe_tmp__278;
  static  unsigned long long aesl_llvm_cbe_1049_count = 0;
  signed int *llvm_cbe_tmp__279;
  static  unsigned long long aesl_llvm_cbe_1050_count = 0;
  unsigned int llvm_cbe_tmp__280;
  static  unsigned long long aesl_llvm_cbe_1051_count = 0;
  unsigned int llvm_cbe_tmp__281;
  static  unsigned long long aesl_llvm_cbe_1052_count = 0;
  signed int *llvm_cbe_tmp__282;
  static  unsigned long long aesl_llvm_cbe_1053_count = 0;
  unsigned int llvm_cbe_tmp__283;
  static  unsigned long long aesl_llvm_cbe_1054_count = 0;
  unsigned int llvm_cbe_tmp__284;
  static  unsigned long long aesl_llvm_cbe_1055_count = 0;
  unsigned int llvm_cbe_tmp__285;
  static  unsigned long long aesl_llvm_cbe_1056_count = 0;
  static  unsigned long long aesl_llvm_cbe_1057_count = 0;
  static  unsigned long long aesl_llvm_cbe_1058_count = 0;
  static  unsigned long long aesl_llvm_cbe_1059_count = 0;
  static  unsigned long long aesl_llvm_cbe_1060_count = 0;
  static  unsigned long long aesl_llvm_cbe_1061_count = 0;
  static  unsigned long long aesl_llvm_cbe_1062_count = 0;
  static  unsigned long long aesl_llvm_cbe_1063_count = 0;
  static  unsigned long long aesl_llvm_cbe_1064_count = 0;
  static  unsigned long long aesl_llvm_cbe_1065_count = 0;
  static  unsigned long long aesl_llvm_cbe_1066_count = 0;
  signed int *llvm_cbe_tmp__286;
  static  unsigned long long aesl_llvm_cbe_1067_count = 0;
  unsigned int llvm_cbe_tmp__287;
  static  unsigned long long aesl_llvm_cbe_1068_count = 0;
  unsigned int llvm_cbe_tmp__288;
  static  unsigned long long aesl_llvm_cbe_1069_count = 0;
  unsigned int llvm_cbe_tmp__289;
  static  unsigned long long aesl_llvm_cbe_1070_count = 0;
  unsigned long long llvm_cbe_tmp__290;
  static  unsigned long long aesl_llvm_cbe_1071_count = 0;
  signed short *llvm_cbe_tmp__291;
  static  unsigned long long aesl_llvm_cbe_1072_count = 0;
  unsigned short llvm_cbe_tmp__292;
  static  unsigned long long aesl_llvm_cbe_1073_count = 0;
  unsigned int llvm_cbe_tmp__293;
  static  unsigned long long aesl_llvm_cbe_1074_count = 0;
  unsigned int llvm_cbe_tmp__294;
  static  unsigned long long aesl_llvm_cbe_1075_count = 0;
  unsigned long long llvm_cbe_tmp__295;
  static  unsigned long long aesl_llvm_cbe_1076_count = 0;
  signed int *llvm_cbe_tmp__296;
  static  unsigned long long aesl_llvm_cbe_1077_count = 0;
  static  unsigned long long aesl_llvm_cbe_1078_count = 0;
  signed int *llvm_cbe_tmp__297;
  static  unsigned long long aesl_llvm_cbe_1079_count = 0;
  unsigned int llvm_cbe_tmp__298;
  static  unsigned long long aesl_llvm_cbe_1080_count = 0;
  unsigned int llvm_cbe_tmp__299;
  static  unsigned long long aesl_llvm_cbe_1081_count = 0;
  unsigned int llvm_cbe_tmp__300;
  static  unsigned long long aesl_llvm_cbe_1082_count = 0;
  unsigned long long llvm_cbe_tmp__301;
  static  unsigned long long aesl_llvm_cbe_1083_count = 0;
  signed short *llvm_cbe_tmp__302;
  static  unsigned long long aesl_llvm_cbe_1084_count = 0;
  unsigned short llvm_cbe_tmp__303;
  static  unsigned long long aesl_llvm_cbe_1085_count = 0;
  unsigned int llvm_cbe_tmp__304;
  static  unsigned long long aesl_llvm_cbe_1086_count = 0;
  signed int *llvm_cbe_tmp__305;
  static  unsigned long long aesl_llvm_cbe_1087_count = 0;
  static  unsigned long long aesl_llvm_cbe_1088_count = 0;
  unsigned long long llvm_cbe_tmp__306;
  static  unsigned long long aesl_llvm_cbe_1089_count = 0;
  signed int *llvm_cbe_tmp__307;
  static  unsigned long long aesl_llvm_cbe_1090_count = 0;
  unsigned int llvm_cbe_tmp__308;
  static  unsigned long long aesl_llvm_cbe_1091_count = 0;
  unsigned long long llvm_cbe_tmp__309;
  static  unsigned long long aesl_llvm_cbe_1092_count = 0;
  signed short *llvm_cbe_tmp__310;
  static  unsigned long long aesl_llvm_cbe_1093_count = 0;
  unsigned short llvm_cbe_tmp__311;
  static  unsigned long long aesl_llvm_cbe_1094_count = 0;
  unsigned int llvm_cbe_tmp__312;
  static  unsigned long long aesl_llvm_cbe_1095_count = 0;
  signed int *llvm_cbe_tmp__313;
  static  unsigned long long aesl_llvm_cbe_1096_count = 0;
  static  unsigned long long aesl_llvm_cbe_1097_count = 0;
  static  unsigned long long aesl_llvm_cbe_1098_count = 0;
  static  unsigned long long aesl_llvm_cbe_1099_count = 0;
  static  unsigned long long aesl_llvm_cbe_1100_count = 0;
  static  unsigned long long aesl_llvm_cbe_1101_count = 0;
  static  unsigned long long aesl_llvm_cbe_1102_count = 0;
  static  unsigned long long aesl_llvm_cbe_1103_count = 0;
  static  unsigned long long aesl_llvm_cbe_1104_count = 0;
  static  unsigned long long aesl_llvm_cbe_1105_count = 0;
  static  unsigned long long aesl_llvm_cbe_1106_count = 0;
  static  unsigned long long aesl_llvm_cbe_1107_count = 0;
  static  unsigned long long aesl_llvm_cbe_1108_count = 0;
  static  unsigned long long aesl_llvm_cbe_1109_count = 0;
  static  unsigned long long aesl_llvm_cbe_1110_count = 0;
  static  unsigned long long aesl_llvm_cbe_1111_count = 0;
  static  unsigned long long aesl_llvm_cbe_1112_count = 0;
  static  unsigned long long aesl_llvm_cbe_1113_count = 0;
  static  unsigned long long aesl_llvm_cbe_1114_count = 0;
  static  unsigned long long aesl_llvm_cbe_1115_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond24_count = 0;
  static  unsigned long long aesl_llvm_cbe_1116_count = 0;
  static  unsigned long long aesl_llvm_cbe_1117_count = 0;
  unsigned long long llvm_cbe_tmp__314;
  static  unsigned long long aesl_llvm_cbe_1118_count = 0;
  signed int *llvm_cbe_tmp__315;
  static  unsigned long long aesl_llvm_cbe_1119_count = 0;
  unsigned int llvm_cbe_tmp__316;
  static  unsigned long long aesl_llvm_cbe_1120_count = 0;
  unsigned int llvm_cbe_tmp__317;
  static  unsigned long long aesl_llvm_cbe_1121_count = 0;
  signed int *llvm_cbe_tmp__318;
  static  unsigned long long aesl_llvm_cbe_1122_count = 0;
  unsigned int llvm_cbe_tmp__319;
  static  unsigned long long aesl_llvm_cbe_1123_count = 0;
  unsigned int llvm_cbe_tmp__320;
  static  unsigned long long aesl_llvm_cbe_1124_count = 0;
  unsigned int llvm_cbe_tmp__321;
  static  unsigned long long aesl_llvm_cbe_1125_count = 0;
  signed int *llvm_cbe_tmp__322;
  static  unsigned long long aesl_llvm_cbe_1126_count = 0;
  unsigned int llvm_cbe_tmp__323;
  static  unsigned long long aesl_llvm_cbe_1127_count = 0;
  unsigned int llvm_cbe_tmp__324;
  static  unsigned long long aesl_llvm_cbe_1128_count = 0;
  unsigned char llvm_cbe_tmp__325;
  static  unsigned long long aesl_llvm_cbe_1129_count = 0;
  unsigned int llvm_cbe_tmp__326;
  static  unsigned long long aesl_llvm_cbe_1130_count = 0;
  static  unsigned long long aesl_llvm_cbe_1131_count = 0;
  static  unsigned long long aesl_llvm_cbe_1132_count = 0;
  static  unsigned long long aesl_llvm_cbe_1133_count = 0;
  static  unsigned long long aesl_llvm_cbe_1134_count = 0;
  static  unsigned long long aesl_llvm_cbe_1135_count = 0;
  static  unsigned long long aesl_llvm_cbe_1136_count = 0;
  static  unsigned long long aesl_llvm_cbe_1137_count = 0;
  static  unsigned long long aesl_llvm_cbe_1138_count = 0;
  static  unsigned long long aesl_llvm_cbe_1139_count = 0;
  static  unsigned long long aesl_llvm_cbe_1140_count = 0;
  static  unsigned long long aesl_llvm_cbe_1141_count = 0;
  static  unsigned long long aesl_llvm_cbe_1142_count = 0;
  static  unsigned long long aesl_llvm_cbe_1143_count = 0;
  static  unsigned long long aesl_llvm_cbe_1144_count = 0;
  static  unsigned long long aesl_llvm_cbe_1145_count = 0;
  static  unsigned long long aesl_llvm_cbe_1146_count = 0;
  static  unsigned long long aesl_llvm_cbe_1147_count = 0;
  static  unsigned long long aesl_llvm_cbe_1148_count = 0;
  static  unsigned long long aesl_llvm_cbe_1149_count = 0;
  static  unsigned long long aesl_llvm_cbe_1150_count = 0;
  static  unsigned long long aesl_llvm_cbe_1151_count = 0;
  static  unsigned long long aesl_llvm_cbe_1152_count = 0;
  static  unsigned long long aesl_llvm_cbe_1153_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge114_count = 0;
  unsigned int llvm_cbe_storemerge114;
  unsigned int llvm_cbe_storemerge114__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1154_count = 0;
  unsigned long long llvm_cbe_tmp__327;
  static  unsigned long long aesl_llvm_cbe_1155_count = 0;
  signed int *llvm_cbe_tmp__328;
  static  unsigned long long aesl_llvm_cbe_1156_count = 0;
  unsigned int llvm_cbe_tmp__329;
  static  unsigned long long aesl_llvm_cbe_1157_count = 0;
  unsigned int llvm_cbe_tmp__330;
  static  unsigned long long aesl_llvm_cbe_1158_count = 0;
  signed int *llvm_cbe_tmp__331;
  static  unsigned long long aesl_llvm_cbe_1159_count = 0;
  unsigned int llvm_cbe_tmp__332;
  static  unsigned long long aesl_llvm_cbe_1160_count = 0;
  unsigned int llvm_cbe_tmp__333;
  static  unsigned long long aesl_llvm_cbe_1161_count = 0;
  unsigned int llvm_cbe_tmp__334;
  static  unsigned long long aesl_llvm_cbe_1162_count = 0;
  static  unsigned long long aesl_llvm_cbe_1163_count = 0;
  static  unsigned long long aesl_llvm_cbe_1164_count = 0;
  static  unsigned long long aesl_llvm_cbe_1165_count = 0;
  static  unsigned long long aesl_llvm_cbe_1166_count = 0;
  static  unsigned long long aesl_llvm_cbe_1167_count = 0;
  static  unsigned long long aesl_llvm_cbe_1168_count = 0;
  static  unsigned long long aesl_llvm_cbe_1169_count = 0;
  static  unsigned long long aesl_llvm_cbe_1170_count = 0;
  static  unsigned long long aesl_llvm_cbe_1171_count = 0;
  static  unsigned long long aesl_llvm_cbe_1172_count = 0;
  signed int *llvm_cbe_tmp__335;
  static  unsigned long long aesl_llvm_cbe_1173_count = 0;
  unsigned int llvm_cbe_tmp__336;
  static  unsigned long long aesl_llvm_cbe_1174_count = 0;
  unsigned int llvm_cbe_tmp__337;
  static  unsigned long long aesl_llvm_cbe_1175_count = 0;
  unsigned int llvm_cbe_tmp__338;
  static  unsigned long long aesl_llvm_cbe_1176_count = 0;
  unsigned long long llvm_cbe_tmp__339;
  static  unsigned long long aesl_llvm_cbe_1177_count = 0;
  signed short *llvm_cbe_tmp__340;
  static  unsigned long long aesl_llvm_cbe_1178_count = 0;
  unsigned short llvm_cbe_tmp__341;
  static  unsigned long long aesl_llvm_cbe_1179_count = 0;
  unsigned int llvm_cbe_tmp__342;
  static  unsigned long long aesl_llvm_cbe_1180_count = 0;
  unsigned int llvm_cbe_tmp__343;
  static  unsigned long long aesl_llvm_cbe_1181_count = 0;
  unsigned long long llvm_cbe_tmp__344;
  static  unsigned long long aesl_llvm_cbe_1182_count = 0;
  signed int *llvm_cbe_tmp__345;
  static  unsigned long long aesl_llvm_cbe_1183_count = 0;
  static  unsigned long long aesl_llvm_cbe_1184_count = 0;
  signed int *llvm_cbe_tmp__346;
  static  unsigned long long aesl_llvm_cbe_1185_count = 0;
  unsigned int llvm_cbe_tmp__347;
  static  unsigned long long aesl_llvm_cbe_1186_count = 0;
  unsigned int llvm_cbe_tmp__348;
  static  unsigned long long aesl_llvm_cbe_1187_count = 0;
  unsigned int llvm_cbe_tmp__349;
  static  unsigned long long aesl_llvm_cbe_1188_count = 0;
  unsigned long long llvm_cbe_tmp__350;
  static  unsigned long long aesl_llvm_cbe_1189_count = 0;
  signed short *llvm_cbe_tmp__351;
  static  unsigned long long aesl_llvm_cbe_1190_count = 0;
  unsigned short llvm_cbe_tmp__352;
  static  unsigned long long aesl_llvm_cbe_1191_count = 0;
  unsigned int llvm_cbe_tmp__353;
  static  unsigned long long aesl_llvm_cbe_1192_count = 0;
  signed int *llvm_cbe_tmp__354;
  static  unsigned long long aesl_llvm_cbe_1193_count = 0;
  static  unsigned long long aesl_llvm_cbe_1194_count = 0;
  static  unsigned long long aesl_llvm_cbe_1195_count = 0;
  static  unsigned long long aesl_llvm_cbe_1196_count = 0;
  static  unsigned long long aesl_llvm_cbe_1197_count = 0;
  static  unsigned long long aesl_llvm_cbe_1198_count = 0;
  static  unsigned long long aesl_llvm_cbe_1199_count = 0;
  static  unsigned long long aesl_llvm_cbe_1200_count = 0;
  static  unsigned long long aesl_llvm_cbe_1201_count = 0;
  static  unsigned long long aesl_llvm_cbe_1202_count = 0;
  static  unsigned long long aesl_llvm_cbe_1203_count = 0;
  static  unsigned long long aesl_llvm_cbe_1204_count = 0;
  static  unsigned long long aesl_llvm_cbe_1205_count = 0;
  static  unsigned long long aesl_llvm_cbe_1206_count = 0;
  static  unsigned long long aesl_llvm_cbe_1207_count = 0;
  static  unsigned long long aesl_llvm_cbe_1208_count = 0;
  static  unsigned long long aesl_llvm_cbe_1209_count = 0;
  static  unsigned long long aesl_llvm_cbe_1210_count = 0;
  static  unsigned long long aesl_llvm_cbe_1211_count = 0;
  static  unsigned long long aesl_llvm_cbe_1212_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_1213_count = 0;
  static  unsigned long long aesl_llvm_cbe_1214_count = 0;
  signed int *llvm_cbe_tmp__355;
  static  unsigned long long aesl_llvm_cbe_1215_count = 0;
  unsigned int llvm_cbe_tmp__356;
  static  unsigned long long aesl_llvm_cbe_1216_count = 0;
  unsigned int llvm_cbe_tmp__357;
  static  unsigned long long aesl_llvm_cbe_1217_count = 0;
  signed int *llvm_cbe_tmp__358;
  static  unsigned long long aesl_llvm_cbe_1218_count = 0;
  unsigned int llvm_cbe_tmp__359;
  static  unsigned long long aesl_llvm_cbe_1219_count = 0;
  unsigned int llvm_cbe_tmp__360;
  static  unsigned long long aesl_llvm_cbe_1220_count = 0;
  unsigned long long llvm_cbe_tmp__361;
  static  unsigned long long aesl_llvm_cbe_1221_count = 0;
  signed short *llvm_cbe_tmp__362;
  static  unsigned long long aesl_llvm_cbe_1222_count = 0;
  unsigned short llvm_cbe_tmp__363;
  static  unsigned long long aesl_llvm_cbe_1223_count = 0;
  unsigned int llvm_cbe_tmp__364;
  static  unsigned long long aesl_llvm_cbe_1224_count = 0;
  signed int *llvm_cbe_tmp__365;
  static  unsigned long long aesl_llvm_cbe_1225_count = 0;
  static  unsigned long long aesl_llvm_cbe_1226_count = 0;
  unsigned int llvm_cbe_tmp__366;
  static  unsigned long long aesl_llvm_cbe_1227_count = 0;
  unsigned int llvm_cbe_tmp__367;
  static  unsigned long long aesl_llvm_cbe_1228_count = 0;
  unsigned int llvm_cbe_tmp__368;
  static  unsigned long long aesl_llvm_cbe_1229_count = 0;
  unsigned int llvm_cbe_tmp__369;
  static  unsigned long long aesl_llvm_cbe_1230_count = 0;
  unsigned int llvm_cbe_tmp__370;
  static  unsigned long long aesl_llvm_cbe_1231_count = 0;
  unsigned int llvm_cbe_tmp__371;
  static  unsigned long long aesl_llvm_cbe_1232_count = 0;
  unsigned char llvm_cbe_tmp__372;
  static  unsigned long long aesl_llvm_cbe_1233_count = 0;
  unsigned int llvm_cbe_tmp__373;
  static  unsigned long long aesl_llvm_cbe_1234_count = 0;
  static  unsigned long long aesl_llvm_cbe_1235_count = 0;
  static  unsigned long long aesl_llvm_cbe_1236_count = 0;
  static  unsigned long long aesl_llvm_cbe_1237_count = 0;
  static  unsigned long long aesl_llvm_cbe_1238_count = 0;
  static  unsigned long long aesl_llvm_cbe_1239_count = 0;
  static  unsigned long long aesl_llvm_cbe_1240_count = 0;
  unsigned int llvm_cbe_tmp__374;
  static  unsigned long long aesl_llvm_cbe_1241_count = 0;
  signed int *llvm_cbe_tmp__375;
  static  unsigned long long aesl_llvm_cbe_1242_count = 0;
  static  unsigned long long aesl_llvm_cbe_1243_count = 0;
  static  unsigned long long aesl_llvm_cbe_1244_count = 0;
  static  unsigned long long aesl_llvm_cbe_1245_count = 0;
  static  unsigned long long aesl_llvm_cbe_1246_count = 0;
  static  unsigned long long aesl_llvm_cbe_1247_count = 0;
  static  unsigned long long aesl_llvm_cbe_1248_count = 0;
  static  unsigned long long aesl_llvm_cbe_1249_count = 0;
  static  unsigned long long aesl_llvm_cbe_1250_count = 0;
  static  unsigned long long aesl_llvm_cbe_1251_count = 0;
  static  unsigned long long aesl_llvm_cbe_1252_count = 0;
  static  unsigned long long aesl_llvm_cbe_1253_count = 0;
  static  unsigned long long aesl_llvm_cbe_1254_count = 0;
  static  unsigned long long aesl_llvm_cbe_1255_count = 0;
  static  unsigned long long aesl_llvm_cbe_1256_count = 0;
  static  unsigned long long aesl_llvm_cbe_1257_count = 0;
  static  unsigned long long aesl_llvm_cbe_1258_count = 0;
  static  unsigned long long aesl_llvm_cbe_1259_count = 0;
  static  unsigned long long aesl_llvm_cbe_1260_count = 0;
  static  unsigned long long aesl_llvm_cbe_1261_count = 0;
  static  unsigned long long aesl_llvm_cbe_1262_count = 0;
  static  unsigned long long aesl_llvm_cbe_1263_count = 0;
  static  unsigned long long aesl_llvm_cbe_1264_count = 0;
  static  unsigned long long aesl_llvm_cbe_1265_count = 0;
  static  unsigned long long aesl_llvm_cbe_1266_count = 0;
  static  unsigned long long aesl_llvm_cbe_1267_count = 0;
  static  unsigned long long aesl_llvm_cbe_1268_count = 0;
  static  unsigned long long aesl_llvm_cbe_1269_count = 0;
  static  unsigned long long aesl_llvm_cbe_1270_count = 0;
  static  unsigned long long aesl_llvm_cbe_1271_count = 0;
  static  unsigned long long aesl_llvm_cbe_1272_count = 0;
  static  unsigned long long aesl_llvm_cbe_1273_count = 0;
  static  unsigned long long aesl_llvm_cbe_1274_count = 0;
  static  unsigned long long aesl_llvm_cbe_1275_count = 0;
  static  unsigned long long aesl_llvm_cbe_1276_count = 0;
  static  unsigned long long aesl_llvm_cbe_1277_count = 0;
  static  unsigned long long aesl_llvm_cbe_1278_count = 0;
  static  unsigned long long aesl_llvm_cbe_1279_count = 0;
  static  unsigned long long aesl_llvm_cbe_1280_count = 0;
  static  unsigned long long aesl_llvm_cbe_1281_count = 0;
  static  unsigned long long aesl_llvm_cbe_1282_count = 0;
  static  unsigned long long aesl_llvm_cbe_1283_count = 0;
  static  unsigned long long aesl_llvm_cbe_1284_count = 0;
  static  unsigned long long aesl_llvm_cbe_1285_count = 0;
  static  unsigned long long aesl_llvm_cbe_1286_count = 0;
  static  unsigned long long aesl_llvm_cbe_1287_count = 0;
  static  unsigned long long aesl_llvm_cbe_1288_count = 0;
  static  unsigned long long aesl_llvm_cbe_1289_count = 0;
  static  unsigned long long aesl_llvm_cbe_1290_count = 0;
  static  unsigned long long aesl_llvm_cbe_1291_count = 0;
  static  unsigned long long aesl_llvm_cbe_1292_count = 0;
  static  unsigned long long aesl_llvm_cbe_1293_count = 0;
  static  unsigned long long aesl_llvm_cbe_1294_count = 0;
  static  unsigned long long aesl_llvm_cbe_1295_count = 0;
  static  unsigned long long aesl_llvm_cbe_1296_count = 0;
  static  unsigned long long aesl_llvm_cbe_1297_count = 0;
  static  unsigned long long aesl_llvm_cbe_1298_count = 0;
  static  unsigned long long aesl_llvm_cbe_1299_count = 0;
  static  unsigned long long aesl_llvm_cbe_1300_count = 0;
  static  unsigned long long aesl_llvm_cbe_1301_count = 0;
  static  unsigned long long aesl_llvm_cbe_1302_count = 0;
  static  unsigned long long aesl_llvm_cbe_1303_count = 0;
  static  unsigned long long aesl_llvm_cbe_1304_count = 0;
  static  unsigned long long aesl_llvm_cbe_1305_count = 0;
  static  unsigned long long aesl_llvm_cbe_1306_count = 0;
  signed int *llvm_cbe_tmp__376;
  static  unsigned long long aesl_llvm_cbe_1307_count = 0;
  static  unsigned long long aesl_llvm_cbe_1308_count = 0;
  signed int *llvm_cbe_tmp__377;
  static  unsigned long long aesl_llvm_cbe_1309_count = 0;
  static  unsigned long long aesl_llvm_cbe_1310_count = 0;
  unsigned int llvm_cbe_tmp__378;
  static  unsigned long long aesl_llvm_cbe_1311_count = 0;
  unsigned long long llvm_cbe_tmp__379;
  static  unsigned long long aesl_llvm_cbe_1312_count = 0;
  signed int *llvm_cbe_tmp__380;
  static  unsigned long long aesl_llvm_cbe_1313_count = 0;
  static  unsigned long long aesl_llvm_cbe_1314_count = 0;
  static  unsigned long long aesl_llvm_cbe_1315_count = 0;
  bool llvm_cbe_tmp__381;
  bool llvm_cbe_tmp__381__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1316_count = 0;
  unsigned int llvm_cbe_tmp__382;
  unsigned int llvm_cbe_tmp__382__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1317_count = 0;
  unsigned int llvm_cbe_tmp__383;
  unsigned int llvm_cbe_tmp__383__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1318_count = 0;
  unsigned int llvm_cbe_tmp__384;
  static  unsigned long long aesl_llvm_cbe_1319_count = 0;
  unsigned int llvm_cbe_tmp__385;
  static  unsigned long long aesl_llvm_cbe_1320_count = 0;
  unsigned int llvm_cbe_tmp__386;
  static  unsigned long long aesl_llvm_cbe_1321_count = 0;
  unsigned long long llvm_cbe_tmp__387;
  static  unsigned long long aesl_llvm_cbe_1322_count = 0;
  signed int *llvm_cbe_tmp__388;
  static  unsigned long long aesl_llvm_cbe_1323_count = 0;
  unsigned int llvm_cbe_tmp__389;
  static  unsigned long long aesl_llvm_cbe_1324_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond_count = 0;
  bool llvm_cbe_or_2e_cond;
  static  unsigned long long aesl_llvm_cbe_1325_count = 0;
  static  unsigned long long aesl_llvm_cbe_1326_count = 0;
  unsigned long long llvm_cbe_tmp__390;
  static  unsigned long long aesl_llvm_cbe_1327_count = 0;
  signed int *llvm_cbe_tmp__391;
  static  unsigned long long aesl_llvm_cbe_1328_count = 0;
  unsigned int llvm_cbe_tmp__392;
  static  unsigned long long aesl_llvm_cbe_1329_count = 0;
  static  unsigned long long aesl_llvm_cbe_1330_count = 0;
  static  unsigned long long aesl_llvm_cbe_1331_count = 0;
  static  unsigned long long aesl_llvm_cbe_1332_count = 0;
  static  unsigned long long aesl_llvm_cbe_1333_count = 0;
  static  unsigned long long aesl_llvm_cbe_1334_count = 0;
  static  unsigned long long aesl_llvm_cbe_1335_count = 0;
  static  unsigned long long aesl_llvm_cbe_1336_count = 0;
  static  unsigned long long aesl_llvm_cbe_1337_count = 0;
  static  unsigned long long aesl_llvm_cbe_1338_count = 0;
  static  unsigned long long aesl_llvm_cbe_1339_count = 0;
  static  unsigned long long aesl_llvm_cbe_1340_count = 0;
  static  unsigned long long aesl_llvm_cbe_1341_count = 0;
  static  unsigned long long aesl_llvm_cbe_1342_count = 0;
  static  unsigned long long aesl_llvm_cbe_1343_count = 0;
  static  unsigned long long aesl_llvm_cbe_1344_count = 0;
  static  unsigned long long aesl_llvm_cbe_1345_count = 0;
  static  unsigned long long aesl_llvm_cbe_1346_count = 0;
  static  unsigned long long aesl_llvm_cbe_1347_count = 0;
  static  unsigned long long aesl_llvm_cbe_1348_count = 0;
  static  unsigned long long aesl_llvm_cbe_1349_count = 0;
  static  unsigned long long aesl_llvm_cbe_1350_count = 0;
  static  unsigned long long aesl_llvm_cbe_1351_count = 0;
  static  unsigned long long aesl_llvm_cbe_1352_count = 0;
  static  unsigned long long aesl_llvm_cbe_1353_count = 0;
  static  unsigned long long aesl_llvm_cbe_1354_count = 0;
  static  unsigned long long aesl_llvm_cbe_1355_count = 0;
  static  unsigned long long aesl_llvm_cbe_1356_count = 0;
  static  unsigned long long aesl_llvm_cbe_1357_count = 0;
  static  unsigned long long aesl_llvm_cbe_1358_count = 0;
  static  unsigned long long aesl_llvm_cbe_1359_count = 0;
  static  unsigned long long aesl_llvm_cbe_1360_count = 0;
  static  unsigned long long aesl_llvm_cbe_1361_count = 0;
  static  unsigned long long aesl_llvm_cbe_1362_count = 0;
  static  unsigned long long aesl_llvm_cbe_1363_count = 0;
  static  unsigned long long aesl_llvm_cbe_1364_count = 0;
  static  unsigned long long aesl_llvm_cbe_1365_count = 0;
  static  unsigned long long aesl_llvm_cbe_1366_count = 0;
  static  unsigned long long aesl_llvm_cbe_1367_count = 0;
  static  unsigned long long aesl_llvm_cbe_1368_count = 0;
  static  unsigned long long aesl_llvm_cbe_1369_count = 0;
  static  unsigned long long aesl_llvm_cbe_1370_count = 0;
  static  unsigned long long aesl_llvm_cbe_1371_count = 0;
  static  unsigned long long aesl_llvm_cbe_1372_count = 0;
  static  unsigned long long aesl_llvm_cbe_1373_count = 0;
  static  unsigned long long aesl_llvm_cbe_1374_count = 0;
  static  unsigned long long aesl_llvm_cbe_1375_count = 0;
  static  unsigned long long aesl_llvm_cbe_1376_count = 0;
  static  unsigned long long aesl_llvm_cbe_1377_count = 0;
  static  unsigned long long aesl_llvm_cbe_1378_count = 0;
  static  unsigned long long aesl_llvm_cbe_1379_count = 0;
  static  unsigned long long aesl_llvm_cbe_1380_count = 0;
  static  unsigned long long aesl_llvm_cbe_1381_count = 0;
  static  unsigned long long aesl_llvm_cbe_1382_count = 0;
  static  unsigned long long aesl_llvm_cbe_1383_count = 0;
  signed int *llvm_cbe_tmp__393;
  static  unsigned long long aesl_llvm_cbe_1384_count = 0;
  static  unsigned long long aesl_llvm_cbe_1385_count = 0;
  signed int *llvm_cbe_tmp__394;
  static  unsigned long long aesl_llvm_cbe_1386_count = 0;
  static  unsigned long long aesl_llvm_cbe_1387_count = 0;
  static  unsigned long long aesl_llvm_cbe_1388_count = 0;
  static  unsigned long long aesl_llvm_cbe_1389_count = 0;
  static  unsigned long long aesl_llvm_cbe_1390_count = 0;
  static  unsigned long long aesl_llvm_cbe_1391_count = 0;
  static  unsigned long long aesl_llvm_cbe_1392_count = 0;
  static  unsigned long long aesl_llvm_cbe_1393_count = 0;
  static  unsigned long long aesl_llvm_cbe_1394_count = 0;
  static  unsigned long long aesl_llvm_cbe_1395_count = 0;
  static  unsigned long long aesl_llvm_cbe_1396_count = 0;
  static  unsigned long long aesl_llvm_cbe_1397_count = 0;
  static  unsigned long long aesl_llvm_cbe_1398_count = 0;
  static  unsigned long long aesl_llvm_cbe_1399_count = 0;
  static  unsigned long long aesl_llvm_cbe_1400_count = 0;
  static  unsigned long long aesl_llvm_cbe_1401_count = 0;
  static  unsigned long long aesl_llvm_cbe_1402_count = 0;
  static  unsigned long long aesl_llvm_cbe_1403_count = 0;
  static  unsigned long long aesl_llvm_cbe_1404_count = 0;
  static  unsigned long long aesl_llvm_cbe_1405_count = 0;
  static  unsigned long long aesl_llvm_cbe_1406_count = 0;
  static  unsigned long long aesl_llvm_cbe_1407_count = 0;
  static  unsigned long long aesl_llvm_cbe_1408_count = 0;
  static  unsigned long long aesl_llvm_cbe_1409_count = 0;
  static  unsigned long long aesl_llvm_cbe_1410_count = 0;
  static  unsigned long long aesl_llvm_cbe_1411_count = 0;
  static  unsigned long long aesl_llvm_cbe_1412_count = 0;
  static  unsigned long long aesl_llvm_cbe_1413_count = 0;
  static  unsigned long long aesl_llvm_cbe_1414_count = 0;
  static  unsigned long long aesl_llvm_cbe_1415_count = 0;
  static  unsigned long long aesl_llvm_cbe_1416_count = 0;
  static  unsigned long long aesl_llvm_cbe_1417_count = 0;
  static  unsigned long long aesl_llvm_cbe_1418_count = 0;
  static  unsigned long long aesl_llvm_cbe_1419_count = 0;
  static  unsigned long long aesl_llvm_cbe_1420_count = 0;
  static  unsigned long long aesl_llvm_cbe_1421_count = 0;
  static  unsigned long long aesl_llvm_cbe_1422_count = 0;
  static  unsigned long long aesl_llvm_cbe_1423_count = 0;
  static  unsigned long long aesl_llvm_cbe_1424_count = 0;
  static  unsigned long long aesl_llvm_cbe_1425_count = 0;
  static  unsigned long long aesl_llvm_cbe_1426_count = 0;
  static  unsigned long long aesl_llvm_cbe_1427_count = 0;
  static  unsigned long long aesl_llvm_cbe_1428_count = 0;
  static  unsigned long long aesl_llvm_cbe_1429_count = 0;
  static  unsigned long long aesl_llvm_cbe_1430_count = 0;
  static  unsigned long long aesl_llvm_cbe_1431_count = 0;
  static  unsigned long long aesl_llvm_cbe_1432_count = 0;
  static  unsigned long long aesl_llvm_cbe_1433_count = 0;
  static  unsigned long long aesl_llvm_cbe_1434_count = 0;
  static  unsigned long long aesl_llvm_cbe_1435_count = 0;
  static  unsigned long long aesl_llvm_cbe_1436_count = 0;
  static  unsigned long long aesl_llvm_cbe_1437_count = 0;
  static  unsigned long long aesl_llvm_cbe_1438_count = 0;
  static  unsigned long long aesl_llvm_cbe_1439_count = 0;
  static  unsigned long long aesl_llvm_cbe_1440_count = 0;
  static  unsigned long long aesl_llvm_cbe_1441_count = 0;
  signed int *llvm_cbe_tmp__395;
  static  unsigned long long aesl_llvm_cbe_1442_count = 0;
  static  unsigned long long aesl_llvm_cbe_1443_count = 0;
  signed int *llvm_cbe_tmp__396;
  static  unsigned long long aesl_llvm_cbe_1444_count = 0;
  static  unsigned long long aesl_llvm_cbe_1445_count = 0;
  static  unsigned long long aesl_llvm_cbe_1446_count = 0;
  unsigned long long llvm_cbe_tmp__397;
  static  unsigned long long aesl_llvm_cbe_1447_count = 0;
  signed int *llvm_cbe_tmp__398;
  static  unsigned long long aesl_llvm_cbe_1448_count = 0;
  unsigned int llvm_cbe_tmp__399;
  static  unsigned long long aesl_llvm_cbe_1449_count = 0;
  static  unsigned long long aesl_llvm_cbe_1450_count = 0;
  signed int *llvm_cbe_tmp__400;
  static  unsigned long long aesl_llvm_cbe_1451_count = 0;
  unsigned int llvm_cbe_tmp__401;
  static  unsigned long long aesl_llvm_cbe_1452_count = 0;
  unsigned int llvm_cbe_tmp__402;
  static  unsigned long long aesl_llvm_cbe_1453_count = 0;
  static  unsigned long long aesl_llvm_cbe_1454_count = 0;
  static  unsigned long long aesl_llvm_cbe_1455_count = 0;
  static  unsigned long long aesl_llvm_cbe_1456_count = 0;
  signed int *llvm_cbe_tmp__403;
  static  unsigned long long aesl_llvm_cbe_1457_count = 0;
  unsigned int llvm_cbe_tmp__404;
  static  unsigned long long aesl_llvm_cbe_1458_count = 0;
  unsigned int llvm_cbe_tmp__405;
  static  unsigned long long aesl_llvm_cbe_1459_count = 0;
  static  unsigned long long aesl_llvm_cbe_1460_count = 0;
  static  unsigned long long aesl_llvm_cbe_1461_count = 0;
  static  unsigned long long aesl_llvm_cbe_1462_count = 0;
  signed int *llvm_cbe_tmp__406;
  static  unsigned long long aesl_llvm_cbe_1463_count = 0;
  static  unsigned long long aesl_llvm_cbe_1464_count = 0;
  unsigned int llvm_cbe_tmp__407;
  static  unsigned long long aesl_llvm_cbe_1465_count = 0;
  static  unsigned long long aesl_llvm_cbe_1466_count = 0;
  static  unsigned long long aesl_llvm_cbe_1467_count = 0;
  static  unsigned long long aesl_llvm_cbe_1468_count = 0;
  static  unsigned long long aesl_llvm_cbe_1469_count = 0;
  static  unsigned long long aesl_llvm_cbe_1470_count = 0;
  static  unsigned long long aesl_llvm_cbe_1471_count = 0;
  static  unsigned long long aesl_llvm_cbe_1472_count = 0;
  static  unsigned long long aesl_llvm_cbe_1473_count = 0;
  static  unsigned long long aesl_llvm_cbe_1474_count = 0;
  static  unsigned long long aesl_llvm_cbe_1475_count = 0;
  static  unsigned long long aesl_llvm_cbe_1476_count = 0;
  static  unsigned long long aesl_llvm_cbe_1477_count = 0;
  static  unsigned long long aesl_llvm_cbe_1478_count = 0;
  static  unsigned long long aesl_llvm_cbe_1479_count = 0;
  static  unsigned long long aesl_llvm_cbe_1480_count = 0;
  static  unsigned long long aesl_llvm_cbe_1481_count = 0;
  static  unsigned long long aesl_llvm_cbe_1482_count = 0;
  static  unsigned long long aesl_llvm_cbe_1483_count = 0;
  static  unsigned long long aesl_llvm_cbe_1484_count = 0;
  static  unsigned long long aesl_llvm_cbe_1485_count = 0;
  static  unsigned long long aesl_llvm_cbe_1486_count = 0;
  static  unsigned long long aesl_llvm_cbe_1487_count = 0;
  static  unsigned long long aesl_llvm_cbe_1488_count = 0;
  static  unsigned long long aesl_llvm_cbe_1489_count = 0;
  static  unsigned long long aesl_llvm_cbe_1490_count = 0;
  static  unsigned long long aesl_llvm_cbe_1491_count = 0;
  static  unsigned long long aesl_llvm_cbe_1492_count = 0;
  static  unsigned long long aesl_llvm_cbe_1493_count = 0;
  static  unsigned long long aesl_llvm_cbe_1494_count = 0;
  static  unsigned long long aesl_llvm_cbe_1495_count = 0;
  static  unsigned long long aesl_llvm_cbe_1496_count = 0;
  static  unsigned long long aesl_llvm_cbe_1497_count = 0;
  static  unsigned long long aesl_llvm_cbe_1498_count = 0;
  static  unsigned long long aesl_llvm_cbe_1499_count = 0;
  static  unsigned long long aesl_llvm_cbe_1500_count = 0;
  static  unsigned long long aesl_llvm_cbe_1501_count = 0;
  static  unsigned long long aesl_llvm_cbe_1502_count = 0;
  static  unsigned long long aesl_llvm_cbe_1503_count = 0;
  static  unsigned long long aesl_llvm_cbe_1504_count = 0;
  static  unsigned long long aesl_llvm_cbe_1505_count = 0;
  static  unsigned long long aesl_llvm_cbe_1506_count = 0;
  static  unsigned long long aesl_llvm_cbe_1507_count = 0;
  static  unsigned long long aesl_llvm_cbe_1508_count = 0;
  static  unsigned long long aesl_llvm_cbe_1509_count = 0;
  static  unsigned long long aesl_llvm_cbe_1510_count = 0;
  static  unsigned long long aesl_llvm_cbe_1511_count = 0;
  static  unsigned long long aesl_llvm_cbe_1512_count = 0;
  static  unsigned long long aesl_llvm_cbe_1513_count = 0;
  static  unsigned long long aesl_llvm_cbe_1514_count = 0;
  static  unsigned long long aesl_llvm_cbe_1515_count = 0;
  static  unsigned long long aesl_llvm_cbe_1516_count = 0;
  static  unsigned long long aesl_llvm_cbe_1517_count = 0;
  static  unsigned long long aesl_llvm_cbe_1518_count = 0;
  unsigned long long llvm_cbe_tmp__408;
  static  unsigned long long aesl_llvm_cbe_1519_count = 0;
  signed int *llvm_cbe_tmp__409;
  static  unsigned long long aesl_llvm_cbe_1520_count = 0;
  static  unsigned long long aesl_llvm_cbe_1521_count = 0;
  unsigned int llvm_cbe_tmp__410;
  static  unsigned long long aesl_llvm_cbe_1522_count = 0;
  static  unsigned long long aesl_llvm_cbe_1523_count = 0;
  static  unsigned long long aesl_llvm_cbe_1524_count = 0;
  static  unsigned long long aesl_llvm_cbe_1525_count = 0;
  static  unsigned long long aesl_llvm_cbe_1526_count = 0;
  static  unsigned long long aesl_llvm_cbe_1527_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge25_count = 0;
  unsigned int llvm_cbe_storemerge25;
  unsigned int llvm_cbe_storemerge25__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1528_count = 0;
  static  unsigned long long aesl_llvm_cbe_1529_count = 0;
  static  unsigned long long aesl_llvm_cbe_1530_count = 0;
  static  unsigned long long aesl_llvm_cbe_1531_count = 0;
  static  unsigned long long aesl_llvm_cbe_1532_count = 0;
  static  unsigned long long aesl_llvm_cbe_1533_count = 0;
  unsigned int llvm_cbe_tmp__411;
  unsigned int llvm_cbe_tmp__411__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1534_count = 0;
  unsigned int llvm_cbe_tmp__412;
  static  unsigned long long aesl_llvm_cbe_1535_count = 0;
  static  unsigned long long aesl_llvm_cbe_1536_count = 0;
  static  unsigned long long aesl_llvm_cbe_1537_count = 0;
  static  unsigned long long aesl_llvm_cbe_1538_count = 0;
  static  unsigned long long aesl_llvm_cbe_1539_count = 0;
  static  unsigned long long aesl_llvm_cbe_1540_count = 0;
  static  unsigned long long aesl_llvm_cbe_1541_count = 0;
  unsigned int llvm_cbe_tmp__413;
  static  unsigned long long aesl_llvm_cbe_1542_count = 0;
  static  unsigned long long aesl_llvm_cbe_1543_count = 0;
  static  unsigned long long aesl_llvm_cbe_1544_count = 0;
  static  unsigned long long aesl_llvm_cbe_1545_count = 0;
  static  unsigned long long aesl_llvm_cbe_1546_count = 0;
  static  unsigned long long aesl_llvm_cbe_1547_count = 0;
  static  unsigned long long aesl_llvm_cbe_1548_count = 0;
  static  unsigned long long aesl_llvm_cbe_1549_count = 0;
  static  unsigned long long aesl_llvm_cbe_1550_count = 0;
  static  unsigned long long aesl_llvm_cbe_1551_count = 0;
  static  unsigned long long aesl_llvm_cbe_1552_count = 0;
  static  unsigned long long aesl_llvm_cbe_1553_count = 0;
  static  unsigned long long aesl_llvm_cbe_1554_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge_count = 0;
  unsigned int llvm_cbe_storemerge;
  unsigned int llvm_cbe_storemerge__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1555_count = 0;
  static  unsigned long long aesl_llvm_cbe_1556_count = 0;
  static  unsigned long long aesl_llvm_cbe_1557_count = 0;
  static  unsigned long long aesl_llvm_cbe_1558_count = 0;
  static  unsigned long long aesl_llvm_cbe_1559_count = 0;
  unsigned int llvm_cbe_tmp__414;
  static  unsigned long long aesl_llvm_cbe_1560_count = 0;
  static  unsigned long long aesl_llvm_cbe_1561_count = 0;
  unsigned int llvm_cbe_tmp__415;
  static  unsigned long long aesl_llvm_cbe_1562_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond8_count = 0;
  bool llvm_cbe_or_2e_cond8;
  static  unsigned long long aesl_llvm_cbe_1563_count = 0;
  static  unsigned long long aesl_llvm_cbe_1564_count = 0;
  static  unsigned long long aesl_llvm_cbe_1565_count = 0;
  static  unsigned long long aesl_llvm_cbe_1566_count = 0;
  static  unsigned long long aesl_llvm_cbe_1567_count = 0;
  static  unsigned long long aesl_llvm_cbe_1568_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e_lcssa10_count = 0;
  unsigned int llvm_cbe__2e_lcssa10;
  unsigned int llvm_cbe__2e_lcssa10__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1569_count = 0;
  static  unsigned long long aesl_llvm_cbe_1570_count = 0;
  static  unsigned long long aesl_llvm_cbe_1571_count = 0;
  unsigned int llvm_cbe_tmp__416;
  unsigned int llvm_cbe_tmp__416__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1572_count = 0;
  unsigned int llvm_cbe_tmp__417;
  unsigned int llvm_cbe_tmp__417__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1573_count = 0;
  unsigned long long llvm_cbe_tmp__418;
  static  unsigned long long aesl_llvm_cbe_1574_count = 0;
  signed int *llvm_cbe_tmp__419;
  static  unsigned long long aesl_llvm_cbe_1575_count = 0;
  unsigned int llvm_cbe_tmp__420;
  static  unsigned long long aesl_llvm_cbe_1576_count = 0;
  unsigned int llvm_cbe_tmp__421;
  static  unsigned long long aesl_llvm_cbe_1577_count = 0;
  signed int *llvm_cbe_tmp__422;
  static  unsigned long long aesl_llvm_cbe_1578_count = 0;
  unsigned int llvm_cbe_tmp__423;
  static  unsigned long long aesl_llvm_cbe_1579_count = 0;
  unsigned int llvm_cbe_tmp__424;
  static  unsigned long long aesl_llvm_cbe_1580_count = 0;
  unsigned int llvm_cbe_tmp__425;
  static  unsigned long long aesl_llvm_cbe_1581_count = 0;
  static  unsigned long long aesl_llvm_cbe_1582_count = 0;
  static  unsigned long long aesl_llvm_cbe_1583_count = 0;
  static  unsigned long long aesl_llvm_cbe_1584_count = 0;
  static  unsigned long long aesl_llvm_cbe_1585_count = 0;
  static  unsigned long long aesl_llvm_cbe_1586_count = 0;
  static  unsigned long long aesl_llvm_cbe_1587_count = 0;
  static  unsigned long long aesl_llvm_cbe_1588_count = 0;
  static  unsigned long long aesl_llvm_cbe_1589_count = 0;
  static  unsigned long long aesl_llvm_cbe_1590_count = 0;
  static  unsigned long long aesl_llvm_cbe_1591_count = 0;
  signed int *llvm_cbe_tmp__426;
  static  unsigned long long aesl_llvm_cbe_1592_count = 0;
  unsigned int llvm_cbe_tmp__427;
  static  unsigned long long aesl_llvm_cbe_1593_count = 0;
  unsigned int llvm_cbe_tmp__428;
  static  unsigned long long aesl_llvm_cbe_1594_count = 0;
  unsigned int llvm_cbe_tmp__429;
  static  unsigned long long aesl_llvm_cbe_1595_count = 0;
  unsigned long long llvm_cbe_tmp__430;
  static  unsigned long long aesl_llvm_cbe_1596_count = 0;
  signed short *llvm_cbe_tmp__431;
  static  unsigned long long aesl_llvm_cbe_1597_count = 0;
  unsigned short llvm_cbe_tmp__432;
  static  unsigned long long aesl_llvm_cbe_1598_count = 0;
  unsigned int llvm_cbe_tmp__433;
  static  unsigned long long aesl_llvm_cbe_1599_count = 0;
  unsigned int llvm_cbe_tmp__434;
  static  unsigned long long aesl_llvm_cbe_1600_count = 0;
  unsigned long long llvm_cbe_tmp__435;
  static  unsigned long long aesl_llvm_cbe_1601_count = 0;
  signed int *llvm_cbe_tmp__436;
  static  unsigned long long aesl_llvm_cbe_1602_count = 0;
  static  unsigned long long aesl_llvm_cbe_1603_count = 0;
  signed int *llvm_cbe_tmp__437;
  static  unsigned long long aesl_llvm_cbe_1604_count = 0;
  unsigned int llvm_cbe_tmp__438;
  static  unsigned long long aesl_llvm_cbe_1605_count = 0;
  unsigned int llvm_cbe_tmp__439;
  static  unsigned long long aesl_llvm_cbe_1606_count = 0;
  unsigned int llvm_cbe_tmp__440;
  static  unsigned long long aesl_llvm_cbe_1607_count = 0;
  unsigned long long llvm_cbe_tmp__441;
  static  unsigned long long aesl_llvm_cbe_1608_count = 0;
  signed short *llvm_cbe_tmp__442;
  static  unsigned long long aesl_llvm_cbe_1609_count = 0;
  unsigned short llvm_cbe_tmp__443;
  static  unsigned long long aesl_llvm_cbe_1610_count = 0;
  unsigned int llvm_cbe_tmp__444;
  static  unsigned long long aesl_llvm_cbe_1611_count = 0;
  signed int *llvm_cbe_tmp__445;
  static  unsigned long long aesl_llvm_cbe_1612_count = 0;
  static  unsigned long long aesl_llvm_cbe_1613_count = 0;
  unsigned long long llvm_cbe_tmp__446;
  static  unsigned long long aesl_llvm_cbe_1614_count = 0;
  signed int *llvm_cbe_tmp__447;
  static  unsigned long long aesl_llvm_cbe_1615_count = 0;
  unsigned int llvm_cbe_tmp__448;
  static  unsigned long long aesl_llvm_cbe_1616_count = 0;
  unsigned long long llvm_cbe_tmp__449;
  static  unsigned long long aesl_llvm_cbe_1617_count = 0;
  signed short *llvm_cbe_tmp__450;
  static  unsigned long long aesl_llvm_cbe_1618_count = 0;
  unsigned short llvm_cbe_tmp__451;
  static  unsigned long long aesl_llvm_cbe_1619_count = 0;
  unsigned int llvm_cbe_tmp__452;
  static  unsigned long long aesl_llvm_cbe_1620_count = 0;
  signed int *llvm_cbe_tmp__453;
  static  unsigned long long aesl_llvm_cbe_1621_count = 0;
  static  unsigned long long aesl_llvm_cbe_1622_count = 0;
  signed int *llvm_cbe_tmp__454;
  static  unsigned long long aesl_llvm_cbe_1623_count = 0;
  unsigned int llvm_cbe_tmp__455;
  static  unsigned long long aesl_llvm_cbe_1624_count = 0;
  unsigned int llvm_cbe_tmp__456;
  static  unsigned long long aesl_llvm_cbe_1625_count = 0;
  unsigned int llvm_cbe_tmp__457;
  static  unsigned long long aesl_llvm_cbe_1626_count = 0;
  unsigned long long llvm_cbe_tmp__458;
  static  unsigned long long aesl_llvm_cbe_1627_count = 0;
  signed short *llvm_cbe_tmp__459;
  static  unsigned long long aesl_llvm_cbe_1628_count = 0;
  unsigned short llvm_cbe_tmp__460;
  static  unsigned long long aesl_llvm_cbe_1629_count = 0;
  unsigned int llvm_cbe_tmp__461;
  static  unsigned long long aesl_llvm_cbe_1630_count = 0;
  signed int *llvm_cbe_tmp__462;
  static  unsigned long long aesl_llvm_cbe_1631_count = 0;
  static  unsigned long long aesl_llvm_cbe_1632_count = 0;
  unsigned int llvm_cbe_tmp__463;
  static  unsigned long long aesl_llvm_cbe_1633_count = 0;
  unsigned int llvm_cbe_tmp__464;
  static  unsigned long long aesl_llvm_cbe_1634_count = 0;
  unsigned int llvm_cbe_tmp__465;
  static  unsigned long long aesl_llvm_cbe_1635_count = 0;
  unsigned int llvm_cbe_tmp__466;
  static  unsigned long long aesl_llvm_cbe_1636_count = 0;
  unsigned char llvm_cbe_tmp__467;
  static  unsigned long long aesl_llvm_cbe_1637_count = 0;
  unsigned int llvm_cbe_tmp__468;
  static  unsigned long long aesl_llvm_cbe_1638_count = 0;
  unsigned int llvm_cbe_tmp__469;
  static  unsigned long long aesl_llvm_cbe_1639_count = 0;
  unsigned int llvm_cbe_tmp__470;
  static  unsigned long long aesl_llvm_cbe_1640_count = 0;
  unsigned int llvm_cbe_tmp__471;
  static  unsigned long long aesl_llvm_cbe_1641_count = 0;
  unsigned char llvm_cbe_tmp__472;
  static  unsigned long long aesl_llvm_cbe_1642_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e_9_count = 0;
  unsigned char llvm_cbe__2e_9;
  static  unsigned long long aesl_llvm_cbe_1643_count = 0;
  unsigned int llvm_cbe_tmp__473;
  static  unsigned long long aesl_llvm_cbe_1644_count = 0;
  signed int *llvm_cbe_tmp__474;
  static  unsigned long long aesl_llvm_cbe_1645_count = 0;
  static  unsigned long long aesl_llvm_cbe_1646_count = 0;
  static  unsigned long long aesl_llvm_cbe_1647_count = 0;
  static  unsigned long long aesl_llvm_cbe_1648_count = 0;
  unsigned int llvm_cbe_tmp__475;
  static  unsigned long long aesl_llvm_cbe_1649_count = 0;
  static  unsigned long long aesl_llvm_cbe_1650_count = 0;
  unsigned int llvm_cbe_tmp__476;
  unsigned int llvm_cbe_tmp__476__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1651_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @totalDepth\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = sext i8 %%maxDepth to i32, !dbg !23 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1020_count);
  llvm_cbe_tmp__276 = (unsigned int )((signed int )( char )llvm_cbe_maxDepth);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__276);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = sub nsw i32 %%1, %%depthPhase1, !dbg !23 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1021_count);
  llvm_cbe_tmp__277 = (unsigned int )((unsigned int )(llvm_cbe_tmp__276&4294967295ull)) - ((unsigned int )(llvm_cbe_depthPhase1&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__277&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%. = select i1 %%3, i32 10, i32 %%2, !dbg !23 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe__2e__count);
  llvm_cbe__2e_ = (unsigned int )(((((signed int )llvm_cbe_tmp__277) > ((signed int )10u))) ? ((unsigned int )10u) : ((unsigned int )llvm_cbe_tmp__277));
if (AESL_DEBUG_TRACE)
printf("\n. = 0x%X\n", llvm_cbe__2e_);
  if ((((signed int )llvm_cbe_depthPhase1) > ((signed int )0u))) {
    llvm_cbe_storemerge15__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph17;
  } else {
    goto llvm_cbe__2e__crit_edge18;
  }

  do {     /* Syntactic loop '.lr.ph17' to make GCC happy */
llvm_cbe__2e_lr_2e_ph17:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge15 = phi i32 [ %%21, %%.lr.ph17 ], [ 0, %%0  for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_storemerge15_count);
  llvm_cbe_storemerge15 = (unsigned int )llvm_cbe_storemerge15__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge15 = 0x%X",llvm_cbe_storemerge15);
printf("\n = 0x%X",llvm_cbe_tmp__294);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = sext i32 %%storemerge15 to i64, !dbg !17 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1048_count);
  llvm_cbe_tmp__278 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge15);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__278);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 0, i64 %%5, !dbg !17 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1049_count);
  llvm_cbe_tmp__279 = (signed int *)(&llvm_cbe_search->field0[(((signed long long )llvm_cbe_tmp__278))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__278));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = load i32* %%6, align 4, !dbg !17 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1050_count);
  llvm_cbe_tmp__280 = (unsigned int )*llvm_cbe_tmp__279;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__280);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = mul nsw i32 %%7, 3, !dbg !17 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1051_count);
  llvm_cbe_tmp__281 = (unsigned int )((unsigned int )(llvm_cbe_tmp__280&4294967295ull)) * ((unsigned int )(3u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__281&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 1, i64 %%5, !dbg !17 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1052_count);
  llvm_cbe_tmp__282 = (signed int *)(&llvm_cbe_search->field1[(((signed long long )llvm_cbe_tmp__278))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__278));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = load i32* %%9, align 4, !dbg !17 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1053_count);
  llvm_cbe_tmp__283 = (unsigned int )*llvm_cbe_tmp__282;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__283);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = add i32 %%10, -1, !dbg !17 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1054_count);
  llvm_cbe_tmp__284 = (unsigned int )((unsigned int )(llvm_cbe_tmp__283&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__284&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = add i32 %%11, %%8, !dbg !17 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1055_count);
  llvm_cbe_tmp__285 = (unsigned int )((unsigned int )(llvm_cbe_tmp__284&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__281&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__285&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 6, i64 %%5, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1066_count);
  llvm_cbe_tmp__286 = (signed int *)(&llvm_cbe_search->field6[(((signed long long )llvm_cbe_tmp__278))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__278));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load i32* %%13, align 4, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1067_count);
  llvm_cbe_tmp__287 = (unsigned int )*llvm_cbe_tmp__286;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__287);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = mul nsw i32 %%14, 18, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1068_count);
  llvm_cbe_tmp__288 = (unsigned int )((unsigned int )(llvm_cbe_tmp__287&4294967295ull)) * ((unsigned int )(18u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__288&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = add nsw i32 %%15, %%12, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1069_count);
  llvm_cbe_tmp__289 = (unsigned int )((unsigned int )(llvm_cbe_tmp__288&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__285&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__289&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = sext i32 %%16 to i64, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1070_count);
  llvm_cbe_tmp__290 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__289);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__290);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = getelementptr inbounds i16* %%URFtoDLF_Move2, i64 %%17, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1071_count);
  llvm_cbe_tmp__291 = (signed short *)(&llvm_cbe_URFtoDLF_Move2[(((signed long long )llvm_cbe_tmp__290))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__290));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = load i16* %%18, align 2, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1072_count);
  llvm_cbe_tmp__292 = (unsigned short )*llvm_cbe_tmp__291;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__292);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = sext i16 %%19 to i32, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1073_count);
  llvm_cbe_tmp__293 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__292);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__293);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = add nsw i32 %%storemerge15, 1, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1074_count);
  llvm_cbe_tmp__294 = (unsigned int )((unsigned int )(llvm_cbe_storemerge15&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__294&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = sext i32 %%21 to i64, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1075_count);
  llvm_cbe_tmp__295 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__294);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__295);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 6, i64 %%22, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1076_count);
  llvm_cbe_tmp__296 = (signed int *)(&llvm_cbe_search->field6[(((signed long long )llvm_cbe_tmp__295))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__295));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%20, i32* %%23, align 4, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1077_count);
  *llvm_cbe_tmp__296 = llvm_cbe_tmp__293;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__293);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 7, i64 %%5, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1078_count);
  llvm_cbe_tmp__297 = (signed int *)(&llvm_cbe_search->field7[(((signed long long )llvm_cbe_tmp__278))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__278));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = load i32* %%24, align 4, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1079_count);
  llvm_cbe_tmp__298 = (unsigned int )*llvm_cbe_tmp__297;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__298);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = mul nsw i32 %%25, 18, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1080_count);
  llvm_cbe_tmp__299 = (unsigned int )((unsigned int )(llvm_cbe_tmp__298&4294967295ull)) * ((unsigned int )(18u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__299&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = add nsw i32 %%26, %%12, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1081_count);
  llvm_cbe_tmp__300 = (unsigned int )((unsigned int )(llvm_cbe_tmp__299&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__285&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__300&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = sext i32 %%27 to i64, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1082_count);
  llvm_cbe_tmp__301 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__300);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__301);
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = getelementptr inbounds i16* %%FRtoBR_Move2, i64 %%28, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1083_count);
  llvm_cbe_tmp__302 = (signed short *)(&llvm_cbe_FRtoBR_Move2[(((signed long long )llvm_cbe_tmp__301))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__301));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = load i16* %%29, align 2, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1084_count);
  llvm_cbe_tmp__303 = (unsigned short )*llvm_cbe_tmp__302;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__303);
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = sext i16 %%30 to i32, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1085_count);
  llvm_cbe_tmp__304 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__303);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__304);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 7, i64 %%22, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1086_count);
  llvm_cbe_tmp__305 = (signed int *)(&llvm_cbe_search->field7[(((signed long long )llvm_cbe_tmp__295))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__295));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%31, i32* %%32, align 4, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1087_count);
  *llvm_cbe_tmp__305 = llvm_cbe_tmp__304;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__304);
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = sext i32 %%12 to i64, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1088_count);
  llvm_cbe_tmp__306 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__285);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__306);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 5, i64 %%5, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1089_count);
  llvm_cbe_tmp__307 = (signed int *)(&llvm_cbe_search->field5[(((signed long long )llvm_cbe_tmp__278))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__278));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = load i32* %%34, align 4, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1090_count);
  llvm_cbe_tmp__308 = (unsigned int )*llvm_cbe_tmp__307;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__308);
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = sext i32 %%35 to i64, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1091_count);
  llvm_cbe_tmp__309 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__308);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__309);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = getelementptr inbounds [2 x [18 x i16]]* @aesl_internal_totalDepth.parityMove, i64 0, i64 %%36, i64 %%33, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1092_count);
  llvm_cbe_tmp__310 = (signed short *)(&aesl_internal_totalDepth_OC_parityMove[(((signed long long )llvm_cbe_tmp__309))
#ifdef AESL_BC_SIM
 % 2
#endif
][(((signed long long )llvm_cbe_tmp__306))
#ifdef AESL_BC_SIM
 % 18
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__309));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__306));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__309) < 2)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_totalDepth.parityMove' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )llvm_cbe_tmp__306) < 18)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_totalDepth.parityMove' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = load i16* %%37, align 2, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1093_count);
  llvm_cbe_tmp__311 = (unsigned short )*llvm_cbe_tmp__310;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__311);
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = sext i16 %%38 to i32, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1094_count);
  llvm_cbe_tmp__312 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__311);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__312);
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 5, i64 %%22, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1095_count);
  llvm_cbe_tmp__313 = (signed int *)(&llvm_cbe_search->field5[(((signed long long )llvm_cbe_tmp__295))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__295));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%39, i32* %%40, align 4, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1096_count);
  *llvm_cbe_tmp__313 = llvm_cbe_tmp__312;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__312);
  if (((llvm_cbe_tmp__294&4294967295U) == (llvm_cbe_depthPhase1&4294967295U))) {
    goto llvm_cbe__2e__crit_edge18;
  } else {
    llvm_cbe_storemerge15__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__294;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph17;
  }

  } while (1); /* end of syntactic loop '.lr.ph17' */
llvm_cbe__2e__crit_edge18:
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = sext i32 %%depthPhase1 to i64, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1117_count);
  llvm_cbe_tmp__314 = (unsigned long long )((signed long long )(signed int )llvm_cbe_depthPhase1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__314);
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 6, i64 %%41, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1118_count);
  llvm_cbe_tmp__315 = (signed int *)(&llvm_cbe_search->field6[(((signed long long )llvm_cbe_tmp__314))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__314));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = load i32* %%42, align 4, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1119_count);
  llvm_cbe_tmp__316 = (unsigned int )*llvm_cbe_tmp__315;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__316);
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = mul nsw i32 %%43, 24, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1120_count);
  llvm_cbe_tmp__317 = (unsigned int )((unsigned int )(llvm_cbe_tmp__316&4294967295ull)) * ((unsigned int )(24u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__317&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 7, i64 %%41, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1121_count);
  llvm_cbe_tmp__318 = (signed int *)(&llvm_cbe_search->field7[(((signed long long )llvm_cbe_tmp__314))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__314));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = load i32* %%45, align 4, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1122_count);
  llvm_cbe_tmp__319 = (unsigned int )*llvm_cbe_tmp__318;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__319);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = add nsw i32 %%44, %%46, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1123_count);
  llvm_cbe_tmp__320 = (unsigned int )((unsigned int )(llvm_cbe_tmp__317&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__319&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__320&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = shl i32 %%47, 1, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1124_count);
  llvm_cbe_tmp__321 = (unsigned int )llvm_cbe_tmp__320 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__321);
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 5, i64 %%41, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1125_count);
  llvm_cbe_tmp__322 = (signed int *)(&llvm_cbe_search->field5[(((signed long long )llvm_cbe_tmp__314))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__314));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = load i32* %%49, align 4, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1126_count);
  llvm_cbe_tmp__323 = (unsigned int )*llvm_cbe_tmp__322;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__323);
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = add nsw i32 %%48, %%50, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1127_count);
  llvm_cbe_tmp__324 = (unsigned int )((unsigned int )(llvm_cbe_tmp__321&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__323&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__324&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = tail call signext i8 @getPruning(i8* %%Slice_URFtoDLF_Parity_Prun2, i32 %%51), !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1128_count);
  llvm_cbe_tmp__325 = (unsigned char ) /*tail*/ getPruning(( char *)llvm_cbe_Slice_URFtoDLF_Parity_Prun2, llvm_cbe_tmp__324);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__324);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__325);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = sext i8 %%52 to i32, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1129_count);
  llvm_cbe_tmp__326 = (unsigned int )((signed int )( char )llvm_cbe_tmp__325);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__326);
  if ((((signed int )llvm_cbe_tmp__326) > ((signed int )llvm_cbe__2e_))) {
    llvm_cbe_tmp__476__PHI_TEMPORARY = (unsigned int )4294967295u;   /* for PHI node */
    goto llvm_cbe__2e_loopexit;
  } else {
    goto llvm_cbe__2e_preheader;
  }

llvm_cbe__2e_preheader:
  if ((((signed int )llvm_cbe_depthPhase1) > ((signed int )0u))) {
    llvm_cbe_storemerge114__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  } else {
    goto llvm_cbe__2e__crit_edge;
  }

  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge114 = phi i32 [ %%71, %%.lr.ph ], [ 0, %%.preheader  for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_storemerge114_count);
  llvm_cbe_storemerge114 = (unsigned int )llvm_cbe_storemerge114__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge114 = 0x%X",llvm_cbe_storemerge114);
printf("\n = 0x%X",llvm_cbe_tmp__343);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = sext i32 %%storemerge114 to i64, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1154_count);
  llvm_cbe_tmp__327 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge114);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__327);
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 0, i64 %%55, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1155_count);
  llvm_cbe_tmp__328 = (signed int *)(&llvm_cbe_search->field0[(((signed long long )llvm_cbe_tmp__327))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__327));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = load i32* %%56, align 4, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1156_count);
  llvm_cbe_tmp__329 = (unsigned int )*llvm_cbe_tmp__328;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__329);
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = mul nsw i32 %%57, 3, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1157_count);
  llvm_cbe_tmp__330 = (unsigned int )((unsigned int )(llvm_cbe_tmp__329&4294967295ull)) * ((unsigned int )(3u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__330&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 1, i64 %%55, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1158_count);
  llvm_cbe_tmp__331 = (signed int *)(&llvm_cbe_search->field1[(((signed long long )llvm_cbe_tmp__327))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__327));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = load i32* %%59, align 4, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1159_count);
  llvm_cbe_tmp__332 = (unsigned int )*llvm_cbe_tmp__331;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__332);
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = add i32 %%60, -1, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1160_count);
  llvm_cbe_tmp__333 = (unsigned int )((unsigned int )(llvm_cbe_tmp__332&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__333&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = add i32 %%61, %%58, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1161_count);
  llvm_cbe_tmp__334 = (unsigned int )((unsigned int )(llvm_cbe_tmp__333&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__330&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__334&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 8, i64 %%55, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1172_count);
  llvm_cbe_tmp__335 = (signed int *)(&llvm_cbe_search->field8[(((signed long long )llvm_cbe_tmp__327))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__327));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%64 = load i32* %%63, align 4, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1173_count);
  llvm_cbe_tmp__336 = (unsigned int )*llvm_cbe_tmp__335;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__336);
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = mul nsw i32 %%64, 18, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1174_count);
  llvm_cbe_tmp__337 = (unsigned int )((unsigned int )(llvm_cbe_tmp__336&4294967295ull)) * ((unsigned int )(18u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__337&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = add nsw i32 %%65, %%62, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1175_count);
  llvm_cbe_tmp__338 = (unsigned int )((unsigned int )(llvm_cbe_tmp__337&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__334&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__338&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = sext i32 %%66 to i64, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1176_count);
  llvm_cbe_tmp__339 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__338);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__339);
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = getelementptr inbounds i16* %%URtoUL_Move2, i64 %%67, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1177_count);
  llvm_cbe_tmp__340 = (signed short *)(&llvm_cbe_URtoUL_Move2[(((signed long long )llvm_cbe_tmp__339))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__339));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = load i16* %%68, align 2, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1178_count);
  llvm_cbe_tmp__341 = (unsigned short )*llvm_cbe_tmp__340;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__341);
if (AESL_DEBUG_TRACE)
printf("\n  %%70 = sext i16 %%69 to i32, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1179_count);
  llvm_cbe_tmp__342 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__341);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__342);
if (AESL_DEBUG_TRACE)
printf("\n  %%71 = add nsw i32 %%storemerge114, 1, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1180_count);
  llvm_cbe_tmp__343 = (unsigned int )((unsigned int )(llvm_cbe_storemerge114&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__343&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = sext i32 %%71 to i64, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1181_count);
  llvm_cbe_tmp__344 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__343);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__344);
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 8, i64 %%72, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1182_count);
  llvm_cbe_tmp__345 = (signed int *)(&llvm_cbe_search->field8[(((signed long long )llvm_cbe_tmp__344))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__344));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%70, i32* %%73, align 4, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1183_count);
  *llvm_cbe_tmp__345 = llvm_cbe_tmp__342;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__342);
if (AESL_DEBUG_TRACE)
printf("\n  %%74 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 9, i64 %%55, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1184_count);
  llvm_cbe_tmp__346 = (signed int *)(&llvm_cbe_search->field9[(((signed long long )llvm_cbe_tmp__327))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__327));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%75 = load i32* %%74, align 4, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1185_count);
  llvm_cbe_tmp__347 = (unsigned int )*llvm_cbe_tmp__346;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__347);
if (AESL_DEBUG_TRACE)
printf("\n  %%76 = mul nsw i32 %%75, 18, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1186_count);
  llvm_cbe_tmp__348 = (unsigned int )((unsigned int )(llvm_cbe_tmp__347&4294967295ull)) * ((unsigned int )(18u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__348&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%77 = add nsw i32 %%76, %%62, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1187_count);
  llvm_cbe_tmp__349 = (unsigned int )((unsigned int )(llvm_cbe_tmp__348&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__334&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__349&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%78 = sext i32 %%77 to i64, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1188_count);
  llvm_cbe_tmp__350 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__349);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__350);
if (AESL_DEBUG_TRACE)
printf("\n  %%79 = getelementptr inbounds i16* %%UBtoDF_Move2, i64 %%78, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1189_count);
  llvm_cbe_tmp__351 = (signed short *)(&llvm_cbe_UBtoDF_Move2[(((signed long long )llvm_cbe_tmp__350))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__350));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%80 = load i16* %%79, align 2, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1190_count);
  llvm_cbe_tmp__352 = (unsigned short )*llvm_cbe_tmp__351;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__352);
if (AESL_DEBUG_TRACE)
printf("\n  %%81 = sext i16 %%80 to i32, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1191_count);
  llvm_cbe_tmp__353 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__352);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__353);
if (AESL_DEBUG_TRACE)
printf("\n  %%82 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 9, i64 %%72, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1192_count);
  llvm_cbe_tmp__354 = (signed int *)(&llvm_cbe_search->field9[(((signed long long )llvm_cbe_tmp__344))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__344));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%81, i32* %%82, align 4, !dbg !18 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1193_count);
  *llvm_cbe_tmp__354 = llvm_cbe_tmp__353;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__353);
  if (((llvm_cbe_tmp__343&4294967295U) == (llvm_cbe_depthPhase1&4294967295U))) {
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge114__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__343;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  }

  } while (1); /* end of syntactic loop '.lr.ph' */
llvm_cbe__2e__crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%83 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 8, i64 %%41, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1214_count);
  llvm_cbe_tmp__355 = (signed int *)(&llvm_cbe_search->field8[(((signed long long )llvm_cbe_tmp__314))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__314));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%84 = load i32* %%83, align 4, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1215_count);
  llvm_cbe_tmp__356 = (unsigned int )*llvm_cbe_tmp__355;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__356);
if (AESL_DEBUG_TRACE)
printf("\n  %%85 = mul nsw i32 %%84, 336, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1216_count);
  llvm_cbe_tmp__357 = (unsigned int )((unsigned int )(llvm_cbe_tmp__356&4294967295ull)) * ((unsigned int )(336u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__357&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%86 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 9, i64 %%41, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1217_count);
  llvm_cbe_tmp__358 = (signed int *)(&llvm_cbe_search->field9[(((signed long long )llvm_cbe_tmp__314))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__314));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%87 = load i32* %%86, align 4, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1218_count);
  llvm_cbe_tmp__359 = (unsigned int )*llvm_cbe_tmp__358;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__359);
if (AESL_DEBUG_TRACE)
printf("\n  %%88 = add nsw i32 %%85, %%87, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1219_count);
  llvm_cbe_tmp__360 = (unsigned int )((unsigned int )(llvm_cbe_tmp__357&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__359&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__360&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%89 = sext i32 %%88 to i64, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1220_count);
  llvm_cbe_tmp__361 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__360);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__361);
if (AESL_DEBUG_TRACE)
printf("\n  %%90 = getelementptr inbounds i16* %%MergeURtoULandUBtoDF2, i64 %%89, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1221_count);
  llvm_cbe_tmp__362 = (signed short *)(&llvm_cbe_MergeURtoULandUBtoDF2[(((signed long long )llvm_cbe_tmp__361))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__361));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%91 = load i16* %%90, align 2, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1222_count);
  llvm_cbe_tmp__363 = (unsigned short )*llvm_cbe_tmp__362;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__363);
if (AESL_DEBUG_TRACE)
printf("\n  %%92 = sext i16 %%91 to i32, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1223_count);
  llvm_cbe_tmp__364 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__363);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__364);
if (AESL_DEBUG_TRACE)
printf("\n  %%93 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 10, i64 %%41, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1224_count);
  llvm_cbe_tmp__365 = (signed int *)(&llvm_cbe_search->field10[(((signed long long )llvm_cbe_tmp__314))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__314));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%92, i32* %%93, align 4, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1225_count);
  *llvm_cbe_tmp__365 = llvm_cbe_tmp__364;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__364);
if (AESL_DEBUG_TRACE)
printf("\n  %%94 = mul nsw i32 %%92, 24, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1226_count);
  llvm_cbe_tmp__366 = (unsigned int )((unsigned int )(llvm_cbe_tmp__364&4294967295ull)) * ((unsigned int )(24u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__366&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%95 = load i32* %%45, align 4, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1227_count);
  llvm_cbe_tmp__367 = (unsigned int )*llvm_cbe_tmp__318;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__367);
if (AESL_DEBUG_TRACE)
printf("\n  %%96 = add nsw i32 %%94, %%95, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1228_count);
  llvm_cbe_tmp__368 = (unsigned int )((unsigned int )(llvm_cbe_tmp__366&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__367&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__368&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%97 = shl i32 %%96, 1, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1229_count);
  llvm_cbe_tmp__369 = (unsigned int )llvm_cbe_tmp__368 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__369);
if (AESL_DEBUG_TRACE)
printf("\n  %%98 = load i32* %%49, align 4, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1230_count);
  llvm_cbe_tmp__370 = (unsigned int )*llvm_cbe_tmp__322;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__370);
if (AESL_DEBUG_TRACE)
printf("\n  %%99 = add nsw i32 %%97, %%98, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1231_count);
  llvm_cbe_tmp__371 = (unsigned int )((unsigned int )(llvm_cbe_tmp__369&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__370&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__371&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%100 = tail call signext i8 @getPruning(i8* %%Slice_URtoDF_Parity_Prun2, i32 %%99), !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1232_count);
  llvm_cbe_tmp__372 = (unsigned char ) /*tail*/ getPruning(( char *)llvm_cbe_Slice_URtoDF_Parity_Prun2, llvm_cbe_tmp__371);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__371);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__372);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%101 = sext i8 %%100 to i32, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1233_count);
  llvm_cbe_tmp__373 = (unsigned int )((signed int )( char )llvm_cbe_tmp__372);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__373);
  if ((((signed int )llvm_cbe_tmp__373) > ((signed int )llvm_cbe__2e_))) {
    llvm_cbe_tmp__476__PHI_TEMPORARY = (unsigned int )4294967295u;   /* for PHI node */
    goto llvm_cbe__2e_loopexit;
  } else {
    goto llvm_cbe_tmp__477;
  }

llvm_cbe_tmp__477:
if (AESL_DEBUG_TRACE)
printf("\n  %%105 = select i1 %%104, i32 %%53, i32 %%101, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1240_count);
  llvm_cbe_tmp__374 = (unsigned int )(((((signed int )llvm_cbe_tmp__326) > ((signed int )llvm_cbe_tmp__373))) ? ((unsigned int )llvm_cbe_tmp__326) : ((unsigned int )llvm_cbe_tmp__373));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__374);
if (AESL_DEBUG_TRACE)
printf("\n  %%106 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 12, i64 %%41, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1241_count);
  llvm_cbe_tmp__375 = (signed int *)(&llvm_cbe_search->field12[(((signed long long )llvm_cbe_tmp__314))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__314));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%105, i32* %%106, align 4, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1242_count);
  *llvm_cbe_tmp__375 = llvm_cbe_tmp__374;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__374);
  if (((llvm_cbe_tmp__374&4294967295U) == (0u&4294967295U))) {
    llvm_cbe_tmp__476__PHI_TEMPORARY = (unsigned int )llvm_cbe_depthPhase1;   /* for PHI node */
    goto llvm_cbe__2e_loopexit;
  } else {
    goto llvm_cbe_tmp__478;
  }

llvm_cbe_tmp__478:
if (AESL_DEBUG_TRACE)
printf("\n  %%109 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 1, i64 %%41, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1306_count);
  llvm_cbe_tmp__376 = (signed int *)(&llvm_cbe_search->field1[(((signed long long )llvm_cbe_tmp__314))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__314));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%109, align 4, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1307_count);
  *llvm_cbe_tmp__376 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  %%110 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 0, i64 %%41, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1308_count);
  llvm_cbe_tmp__377 = (signed int *)(&llvm_cbe_search->field0[(((signed long long )llvm_cbe_tmp__314))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__314));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%110, align 4, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1309_count);
  *llvm_cbe_tmp__377 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  %%111 = add nsw i32 %%depthPhase1, 1, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1310_count);
  llvm_cbe_tmp__378 = (unsigned int )((unsigned int )(llvm_cbe_depthPhase1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__378&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%112 = sext i32 %%111 to i64, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1311_count);
  llvm_cbe_tmp__379 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__378);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__379);
if (AESL_DEBUG_TRACE)
printf("\n  %%113 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 12, i64 %%112, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1312_count);
  llvm_cbe_tmp__380 = (signed int *)(&llvm_cbe_search->field12[(((signed long long )llvm_cbe_tmp__379))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__379));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%113, align 4, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1313_count);
  *llvm_cbe_tmp__380 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  llvm_cbe_tmp__381__PHI_TEMPORARY = (bool )1;   /* for PHI node */
  llvm_cbe_tmp__382__PHI_TEMPORARY = (unsigned int )llvm_cbe_depthPhase1;   /* for PHI node */
  llvm_cbe_tmp__383__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
  goto llvm_cbe__2e_backedge;

  do {     /* Syntactic loop '.backedge' to make GCC happy */
llvm_cbe__2e_backedge:
if (AESL_DEBUG_TRACE)
printf("\n  %%114 = phi i1 [ true, %%108 ], [ true, %%.critedge.thread ], [ false, %%.us-lcssa.us ], !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1315_count);
  llvm_cbe_tmp__381 = (bool )((llvm_cbe_tmp__381__PHI_TEMPORARY)&1);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__381);
printf("\n = 0x%X",1);
printf("\n = 0x%X",1);
printf("\n = 0x%X",0);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%115 = phi i32 [ %%depthPhase1, %%108 ], [ %%174, %%.critedge.thread ], [ %%151, %%.us-lcssa.us  for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1316_count);
  llvm_cbe_tmp__382 = (unsigned int )llvm_cbe_tmp__382__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__382);
printf("\ndepthPhase1 = 0x%X",llvm_cbe_depthPhase1);
printf("\n = 0x%X",llvm_cbe_tmp__417);
printf("\n = 0x%X",llvm_cbe_tmp__407);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%116 = phi i32 [ 1, %%108 ], [ %%173, %%.critedge.thread ], [ %%116, %%.us-lcssa.us  for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1317_count);
  llvm_cbe_tmp__383 = (unsigned int )llvm_cbe_tmp__383__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__383);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",llvm_cbe_tmp__416);
printf("\n = 0x%X",llvm_cbe_tmp__383);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%117 = sub i32 %%depthPhase1, %%115, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1318_count);
  llvm_cbe_tmp__384 = (unsigned int )((unsigned int )(llvm_cbe_depthPhase1&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__382&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__384&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%118 = add i32 %%117, %%116, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1319_count);
  llvm_cbe_tmp__385 = (unsigned int )((unsigned int )(llvm_cbe_tmp__384&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__383&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__385&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%119 = add nsw i32 %%115, 1, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1320_count);
  llvm_cbe_tmp__386 = (unsigned int )((unsigned int )(llvm_cbe_tmp__382&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__386&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%120 = sext i32 %%119 to i64, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1321_count);
  llvm_cbe_tmp__387 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__386);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__387);
if (AESL_DEBUG_TRACE)
printf("\n  %%121 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 12, i64 %%120, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1322_count);
  llvm_cbe_tmp__388 = (signed int *)(&llvm_cbe_search->field12[(((signed long long )llvm_cbe_tmp__387))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__387));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%122 = load i32* %%121, align 4, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1323_count);
  llvm_cbe_tmp__389 = (unsigned int )*llvm_cbe_tmp__388;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__389);
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond = and i1 %%123, %%114, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_or_2e_cond_count);
  llvm_cbe_or_2e_cond = (bool )(((((signed int )llvm_cbe_tmp__385) > ((signed int )llvm_cbe_tmp__389)) & llvm_cbe_tmp__381)&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond = 0x%X\n", llvm_cbe_or_2e_cond);
  if (llvm_cbe_or_2e_cond) {
    goto llvm_cbe_tmp__479;
  } else {
    goto llvm_cbe_tmp__480;
  }

llvm_cbe__2e_us_2d_lcssa_2e_us:
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%159, i32* %%136, align 4, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1537_count);
  *llvm_cbe_tmp__398 = llvm_cbe_tmp__412;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__412);
  if (((llvm_cbe_tmp__382&4294967295U) == (llvm_cbe_depthPhase1&4294967295U))) {
    goto llvm_cbe_tmp__481;
  } else {
    llvm_cbe_tmp__381__PHI_TEMPORARY = (bool )0;   /* for PHI node */
    llvm_cbe_tmp__382__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__407;   /* for PHI node */
    llvm_cbe_tmp__383__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__383;   /* for PHI node */
    goto llvm_cbe__2e_backedge;
  }

  do {     /* Syntactic loop '.critedge2' to make GCC happy */
llvm_cbe__2e_critedge2:
if (AESL_DEBUG_TRACE)
printf("\n  %%158 = phi i32 [ %%159, %%167 ], [ %%137, %%148 ], !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1533_count);
  llvm_cbe_tmp__411 = (unsigned int )llvm_cbe_tmp__411__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__411);
printf("\n = 0x%X",llvm_cbe_tmp__412);
printf("\n = 0x%X",llvm_cbe_tmp__399);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%159 = add nsw i32 %%158, 1, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1534_count);
  llvm_cbe_tmp__412 = (unsigned int )((unsigned int )(llvm_cbe_tmp__411&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__412&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__412) > ((signed int )5u))) {
    goto llvm_cbe__2e_us_2d_lcssa_2e_us;
  } else {
    goto llvm_cbe_tmp__482;
  }

llvm_cbe_tmp__483:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge = phi i32 [ 1, %%166 ], [ 2, %%165  for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_storemerge_count);
  llvm_cbe_storemerge = (unsigned int )llvm_cbe_storemerge__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge = 0x%X",llvm_cbe_storemerge);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",2u);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%storemerge, i32* %%149, align 4, !dbg !21 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1555_count);
  *llvm_cbe_tmp__406 = llvm_cbe_storemerge;
if (AESL_DEBUG_TRACE)
printf("\nstoremerge = 0x%X\n", llvm_cbe_storemerge);
if (AESL_DEBUG_TRACE)
printf("\n  %%168 = load i32* %%153, align 4, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1559_count);
  llvm_cbe_tmp__414 = (unsigned int )*llvm_cbe_tmp__409;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__414);
if (AESL_DEBUG_TRACE)
printf("\n  %%170 = add nsw i32 %%168, -3, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1561_count);
  llvm_cbe_tmp__415 = (unsigned int )((unsigned int )(llvm_cbe_tmp__414&4294967295ull)) + ((unsigned int )(4294967293u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__415&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond8 = or i1 %%169, %%17 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_or_2e_cond8_count);
  llvm_cbe_or_2e_cond8 = (bool )((((llvm_cbe_tmp__414&4294967295U) == (llvm_cbe_tmp__412&4294967295U)) | ((llvm_cbe_tmp__415&4294967295U) == (llvm_cbe_tmp__412&4294967295U)))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond8 = 0x%X\n", llvm_cbe_or_2e_cond8);
  if (llvm_cbe_or_2e_cond8) {
    llvm_cbe_tmp__411__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__412;   /* for PHI node */
    goto llvm_cbe__2e_critedge2;
  } else {
    llvm_cbe__2e_lcssa10__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__412;   /* for PHI node */
    goto llvm_cbe__2e_critedge_2e_thread_2e_loopexit;
  }

llvm_cbe_tmp__482:
  switch (((unsigned int )(llvm_cbe_tmp__411&4294967295ull))) {
  default:
    llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned int )2u;   /* for PHI node */
    goto llvm_cbe_tmp__483;
;
  case ((unsigned int )(2u&4294967295ull)):
    goto llvm_cbe_tmp__484;
    break;
  case ((unsigned int )(4294967295u&4294967295ull)):
    goto llvm_cbe_tmp__484;
    break;
  }
llvm_cbe_tmp__484:
  llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
  goto llvm_cbe_tmp__483;

  } while (1); /* end of syntactic loop '.critedge2' */
llvm_cbe_tmp__485:
if (AESL_DEBUG_TRACE)
printf("\n  %%149 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 1, i64 %%135, !dbg !21 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1462_count);
  llvm_cbe_tmp__406 = (signed int *)(&llvm_cbe_search->field1[(((signed long long )llvm_cbe_tmp__397))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__397));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%151 = add nsw i32 %%115, -1, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1464_count);
  llvm_cbe_tmp__407 = (unsigned int )((unsigned int )(llvm_cbe_tmp__382&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__407&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%152 = sext i32 %%151 to i64, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1518_count);
  llvm_cbe_tmp__408 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__407);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__408);
if (AESL_DEBUG_TRACE)
printf("\n  %%153 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 0, i64 %%152, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1519_count);
  llvm_cbe_tmp__409 = (signed int *)(&llvm_cbe_search->field0[(((signed long long )llvm_cbe_tmp__408))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__408));
}
  if (((llvm_cbe_tmp__382&4294967295U) == (llvm_cbe_depthPhase1&4294967295U))) {
    goto llvm_cbe__2e_split_2e_us;
  } else {
    llvm_cbe_tmp__411__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__399;   /* for PHI node */
    goto llvm_cbe__2e_critedge2;
  }

llvm_cbe_tmp__486:
if (AESL_DEBUG_TRACE)
printf("\n  %%139 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 1, i64 %%135, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1450_count);
  llvm_cbe_tmp__400 = (signed int *)(&llvm_cbe_search->field1[(((signed long long )llvm_cbe_tmp__397))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__397));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%140 = load i32* %%139, align 4, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1451_count);
  llvm_cbe_tmp__401 = (unsigned int )*llvm_cbe_tmp__400;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__401);
if (AESL_DEBUG_TRACE)
printf("\n  %%141 = add nsw i32 %%140, 1, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1452_count);
  llvm_cbe_tmp__402 = (unsigned int )((unsigned int )(llvm_cbe_tmp__401&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__402&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%141, i32* %%139, align 4, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1453_count);
  *llvm_cbe_tmp__400 = llvm_cbe_tmp__402;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__402);
  if ((((signed int )llvm_cbe_tmp__402) > ((signed int )3u))) {
    goto llvm_cbe_tmp__485;
  } else {
    goto llvm_cbe_tmp__487;
  }

llvm_cbe_tmp__480:
if (AESL_DEBUG_TRACE)
printf("\n  %%135 = sext i32 %%115 to i64, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1446_count);
  llvm_cbe_tmp__397 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__382);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__397);
if (AESL_DEBUG_TRACE)
printf("\n  %%136 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 0, i64 %%135, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1447_count);
  llvm_cbe_tmp__398 = (signed int *)(&llvm_cbe_search->field0[(((signed long long )llvm_cbe_tmp__397))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__397));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%137 = load i32* %%136, align 4, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1448_count);
  llvm_cbe_tmp__399 = (unsigned int )*llvm_cbe_tmp__398;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__399);
  switch (((unsigned int )(llvm_cbe_tmp__399&4294967295ull))) {
  default:
    goto llvm_cbe_tmp__488;
;
  case ((unsigned int )(3u&4294967295ull)):
    goto llvm_cbe_tmp__486;
    break;
  case ((unsigned int )(0u&4294967295ull)):
    goto llvm_cbe_tmp__486;
    break;
  }
llvm_cbe_tmp__488:
if (AESL_DEBUG_TRACE)
printf("\n  %%144 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 1, i64 %%135, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1456_count);
  llvm_cbe_tmp__403 = (signed int *)(&llvm_cbe_search->field1[(((signed long long )llvm_cbe_tmp__397))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__397));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%145 = load i32* %%144, align 4, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1457_count);
  llvm_cbe_tmp__404 = (unsigned int )*llvm_cbe_tmp__403;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__404);
if (AESL_DEBUG_TRACE)
printf("\n  %%146 = add nsw i32 %%145, 2, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1458_count);
  llvm_cbe_tmp__405 = (unsigned int )((unsigned int )(llvm_cbe_tmp__404&4294967295ull)) + ((unsigned int )(2u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__405&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%146, i32* %%144, align 4, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1459_count);
  *llvm_cbe_tmp__403 = llvm_cbe_tmp__405;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__405);
  if ((((signed int )llvm_cbe_tmp__405) > ((signed int )3u))) {
    goto llvm_cbe_tmp__485;
  } else {
    goto llvm_cbe_tmp__487;
  }

llvm_cbe__2e_critedge_2e_thread:
if (AESL_DEBUG_TRACE)
printf("\n  %%173 = phi i32 [ %%116, %%.critedge ], [ %%116, %%172 ], [ %%164, %%163 ], [ %%116, %%.critedge.thread.loopexit  for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1571_count);
  llvm_cbe_tmp__416 = (unsigned int )llvm_cbe_tmp__416__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__416);
printf("\n = 0x%X",llvm_cbe_tmp__383);
printf("\n = 0x%X",llvm_cbe_tmp__383);
printf("\n = 0x%X",llvm_cbe_tmp__413);
printf("\n = 0x%X",llvm_cbe_tmp__383);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%174 = phi i32 [ %%119, %%.critedge ], [ %%115, %%172 ], [ %%depthPhase1, %%163 ], [ %%115, %%.critedge.thread.loopexit  for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1572_count);
  llvm_cbe_tmp__417 = (unsigned int )llvm_cbe_tmp__417__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__417);
printf("\n = 0x%X",llvm_cbe_tmp__386);
printf("\n = 0x%X",llvm_cbe_tmp__382);
printf("\ndepthPhase1 = 0x%X",llvm_cbe_depthPhase1);
printf("\n = 0x%X",llvm_cbe_tmp__382);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%175 = sext i32 %%174 to i64, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1573_count);
  llvm_cbe_tmp__418 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__417);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__418);
if (AESL_DEBUG_TRACE)
printf("\n  %%176 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 0, i64 %%175, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1574_count);
  llvm_cbe_tmp__419 = (signed int *)(&llvm_cbe_search->field0[(((signed long long )llvm_cbe_tmp__418))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__418));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%177 = load i32* %%176, align 4, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1575_count);
  llvm_cbe_tmp__420 = (unsigned int )*llvm_cbe_tmp__419;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__420);
if (AESL_DEBUG_TRACE)
printf("\n  %%178 = mul nsw i32 %%177, 3, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1576_count);
  llvm_cbe_tmp__421 = (unsigned int )((unsigned int )(llvm_cbe_tmp__420&4294967295ull)) * ((unsigned int )(3u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__421&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%179 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 1, i64 %%175, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1577_count);
  llvm_cbe_tmp__422 = (signed int *)(&llvm_cbe_search->field1[(((signed long long )llvm_cbe_tmp__418))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__418));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%180 = load i32* %%179, align 4, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1578_count);
  llvm_cbe_tmp__423 = (unsigned int )*llvm_cbe_tmp__422;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__423);
if (AESL_DEBUG_TRACE)
printf("\n  %%181 = add i32 %%180, -1, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1579_count);
  llvm_cbe_tmp__424 = (unsigned int )((unsigned int )(llvm_cbe_tmp__423&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__424&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%182 = add i32 %%181, %%178, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1580_count);
  llvm_cbe_tmp__425 = (unsigned int )((unsigned int )(llvm_cbe_tmp__424&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__421&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__425&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%183 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 6, i64 %%175, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1591_count);
  llvm_cbe_tmp__426 = (signed int *)(&llvm_cbe_search->field6[(((signed long long )llvm_cbe_tmp__418))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__418));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%184 = load i32* %%183, align 4, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1592_count);
  llvm_cbe_tmp__427 = (unsigned int )*llvm_cbe_tmp__426;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__427);
if (AESL_DEBUG_TRACE)
printf("\n  %%185 = mul nsw i32 %%184, 18, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1593_count);
  llvm_cbe_tmp__428 = (unsigned int )((unsigned int )(llvm_cbe_tmp__427&4294967295ull)) * ((unsigned int )(18u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__428&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%186 = add nsw i32 %%185, %%182, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1594_count);
  llvm_cbe_tmp__429 = (unsigned int )((unsigned int )(llvm_cbe_tmp__428&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__425&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__429&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%187 = sext i32 %%186 to i64, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1595_count);
  llvm_cbe_tmp__430 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__429);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__430);
if (AESL_DEBUG_TRACE)
printf("\n  %%188 = getelementptr inbounds i16* %%URFtoDLF_Move2, i64 %%187, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1596_count);
  llvm_cbe_tmp__431 = (signed short *)(&llvm_cbe_URFtoDLF_Move2[(((signed long long )llvm_cbe_tmp__430))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__430));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%189 = load i16* %%188, align 2, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1597_count);
  llvm_cbe_tmp__432 = (unsigned short )*llvm_cbe_tmp__431;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__432);
if (AESL_DEBUG_TRACE)
printf("\n  %%190 = sext i16 %%189 to i32, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1598_count);
  llvm_cbe_tmp__433 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__432);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__433);
if (AESL_DEBUG_TRACE)
printf("\n  %%191 = add nsw i32 %%174, 1, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1599_count);
  llvm_cbe_tmp__434 = (unsigned int )((unsigned int )(llvm_cbe_tmp__417&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__434&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%192 = sext i32 %%191 to i64, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1600_count);
  llvm_cbe_tmp__435 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__434);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__435);
if (AESL_DEBUG_TRACE)
printf("\n  %%193 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 6, i64 %%192, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1601_count);
  llvm_cbe_tmp__436 = (signed int *)(&llvm_cbe_search->field6[(((signed long long )llvm_cbe_tmp__435))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__435));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%190, i32* %%193, align 4, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1602_count);
  *llvm_cbe_tmp__436 = llvm_cbe_tmp__433;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__433);
if (AESL_DEBUG_TRACE)
printf("\n  %%194 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 7, i64 %%175, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1603_count);
  llvm_cbe_tmp__437 = (signed int *)(&llvm_cbe_search->field7[(((signed long long )llvm_cbe_tmp__418))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__418));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%195 = load i32* %%194, align 4, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1604_count);
  llvm_cbe_tmp__438 = (unsigned int )*llvm_cbe_tmp__437;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__438);
if (AESL_DEBUG_TRACE)
printf("\n  %%196 = mul nsw i32 %%195, 18, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1605_count);
  llvm_cbe_tmp__439 = (unsigned int )((unsigned int )(llvm_cbe_tmp__438&4294967295ull)) * ((unsigned int )(18u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__439&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%197 = add nsw i32 %%196, %%182, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1606_count);
  llvm_cbe_tmp__440 = (unsigned int )((unsigned int )(llvm_cbe_tmp__439&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__425&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__440&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%198 = sext i32 %%197 to i64, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1607_count);
  llvm_cbe_tmp__441 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__440);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__441);
if (AESL_DEBUG_TRACE)
printf("\n  %%199 = getelementptr inbounds i16* %%FRtoBR_Move2, i64 %%198, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1608_count);
  llvm_cbe_tmp__442 = (signed short *)(&llvm_cbe_FRtoBR_Move2[(((signed long long )llvm_cbe_tmp__441))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__441));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%200 = load i16* %%199, align 2, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1609_count);
  llvm_cbe_tmp__443 = (unsigned short )*llvm_cbe_tmp__442;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__443);
if (AESL_DEBUG_TRACE)
printf("\n  %%201 = sext i16 %%200 to i32, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1610_count);
  llvm_cbe_tmp__444 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__443);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__444);
if (AESL_DEBUG_TRACE)
printf("\n  %%202 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 7, i64 %%192, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1611_count);
  llvm_cbe_tmp__445 = (signed int *)(&llvm_cbe_search->field7[(((signed long long )llvm_cbe_tmp__435))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__435));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%201, i32* %%202, align 4, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1612_count);
  *llvm_cbe_tmp__445 = llvm_cbe_tmp__444;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__444);
if (AESL_DEBUG_TRACE)
printf("\n  %%203 = sext i32 %%182 to i64, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1613_count);
  llvm_cbe_tmp__446 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__425);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__446);
if (AESL_DEBUG_TRACE)
printf("\n  %%204 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 5, i64 %%175, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1614_count);
  llvm_cbe_tmp__447 = (signed int *)(&llvm_cbe_search->field5[(((signed long long )llvm_cbe_tmp__418))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__418));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%205 = load i32* %%204, align 4, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1615_count);
  llvm_cbe_tmp__448 = (unsigned int )*llvm_cbe_tmp__447;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__448);
if (AESL_DEBUG_TRACE)
printf("\n  %%206 = sext i32 %%205 to i64, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1616_count);
  llvm_cbe_tmp__449 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__448);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__449);
if (AESL_DEBUG_TRACE)
printf("\n  %%207 = getelementptr inbounds [2 x [18 x i16]]* @aesl_internal_totalDepth.parityMove, i64 0, i64 %%206, i64 %%203, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1617_count);
  llvm_cbe_tmp__450 = (signed short *)(&aesl_internal_totalDepth_OC_parityMove[(((signed long long )llvm_cbe_tmp__449))
#ifdef AESL_BC_SIM
 % 2
#endif
][(((signed long long )llvm_cbe_tmp__446))
#ifdef AESL_BC_SIM
 % 18
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__449));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__446));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__449) < 2)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_totalDepth.parityMove' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )llvm_cbe_tmp__446) < 18)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_totalDepth.parityMove' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%208 = load i16* %%207, align 2, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1618_count);
  llvm_cbe_tmp__451 = (unsigned short )*llvm_cbe_tmp__450;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__451);
if (AESL_DEBUG_TRACE)
printf("\n  %%209 = sext i16 %%208 to i32, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1619_count);
  llvm_cbe_tmp__452 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__451);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__452);
if (AESL_DEBUG_TRACE)
printf("\n  %%210 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 5, i64 %%192, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1620_count);
  llvm_cbe_tmp__453 = (signed int *)(&llvm_cbe_search->field5[(((signed long long )llvm_cbe_tmp__435))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__435));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%209, i32* %%210, align 4, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1621_count);
  *llvm_cbe_tmp__453 = llvm_cbe_tmp__452;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__452);
if (AESL_DEBUG_TRACE)
printf("\n  %%211 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 10, i64 %%175, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1622_count);
  llvm_cbe_tmp__454 = (signed int *)(&llvm_cbe_search->field10[(((signed long long )llvm_cbe_tmp__418))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__418));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%212 = load i32* %%211, align 4, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1623_count);
  llvm_cbe_tmp__455 = (unsigned int )*llvm_cbe_tmp__454;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__455);
if (AESL_DEBUG_TRACE)
printf("\n  %%213 = mul nsw i32 %%212, 18, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1624_count);
  llvm_cbe_tmp__456 = (unsigned int )((unsigned int )(llvm_cbe_tmp__455&4294967295ull)) * ((unsigned int )(18u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__456&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%214 = add nsw i32 %%213, %%182, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1625_count);
  llvm_cbe_tmp__457 = (unsigned int )((unsigned int )(llvm_cbe_tmp__456&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__425&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__457&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%215 = sext i32 %%214 to i64, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1626_count);
  llvm_cbe_tmp__458 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__457);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__458);
if (AESL_DEBUG_TRACE)
printf("\n  %%216 = getelementptr inbounds i16* %%URtoDF_Move2, i64 %%215, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1627_count);
  llvm_cbe_tmp__459 = (signed short *)(&llvm_cbe_URtoDF_Move2[(((signed long long )llvm_cbe_tmp__458))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__458));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%217 = load i16* %%216, align 2, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1628_count);
  llvm_cbe_tmp__460 = (unsigned short )*llvm_cbe_tmp__459;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__460);
if (AESL_DEBUG_TRACE)
printf("\n  %%218 = sext i16 %%217 to i32, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1629_count);
  llvm_cbe_tmp__461 = (unsigned int )((signed int )(signed short )llvm_cbe_tmp__460);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__461);
if (AESL_DEBUG_TRACE)
printf("\n  %%219 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 10, i64 %%192, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1630_count);
  llvm_cbe_tmp__462 = (signed int *)(&llvm_cbe_search->field10[(((signed long long )llvm_cbe_tmp__435))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__435));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%218, i32* %%219, align 4, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1631_count);
  *llvm_cbe_tmp__462 = llvm_cbe_tmp__461;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__461);
if (AESL_DEBUG_TRACE)
printf("\n  %%220 = mul nsw i32 %%218, 24, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1632_count);
  llvm_cbe_tmp__463 = (unsigned int )((unsigned int )(llvm_cbe_tmp__461&4294967295ull)) * ((unsigned int )(24u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__463&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%221 = add nsw i32 %%220, %%201, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1633_count);
  llvm_cbe_tmp__464 = (unsigned int )((unsigned int )(llvm_cbe_tmp__463&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__444&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__464&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%222 = shl i32 %%221, 1, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1634_count);
  llvm_cbe_tmp__465 = (unsigned int )llvm_cbe_tmp__464 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__465);
if (AESL_DEBUG_TRACE)
printf("\n  %%223 = add nsw i32 %%222, %%209, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1635_count);
  llvm_cbe_tmp__466 = (unsigned int )((unsigned int )(llvm_cbe_tmp__465&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__452&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__466&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%224 = tail call signext i8 @getPruning(i8* %%Slice_URtoDF_Parity_Prun2, i32 %%223), !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1636_count);
  llvm_cbe_tmp__467 = (unsigned char ) /*tail*/ getPruning(( char *)llvm_cbe_Slice_URtoDF_Parity_Prun2, llvm_cbe_tmp__466);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__466);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__467);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%225 = mul nsw i32 %%190, 24, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1637_count);
  llvm_cbe_tmp__468 = (unsigned int )((unsigned int )(llvm_cbe_tmp__433&4294967295ull)) * ((unsigned int )(24u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__468&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%226 = add nsw i32 %%225, %%201, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1638_count);
  llvm_cbe_tmp__469 = (unsigned int )((unsigned int )(llvm_cbe_tmp__468&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__444&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__469&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%227 = shl i32 %%226, 1, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1639_count);
  llvm_cbe_tmp__470 = (unsigned int )llvm_cbe_tmp__469 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__470);
if (AESL_DEBUG_TRACE)
printf("\n  %%228 = add nsw i32 %%227, %%209, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1640_count);
  llvm_cbe_tmp__471 = (unsigned int )((unsigned int )(llvm_cbe_tmp__470&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__452&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__471&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%229 = tail call signext i8 @getPruning(i8* %%Slice_URFtoDLF_Parity_Prun2, i32 %%228), !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1641_count);
  llvm_cbe_tmp__472 = (unsigned char ) /*tail*/ getPruning(( char *)llvm_cbe_Slice_URFtoDLF_Parity_Prun2, llvm_cbe_tmp__471);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__471);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__472);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%.9 = select i1 %%230, i8 %%224, i8 %%229, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe__2e_9_count);
  llvm_cbe__2e_9 = (unsigned char )((((( char )llvm_cbe_tmp__467) > (( char )llvm_cbe_tmp__472))) ? ((unsigned char )llvm_cbe_tmp__467) : ((unsigned char )llvm_cbe_tmp__472));
if (AESL_DEBUG_TRACE)
printf("\n.9 = 0x%X\n", llvm_cbe__2e_9);
if (AESL_DEBUG_TRACE)
printf("\n  %%231 = sext i8 %%.9 to i32, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1643_count);
  llvm_cbe_tmp__473 = (unsigned int )((signed int )( char )llvm_cbe__2e_9);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__473);
if (AESL_DEBUG_TRACE)
printf("\n  %%232 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 12, i64 %%192, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1644_count);
  llvm_cbe_tmp__474 = (signed int *)(&llvm_cbe_search->field12[(((signed long long )llvm_cbe_tmp__435))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__435));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%231, i32* %%232, align 4, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1645_count);
  *llvm_cbe_tmp__474 = llvm_cbe_tmp__473;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__473);
  if (((llvm_cbe__2e_9&255U) == (((unsigned char )0)&255U))) {
    goto llvm_cbe_tmp__489;
  } else {
    llvm_cbe_tmp__381__PHI_TEMPORARY = (bool )1;   /* for PHI node */
    llvm_cbe_tmp__382__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__417;   /* for PHI node */
    llvm_cbe_tmp__383__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__416;   /* for PHI node */
    goto llvm_cbe__2e_backedge;
  }

llvm_cbe_tmp__490:
if (AESL_DEBUG_TRACE)
printf("\n  %%164 = add nsw i32 %%116, 1, !dbg !27 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1541_count);
  llvm_cbe_tmp__413 = (unsigned int )((unsigned int )(llvm_cbe_tmp__383&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__413&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%136, align 4, !dbg !21 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1547_count);
  *llvm_cbe_tmp__398 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%149, align 4, !dbg !21 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1548_count);
  *llvm_cbe_tmp__406 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  llvm_cbe_tmp__416__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__413;   /* for PHI node */
  llvm_cbe_tmp__417__PHI_TEMPORARY = (unsigned int )llvm_cbe_depthPhase1;   /* for PHI node */
  goto llvm_cbe__2e_critedge_2e_thread;

llvm_cbe_tmp__481:
  if ((((signed int )llvm_cbe_tmp__383) < ((signed int )llvm_cbe__2e_))) {
    goto llvm_cbe_tmp__490;
  } else {
    llvm_cbe_tmp__476__PHI_TEMPORARY = (unsigned int )4294967295u;   /* for PHI node */
    goto llvm_cbe__2e_loopexit;
  }

llvm_cbe__2e_us_2d_lcssa_2e_us_2e_thread:
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%154, i32* %%136, align 4, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1524_count);
  *llvm_cbe_tmp__398 = llvm_cbe_tmp__410;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__410);
  goto llvm_cbe_tmp__481;

llvm_cbe__2e_split_2e_us:
if (AESL_DEBUG_TRACE)
printf("\n  %%154 = add nsw i32 %%137, 1, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1521_count);
  llvm_cbe_tmp__410 = (unsigned int )((unsigned int )(llvm_cbe_tmp__399&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__410&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__410) > ((signed int )5u))) {
    goto llvm_cbe__2e_us_2d_lcssa_2e_us_2e_thread;
  } else {
    goto llvm_cbe_tmp__491;
  }

llvm_cbe_tmp__487:
  llvm_cbe_tmp__416__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__383;   /* for PHI node */
  llvm_cbe_tmp__417__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__382;   /* for PHI node */
  goto llvm_cbe__2e_critedge_2e_thread;

llvm_cbe__2e_critedge:
  llvm_cbe_tmp__416__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__383;   /* for PHI node */
  llvm_cbe_tmp__417__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__386;   /* for PHI node */
  goto llvm_cbe__2e_critedge_2e_thread;

llvm_cbe_tmp__492:
if (AESL_DEBUG_TRACE)
printf("\n  %%129 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 0, i64 %%120, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1383_count);
  llvm_cbe_tmp__393 = (signed int *)(&llvm_cbe_search->field0[(((signed long long )llvm_cbe_tmp__387))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__387));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%129, align 4, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1384_count);
  *llvm_cbe_tmp__393 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
if (AESL_DEBUG_TRACE)
printf("\n  %%130 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 1, i64 %%120, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1385_count);
  llvm_cbe_tmp__394 = (signed int *)(&llvm_cbe_search->field1[(((signed long long )llvm_cbe_tmp__387))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__387));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 2, i32* %%130, align 4, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1386_count);
  *llvm_cbe_tmp__394 = 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 2u);
  goto llvm_cbe__2e_critedge;

llvm_cbe_tmp__479:
if (AESL_DEBUG_TRACE)
printf("\n  %%125 = sext i32 %%115 to i64, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1326_count);
  llvm_cbe_tmp__390 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__382);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__390);
if (AESL_DEBUG_TRACE)
printf("\n  %%126 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 0, i64 %%125, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1327_count);
  llvm_cbe_tmp__391 = (signed int *)(&llvm_cbe_search->field0[(((signed long long )llvm_cbe_tmp__390))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__390));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%127 = load i32* %%126, align 4, !dbg !19 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1328_count);
  llvm_cbe_tmp__392 = (unsigned int )*llvm_cbe_tmp__391;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__392);
  switch (((unsigned int )(llvm_cbe_tmp__392&4294967295ull))) {
  default:
    goto llvm_cbe_tmp__493;
;
  case ((unsigned int )(3u&4294967295ull)):
    goto llvm_cbe_tmp__492;
    break;
  case ((unsigned int )(0u&4294967295ull)):
    goto llvm_cbe_tmp__492;
    break;
  }
llvm_cbe_tmp__493:
if (AESL_DEBUG_TRACE)
printf("\n  %%132 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 0, i64 %%120, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1441_count);
  llvm_cbe_tmp__395 = (signed int *)(&llvm_cbe_search->field0[(((signed long long )llvm_cbe_tmp__387))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__387));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%132, align 4, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1442_count);
  *llvm_cbe_tmp__395 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
if (AESL_DEBUG_TRACE)
printf("\n  %%133 = getelementptr inbounds %%struct.search_t* %%search, i64 0, i32 1, i64 %%120, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1443_count);
  llvm_cbe_tmp__396 = (signed int *)(&llvm_cbe_search->field1[(((signed long long )llvm_cbe_tmp__387))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__387));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%133, align 4, !dbg !20 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1444_count);
  *llvm_cbe_tmp__396 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  goto llvm_cbe__2e_critedge;

llvm_cbe__2e_critedge_2e_thread_2e_loopexit:
if (AESL_DEBUG_TRACE)
printf("\n  %%.lcssa10 = phi i32 [ %%154, %%.critedge.thread.loopexit.us-lcssa.us ], [ %%159, %%167  for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe__2e_lcssa10_count);
  llvm_cbe__2e_lcssa10 = (unsigned int )llvm_cbe__2e_lcssa10__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n.lcssa10 = 0x%X",llvm_cbe__2e_lcssa10);
printf("\n = 0x%X",llvm_cbe_tmp__410);
printf("\n = 0x%X",llvm_cbe_tmp__412);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%.lcssa10, i32* %%136, align 4, !dbg !22 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1569_count);
  *llvm_cbe_tmp__398 = llvm_cbe__2e_lcssa10;
if (AESL_DEBUG_TRACE)
printf("\n.lcssa10 = 0x%X\n", llvm_cbe__2e_lcssa10);
  llvm_cbe_tmp__416__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__383;   /* for PHI node */
  llvm_cbe_tmp__417__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__382;   /* for PHI node */
  goto llvm_cbe__2e_critedge_2e_thread;

llvm_cbe__2e_critedge_2e_thread_2e_loopexit_2e_us_2d_lcssa_2e_us:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge25 = phi i32 [ 1, %%156 ], [ 2, %%157  for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_storemerge25_count);
  llvm_cbe_storemerge25 = (unsigned int )llvm_cbe_storemerge25__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge25 = 0x%X",llvm_cbe_storemerge25);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",2u);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%storemerge25, i32* %%149, align 4, !dbg !21 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1528_count);
  *llvm_cbe_tmp__406 = llvm_cbe_storemerge25;
if (AESL_DEBUG_TRACE)
printf("\nstoremerge25 = 0x%X\n", llvm_cbe_storemerge25);
  llvm_cbe__2e_lcssa10__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__410;   /* for PHI node */
  goto llvm_cbe__2e_critedge_2e_thread_2e_loopexit;

llvm_cbe_tmp__494:
  llvm_cbe_storemerge25__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
  goto llvm_cbe__2e_critedge_2e_thread_2e_loopexit_2e_us_2d_lcssa_2e_us;

llvm_cbe_tmp__491:
  switch (((unsigned int )(llvm_cbe_tmp__399&4294967295ull))) {
  default:
    llvm_cbe_storemerge25__PHI_TEMPORARY = (unsigned int )2u;   /* for PHI node */
    goto llvm_cbe__2e_critedge_2e_thread_2e_loopexit_2e_us_2d_lcssa_2e_us;
;
  case ((unsigned int )(2u&4294967295ull)):
    goto llvm_cbe_tmp__494;
  case ((unsigned int )(4294967295u&4294967295ull)):
    goto llvm_cbe_tmp__494;
  }
  } while (1); /* end of syntactic loop '.backedge' */
llvm_cbe_tmp__489:
if (AESL_DEBUG_TRACE)
printf("\n  %%235 = add nsw i32 %%173, %%depthPhase1, !dbg !23 for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1648_count);
  llvm_cbe_tmp__475 = (unsigned int )((unsigned int )(llvm_cbe_tmp__416&4294967295ull)) + ((unsigned int )(llvm_cbe_depthPhase1&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__475&4294967295ull)));
  llvm_cbe_tmp__476__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__475;   /* for PHI node */
  goto llvm_cbe__2e_loopexit;

llvm_cbe__2e_loopexit:
if (AESL_DEBUG_TRACE)
printf("\n  %%236 = phi i32 [ %%235, %%234 ], [ -1, %%._crit_edge18 ], [ -1, %%._crit_edge ], [ %%depthPhase1, %%103 ], [ -1, %%161  for 0x%I64xth hint within @totalDepth  --> \n", ++aesl_llvm_cbe_1650_count);
  llvm_cbe_tmp__476 = (unsigned int )llvm_cbe_tmp__476__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__476);
printf("\n = 0x%X",llvm_cbe_tmp__475);
printf("\n = 0x%X",4294967295u);
printf("\n = 0x%X",4294967295u);
printf("\ndepthPhase1 = 0x%X",llvm_cbe_depthPhase1);
printf("\n = 0x%X",4294967295u);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @totalDepth}\n");
  return llvm_cbe_tmp__476;
}

