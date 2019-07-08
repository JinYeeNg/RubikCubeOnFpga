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
typedef struct l_struct_OC_facecube l_struct_OC_facecube;
typedef struct l_struct_OC_cubiecube l_struct_OC_cubiecube;

/* Structure contents */
struct l_struct_OC_facecube {
   char field0[54];
};

struct l_struct_OC_cubiecube {
   char field0[8];
   char field1[8];
   char field2[12];
   char field3[12];
};


/* External Global Variable Declarations */
extern  char cornerFacelet[8][3];
extern  char edgeFacelet[12][2];
extern  char cornerColor[8][3];
extern  char edgeColor[12][2];

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
l_struct_OC_facecube *get_facecube(void);
l_struct_OC_facecube *get_facecube_fromstring( char *llvm_cbe_cubeString);
void to_String(l_struct_OC_facecube *llvm_cbe_facecube,  char *llvm_cbe_res);
l_struct_OC_cubiecube *toCubieCube(l_struct_OC_facecube *llvm_cbe_facecube);


/* Global Variable Definitions and Initialization */
 char cornerFacelet[8][3] = { { ((unsigned char )8), ((unsigned char )9), ((unsigned char )20) }, { ((unsigned char )6), ((unsigned char )18), ((unsigned char )-26) }, { ((unsigned char )0), ((unsigned char )-28), ((unsigned char )-17) }, { ((unsigned char )2), ((unsigned char )-19), ((unsigned char )11) }, { ((unsigned char )29), ((unsigned char )26), ((unsigned char )15) }, { ((unsigned char )27), ((unsigned char )-20), ((unsigned char )24) }, { ((unsigned char )-31), ((unsigned char )-11), ((unsigned char )-22) }, { ((unsigned char )-29), ((unsigned char )17), ((unsigned char )-13) } };
 char cornerColor[8][3] = { { ((unsigned char )0), ((unsigned char )1), ((unsigned char )2) }, { ((unsigned char )0), ((unsigned char )2), ((unsigned char )4u) }, { ((unsigned char )0), ((unsigned char )4u), ((unsigned char )-3) }, { ((unsigned char )0), ((unsigned char )-3), ((unsigned char )1) }, { ((unsigned char )3), ((unsigned char )2), ((unsigned char )1) }, { ((unsigned char )3), ((unsigned char )4u), ((unsigned char )2) }, { ((unsigned char )3), ((unsigned char )-3), ((unsigned char )4u) }, { ((unsigned char )3), ((unsigned char )1), ((unsigned char )-3) } };
 char edgeColor[12][2] = { { ((unsigned char )0), ((unsigned char )1) }, { ((unsigned char )0), ((unsigned char )2) }, { ((unsigned char )0), ((unsigned char )4u) }, { ((unsigned char )0), ((unsigned char )-3) }, { ((unsigned char )3), ((unsigned char )1) }, { ((unsigned char )3), ((unsigned char )2) }, { ((unsigned char )3), ((unsigned char )4u) }, { ((unsigned char )3), ((unsigned char )-3) }, { ((unsigned char )2), ((unsigned char )1) }, { ((unsigned char )2), ((unsigned char )4u) }, { ((unsigned char )-3), ((unsigned char )4u) }, { ((unsigned char )-3), ((unsigned char )1) } };
static l_struct_OC_facecube aesl_internal_get_facecube_OC_res[1];
 char edgeFacelet[12][2] = { { ((unsigned char )5), ((unsigned char )10) }, { ((unsigned char )7), ((unsigned char )19) }, { ((unsigned char )3), ((unsigned char )-27) }, { ((unsigned char )1), ((unsigned char )-18) }, { ((unsigned char )32u), ((unsigned char )16) }, { ((unsigned char )28), ((unsigned char )25) }, { ((unsigned char )30), ((unsigned char )-21) }, { ((unsigned char )-30), ((unsigned char )-12) }, { ((unsigned char )23), ((unsigned char )12) }, { ((unsigned char )21), ((unsigned char )-23) }, { ((unsigned char )-14), ((unsigned char )-25) }, { ((unsigned char )-16), ((unsigned char )14) } };
static  char aesl_internal_get_facecube_OC_f[54] = { ((unsigned char )0), ((unsigned char )0), ((unsigned char )0), ((unsigned char )0), ((unsigned char )0), ((unsigned char )0), ((unsigned char )0), ((unsigned char )0), ((unsigned char )0), ((unsigned char )1), ((unsigned char )1), ((unsigned char )1), ((unsigned char )1), ((unsigned char )1), ((unsigned char )1), ((unsigned char )1), ((unsigned char )1), ((unsigned char )1), ((unsigned char )2), ((unsigned char )2), ((unsigned char )2), ((unsigned char )2), ((unsigned char )2), ((unsigned char )2), ((unsigned char )2), ((unsigned char )2), ((unsigned char )2), ((unsigned char )3), ((unsigned char )3), ((unsigned char )3), ((unsigned char )3), ((unsigned char )3), ((unsigned char )3), ((unsigned char )3), ((unsigned char )3), ((unsigned char )3), ((unsigned char )4u), ((unsigned char )4u), ((unsigned char )4u), ((unsigned char )4u), ((unsigned char )4u), ((unsigned char )4u), ((unsigned char )4u), ((unsigned char )4u), ((unsigned char )4u), ((unsigned char )-3), ((unsigned char )-3), ((unsigned char )-3), ((unsigned char )-3), ((unsigned char )-3), ((unsigned char )-3), ((unsigned char )-3), ((unsigned char )-3), ((unsigned char )-3) };
static l_struct_OC_facecube aesl_internal_get_facecube_fromstring_OC_res[1];
static l_struct_OC_cubiecube aesl_internal_toCubieCube_OC_ccRet[1];


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

l_struct_OC_facecube *get_facecube(void) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  unsigned long long llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
   char *llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  unsigned char llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
   char *llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  unsigned int llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @get_facecube\n");
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__6;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__6:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ 0, %%0 ], [ %%6, %%1  for 0x%I64xth hint within @get_facecube  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__5);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = sext i32 %%storemerge1 to i64, !dbg !20 for 0x%I64xth hint within @get_facecube  --> \n", ++aesl_llvm_cbe_7_count);
  llvm_cbe_tmp__1 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds [54 x i3]* @aesl_internal_get_facecube.f, i64 0, i64 %%2, !dbg !20 for 0x%I64xth hint within @get_facecube  --> \n", ++aesl_llvm_cbe_8_count);
  llvm_cbe_tmp__2 = ( char *)(&aesl_internal_get_facecube_OC_f[(((signed long long )llvm_cbe_tmp__1))
#ifdef AESL_BC_SIM
 % 54
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__1));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__1) < 54)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_get_facecube.f' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i3* %%3, align 1, !dbg !20 for 0x%I64xth hint within @get_facecube  --> \n", ++aesl_llvm_cbe_9_count);
  llvm_cbe_tmp__3 = (unsigned char )*llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds [1 x %%struct.facecube]* @aesl_internal_get_facecube.res, i64 0, i64 0, i32 0, i64 %%2, !dbg !20 for 0x%I64xth hint within @get_facecube  --> \n", ++aesl_llvm_cbe_10_count);
  llvm_cbe_tmp__4 = ( char *)(&aesl_internal_get_facecube_OC_res[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )llvm_cbe_tmp__1))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__1));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_get_facecube.res' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i3 %%4, i3* %%5, align 1, !dbg !20 for 0x%I64xth hint within @get_facecube  --> \n", ++aesl_llvm_cbe_11_count);
  *llvm_cbe_tmp__4 = ((llvm_cbe_tmp__3) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = add nsw i32 %%storemerge1, 1, !dbg !21 for 0x%I64xth hint within @get_facecube  --> \n", ++aesl_llvm_cbe_12_count);
  llvm_cbe_tmp__5 = (unsigned int )((unsigned int )(llvm_cbe_storemerge1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__5&4294967295ull)));
  if (((llvm_cbe_tmp__5&4294967295U) == (54u&4294967295U))) {
    goto llvm_cbe_tmp__7;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__5;   /* for PHI node */
    goto llvm_cbe_tmp__6;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__7:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @get_facecube}\n");
  return ((&aesl_internal_get_facecube_OC_res[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
]));
}


l_struct_OC_facecube *get_facecube_fromstring( char *llvm_cbe_cubeString) {
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  unsigned long long llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
   char *llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  unsigned char llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
   char *llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
   char *llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
   char *llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
   char *llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
   char *llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
   char *llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  unsigned int llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @get_facecube_fromstring\n");
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__19;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__19:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ 0, %%0 ], [ %%19, %%18  for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__18);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = sext i32 %%storemerge1 to i64, !dbg !20 for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_33_count);
  llvm_cbe_tmp__8 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds i8* %%cubeString, i64 %%2, !dbg !20 for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_34_count);
  llvm_cbe_tmp__9 = ( char *)(&llvm_cbe_cubeString[(((signed long long )llvm_cbe_tmp__8))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__8));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i8* %%3, align 1, !dbg !20 for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_35_count);
  llvm_cbe_tmp__10 = (unsigned char )*llvm_cbe_tmp__9;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__10);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = sext i8 %%4 to i32, !dbg !20 for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_36_count);
  llvm_cbe_tmp__11 = (unsigned int )((signed int )( char )llvm_cbe_tmp__10);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__11);
  switch (((unsigned int )(llvm_cbe_tmp__11&4294967295ull))) {
  default:
    goto llvm_cbe_tmp__20;
;
  case ((unsigned int )(85u&4294967295ull)):
    goto llvm_cbe_tmp__21;
    break;
  case ((unsigned int )(82u&4294967295ull)):
    goto llvm_cbe_tmp__22;
  case ((unsigned int )(70u&4294967295ull)):
    goto llvm_cbe_tmp__23;
  case ((unsigned int )(68u&4294967295ull)):
    goto llvm_cbe_tmp__24;
  case ((unsigned int )(76u&4294967295ull)):
    goto llvm_cbe_tmp__25;
  case ((unsigned int )(66u&4294967295ull)):
    goto llvm_cbe_tmp__26;
  }
llvm_cbe_tmp__20:
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = add nsw i32 %%storemerge1, 1, !dbg !21 for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_56_count);
  llvm_cbe_tmp__18 = (unsigned int )((unsigned int )(llvm_cbe_storemerge1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__18&4294967295ull)));
  if (((llvm_cbe_tmp__18&4294967295U) == (54u&4294967295U))) {
    goto llvm_cbe_tmp__27;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__18;   /* for PHI node */
    goto llvm_cbe_tmp__19;
  }

llvm_cbe_tmp__21:
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds [1 x %%struct.facecube]* @aesl_internal_get_facecube_fromstring.res, i64 0, i64 0, i32 0, i64 %%2, !dbg !21 for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_38_count);
  llvm_cbe_tmp__12 = ( char *)(&aesl_internal_get_facecube_fromstring_OC_res[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )llvm_cbe_tmp__8))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__8));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_get_facecube_fromstring.res' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i3 0, i3* %%7, align 1, !dbg !21 for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_39_count);
  *llvm_cbe_tmp__12 = ((((unsigned char )0)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
  goto llvm_cbe_tmp__20;

llvm_cbe_tmp__22:
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds [1 x %%struct.facecube]* @aesl_internal_get_facecube_fromstring.res, i64 0, i64 0, i32 0, i64 %%2, !dbg !21 for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_41_count);
  llvm_cbe_tmp__13 = ( char *)(&aesl_internal_get_facecube_fromstring_OC_res[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )llvm_cbe_tmp__8))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__8));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_get_facecube_fromstring.res' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i3 1, i3* %%9, align 1, !dbg !21 for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_42_count);
  *llvm_cbe_tmp__13 = ((((unsigned char )1)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )1));
  goto llvm_cbe_tmp__20;

llvm_cbe_tmp__23:
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds [1 x %%struct.facecube]* @aesl_internal_get_facecube_fromstring.res, i64 0, i64 0, i32 0, i64 %%2, !dbg !21 for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__14 = ( char *)(&aesl_internal_get_facecube_fromstring_OC_res[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )llvm_cbe_tmp__8))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__8));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_get_facecube_fromstring.res' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i3 2, i3* %%11, align 1, !dbg !21 for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_45_count);
  *llvm_cbe_tmp__14 = ((((unsigned char )2)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )2));
  goto llvm_cbe_tmp__20;

llvm_cbe_tmp__24:
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds [1 x %%struct.facecube]* @aesl_internal_get_facecube_fromstring.res, i64 0, i64 0, i32 0, i64 %%2, !dbg !21 for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_47_count);
  llvm_cbe_tmp__15 = ( char *)(&aesl_internal_get_facecube_fromstring_OC_res[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )llvm_cbe_tmp__8))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__8));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_get_facecube_fromstring.res' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i3 3, i3* %%13, align 1, !dbg !21 for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_48_count);
  *llvm_cbe_tmp__15 = ((((unsigned char )3)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )3));
  goto llvm_cbe_tmp__20;

llvm_cbe_tmp__25:
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds [1 x %%struct.facecube]* @aesl_internal_get_facecube_fromstring.res, i64 0, i64 0, i32 0, i64 %%2, !dbg !21 for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_50_count);
  llvm_cbe_tmp__16 = ( char *)(&aesl_internal_get_facecube_fromstring_OC_res[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )llvm_cbe_tmp__8))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__8));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_get_facecube_fromstring.res' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i3 -4, i3* %%15, align 1, !dbg !21 for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_51_count);
  *llvm_cbe_tmp__16 = ((((unsigned char )4u)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )4u));
  goto llvm_cbe_tmp__20;

llvm_cbe_tmp__26:
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds [1 x %%struct.facecube]* @aesl_internal_get_facecube_fromstring.res, i64 0, i64 0, i32 0, i64 %%2, !dbg !21 for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_53_count);
  llvm_cbe_tmp__17 = ( char *)(&aesl_internal_get_facecube_fromstring_OC_res[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )llvm_cbe_tmp__8))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__8));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_get_facecube_fromstring.res' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i3 -3, i3* %%17, align 1, !dbg !21 for 0x%I64xth hint within @get_facecube_fromstring  --> \n", ++aesl_llvm_cbe_54_count);
  *llvm_cbe_tmp__17 = ((((unsigned char )-3)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )-3));
  goto llvm_cbe_tmp__20;

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__27:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @get_facecube_fromstring}\n");
  return ((&aesl_internal_get_facecube_fromstring_OC_res[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
]));
}


void to_String(l_struct_OC_facecube *llvm_cbe_facecube,  char *llvm_cbe_res) {
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  unsigned long long llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
   char *llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  unsigned char llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  unsigned int llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
   char *llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
   char *llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
   char *llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
   char *llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
   char *llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
   char *llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  unsigned int llvm_cbe_tmp__38;
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
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
   char *llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @to_String\n");
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__40;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__40:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ 0, %%0 ], [ %%19, %%18  for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__38);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = sext i32 %%storemerge1 to i64, !dbg !20 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_90_count);
  llvm_cbe_tmp__28 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__28);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds %%struct.facecube* %%facecube, i64 0, i32 0, i64 %%2, !dbg !20 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_91_count);
  llvm_cbe_tmp__29 = ( char *)(&llvm_cbe_facecube->field0[(((signed long long )llvm_cbe_tmp__28))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__28));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i3* %%3, align 1, !dbg !20 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_92_count);
  llvm_cbe_tmp__30 = (unsigned char )*llvm_cbe_tmp__29;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__30);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = zext i3 %%4 to i32, !dbg !20 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_93_count);
  llvm_cbe_tmp__31 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__30&7U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__31);
  switch (((unsigned int )(llvm_cbe_tmp__31&4294967295ull))) {
  default:
    goto llvm_cbe_tmp__41;
;
  case ((unsigned int )(0u&4294967295ull)):
    goto llvm_cbe_tmp__42;
    break;
  case ((unsigned int )(1u&4294967295ull)):
    goto llvm_cbe_tmp__43;
  case ((unsigned int )(2u&4294967295ull)):
    goto llvm_cbe_tmp__44;
  case ((unsigned int )(3u&4294967295ull)):
    goto llvm_cbe_tmp__45;
  case ((unsigned int )(4u&4294967295ull)):
    goto llvm_cbe_tmp__46;
  case ((unsigned int )(5u&4294967295ull)):
    goto llvm_cbe_tmp__47;
  }
llvm_cbe_tmp__41:
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = add nsw i32 %%storemerge1, 1, !dbg !22 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_113_count);
  llvm_cbe_tmp__38 = (unsigned int )((unsigned int )(llvm_cbe_storemerge1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__38&4294967295ull)));
  if (((llvm_cbe_tmp__38&4294967295U) == (54u&4294967295U))) {
    goto llvm_cbe_tmp__48;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__38;   /* for PHI node */
    goto llvm_cbe_tmp__40;
  }

llvm_cbe_tmp__42:
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds i8* %%res, i64 %%2, !dbg !21 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_95_count);
  llvm_cbe_tmp__32 = ( char *)(&llvm_cbe_res[(((signed long long )llvm_cbe_tmp__28))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__28));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 85, i8* %%7, align 1, !dbg !21 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_96_count);
  *llvm_cbe_tmp__32 = ((unsigned char )85);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )85));
  goto llvm_cbe_tmp__41;

llvm_cbe_tmp__43:
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds i8* %%res, i64 %%2, !dbg !21 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_98_count);
  llvm_cbe_tmp__33 = ( char *)(&llvm_cbe_res[(((signed long long )llvm_cbe_tmp__28))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__28));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 82, i8* %%9, align 1, !dbg !21 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_99_count);
  *llvm_cbe_tmp__33 = ((unsigned char )82);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )82));
  goto llvm_cbe_tmp__41;

llvm_cbe_tmp__44:
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds i8* %%res, i64 %%2, !dbg !21 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_101_count);
  llvm_cbe_tmp__34 = ( char *)(&llvm_cbe_res[(((signed long long )llvm_cbe_tmp__28))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__28));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 70, i8* %%11, align 1, !dbg !21 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_102_count);
  *llvm_cbe_tmp__34 = ((unsigned char )70);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )70));
  goto llvm_cbe_tmp__41;

llvm_cbe_tmp__45:
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds i8* %%res, i64 %%2, !dbg !21 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_104_count);
  llvm_cbe_tmp__35 = ( char *)(&llvm_cbe_res[(((signed long long )llvm_cbe_tmp__28))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__28));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 68, i8* %%13, align 1, !dbg !21 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_105_count);
  *llvm_cbe_tmp__35 = ((unsigned char )68);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )68));
  goto llvm_cbe_tmp__41;

llvm_cbe_tmp__46:
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds i8* %%res, i64 %%2, !dbg !21 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_107_count);
  llvm_cbe_tmp__36 = ( char *)(&llvm_cbe_res[(((signed long long )llvm_cbe_tmp__28))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__28));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 76, i8* %%15, align 1, !dbg !21 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_108_count);
  *llvm_cbe_tmp__36 = ((unsigned char )76);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )76));
  goto llvm_cbe_tmp__41;

llvm_cbe_tmp__47:
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds i8* %%res, i64 %%2, !dbg !21 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_110_count);
  llvm_cbe_tmp__37 = ( char *)(&llvm_cbe_res[(((signed long long )llvm_cbe_tmp__28))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__28));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 66, i8* %%17, align 1, !dbg !21 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_111_count);
  *llvm_cbe_tmp__37 = ((unsigned char )66);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )66));
  goto llvm_cbe_tmp__41;

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__48:
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = getelementptr inbounds i8* %%res, i64 54, !dbg !21 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_125_count);
  llvm_cbe_tmp__39 = ( char *)(&llvm_cbe_res[(((signed long long )54ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 0, i8* %%21, align 1, !dbg !21 for 0x%I64xth hint within @to_String  --> \n", ++aesl_llvm_cbe_126_count);
  *llvm_cbe_tmp__39 = ((unsigned char )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
  if (AESL_DEBUG_TRACE)
      printf("\nEND @to_String}\n");
  return;
}


l_struct_OC_cubiecube *toCubieCube(l_struct_OC_facecube *llvm_cbe_facecube) {
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
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_231_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_260_count = 0;
  static  unsigned long long aesl_llvm_cbe_261_count = 0;
  static  unsigned long long aesl_llvm_cbe_262_count = 0;
  static  unsigned long long aesl_llvm_cbe_263_count = 0;
  static  unsigned long long aesl_llvm_cbe_264_count = 0;
  static  unsigned long long aesl_llvm_cbe_265_count = 0;
  static  unsigned long long aesl_llvm_cbe_266_count = 0;
  static  unsigned long long aesl_llvm_cbe_267_count = 0;
  static  unsigned long long aesl_llvm_cbe_268_count = 0;
  static  unsigned long long aesl_llvm_cbe_269_count = 0;
  static  unsigned long long aesl_llvm_cbe_270_count = 0;
  static  unsigned long long aesl_llvm_cbe_271_count = 0;
  static  unsigned long long aesl_llvm_cbe_272_count = 0;
  static  unsigned long long aesl_llvm_cbe_273_count = 0;
  static  unsigned long long aesl_llvm_cbe_274_count = 0;
  static  unsigned long long aesl_llvm_cbe_275_count = 0;
  static  unsigned long long aesl_llvm_cbe_276_count = 0;
  static  unsigned long long aesl_llvm_cbe_277_count = 0;
  static  unsigned long long aesl_llvm_cbe_278_count = 0;
  static  unsigned long long aesl_llvm_cbe_279_count = 0;
  static  unsigned long long aesl_llvm_cbe_280_count = 0;
  static  unsigned long long aesl_llvm_cbe_281_count = 0;
  static  unsigned long long aesl_llvm_cbe_282_count = 0;
  static  unsigned long long aesl_llvm_cbe_283_count = 0;
  static  unsigned long long aesl_llvm_cbe_284_count = 0;
  static  unsigned long long aesl_llvm_cbe_285_count = 0;
  static  unsigned long long aesl_llvm_cbe_286_count = 0;
  static  unsigned long long aesl_llvm_cbe_287_count = 0;
  static  unsigned long long aesl_llvm_cbe_288_count = 0;
  static  unsigned long long aesl_llvm_cbe_289_count = 0;
  static  unsigned long long aesl_llvm_cbe_290_count = 0;
  static  unsigned long long aesl_llvm_cbe_291_count = 0;
  static  unsigned long long aesl_llvm_cbe_292_count = 0;
  static  unsigned long long aesl_llvm_cbe_293_count = 0;
  static  unsigned long long aesl_llvm_cbe_294_count = 0;
  static  unsigned long long aesl_llvm_cbe_295_count = 0;
  static  unsigned long long aesl_llvm_cbe_296_count = 0;
  static  unsigned long long aesl_llvm_cbe_297_count = 0;
  static  unsigned long long aesl_llvm_cbe_298_count = 0;
  static  unsigned long long aesl_llvm_cbe_299_count = 0;
  static  unsigned long long aesl_llvm_cbe_300_count = 0;
  static  unsigned long long aesl_llvm_cbe_301_count = 0;
  static  unsigned long long aesl_llvm_cbe_302_count = 0;
  static  unsigned long long aesl_llvm_cbe_303_count = 0;
  static  unsigned long long aesl_llvm_cbe_304_count = 0;
  static  unsigned long long aesl_llvm_cbe_305_count = 0;
  static  unsigned long long aesl_llvm_cbe_306_count = 0;
  static  unsigned long long aesl_llvm_cbe_307_count = 0;
  static  unsigned long long aesl_llvm_cbe_308_count = 0;
  static  unsigned long long aesl_llvm_cbe_309_count = 0;
  static  unsigned long long aesl_llvm_cbe_310_count = 0;
  static  unsigned long long aesl_llvm_cbe_311_count = 0;
  static  unsigned long long aesl_llvm_cbe_312_count = 0;
  static  unsigned long long aesl_llvm_cbe_313_count = 0;
  static  unsigned long long aesl_llvm_cbe_314_count = 0;
  static  unsigned long long aesl_llvm_cbe_315_count = 0;
  static  unsigned long long aesl_llvm_cbe_316_count = 0;
  static  unsigned long long aesl_llvm_cbe_317_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_370_count = 0;
  static  unsigned long long aesl_llvm_cbe_371_count = 0;
  static  unsigned long long aesl_llvm_cbe_372_count = 0;
  static  unsigned long long aesl_llvm_cbe_373_count = 0;
  static  unsigned long long aesl_llvm_cbe_374_count = 0;
  static  unsigned long long aesl_llvm_cbe_375_count = 0;
  static  unsigned long long aesl_llvm_cbe_376_count = 0;
  static  unsigned long long aesl_llvm_cbe_377_count = 0;
  static  unsigned long long aesl_llvm_cbe_378_count = 0;
  static  unsigned long long aesl_llvm_cbe_379_count = 0;
  static  unsigned long long aesl_llvm_cbe_380_count = 0;
  static  unsigned long long aesl_llvm_cbe_381_count = 0;
  static  unsigned long long aesl_llvm_cbe_382_count = 0;
  static  unsigned long long aesl_llvm_cbe_383_count = 0;
  static  unsigned long long aesl_llvm_cbe_384_count = 0;
  static  unsigned long long aesl_llvm_cbe_385_count = 0;
  static  unsigned long long aesl_llvm_cbe_386_count = 0;
  static  unsigned long long aesl_llvm_cbe_387_count = 0;
  static  unsigned long long aesl_llvm_cbe_388_count = 0;
  static  unsigned long long aesl_llvm_cbe_389_count = 0;
  static  unsigned long long aesl_llvm_cbe_390_count = 0;
  static  unsigned long long aesl_llvm_cbe_391_count = 0;
  static  unsigned long long aesl_llvm_cbe_392_count = 0;
  static  unsigned long long aesl_llvm_cbe_393_count = 0;
  static  unsigned long long aesl_llvm_cbe_394_count = 0;
  static  unsigned long long aesl_llvm_cbe_395_count = 0;
  static  unsigned long long aesl_llvm_cbe_396_count = 0;
  static  unsigned long long aesl_llvm_cbe_397_count = 0;
  static  unsigned long long aesl_llvm_cbe_398_count = 0;
  static  unsigned long long aesl_llvm_cbe_399_count = 0;
  static  unsigned long long aesl_llvm_cbe_400_count = 0;
  static  unsigned long long aesl_llvm_cbe_401_count = 0;
  static  unsigned long long aesl_llvm_cbe_402_count = 0;
  static  unsigned long long aesl_llvm_cbe_403_count = 0;
  static  unsigned long long aesl_llvm_cbe_404_count = 0;
  static  unsigned long long aesl_llvm_cbe_405_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_431_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_459_count = 0;
  static  unsigned long long aesl_llvm_cbe_460_count = 0;
  static  unsigned long long aesl_llvm_cbe_461_count = 0;
  static  unsigned long long aesl_llvm_cbe_462_count = 0;
  static  unsigned long long aesl_llvm_cbe_463_count = 0;
  static  unsigned long long aesl_llvm_cbe_464_count = 0;
  static  unsigned long long aesl_llvm_cbe_465_count = 0;
  static  unsigned long long aesl_llvm_cbe_466_count = 0;
  static  unsigned long long aesl_llvm_cbe_467_count = 0;
  static  unsigned long long aesl_llvm_cbe_468_count = 0;
  static  unsigned long long aesl_llvm_cbe_469_count = 0;
  static  unsigned long long aesl_llvm_cbe_470_count = 0;
  static  unsigned long long aesl_llvm_cbe_471_count = 0;
  static  unsigned long long aesl_llvm_cbe_472_count = 0;
  static  unsigned long long aesl_llvm_cbe_473_count = 0;
  static  unsigned long long aesl_llvm_cbe_474_count = 0;
  static  unsigned long long aesl_llvm_cbe_475_count = 0;
  static  unsigned long long aesl_llvm_cbe_476_count = 0;
  static  unsigned long long aesl_llvm_cbe_477_count = 0;
  static  unsigned long long aesl_llvm_cbe_478_count = 0;
  static  unsigned long long aesl_llvm_cbe_479_count = 0;
  static  unsigned long long aesl_llvm_cbe_480_count = 0;
  static  unsigned long long aesl_llvm_cbe_481_count = 0;
  static  unsigned long long aesl_llvm_cbe_482_count = 0;
  static  unsigned long long aesl_llvm_cbe_483_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_495_count = 0;
  static  unsigned long long aesl_llvm_cbe_496_count = 0;
  static  unsigned long long aesl_llvm_cbe_497_count = 0;
  static  unsigned long long aesl_llvm_cbe_498_count = 0;
  static  unsigned long long aesl_llvm_cbe_499_count = 0;
  static  unsigned long long aesl_llvm_cbe_500_count = 0;
  static  unsigned long long aesl_llvm_cbe_501_count = 0;
  static  unsigned long long aesl_llvm_cbe_502_count = 0;
  static  unsigned long long aesl_llvm_cbe_503_count = 0;
  static  unsigned long long aesl_llvm_cbe_504_count = 0;
  static  unsigned long long aesl_llvm_cbe_505_count = 0;
  static  unsigned long long aesl_llvm_cbe_506_count = 0;
  static  unsigned long long aesl_llvm_cbe_507_count = 0;
  static  unsigned long long aesl_llvm_cbe_508_count = 0;
  static  unsigned long long aesl_llvm_cbe_509_count = 0;
  static  unsigned long long aesl_llvm_cbe_510_count = 0;
  static  unsigned long long aesl_llvm_cbe_511_count = 0;
  static  unsigned long long aesl_llvm_cbe_512_count = 0;
  static  unsigned long long aesl_llvm_cbe_513_count = 0;
  static  unsigned long long aesl_llvm_cbe_514_count = 0;
  static  unsigned long long aesl_llvm_cbe_515_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_579_count = 0;
  static  unsigned long long aesl_llvm_cbe_580_count = 0;
  static  unsigned long long aesl_llvm_cbe_581_count = 0;
  static  unsigned long long aesl_llvm_cbe_582_count = 0;
  static  unsigned long long aesl_llvm_cbe_583_count = 0;
  static  unsigned long long aesl_llvm_cbe_584_count = 0;
  static  unsigned long long aesl_llvm_cbe_585_count = 0;
  static  unsigned long long aesl_llvm_cbe_586_count = 0;
  static  unsigned long long aesl_llvm_cbe_587_count = 0;
  static  unsigned long long aesl_llvm_cbe_588_count = 0;
  static  unsigned long long aesl_llvm_cbe_589_count = 0;
  static  unsigned long long aesl_llvm_cbe_590_count = 0;
  static  unsigned long long aesl_llvm_cbe_591_count = 0;
  static  unsigned long long aesl_llvm_cbe_592_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_636_count = 0;
  static  unsigned long long aesl_llvm_cbe_637_count = 0;
  static  unsigned long long aesl_llvm_cbe_638_count = 0;
  static  unsigned long long aesl_llvm_cbe_639_count = 0;
  static  unsigned long long aesl_llvm_cbe_640_count = 0;
  static  unsigned long long aesl_llvm_cbe_641_count = 0;
  static  unsigned long long aesl_llvm_cbe_642_count = 0;
  static  unsigned long long aesl_llvm_cbe_643_count = 0;
  static  unsigned long long aesl_llvm_cbe_644_count = 0;
  static  unsigned long long aesl_llvm_cbe_645_count = 0;
  static  unsigned long long aesl_llvm_cbe_646_count = 0;
  static  unsigned long long aesl_llvm_cbe_647_count = 0;
  static  unsigned long long aesl_llvm_cbe_648_count = 0;
  static  unsigned long long aesl_llvm_cbe_649_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_692_count = 0;
  static  unsigned long long aesl_llvm_cbe_693_count = 0;
  static  unsigned long long aesl_llvm_cbe_694_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_705_count = 0;
  static  unsigned long long aesl_llvm_cbe_706_count = 0;
  static  unsigned long long aesl_llvm_cbe_707_count = 0;
  static  unsigned long long aesl_llvm_cbe_708_count = 0;
  static  unsigned long long aesl_llvm_cbe_709_count = 0;
  static  unsigned long long aesl_llvm_cbe_710_count = 0;
  static  unsigned long long aesl_llvm_cbe_711_count = 0;
  static  unsigned long long aesl_llvm_cbe_712_count = 0;
  static  unsigned long long aesl_llvm_cbe_713_count = 0;
  static  unsigned long long aesl_llvm_cbe_714_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_storemerge216_count = 0;
  unsigned int llvm_cbe_storemerge216;
  unsigned int llvm_cbe_storemerge216__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_731_count = 0;
  unsigned long long llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_732_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge5_count = 0;
  unsigned char llvm_cbe_storemerge5;
  unsigned char llvm_cbe_storemerge5__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_733_count = 0;
  static  unsigned long long aesl_llvm_cbe_734_count = 0;
  static  unsigned long long aesl_llvm_cbe_735_count = 0;
  static  unsigned long long aesl_llvm_cbe_736_count = 0;
  static  unsigned long long aesl_llvm_cbe_737_count = 0;
  static  unsigned long long aesl_llvm_cbe_738_count = 0;
  static  unsigned long long aesl_llvm_cbe_739_count = 0;
  static  unsigned long long aesl_llvm_cbe_740_count = 0;
  static  unsigned long long aesl_llvm_cbe_741_count = 0;
  static  unsigned long long aesl_llvm_cbe_742_count = 0;
  unsigned long long llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_743_count = 0;
   char *llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_744_count = 0;
  unsigned char llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_745_count = 0;
  unsigned long long llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_746_count = 0;
   char *llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_747_count = 0;
  unsigned char llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_748_count = 0;
  static  unsigned long long aesl_llvm_cbe_749_count = 0;
  unsigned char llvm_cbe_tmp__56;
  static  unsigned long long aesl_llvm_cbe_750_count = 0;
  static  unsigned long long aesl_llvm_cbe_751_count = 0;
  static  unsigned long long aesl_llvm_cbe_752_count = 0;
  unsigned int llvm_cbe_tmp__57;
  static  unsigned long long aesl_llvm_cbe_753_count = 0;
  unsigned int llvm_cbe_tmp__58;
  static  unsigned long long aesl_llvm_cbe_754_count = 0;
  unsigned int llvm_cbe_tmp__59;
  static  unsigned long long aesl_llvm_cbe_755_count = 0;
  unsigned long long llvm_cbe_tmp__60;
  static  unsigned long long aesl_llvm_cbe_756_count = 0;
   char *llvm_cbe_tmp__61;
  static  unsigned long long aesl_llvm_cbe_757_count = 0;
  unsigned char llvm_cbe_tmp__62;
  static  unsigned long long aesl_llvm_cbe_758_count = 0;
  unsigned long long llvm_cbe_tmp__63;
  static  unsigned long long aesl_llvm_cbe_759_count = 0;
   char *llvm_cbe_tmp__64;
  static  unsigned long long aesl_llvm_cbe_760_count = 0;
  unsigned char llvm_cbe_tmp__65;
  static  unsigned long long aesl_llvm_cbe_761_count = 0;
  static  unsigned long long aesl_llvm_cbe_762_count = 0;
  static  unsigned long long aesl_llvm_cbe_763_count = 0;
  unsigned int llvm_cbe_tmp__66;
  static  unsigned long long aesl_llvm_cbe_764_count = 0;
  unsigned int llvm_cbe_tmp__67;
  static  unsigned long long aesl_llvm_cbe_765_count = 0;
  unsigned long long llvm_cbe_tmp__68;
  static  unsigned long long aesl_llvm_cbe_766_count = 0;
   char *llvm_cbe_tmp__69;
  static  unsigned long long aesl_llvm_cbe_767_count = 0;
  unsigned char llvm_cbe_tmp__70;
  static  unsigned long long aesl_llvm_cbe_768_count = 0;
  unsigned long long llvm_cbe_tmp__71;
  static  unsigned long long aesl_llvm_cbe_769_count = 0;
   char *llvm_cbe_tmp__72;
  static  unsigned long long aesl_llvm_cbe_770_count = 0;
  unsigned char llvm_cbe_tmp__73;
  static  unsigned long long aesl_llvm_cbe_771_count = 0;
  static  unsigned long long aesl_llvm_cbe_772_count = 0;
  static  unsigned long long aesl_llvm_cbe_773_count = 0;
  static  unsigned long long aesl_llvm_cbe_774_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge6_count = 0;
  unsigned int llvm_cbe_storemerge6;
  unsigned int llvm_cbe_storemerge6__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_775_count = 0;
  static  unsigned long long aesl_llvm_cbe_776_count = 0;
  static  unsigned long long aesl_llvm_cbe_777_count = 0;
  static  unsigned long long aesl_llvm_cbe_778_count = 0;
  static  unsigned long long aesl_llvm_cbe_779_count = 0;
  static  unsigned long long aesl_llvm_cbe_780_count = 0;
  static  unsigned long long aesl_llvm_cbe_781_count = 0;
  static  unsigned long long aesl_llvm_cbe_782_count = 0;
  static  unsigned long long aesl_llvm_cbe_783_count = 0;
  static  unsigned long long aesl_llvm_cbe_784_count = 0;
  static  unsigned long long aesl_llvm_cbe_785_count = 0;
  static  unsigned long long aesl_llvm_cbe_786_count = 0;
  static  unsigned long long aesl_llvm_cbe_787_count = 0;
  static  unsigned long long aesl_llvm_cbe_788_count = 0;
  static  unsigned long long aesl_llvm_cbe_789_count = 0;
  static  unsigned long long aesl_llvm_cbe_790_count = 0;
  unsigned long long llvm_cbe_tmp__74;
  static  unsigned long long aesl_llvm_cbe_791_count = 0;
   char *llvm_cbe_tmp__75;
  static  unsigned long long aesl_llvm_cbe_792_count = 0;
  unsigned char llvm_cbe_tmp__76;
  static  unsigned long long aesl_llvm_cbe_793_count = 0;
  static  unsigned long long aesl_llvm_cbe_794_count = 0;
  static  unsigned long long aesl_llvm_cbe_795_count = 0;
   char *llvm_cbe_tmp__77;
  static  unsigned long long aesl_llvm_cbe_796_count = 0;
  unsigned char llvm_cbe_tmp__78;
  static  unsigned long long aesl_llvm_cbe_797_count = 0;
  static  unsigned long long aesl_llvm_cbe_798_count = 0;
  static  unsigned long long aesl_llvm_cbe_799_count = 0;
  unsigned char llvm_cbe_tmp__79;
  static  unsigned long long aesl_llvm_cbe_800_count = 0;
   char *llvm_cbe_tmp__80;
  static  unsigned long long aesl_llvm_cbe_801_count = 0;
  static  unsigned long long aesl_llvm_cbe_802_count = 0;
  unsigned int llvm_cbe_tmp__81;
  static  unsigned long long aesl_llvm_cbe_803_count = 0;
  unsigned char llvm_cbe_tmp__82;
  static  unsigned long long aesl_llvm_cbe_804_count = 0;
   char *llvm_cbe_tmp__83;
  static  unsigned long long aesl_llvm_cbe_805_count = 0;
  static  unsigned long long aesl_llvm_cbe_806_count = 0;
  static  unsigned long long aesl_llvm_cbe_807_count = 0;
  unsigned int llvm_cbe_tmp__84;
  static  unsigned long long aesl_llvm_cbe_808_count = 0;
  static  unsigned long long aesl_llvm_cbe_809_count = 0;
  static  unsigned long long aesl_llvm_cbe_810_count = 0;
  unsigned int llvm_cbe_tmp__85;
  static  unsigned long long aesl_llvm_cbe_811_count = 0;
  static  unsigned long long aesl_llvm_cbe_812_count = 0;
  static  unsigned long long aesl_llvm_cbe_813_count = 0;
  static  unsigned long long aesl_llvm_cbe_814_count = 0;
  static  unsigned long long aesl_llvm_cbe_815_count = 0;
  static  unsigned long long aesl_llvm_cbe_816_count = 0;
  static  unsigned long long aesl_llvm_cbe_817_count = 0;
  static  unsigned long long aesl_llvm_cbe_818_count = 0;
  static  unsigned long long aesl_llvm_cbe_819_count = 0;
  static  unsigned long long aesl_llvm_cbe_820_count = 0;
  static  unsigned long long aesl_llvm_cbe_821_count = 0;
  static  unsigned long long aesl_llvm_cbe_822_count = 0;
  static  unsigned long long aesl_llvm_cbe_823_count = 0;
  static  unsigned long long aesl_llvm_cbe_824_count = 0;
  static  unsigned long long aesl_llvm_cbe_825_count = 0;
  static  unsigned long long aesl_llvm_cbe_826_count = 0;
  static  unsigned long long aesl_llvm_cbe_827_count = 0;
  static  unsigned long long aesl_llvm_cbe_828_count = 0;
  static  unsigned long long aesl_llvm_cbe_829_count = 0;
  static  unsigned long long aesl_llvm_cbe_830_count = 0;
  static  unsigned long long aesl_llvm_cbe_831_count = 0;
  static  unsigned long long aesl_llvm_cbe_832_count = 0;
  static  unsigned long long aesl_llvm_cbe_833_count = 0;
  static  unsigned long long aesl_llvm_cbe_834_count = 0;
  static  unsigned long long aesl_llvm_cbe_835_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond23_count = 0;
  static  unsigned long long aesl_llvm_cbe_836_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge311_count = 0;
  unsigned int llvm_cbe_storemerge311;
  unsigned int llvm_cbe_storemerge311__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_837_count = 0;
  unsigned long long llvm_cbe_tmp__86;
  static  unsigned long long aesl_llvm_cbe_838_count = 0;
   char *llvm_cbe_tmp__87;
  static  unsigned long long aesl_llvm_cbe_839_count = 0;
   char *llvm_cbe_tmp__88;
  static  unsigned long long aesl_llvm_cbe_840_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge4_count = 0;
  unsigned int llvm_cbe_storemerge4;
  unsigned int llvm_cbe_storemerge4__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_841_count = 0;
  static  unsigned long long aesl_llvm_cbe_842_count = 0;
  static  unsigned long long aesl_llvm_cbe_843_count = 0;
  static  unsigned long long aesl_llvm_cbe_844_count = 0;
  static  unsigned long long aesl_llvm_cbe_845_count = 0;
  static  unsigned long long aesl_llvm_cbe_846_count = 0;
  static  unsigned long long aesl_llvm_cbe_847_count = 0;
  static  unsigned long long aesl_llvm_cbe_848_count = 0;
  static  unsigned long long aesl_llvm_cbe_849_count = 0;
  static  unsigned long long aesl_llvm_cbe_850_count = 0;
  static  unsigned long long aesl_llvm_cbe_851_count = 0;
  static  unsigned long long aesl_llvm_cbe_852_count = 0;
  static  unsigned long long aesl_llvm_cbe_853_count = 0;
  static  unsigned long long aesl_llvm_cbe_854_count = 0;
  static  unsigned long long aesl_llvm_cbe_855_count = 0;
  static  unsigned long long aesl_llvm_cbe_856_count = 0;
  unsigned char llvm_cbe_tmp__89;
  static  unsigned long long aesl_llvm_cbe_857_count = 0;
  unsigned long long llvm_cbe_tmp__90;
  static  unsigned long long aesl_llvm_cbe_858_count = 0;
   char *llvm_cbe_tmp__91;
  static  unsigned long long aesl_llvm_cbe_859_count = 0;
  unsigned char llvm_cbe_tmp__92;
  static  unsigned long long aesl_llvm_cbe_860_count = 0;
  unsigned long long llvm_cbe_tmp__93;
  static  unsigned long long aesl_llvm_cbe_861_count = 0;
   char *llvm_cbe_tmp__94;
  static  unsigned long long aesl_llvm_cbe_862_count = 0;
  unsigned char llvm_cbe_tmp__95;
  static  unsigned long long aesl_llvm_cbe_863_count = 0;
  static  unsigned long long aesl_llvm_cbe_864_count = 0;
  static  unsigned long long aesl_llvm_cbe_865_count = 0;
  unsigned char llvm_cbe_tmp__96;
  static  unsigned long long aesl_llvm_cbe_866_count = 0;
  unsigned long long llvm_cbe_tmp__97;
  static  unsigned long long aesl_llvm_cbe_867_count = 0;
   char *llvm_cbe_tmp__98;
  static  unsigned long long aesl_llvm_cbe_868_count = 0;
  unsigned char llvm_cbe_tmp__99;
  static  unsigned long long aesl_llvm_cbe_869_count = 0;
   char *llvm_cbe_tmp__100;
  static  unsigned long long aesl_llvm_cbe_870_count = 0;
  unsigned char llvm_cbe_tmp__101;
  static  unsigned long long aesl_llvm_cbe_871_count = 0;
  static  unsigned long long aesl_llvm_cbe_872_count = 0;
  static  unsigned long long aesl_llvm_cbe_873_count = 0;
  unsigned char llvm_cbe_tmp__102;
  static  unsigned long long aesl_llvm_cbe_874_count = 0;
   char *llvm_cbe_tmp__103;
  static  unsigned long long aesl_llvm_cbe_875_count = 0;
  static  unsigned long long aesl_llvm_cbe_876_count = 0;
   char *llvm_cbe_tmp__104;
  static  unsigned long long aesl_llvm_cbe_877_count = 0;
  static  unsigned long long aesl_llvm_cbe_878_count = 0;
  static  unsigned long long aesl_llvm_cbe_879_count = 0;
   char *llvm_cbe_tmp__105;
  static  unsigned long long aesl_llvm_cbe_880_count = 0;
  unsigned char llvm_cbe_tmp__106;
  static  unsigned long long aesl_llvm_cbe_881_count = 0;
  static  unsigned long long aesl_llvm_cbe_882_count = 0;
  static  unsigned long long aesl_llvm_cbe_883_count = 0;
  unsigned char llvm_cbe_tmp__107;
  static  unsigned long long aesl_llvm_cbe_884_count = 0;
  unsigned long long llvm_cbe_tmp__108;
  static  unsigned long long aesl_llvm_cbe_885_count = 0;
   char *llvm_cbe_tmp__109;
  static  unsigned long long aesl_llvm_cbe_886_count = 0;
  unsigned char llvm_cbe_tmp__110;
  static  unsigned long long aesl_llvm_cbe_887_count = 0;
  static  unsigned long long aesl_llvm_cbe_888_count = 0;
  static  unsigned long long aesl_llvm_cbe_889_count = 0;
  unsigned char llvm_cbe_tmp__111;
  static  unsigned long long aesl_llvm_cbe_890_count = 0;
   char *llvm_cbe_tmp__112;
  static  unsigned long long aesl_llvm_cbe_891_count = 0;
  static  unsigned long long aesl_llvm_cbe_892_count = 0;
   char *llvm_cbe_tmp__113;
  static  unsigned long long aesl_llvm_cbe_893_count = 0;
  static  unsigned long long aesl_llvm_cbe_894_count = 0;
  static  unsigned long long aesl_llvm_cbe_895_count = 0;
  unsigned int llvm_cbe_tmp__114;
  static  unsigned long long aesl_llvm_cbe_896_count = 0;
  static  unsigned long long aesl_llvm_cbe_897_count = 0;
  static  unsigned long long aesl_llvm_cbe_898_count = 0;
  unsigned int llvm_cbe_tmp__115;
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
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_924_count = 0;
  static  unsigned long long aesl_llvm_cbe_925_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @toCubieCube\n");
if (AESL_DEBUG_TRACE)
printf("\n  store i3 0, i3* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 0, i64 0), align 16, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_162_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )0ull))])) = ((((unsigned char )0)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 0, i3* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 0, i64 1), align 1, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_188_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )1ull))])) = ((((unsigned char )0)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 0, i3* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 0, i64 2), align 2, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_214_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )2ull))])) = ((((unsigned char )0)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 0, i3* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 0, i64 3), align 1, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_240_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )3ull))])) = ((((unsigned char )0)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 0, i3* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 0, i64 4), align 4, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_266_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )4ull))])) = ((((unsigned char )0)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 0, i3* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 0, i64 5), align 1, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_292_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )5ull))])) = ((((unsigned char )0)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 0, i3* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 0, i64 6), align 2, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_318_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )6ull))])) = ((((unsigned char )0)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 0, i3* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 0, i64 7), align 1, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_344_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )7ull))])) = ((((unsigned char )0)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i4 0, i4* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 2, i64 0), align 16, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_394_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2[(((signed long long )0ull))])) = ((((unsigned char )0)) & 15ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i4 0, i4* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 2, i64 1), align 1, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_420_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2[(((signed long long )1ull))])) = ((((unsigned char )0)) & 15ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i4 0, i4* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 2, i64 2), align 2, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_446_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2[(((signed long long )2ull))])) = ((((unsigned char )0)) & 15ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i4 0, i4* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 2, i64 3), align 1, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_472_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2[(((signed long long )3ull))])) = ((((unsigned char )0)) & 15ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i4 0, i4* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 2, i64 4), align 4, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_498_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2[(((signed long long )4ull))])) = ((((unsigned char )0)) & 15ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i4 0, i4* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 2, i64 5), align 1, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_524_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2[(((signed long long )5ull))])) = ((((unsigned char )0)) & 15ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i4 0, i4* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 2, i64 6), align 2, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_550_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2[(((signed long long )6ull))])) = ((((unsigned char )0)) & 15ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i4 0, i4* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 2, i64 7), align 1, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_576_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2[(((signed long long )7ull))])) = ((((unsigned char )0)) & 15ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i4 0, i4* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 2, i64 8), align 8, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_602_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2[(((signed long long )8ull))])) = ((((unsigned char )0)) & 15ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i4 0, i4* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 2, i64 9), align 1, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_628_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2[(((signed long long )9ull))])) = ((((unsigned char )0)) & 15ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i4 0, i4* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 2, i64 10), align 2, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_654_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2[(((signed long long )10ull))])) = ((((unsigned char )0)) & 15ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i4 0, i4* getelementptr inbounds ([1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 2, i64 11), align 1, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_680_count);
  *((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2[(((signed long long )11ull))])) = ((((unsigned char )0)) & 15ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
  llvm_cbe_storemerge216__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader14;

  do {     /* Syntactic loop '.preheader14' to make GCC happy */
llvm_cbe__2e_preheader14:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge216 = phi i32 [ 0, %%.preheader17 ], [ %%49, %%.loopexit12  for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_storemerge216_count);
  llvm_cbe_storemerge216 = (unsigned int )llvm_cbe_storemerge216__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge216 = 0x%X",llvm_cbe_storemerge216);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__85);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%0 = sext i32 %%storemerge216 to i64, !dbg !20 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_731_count);
  llvm_cbe_tmp__49 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge216);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__49);
  llvm_cbe_storemerge5__PHI_TEMPORARY = (unsigned char )((unsigned char )0);   /* for PHI node */
  goto llvm_cbe_tmp__116;

llvm_cbe__2e_loopexit12:
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = add nsw i32 %%storemerge216, 1, !dbg !23 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_810_count);
  llvm_cbe_tmp__85 = (unsigned int )((unsigned int )(llvm_cbe_storemerge216&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__85&4294967295ull)));
  if (((llvm_cbe_tmp__85&4294967295U) == (8u&4294967295U))) {
    llvm_cbe_storemerge311__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  } else {
    llvm_cbe_storemerge216__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__85;   /* for PHI node */
    goto llvm_cbe__2e_preheader14;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__117:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge6 = phi i32 [ 0, %%12 ], [ %%48, %%47  for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_storemerge6_count);
  llvm_cbe_storemerge6 = (unsigned int )llvm_cbe_storemerge6__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge6 = 0x%X",llvm_cbe_storemerge6);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__84);
}
  if ((((signed int )llvm_cbe_storemerge6) < ((signed int )8u))) {
    goto llvm_cbe_tmp__118;
  } else {
    goto llvm_cbe__2e_loopexit12;
  }

llvm_cbe_tmp__119:
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = add nsw i32 %%storemerge6, 1, !dbg !25 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_807_count);
  llvm_cbe_tmp__84 = (unsigned int )((unsigned int )(llvm_cbe_storemerge6&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__84&4294967295ull)));
  llvm_cbe_storemerge6__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__84;   /* for PHI node */
  goto llvm_cbe_tmp__117;

llvm_cbe_tmp__118:
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = sext i32 %%storemerge6 to i64, !dbg !24 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_790_count);
  llvm_cbe_tmp__74 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge6);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__74);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = getelementptr inbounds [8 x [3 x i3]]* @cornerColor, i64 0, i64 %%33, i64 1, !dbg !24 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_791_count);
  llvm_cbe_tmp__75 = ( char *)(&cornerColor[(((signed long long )llvm_cbe_tmp__74))
#ifdef AESL_BC_SIM
 % 8
#endif
][(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__74));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__74) < 8)) fprintf(stderr, "%s:%d: warning: Read access out of array 'cornerColor' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )1ull) < 3)) fprintf(stderr, "%s:%d: warning: Read access out of array 'cornerColor' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = load i3* %%34, align 1, !dbg !24 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_792_count);
  llvm_cbe_tmp__76 = (unsigned char )*llvm_cbe_tmp__75;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__76);
  if (((llvm_cbe_tmp__65&7U) == (llvm_cbe_tmp__76&7U))) {
    goto llvm_cbe_tmp__120;
  } else {
    goto llvm_cbe_tmp__119;
  }

llvm_cbe_tmp__120:
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = getelementptr inbounds [8 x [3 x i3]]* @cornerColor, i64 0, i64 %%33, i64 2, !dbg !24 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_795_count);
  llvm_cbe_tmp__77 = ( char *)(&cornerColor[(((signed long long )llvm_cbe_tmp__74))
#ifdef AESL_BC_SIM
 % 8
#endif
][(((signed long long )2ull))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__74));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__74) < 8)) fprintf(stderr, "%s:%d: warning: Read access out of array 'cornerColor' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )2ull) < 3)) fprintf(stderr, "%s:%d: warning: Read access out of array 'cornerColor' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = load i3* %%38, align 1, !dbg !24 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_796_count);
  llvm_cbe_tmp__78 = (unsigned char )*llvm_cbe_tmp__77;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__78);
  if (((llvm_cbe_tmp__73&7U) == (llvm_cbe_tmp__78&7U))) {
    goto llvm_cbe_tmp__121;
  } else {
    goto llvm_cbe_tmp__119;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__122:
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = sext i8 %%storemerge5 to i32, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_752_count);
  llvm_cbe_tmp__57 = (unsigned int )((signed int )( char )llvm_cbe_storemerge5);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__57);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = add nsw i32 %%13, 1, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_753_count);
  llvm_cbe_tmp__58 = (unsigned int )((unsigned int )(llvm_cbe_tmp__57&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__58&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = srem i32 %%14, 3, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_754_count);
  llvm_cbe_tmp__59 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__58) % ((signed int )3u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__59));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = sext i32 %%15 to i64, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_755_count);
  llvm_cbe_tmp__60 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__59);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__60);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds [8 x [3 x i6]]* @cornerFacelet, i64 0, i64 %%0, i64 %%16, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_756_count);
  llvm_cbe_tmp__61 = ( char *)(&cornerFacelet[(((signed long long )llvm_cbe_tmp__49))
#ifdef AESL_BC_SIM
 % 8
#endif
][(((signed long long )llvm_cbe_tmp__60))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__49));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__60));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__49) < 8)) fprintf(stderr, "%s:%d: warning: Read access out of array 'cornerFacelet' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )llvm_cbe_tmp__60) < 3)) fprintf(stderr, "%s:%d: warning: Read access out of array 'cornerFacelet' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = load i6* %%17, align 1, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_757_count);
  llvm_cbe_tmp__62 = (unsigned char )*llvm_cbe_tmp__61;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__62);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = zext i6 %%18 to i64, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_758_count);
  llvm_cbe_tmp__63 = (unsigned long long )((unsigned long long )(unsigned char )llvm_cbe_tmp__62&63U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__63);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = getelementptr inbounds %%struct.facecube* %%facecube, i64 0, i32 0, i64 %%19, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_759_count);
  llvm_cbe_tmp__64 = ( char *)(&llvm_cbe_facecube->field0[(((signed long long )llvm_cbe_tmp__63))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__63));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = load i3* %%20, align 1, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_760_count);
  llvm_cbe_tmp__65 = (unsigned char )*llvm_cbe_tmp__64;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__65);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = add nsw i32 %%13, 2, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_763_count);
  llvm_cbe_tmp__66 = (unsigned int )((unsigned int )(llvm_cbe_tmp__57&4294967295ull)) + ((unsigned int )(2u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__66&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = srem i32 %%22, 3, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_764_count);
  llvm_cbe_tmp__67 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__66) % ((signed int )3u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__67));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = sext i32 %%23 to i64, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_765_count);
  llvm_cbe_tmp__68 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__67);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__68);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = getelementptr inbounds [8 x [3 x i6]]* @cornerFacelet, i64 0, i64 %%0, i64 %%24, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_766_count);
  llvm_cbe_tmp__69 = ( char *)(&cornerFacelet[(((signed long long )llvm_cbe_tmp__49))
#ifdef AESL_BC_SIM
 % 8
#endif
][(((signed long long )llvm_cbe_tmp__68))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__49));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__68));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__49) < 8)) fprintf(stderr, "%s:%d: warning: Read access out of array 'cornerFacelet' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )llvm_cbe_tmp__68) < 3)) fprintf(stderr, "%s:%d: warning: Read access out of array 'cornerFacelet' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = load i6* %%25, align 1, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_767_count);
  llvm_cbe_tmp__70 = (unsigned char )*llvm_cbe_tmp__69;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__70);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = zext i6 %%26 to i64, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_768_count);
  llvm_cbe_tmp__71 = (unsigned long long )((unsigned long long )(unsigned char )llvm_cbe_tmp__70&63U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__71);
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = getelementptr inbounds %%struct.facecube* %%facecube, i64 0, i32 0, i64 %%27, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_769_count);
  llvm_cbe_tmp__72 = ( char *)(&llvm_cbe_facecube->field0[(((signed long long )llvm_cbe_tmp__71))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__71));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = load i3* %%28, align 1, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_770_count);
  llvm_cbe_tmp__73 = (unsigned char )*llvm_cbe_tmp__72;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__73);
  llvm_cbe_storemerge6__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__117;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__116:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge5 = phi i8 [ %%11, %%10 ], [ 0, %%.preheader14  for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_storemerge5_count);
  llvm_cbe_storemerge5 = (unsigned char )llvm_cbe_storemerge5__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge5 = 0x%X",llvm_cbe_storemerge5);
printf("\n = 0x%X",llvm_cbe_tmp__56);
printf("\n = 0x%X",((unsigned char )0));
}
  if (((( char )llvm_cbe_storemerge5) < (( char )((unsigned char )3)))) {
    goto llvm_cbe_tmp__123;
  } else {
    goto llvm_cbe_tmp__122;
  }

llvm_cbe_tmp__124:
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = add i8 %%storemerge5, 1, !dbg !24 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_749_count);
  llvm_cbe_tmp__56 = (unsigned char )((unsigned char )(((unsigned char )(llvm_cbe_storemerge5&255ull)) + ((unsigned char )(((unsigned char )1)&255ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__56&255ull)));
  llvm_cbe_storemerge5__PHI_TEMPORARY = (unsigned char )llvm_cbe_tmp__56;   /* for PHI node */
  goto llvm_cbe_tmp__116;

llvm_cbe_tmp__123:
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = sext i8 %%storemerge5 to i64, !dbg !20 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_742_count);
  llvm_cbe_tmp__50 = (unsigned long long )((signed long long )( char )llvm_cbe_storemerge5);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__50);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds [8 x [3 x i6]]* @cornerFacelet, i64 0, i64 %%0, i64 %%4, !dbg !20 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_743_count);
  llvm_cbe_tmp__51 = ( char *)(&cornerFacelet[(((signed long long )llvm_cbe_tmp__49))
#ifdef AESL_BC_SIM
 % 8
#endif
][(((signed long long )llvm_cbe_tmp__50))
#ifdef AESL_BC_SIM
 % 3
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__49));
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__50));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__49) < 8)) fprintf(stderr, "%s:%d: warning: Read access out of array 'cornerFacelet' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )llvm_cbe_tmp__50) < 3)) fprintf(stderr, "%s:%d: warning: Read access out of array 'cornerFacelet' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = load i6* %%5, align 1, !dbg !20 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_744_count);
  llvm_cbe_tmp__52 = (unsigned char )*llvm_cbe_tmp__51;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__52);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = zext i6 %%6 to i64, !dbg !20 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_745_count);
  llvm_cbe_tmp__53 = (unsigned long long )((unsigned long long )(unsigned char )llvm_cbe_tmp__52&63U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__53);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr inbounds %%struct.facecube* %%facecube, i64 0, i32 0, i64 %%7, !dbg !20 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_746_count);
  llvm_cbe_tmp__54 = ( char *)(&llvm_cbe_facecube->field0[(((signed long long )llvm_cbe_tmp__53))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__53));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = load i3* %%8, align 1, !dbg !20 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_747_count);
  llvm_cbe_tmp__55 = (unsigned char )*llvm_cbe_tmp__54;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__55);
  switch (((unsigned char )(llvm_cbe_tmp__55&7ull))) {
  default:
    goto llvm_cbe_tmp__124;
;
  case ((unsigned char )(((unsigned char )3)&7ull)):
    goto llvm_cbe_tmp__122;
  case ((unsigned char )(((unsigned char )0)&7ull)):
    goto llvm_cbe_tmp__122;
  }
  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__121:
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = trunc i32 %%storemerge6 to i3, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_799_count);
  llvm_cbe_tmp__79 = (unsigned char )((unsigned char )llvm_cbe_storemerge6&7U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__79);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = getelementptr inbounds [1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 0, i64 %%0, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_800_count);
  llvm_cbe_tmp__80 = ( char *)(&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field0[(((signed long long )llvm_cbe_tmp__49))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__49));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_toCubieCube.ccRet' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i3 %%42, i3* %%43, align 1, !dbg !22 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_801_count);
  *llvm_cbe_tmp__80 = ((llvm_cbe_tmp__79) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__79);
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = srem i32 %%13, 3, !dbg !23 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_802_count);
  llvm_cbe_tmp__81 = (unsigned int )((signed int )(((signed int )llvm_cbe_tmp__57) % ((signed int )3u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__81));
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = trunc i32 %%44 to i8, !dbg !23 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_803_count);
  llvm_cbe_tmp__82 = (unsigned char )((unsigned char )llvm_cbe_tmp__81&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__82);
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = getelementptr inbounds [1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 1, i64 %%0, !dbg !23 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_804_count);
  llvm_cbe_tmp__83 = ( char *)(&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field1[(((signed long long )llvm_cbe_tmp__49))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__49));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_toCubieCube.ccRet' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%45, i8* %%46, align 1, !dbg !23 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_805_count);
  *llvm_cbe_tmp__83 = llvm_cbe_tmp__82;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__82);
  goto llvm_cbe__2e_loopexit12;

  } while (1); /* end of syntactic loop '.preheader14' */
  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge311 = phi i32 [ %%92, %%.loopexit ], [ 0, %%.loopexit12  for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_storemerge311_count);
  llvm_cbe_storemerge311 = (unsigned int )llvm_cbe_storemerge311__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge311 = 0x%X",llvm_cbe_storemerge311);
printf("\n = 0x%X",llvm_cbe_tmp__115);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = sext i32 %%storemerge311 to i64, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_837_count);
  llvm_cbe_tmp__86 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge311);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__86);
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = getelementptr inbounds [12 x [2 x i6]]* @edgeFacelet, i64 0, i64 %%50, i64 0, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_838_count);
  llvm_cbe_tmp__87 = ( char *)(&edgeFacelet[(((signed long long )llvm_cbe_tmp__86))
#ifdef AESL_BC_SIM
 % 12
#endif
][(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 2
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__86));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = getelementptr inbounds [12 x [2 x i6]]* @edgeFacelet, i64 0, i64 %%50, i64 1, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_839_count);
  llvm_cbe_tmp__88 = ( char *)(&edgeFacelet[(((signed long long )llvm_cbe_tmp__86))
#ifdef AESL_BC_SIM
 % 12
#endif
][(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 2
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__86));
}
  llvm_cbe_storemerge4__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__125;

llvm_cbe__2e_loopexit:
if (AESL_DEBUG_TRACE)
printf("\n  %%92 = add nsw i32 %%storemerge311, 1, !dbg !24 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_898_count);
  llvm_cbe_tmp__115 = (unsigned int )((unsigned int )(llvm_cbe_storemerge311&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__115&4294967295ull)));
  if (((llvm_cbe_tmp__115&4294967295U) == (12u&4294967295U))) {
    goto llvm_cbe_tmp__126;
  } else {
    llvm_cbe_storemerge311__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__115;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__125:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge4 = phi i32 [ %%91, %%90 ], [ 0, %%.preheader  for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_storemerge4_count);
  llvm_cbe_storemerge4 = (unsigned int )llvm_cbe_storemerge4__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge4 = 0x%X",llvm_cbe_storemerge4);
printf("\n = 0x%X",llvm_cbe_tmp__114);
printf("\n = 0x%X",0u);
}
  if ((((signed int )llvm_cbe_storemerge4) < ((signed int )12u))) {
    goto llvm_cbe_tmp__127;
  } else {
    goto llvm_cbe__2e_loopexit;
  }

llvm_cbe_tmp__128:
if (AESL_DEBUG_TRACE)
printf("\n  %%91 = add nsw i32 %%storemerge4, 1, !dbg !25 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_895_count);
  llvm_cbe_tmp__114 = (unsigned int )((unsigned int )(llvm_cbe_storemerge4&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__114&4294967295ull)));
  llvm_cbe_storemerge4__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__114;   /* for PHI node */
  goto llvm_cbe_tmp__125;

llvm_cbe_tmp__129:
if (AESL_DEBUG_TRACE)
printf("\n  %%77 = getelementptr inbounds [12 x [2 x i3]]* @edgeColor, i64 0, i64 %%60, i64 1, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_879_count);
  llvm_cbe_tmp__105 = ( char *)(&edgeColor[(((signed long long )llvm_cbe_tmp__93))
#ifdef AESL_BC_SIM
 % 12
#endif
][(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 2
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__93));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__93) < 12)) fprintf(stderr, "%s:%d: warning: Read access out of array 'edgeColor' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )1ull) < 2)) fprintf(stderr, "%s:%d: warning: Read access out of array 'edgeColor' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%78 = load i3* %%77, align 1, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_880_count);
  llvm_cbe_tmp__106 = (unsigned char )*llvm_cbe_tmp__105;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__106);
  if (((llvm_cbe_tmp__92&7U) == (llvm_cbe_tmp__106&7U))) {
    goto llvm_cbe_tmp__130;
  } else {
    goto llvm_cbe_tmp__128;
  }

llvm_cbe_tmp__127:

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__86) < 12)) fprintf(stderr, "%s:%d: warning: Read access out of array 'edgeFacelet' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )0ull) < 2)) fprintf(stderr, "%s:%d: warning: Read access out of array 'edgeFacelet' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = load i6* %%51, align 2, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_856_count);
  llvm_cbe_tmp__89 = (unsigned char )*llvm_cbe_tmp__87;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__89);
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = zext i6 %%56 to i64, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_857_count);
  llvm_cbe_tmp__90 = (unsigned long long )((unsigned long long )(unsigned char )llvm_cbe_tmp__89&63U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__90);
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = getelementptr inbounds %%struct.facecube* %%facecube, i64 0, i32 0, i64 %%57, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_858_count);
  llvm_cbe_tmp__91 = ( char *)(&llvm_cbe_facecube->field0[(((signed long long )llvm_cbe_tmp__90))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__90));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = load i3* %%58, align 1, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_859_count);
  llvm_cbe_tmp__92 = (unsigned char )*llvm_cbe_tmp__91;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__92);
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = sext i32 %%storemerge4 to i64, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_860_count);
  llvm_cbe_tmp__93 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge4);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__93);
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = getelementptr inbounds [12 x [2 x i3]]* @edgeColor, i64 0, i64 %%60, i64 0, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_861_count);
  llvm_cbe_tmp__94 = ( char *)(&edgeColor[(((signed long long )llvm_cbe_tmp__93))
#ifdef AESL_BC_SIM
 % 12
#endif
][(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 2
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__93));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__93) < 12)) fprintf(stderr, "%s:%d: warning: Read access out of array 'edgeColor' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )0ull) < 2)) fprintf(stderr, "%s:%d: warning: Read access out of array 'edgeColor' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = load i3* %%61, align 2, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_862_count);
  llvm_cbe_tmp__95 = (unsigned char )*llvm_cbe_tmp__94;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__95);
  if (((llvm_cbe_tmp__92&7U) == (llvm_cbe_tmp__95&7U))) {
    goto llvm_cbe_tmp__131;
  } else {
    goto llvm_cbe_tmp__129;
  }

llvm_cbe_tmp__131:

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__86) < 12)) fprintf(stderr, "%s:%d: warning: Read access out of array 'edgeFacelet' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )1ull) < 2)) fprintf(stderr, "%s:%d: warning: Read access out of array 'edgeFacelet' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = load i6* %%52, align 1, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_865_count);
  llvm_cbe_tmp__96 = (unsigned char )*llvm_cbe_tmp__88;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__96);
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = zext i6 %%65 to i64, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_866_count);
  llvm_cbe_tmp__97 = (unsigned long long )((unsigned long long )(unsigned char )llvm_cbe_tmp__96&63U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__97);
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = getelementptr inbounds %%struct.facecube* %%facecube, i64 0, i32 0, i64 %%66, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_867_count);
  llvm_cbe_tmp__98 = ( char *)(&llvm_cbe_facecube->field0[(((signed long long )llvm_cbe_tmp__97))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__97));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = load i3* %%67, align 1, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_868_count);
  llvm_cbe_tmp__99 = (unsigned char )*llvm_cbe_tmp__98;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__99);
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = getelementptr inbounds [12 x [2 x i3]]* @edgeColor, i64 0, i64 %%60, i64 1, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_869_count);
  llvm_cbe_tmp__100 = ( char *)(&edgeColor[(((signed long long )llvm_cbe_tmp__93))
#ifdef AESL_BC_SIM
 % 12
#endif
][(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 2
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__93));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__93) < 12)) fprintf(stderr, "%s:%d: warning: Read access out of array 'edgeColor' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )1ull) < 2)) fprintf(stderr, "%s:%d: warning: Read access out of array 'edgeColor' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%70 = load i3* %%69, align 1, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_870_count);
  llvm_cbe_tmp__101 = (unsigned char )*llvm_cbe_tmp__100;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__101);
  if (((llvm_cbe_tmp__99&7U) == (llvm_cbe_tmp__101&7U))) {
    goto llvm_cbe_tmp__132;
  } else {
    goto llvm_cbe_tmp__129;
  }

llvm_cbe_tmp__130:

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__86) < 12)) fprintf(stderr, "%s:%d: warning: Read access out of array 'edgeFacelet' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )1ull) < 2)) fprintf(stderr, "%s:%d: warning: Read access out of array 'edgeFacelet' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%81 = load i6* %%52, align 1, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_883_count);
  llvm_cbe_tmp__107 = (unsigned char )*llvm_cbe_tmp__88;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__107);
if (AESL_DEBUG_TRACE)
printf("\n  %%82 = zext i6 %%81 to i64, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_884_count);
  llvm_cbe_tmp__108 = (unsigned long long )((unsigned long long )(unsigned char )llvm_cbe_tmp__107&63U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__108);
if (AESL_DEBUG_TRACE)
printf("\n  %%83 = getelementptr inbounds %%struct.facecube* %%facecube, i64 0, i32 0, i64 %%82, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_885_count);
  llvm_cbe_tmp__109 = ( char *)(&llvm_cbe_facecube->field0[(((signed long long )llvm_cbe_tmp__108))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__108));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%84 = load i3* %%83, align 1, !dbg !21 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_886_count);
  llvm_cbe_tmp__110 = (unsigned char )*llvm_cbe_tmp__109;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__110);
  if (((llvm_cbe_tmp__110&7U) == (llvm_cbe_tmp__95&7U))) {
    goto llvm_cbe_tmp__133;
  } else {
    goto llvm_cbe_tmp__128;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__132:
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = trunc i32 %%storemerge4 to i4, !dbg !23 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_873_count);
  llvm_cbe_tmp__102 = (unsigned char )((unsigned char )llvm_cbe_storemerge4&15U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__102);
if (AESL_DEBUG_TRACE)
printf("\n  %%74 = getelementptr inbounds [1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 2, i64 %%50, !dbg !23 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_874_count);
  llvm_cbe_tmp__103 = ( char *)(&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2[(((signed long long )llvm_cbe_tmp__86))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__86));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_toCubieCube.ccRet' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i4 %%73, i4* %%74, align 1, !dbg !23 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_875_count);
  *llvm_cbe_tmp__103 = ((llvm_cbe_tmp__102) & 15ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__102);
if (AESL_DEBUG_TRACE)
printf("\n  %%75 = getelementptr inbounds [1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 3, i64 %%50, !dbg !23 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_876_count);
  llvm_cbe_tmp__104 = ( char *)(&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field3[(((signed long long )llvm_cbe_tmp__86))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__86));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_toCubieCube.ccRet' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 0, i8* %%75, align 1, !dbg !23 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_877_count);
  *llvm_cbe_tmp__104 = ((unsigned char )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
  goto llvm_cbe__2e_loopexit;

llvm_cbe_tmp__133:
if (AESL_DEBUG_TRACE)
printf("\n  %%87 = trunc i32 %%storemerge4 to i4, !dbg !23 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_889_count);
  llvm_cbe_tmp__111 = (unsigned char )((unsigned char )llvm_cbe_storemerge4&15U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__111);
if (AESL_DEBUG_TRACE)
printf("\n  %%88 = getelementptr inbounds [1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 2, i64 %%50, !dbg !23 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_890_count);
  llvm_cbe_tmp__112 = ( char *)(&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field2[(((signed long long )llvm_cbe_tmp__86))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__86));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_toCubieCube.ccRet' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i4 %%87, i4* %%88, align 1, !dbg !23 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_891_count);
  *llvm_cbe_tmp__112 = ((llvm_cbe_tmp__111) & 15ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__111);
if (AESL_DEBUG_TRACE)
printf("\n  %%89 = getelementptr inbounds [1 x %%struct.cubiecube]* @aesl_internal_toCubieCube.ccRet, i64 0, i64 0, i32 3, i64 %%50, !dbg !24 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_892_count);
  llvm_cbe_tmp__113 = ( char *)(&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
].field3[(((signed long long )llvm_cbe_tmp__86))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__86));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 1 && "Write access out of array 'aesl_internal_toCubieCube.ccRet' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 1, i8* %%89, align 1, !dbg !24 for 0x%I64xth hint within @toCubieCube  --> \n", ++aesl_llvm_cbe_893_count);
  *llvm_cbe_tmp__113 = ((unsigned char )1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )1));
  goto llvm_cbe__2e_loopexit;

  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe_tmp__126:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @toCubieCube}\n");
  return ((&aesl_internal_toCubieCube_OC_ccRet[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 1
#endif
]));
}

