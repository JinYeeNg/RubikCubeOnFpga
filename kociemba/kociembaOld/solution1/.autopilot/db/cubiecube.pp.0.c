# 1 "kociemba/cubiecube.c"
# 1 "kociemba/cubiecube.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 147 "<built-in>" 3
# 1 "<command line>" 1






# 1 "C:/Xilinx/Vivado/2018.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
# 300 "C:/Xilinx/Vivado/2018.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite() __attribute__ ((nothrow));


    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite() __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
# 8 "<command line>" 2
# 1 "<built-in>" 2
# 1 "kociemba/cubiecube.c" 2
# 1 "kociemba/cubiecube.h" 1



# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\string.h" 1 3








# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3
# 10 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/_mingw_mac.h" 1 3
# 10 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3
# 277 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 1 3
# 13 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 3
# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3
# 674 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/sdks/_mingw_directx.h" 1 3
# 674 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3

# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/sdks/_mingw_ddk.h" 1 3
# 675 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3
# 13 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 2 3


#pragma pack(push,_CRT_PACKING)








 typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 102 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 3
#pragma pack(pop)
# 277 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3


#pragma pack(push,_CRT_PACKING)
# 370 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef unsigned long long size_t;
# 380 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef long long ssize_t;
# 392 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef long long intptr_t;
# 405 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef unsigned long long uintptr_t;
# 418 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef long long ptrdiff_t;
# 428 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
typedef unsigned short wchar_t;







typedef unsigned short wint_t;
typedef unsigned short wctype_t;
# 456 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;







typedef __time64_t time_t;
# 607 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {
  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;
} threadlocinfo;







const char *__mingw_get_crt_info (void);





#pragma pack(pop)
# 9 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\string.h" 2 3
# 36 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\string.h" 3
  __attribute__ ((__dllimport__)) void * _memccpy(void *_Dst,const void *_Src,int _Val,size_t _MaxCount);
                void * memchr(const void *_Buf ,int _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int _memicmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  __attribute__ ((__dllimport__)) int _memicmp_l(const void *_Buf1,const void *_Buf2,size_t _Size,_locale_t _Locale);
  int memcmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  void * memcpy(void * __restrict__ _Dst,const void * __restrict__ _Src,size_t _Size) ;
  void * memset(void *_Dst,int _Val,size_t _Size);

  void * memccpy(void *_Dst,const void *_Src,int _Val,size_t _Size) ;
  int memicmp(const void *_Buf1,const void *_Buf2,size_t _Size) ;


  char * _strset(char *_Str,int _Val) ;
  char * _strset_l(char *_Str,int _Val,_locale_t _Locale) ;
  char * strcpy(char * __restrict__ _Dest,const char * __restrict__ _Source);
  char * strcat(char * __restrict__ _Dest,const char * __restrict__ _Source);
  int strcmp(const char *_Str1,const char *_Str2);
  size_t strlen(const char *_Str);
  size_t strnlen(const char *_Str,size_t _MaxCount);
  void * memmove(void *_Dst,const void *_Src,size_t _Size) ;
  __attribute__ ((__dllimport__)) char * _strdup(const char *_Src);
                char * strchr(const char *_Str,int _Val);
  __attribute__ ((__dllimport__)) int _stricmp(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int _strcmpi(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int _stricmp_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  int strcoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int _strcoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int _stricoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int _stricoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int _strncoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int _strncoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int _strnicoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int _strnicoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  size_t strcspn(const char *_Str,const char *_Control);
  __attribute__ ((__dllimport__)) char * _strerror(const char *_ErrMsg) ;
  char * strerror(int) ;
  __attribute__ ((__dllimport__)) char * _strlwr(char *_String) ;
  char *strlwr_l(char *_String,_locale_t _Locale) ;
  char * strncat(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  int strncmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int _strnicmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int _strnicmp_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  char *strncpy(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  __attribute__ ((__dllimport__)) char * _strnset(char *_Str,int _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) char * _strnset_l(char *str,int c,size_t count,_locale_t _Locale) ;
                char * strpbrk(const char *_Str,const char *_Control);
                char * strrchr(const char *_Str,int _Ch);
  __attribute__ ((__dllimport__)) char * _strrev(char *_Str);
  size_t strspn(const char *_Str,const char *_Control);
                char * strstr(const char *_Str,const char *_SubStr);
  char * strtok(char * __restrict__ _Str,const char * __restrict__ _Delim) ;
  __attribute__ ((__dllimport__)) char * _strupr(char *_String) ;
  __attribute__ ((__dllimport__)) char *_strupr_l(char *_String,_locale_t _Locale) ;
  size_t strxfrm(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t _strxfrm_l(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);


  char * strdup(const char *_Src) ;
  int strcmpi(const char *_Str1,const char *_Str2) ;
  int stricmp(const char *_Str1,const char *_Str2) ;
  char * strlwr(char *_Str) ;
  int strnicmp(const char *_Str1,const char *_Str,size_t _MaxCount) ;
  int strncasecmp (const char *, const char *, size_t);
  int strcasecmp (const char *, const char *);







  char * strnset(char *_Str,int _Val,size_t _MaxCount) ;
  char * strrev(char *_Str) ;
  char * strset(char *_Str,int _Val) ;
  char * strupr(char *_Str) ;





  __attribute__ ((__dllimport__)) wchar_t * _wcsdup(const wchar_t *_Str);
  wchar_t * wcscat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
                wchar_t * wcschr(const wchar_t *_Str,wchar_t _Ch);
  int wcscmp(const wchar_t *_Str1,const wchar_t *_Str2);
  wchar_t * wcscpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  size_t wcscspn(const wchar_t *_Str,const wchar_t *_Control);
  size_t wcslen(const wchar_t *_Str);
  size_t wcsnlen(const wchar_t *_Src,size_t _MaxCount);
  wchar_t *wcsncat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  int wcsncmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  wchar_t *wcsncpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  wchar_t * _wcsncpy_l(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count,_locale_t _Locale) ;
                wchar_t * wcspbrk(const wchar_t *_Str,const wchar_t *_Control);
                wchar_t * wcsrchr(const wchar_t *_Str,wchar_t _Ch);
  size_t wcsspn(const wchar_t *_Str,const wchar_t *_Control);
                wchar_t * wcsstr(const wchar_t *_Str,const wchar_t *_SubStr);
  wchar_t * wcstok(wchar_t * __restrict__ _Str,const wchar_t * __restrict__ _Delim) ;
  __attribute__ ((__dllimport__)) wchar_t * _wcserror(int _ErrNum) ;
  __attribute__ ((__dllimport__)) wchar_t * __wcserror(const wchar_t *_Str) ;
  __attribute__ ((__dllimport__)) int _wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int _wcsicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int _wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int _wcsnicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t * _wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) wchar_t * _wcsrev(wchar_t *_Str);
  __attribute__ ((__dllimport__)) wchar_t * _wcsset(wchar_t *_Str,wchar_t _Val) ;
  __attribute__ ((__dllimport__)) wchar_t * _wcslwr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcslwr_l(wchar_t *_String,_locale_t _Locale) ;
  __attribute__ ((__dllimport__)) wchar_t * _wcsupr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcsupr_l(wchar_t *_String,_locale_t _Locale) ;
  size_t wcsxfrm(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t _wcsxfrm_l(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);
  int wcscoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int _wcscoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int _wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int _wcsicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int _wcsncoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int _wcsncoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int _wcsnicoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int _wcsnicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);


  wchar_t * wcsdup(const wchar_t *_Str) ;

  int wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2) ;
  int wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount) ;
  wchar_t * wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  wchar_t * wcsrev(wchar_t *_Str) ;
  wchar_t * wcsset(wchar_t *_Str,wchar_t _Val) ;
  wchar_t * wcslwr(wchar_t *_Str) ;
  wchar_t * wcsupr(wchar_t *_Str) ;
  int wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2) ;








# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\sec_api/string_s.h" 1 3








# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\string.h" 1 3
# 9 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\sec_api/string_s.h" 2 3
# 175 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\string.h" 2 3
# 4 "kociemba/cubiecube.h" 2

# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 1 3








# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3
# 9 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 2 3

# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/include\\limits.h" 1 3 4
# 38 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/include\\limits.h" 3 4
# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\limits.h" 1 3 4





# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3 4
# 6 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\limits.h" 2 3 4
# 38 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/include\\limits.h" 2 3 4
# 10 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 2 3


#pragma pack(push,_CRT_PACKING)
# 36 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
 typedef int ( *_onexit_t)(void);
# 46 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
  typedef struct _div_t {
    int quot;
    int rem;
  } div_t;

  typedef struct _ldiv_t {
    long quot;
    long rem;
  } ldiv_t;





#pragma pack(4)
 typedef struct {
    unsigned char ld[10];
  } _LDOUBLE;
#pragma pack()



 typedef struct {
    double x;
  } _CRT_DOUBLE;

  typedef struct {
    float f;
  } _CRT_FLOAT;




  typedef struct {
    long double x;
  } _LONGDOUBLE;



#pragma pack(4)
 typedef struct {
    unsigned char ld12[12];
  } _LDBL12;
#pragma pack()
# 100 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
 extern int * __imp___mb_cur_max;







  extern int* __imp___mbcur_max;
# 132 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
  typedef void ( *_purecall_handler)(void);

  __attribute__ ((__dllimport__)) _purecall_handler _set_purecall_handler(_purecall_handler _Handler);
  __attribute__ ((__dllimport__)) _purecall_handler _get_purecall_handler(void);

  typedef void ( *_invalid_parameter_handler)(const wchar_t *,const wchar_t *,const wchar_t *,unsigned int,uintptr_t);
  _invalid_parameter_handler _set_invalid_parameter_handler(_invalid_parameter_handler _Handler);
  _invalid_parameter_handler _get_invalid_parameter_handler(void);



  __attribute__ ((__dllimport__)) extern int * _errno(void);

  errno_t _set_errno(int _Value);
  errno_t _get_errno(int *_Value);

  __attribute__ ((__dllimport__)) unsigned long * __doserrno(void);

  errno_t _set_doserrno(unsigned long _Value);
  errno_t _get_doserrno(unsigned long *_Value);




  extern __attribute__ ((__dllimport__)) char *_sys_errlist[1];
  extern __attribute__ ((__dllimport__)) int _sys_nerr;
# 172 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
  extern int * __imp___argc;







  extern char *** __imp___argv;







  extern wchar_t *** __imp___wargv;
# 200 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
  extern char *** __imp__environ;
# 209 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
  extern wchar_t *** __imp__wenviron;
# 218 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
  extern char ** __imp__pgmptr;
# 227 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
  extern wchar_t ** __imp__wpgmptr;



  errno_t _get_pgmptr(char **_Value);
  errno_t _get_wpgmptr(wchar_t **_Value);




  extern int * __imp__fmode;



  __attribute__ ((__dllimport__)) errno_t _set_fmode(int _Mode);
  __attribute__ ((__dllimport__)) errno_t _get_fmode(int *_PMode);





  extern unsigned int * __imp__osplatform;
# 257 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
  extern unsigned int * __imp__osver;
# 266 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
  extern unsigned int * __imp__winver;
# 275 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
  extern unsigned int * __imp__winmajor;
# 284 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
  extern unsigned int * __imp__winminor;




  errno_t _get_osplatform(unsigned int *_Value);
  errno_t _get_osver(unsigned int *_Value);
  errno_t _get_winver(unsigned int *_Value);
  errno_t _get_winmajor(unsigned int *_Value);
  errno_t _get_winminor(unsigned int *_Value);
# 307 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
  void __attribute__ ((__nothrow__)) exit(int _Code) __attribute__ ((__noreturn__));
  __attribute__ ((__dllimport__)) void __attribute__ ((__nothrow__)) _exit(int _Code) __attribute__ ((__noreturn__));



  void _Exit(int) __attribute__ ((__noreturn__));
# 321 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
  void __attribute__((noreturn)) abort(void);




  __attribute__ ((__dllimport__)) unsigned int _set_abort_behavior(unsigned int _Flags,unsigned int _Mask);



  int abs(int _X);
  long labs(long _X);


  __extension__ long long _abs64(long long);
  int atexit(void ( *)(void));


  double atof(const char *_String);
  double _atof_l(const char *_String,_locale_t _Locale);

  int atoi(const char *_Str);
  __attribute__ ((__dllimport__)) int _atoi_l(const char *_Str,_locale_t _Locale);
  long atol(const char *_Str);
  __attribute__ ((__dllimport__)) long _atol_l(const char *_Str,_locale_t _Locale);


  void * bsearch(const void *_Key,const void *_Base,size_t _NumOfElements,size_t _SizeOfElements,int ( *_PtFuncCompare)(const void *,const void *));
  void qsort(void *_Base,size_t _NumOfElements,size_t _SizeOfElements,int ( *_PtFuncCompare)(const void *,const void *));

  unsigned short _byteswap_ushort(unsigned short _Short);

  __extension__ unsigned long long _byteswap_uint64(unsigned long long _Int64);
  div_t div(int _Numerator,int _Denominator);
  char * getenv(const char *_VarName) ;
  __attribute__ ((__dllimport__)) char * _itoa(int _Value,char *_Dest,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) char * _i64toa(long long _Val,char *_DstBuf,int _Radix) ;
  __extension__ __attribute__ ((__dllimport__)) char * _ui64toa(unsigned long long _Val,char *_DstBuf,int _Radix) ;
  __extension__ __attribute__ ((__dllimport__)) long long _atoi64(const char *_String);
  __extension__ __attribute__ ((__dllimport__)) long long _atoi64_l(const char *_String,_locale_t _Locale);
  __extension__ __attribute__ ((__dllimport__)) long long _strtoi64(const char *_String,char **_EndPtr,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) long long _strtoi64_l(const char *_String,char **_EndPtr,int _Radix,_locale_t _Locale);
  __extension__ __attribute__ ((__dllimport__)) unsigned long long _strtoui64(const char *_String,char **_EndPtr,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) unsigned long long _strtoui64_l(const char *_String,char **_EndPtr,int _Radix,_locale_t _Locale);
  ldiv_t ldiv(long _Numerator,long _Denominator);
  __attribute__ ((__dllimport__)) char * _ltoa(long _Value,char *_Dest,int _Radix) ;
  int mblen(const char *_Ch,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int _mblen_l(const char *_Ch,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) size_t _mbstrlen(const char *_Str);
  __attribute__ ((__dllimport__)) size_t _mbstrlen_l(const char *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) size_t _mbstrnlen(const char *_Str,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t _mbstrnlen_l(const char *_Str,size_t _MaxCount,_locale_t _Locale);
  int mbtowc(wchar_t * __restrict__ _DstCh,const char * __restrict__ _SrcCh,size_t _SrcSizeInBytes);
  __attribute__ ((__dllimport__)) int _mbtowc_l(wchar_t * __restrict__ _DstCh,const char * __restrict__ _SrcCh,size_t _SrcSizeInBytes,_locale_t _Locale);
  size_t mbstowcs(wchar_t * __restrict__ _Dest,const char * __restrict__ _Source,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t _mbstowcs_l(wchar_t * __restrict__ _Dest,const char * __restrict__ _Source,size_t _MaxCount,_locale_t _Locale);
  int rand(void);
  __attribute__ ((__dllimport__)) int _set_error_mode(int _Mode);
  void srand(unsigned int _Seed);



  double __attribute__ ((__nothrow__)) strtod(const char * __restrict__ _Str,char ** __restrict__ _EndPtr);
  float __attribute__ ((__nothrow__)) strtof(const char * __restrict__ nptr, char ** __restrict__ endptr);
  long double __attribute__ ((__nothrow__)) strtold(const char * __restrict__ , char ** __restrict__ );


  extern double __attribute__ ((__nothrow__))
  __strtod (const char * __restrict__ , char ** __restrict__);
# 400 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
  float __mingw_strtof (const char * __restrict__, char ** __restrict__);
  long double __mingw_strtold(const char * __restrict__, char ** __restrict__);

  __attribute__ ((__dllimport__)) double _strtod_l(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,_locale_t _Locale);
  long strtol(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,int _Radix);
  __attribute__ ((__dllimport__)) long _strtol_l(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,int _Radix,_locale_t _Locale);
  unsigned long strtoul(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,int _Radix);
  __attribute__ ((__dllimport__)) unsigned long _strtoul_l(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,int _Radix,_locale_t _Locale);


  int system(const char *_Command);

  __attribute__ ((__dllimport__)) char * _ultoa(unsigned long _Value,char *_Dest,int _Radix) ;
  int wctomb(char *_MbCh,wchar_t _WCh) ;
  __attribute__ ((__dllimport__)) int _wctomb_l(char *_MbCh,wchar_t _WCh,_locale_t _Locale) ;
  size_t wcstombs(char * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) size_t _wcstombs_l(char * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _MaxCount,_locale_t _Locale) ;



  void * calloc(size_t _NumOfElements,size_t _SizeOfElements);
  void free(void *_Memory);
  void * malloc(size_t _Size);
  void * realloc(void *_Memory,size_t _NewSize);
  __attribute__ ((__dllimport__)) void * _recalloc(void *_Memory,size_t _Count,size_t _Size);






  __attribute__ ((__dllimport__)) void _aligned_free(void *_Memory);
  __attribute__ ((__dllimport__)) void * _aligned_malloc(size_t _Size,size_t _Alignment);



  __attribute__ ((__dllimport__)) void * _aligned_offset_malloc(size_t _Size,size_t _Alignment,size_t _Offset);
  __attribute__ ((__dllimport__)) void * _aligned_realloc(void *_Memory,size_t _Size,size_t _Alignment);
  __attribute__ ((__dllimport__)) void * _aligned_recalloc(void *_Memory,size_t _Count,size_t _Size,size_t _Alignment);
  __attribute__ ((__dllimport__)) void * _aligned_offset_realloc(void *_Memory,size_t _Size,size_t _Alignment,size_t _Offset);
  __attribute__ ((__dllimport__)) void * _aligned_offset_recalloc(void *_Memory,size_t _Count,size_t _Size,size_t _Alignment,size_t _Offset);





  __attribute__ ((__dllimport__)) wchar_t * _itow(int _Value,wchar_t *_Dest,int _Radix) ;
  __attribute__ ((__dllimport__)) wchar_t * _ltow(long _Value,wchar_t *_Dest,int _Radix) ;
  __attribute__ ((__dllimport__)) wchar_t * _ultow(unsigned long _Value,wchar_t *_Dest,int _Radix) ;
  double wcstod(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr);
  float wcstof(const wchar_t * __restrict__ nptr, wchar_t ** __restrict__ endptr);

  float wcstof( const wchar_t * __restrict__, wchar_t ** __restrict__);
  long double wcstold(const wchar_t * __restrict__, wchar_t ** __restrict__);

  __attribute__ ((__dllimport__)) double _wcstod_l(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,_locale_t _Locale);
  long wcstol(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,int _Radix);
  __attribute__ ((__dllimport__)) long _wcstol_l(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,int _Radix,_locale_t _Locale);
  unsigned long wcstoul(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,int _Radix);
  __attribute__ ((__dllimport__)) unsigned long _wcstoul_l(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,int _Radix,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t * _wgetenv(const wchar_t *_VarName) ;


  __attribute__ ((__dllimport__)) int _wsystem(const wchar_t *_Command);

  __attribute__ ((__dllimport__)) double _wtof(const wchar_t *_Str);
  __attribute__ ((__dllimport__)) double _wtof_l(const wchar_t *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int _wtoi(const wchar_t *_Str);
  __attribute__ ((__dllimport__)) int _wtoi_l(const wchar_t *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) long _wtol(const wchar_t *_Str);
  __attribute__ ((__dllimport__)) long _wtol_l(const wchar_t *_Str,_locale_t _Locale);

  __extension__ __attribute__ ((__dllimport__)) wchar_t * _i64tow(long long _Val,wchar_t *_DstBuf,int _Radix) ;
  __extension__ __attribute__ ((__dllimport__)) wchar_t * _ui64tow(unsigned long long _Val,wchar_t *_DstBuf,int _Radix) ;
  __extension__ __attribute__ ((__dllimport__)) long long _wtoi64(const wchar_t *_Str);
  __extension__ __attribute__ ((__dllimport__)) long long _wtoi64_l(const wchar_t *_Str,_locale_t _Locale);
  __extension__ __attribute__ ((__dllimport__)) long long _wcstoi64(const wchar_t *_Str,wchar_t **_EndPtr,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) long long _wcstoi64_l(const wchar_t *_Str,wchar_t **_EndPtr,int _Radix,_locale_t _Locale);
  __extension__ __attribute__ ((__dllimport__)) unsigned long long _wcstoui64(const wchar_t *_Str,wchar_t **_EndPtr,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) unsigned long long _wcstoui64_l(const wchar_t *_Str ,wchar_t **_EndPtr,int _Radix,_locale_t _Locale);




  __attribute__ ((__dllimport__)) char * _fullpath(char *_FullPath,const char *_Path,size_t _SizeInBytes);
  __attribute__ ((__dllimport__)) char * _ecvt(double _Val,int _NumOfDigits,int *_PtDec,int *_PtSign) ;
  __attribute__ ((__dllimport__)) char * _fcvt(double _Val,int _NumOfDec,int *_PtDec,int *_PtSign) ;
  __attribute__ ((__dllimport__)) char * _gcvt(double _Val,int _NumOfDigits,char *_DstBuf) ;
  __attribute__ ((__dllimport__)) int _atodbl(_CRT_DOUBLE *_Result,char *_Str);
  __attribute__ ((__dllimport__)) int _atoldbl(_LDOUBLE *_Result,char *_Str);
  __attribute__ ((__dllimport__)) int _atoflt(_CRT_FLOAT *_Result,char *_Str);
  __attribute__ ((__dllimport__)) int _atodbl_l(_CRT_DOUBLE *_Result,char *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int _atoldbl_l(_LDOUBLE *_Result,char *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int _atoflt_l(_CRT_FLOAT *_Result,char *_Str,_locale_t _Locale);





  __extension__ unsigned long long _lrotl(unsigned long long _Val,int _Shift);
  __extension__ unsigned long long _lrotr(unsigned long long _Val,int _Shift);







  __attribute__ ((__dllimport__)) void _makepath(char *_Path,const char *_Drive,const char *_Dir,const char *_Filename,const char *_Ext);
  _onexit_t _onexit(_onexit_t _Func);



  void perror(const char *_ErrMsg);

  __attribute__ ((__dllimport__)) int _putenv(const char *_EnvString);




  __extension__ unsigned long long _rotl64(unsigned long long _Val,int _Shift);
  __extension__ unsigned long long _rotr64(unsigned long long Value,int Shift);






  unsigned int _rotr(unsigned int _Val,int _Shift);
  unsigned int _rotl(unsigned int _Val,int _Shift);


  __extension__ unsigned long long _rotr64(unsigned long long _Val,int _Shift);
  __attribute__ ((__dllimport__)) void _searchenv(const char *_Filename,const char *_EnvVar,char *_ResultPath) ;
  __attribute__ ((__dllimport__)) void _splitpath(const char *_FullPath,char *_Drive,char *_Dir,char *_Filename,char *_Ext) ;
  __attribute__ ((__dllimport__)) void _swab(char *_Buf1,char *_Buf2,int _SizeInBytes);



  __attribute__ ((__dllimport__)) wchar_t * _wfullpath(wchar_t *_FullPath,const wchar_t *_Path,size_t _SizeInWords);
  __attribute__ ((__dllimport__)) void _wmakepath(wchar_t *_ResultPath,const wchar_t *_Drive,const wchar_t *_Dir,const wchar_t *_Filename,const wchar_t *_Ext);


  __attribute__ ((__dllimport__)) void _wperror(const wchar_t *_ErrMsg);

  __attribute__ ((__dllimport__)) int _wputenv(const wchar_t *_EnvString);
  __attribute__ ((__dllimport__)) void _wsearchenv(const wchar_t *_Filename,const wchar_t *_EnvVar,wchar_t *_ResultPath) ;
  __attribute__ ((__dllimport__)) void _wsplitpath(const wchar_t *_FullPath,wchar_t *_Drive,wchar_t *_Dir,wchar_t *_Filename,wchar_t *_Ext) ;


  __attribute__ ((__dllimport__)) void _beep(unsigned _Frequency,unsigned _Duration) __attribute__ ((__deprecated__));

  __attribute__ ((__dllimport__)) void _seterrormode(int _Mode) __attribute__ ((__deprecated__));
  __attribute__ ((__dllimport__)) void _sleep(unsigned long _Duration) __attribute__ ((__deprecated__));
# 574 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
  char * ecvt(double _Val,int _NumOfDigits,int *_PtDec,int *_PtSign) ;
  char * fcvt(double _Val,int _NumOfDec,int *_PtDec,int *_PtSign) ;
  char * gcvt(double _Val,int _NumOfDigits,char *_DstBuf) ;
  char * itoa(int _Val,char *_DstBuf,int _Radix) ;
  char * ltoa(long _Val,char *_DstBuf,int _Radix) ;
  int putenv(const char *_EnvString) ;
  void swab(char *_Buf1,char *_Buf2,int _SizeInBytes) ;
  char * ultoa(unsigned long _Val,char *_Dstbuf,int _Radix) ;
  _onexit_t onexit(_onexit_t _Func);





  typedef struct { __extension__ long long quot, rem; } lldiv_t;

  __extension__ lldiv_t lldiv(long long, long long);

  __extension__ long long llabs(long long);




  __extension__ long long strtoll(const char * __restrict__, char ** __restrict, int);
  __extension__ unsigned long long strtoull(const char * __restrict__, char ** __restrict__, int);


  __extension__ long long atoll (const char *);


  __extension__ long long wtoll (const wchar_t *);
  __extension__ char * lltoa (long long, char *, int);
  __extension__ char * ulltoa (unsigned long long , char *, int);
  __extension__ wchar_t * lltow (long long, wchar_t *, int);
  __extension__ wchar_t * ulltow (unsigned long long, wchar_t *, int);
# 627 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 3
#pragma pack(pop)


# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\sec_api/stdlib_s.h" 1 3








# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 1 3
# 9 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\sec_api/stdlib_s.h" 2 3
# 629 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 2 3

# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\malloc.h" 1 3








# 1 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3
# 9 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\malloc.h" 2 3


#pragma pack(push,_CRT_PACKING)
# 46 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\malloc.h" 3
 typedef struct _heapinfo {
    int *_pentry;
    size_t _size;
    int _useflag;
  } _HEAPINFO;


  extern unsigned int _amblksiz;
# 99 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\malloc.h" 3
void * __mingw_aligned_malloc (size_t _Size, size_t _Alignment);
void __mingw_aligned_free (void *_Memory);
void * __mingw_aligned_offset_realloc (void *_Memory, size_t _Size, size_t _Alignment, size_t _Offset);
void * __mingw_aligned_realloc (void *_Memory, size_t _Size, size_t _Offset);



  __attribute__ ((__dllimport__)) int _resetstkoflw (void);
  __attribute__ ((__dllimport__)) unsigned long _set_malloc_crt_max_wait(unsigned long _NewValue);

  __attribute__ ((__dllimport__)) void * _expand(void *_Memory,size_t _NewSize);
  __attribute__ ((__dllimport__)) size_t _msize(void *_Memory);






  __attribute__ ((__dllimport__)) size_t _get_sbh_threshold(void);
  __attribute__ ((__dllimport__)) int _set_sbh_threshold(size_t _NewValue);
  __attribute__ ((__dllimport__)) errno_t _set_amblksiz(size_t _Value);
  __attribute__ ((__dllimport__)) errno_t _get_amblksiz(size_t *_Value);
  __attribute__ ((__dllimport__)) int _heapadd(void *_Memory,size_t _Size);
  __attribute__ ((__dllimport__)) int _heapchk(void);
  __attribute__ ((__dllimport__)) int _heapmin(void);
  __attribute__ ((__dllimport__)) int _heapset(unsigned int _Fill);
  __attribute__ ((__dllimport__)) int _heapwalk(_HEAPINFO *_EntryInfo);
  __attribute__ ((__dllimport__)) size_t _heapused(size_t *_Used,size_t *_Commit);
  __attribute__ ((__dllimport__)) intptr_t _get_heap_handle(void);
# 140 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\malloc.h" 3
  static __inline void *_MarkAllocaS(void *_Ptr,unsigned int _Marker) {
    if(_Ptr) {
      *((unsigned int*)_Ptr) = _Marker;
      _Ptr = (char*)_Ptr + 16;
    }
    return _Ptr;
  }
# 159 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\malloc.h" 3
  static __inline void _freea(void *_Memory) {
    unsigned int _Marker;
    if(_Memory) {
      _Memory = (char*)_Memory - 16;
      _Marker = *(unsigned int *)_Memory;
      if(_Marker==0xDDDD) {
 free(_Memory);
      }





    }
  }
# 205 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\malloc.h" 3
#pragma pack(pop)
# 630 "C:/Xilinx/Vivado/2018.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdlib.h" 2 3
# 5 "kociemba/cubiecube.h" 2


# 1 "kociemba/corner.h" 1



typedef enum {
    URF, UFL, ULB, UBR, DFR, DLF, DBL, DRB
} corner_t;
# 7 "kociemba/cubiecube.h" 2

# 1 "kociemba/edge.h" 1



typedef enum {
    UR, UF, UL, UB, DR, DF, DL, DB, FR, FL, BL, BR
} edge_t;
# 8 "kociemba/cubiecube.h" 2



struct cubiecube {


    corner_t cp[8];

    signed char co[8];

    edge_t ep[12];

    signed char eo[12];
};
typedef struct cubiecube cubiecube_t;


struct facecube;


cubiecube_t* get_moveCube(void);
cubiecube_t* get_cubiecube(void);
cubiecube_t* get_cubiecube2(void);


int Cnk(int n, int k);
void rotateLeft_corner(corner_t* arr, int l, int r);
void rotateRight_corner(corner_t* arr, int l, int r);
void rotateLeft_edge(edge_t* arr, int l, int r);
void rotateRight_edge(edge_t* arr, int l, int r);
struct facecube* toFaceCube(cubiecube_t* cubiecube);
void cornerMultiply(cubiecube_t* cubiecube, cubiecube_t* b);
void edgeMultiply(cubiecube_t* cubiecube, cubiecube_t* b);
void multiply(cubiecube_t* cubiecube, cubiecube_t* b);
void invCubieCube(cubiecube_t* cubiecube, cubiecube_t* c);
short getTwist(cubiecube_t* cubiecube);
void setTwist(cubiecube_t* cubiecube, short twist);
short getFlip(cubiecube_t* cubiecube);
void setFlip(cubiecube_t* cubiecube, short flip);
short cornerParity(cubiecube_t* cubiecube);
short edgeParity(cubiecube_t* cubiecube);
short getFRtoBR(cubiecube_t* cubiecube);
void setFRtoBR(cubiecube_t* cubiecube, short idx);
short getURFtoDLF(cubiecube_t* cubiecube);
void setURFtoDLF(cubiecube_t* cubiecube, short idx);
int getURtoDF(cubiecube_t* cubiecube);
void setURtoDF(cubiecube_t* cubiecube, int idx);

short getURtoUL(cubiecube_t* cubiecube);
void setURtoUL(cubiecube_t* cubiecube, short idx);
short getUBtoDF(cubiecube_t* cubiecube);
void setUBtoDF(cubiecube_t* cubiecube, short idx);
int getURFtoDLB(cubiecube_t* cubiecube);
void setURFtoDLB(cubiecube_t* cubiecube, int idx);
int getURtoBR(cubiecube_t* cubiecube);
void setURtoBR(cubiecube_t* cubiecube, int idx);

int verify(cubiecube_t* cubiecube);

int getURtoDF_standalone(short idx1, short idx2);
# 2 "kociemba/cubiecube.c" 2
# 1 "kociemba/facecube.h" 1



# 1 "kociemba/facelet.h" 1
# 35 "kociemba/facelet.h"
typedef enum {
    U1, U2, U3, U4, U5, U6, U7, U8, U9, R1, R2, R3, R4, R5, R6, R7, R8, R9, F1, F2, F3, F4, F5, F6, F7, F8, F9, D1, D2, D3, D4, D5, D6, D7, D8, D9, L1, L2, L3, L4, L5, L6, L7, L8, L9, B1, B2, B3, B4, B5, B6, B7, B8, B9
} facelet_t;
# 4 "kociemba/facecube.h" 2

# 1 "kociemba/color.h" 1



typedef enum {U, R, F, D, L, B} color_t;
# 5 "kociemba/facecube.h" 2





struct facecube {
    color_t f[54];
};
typedef struct facecube facecube_t;


struct cubiecube;





extern facelet_t cornerFacelet[8][3];




extern facelet_t edgeFacelet[12][2];


extern color_t cornerColor[8][3];


extern color_t edgeColor[12][2];

facecube_t* get_facecube(void);
facecube_t* get_facecube_fromstring(char* cubeString);

void to_String(facecube_t* facecube, char* res);
struct cubiecube* toCubieCube(facecube_t* facecube);
# 3 "kociemba/cubiecube.c" 2

cubiecube_t * get_moveCube()
{
    static cubiecube_t moveCube[6];
    static int moveCube_initialized = 0;
    static const corner_t cpU[8] = { UBR, URF, UFL, ULB, DFR, DLF, DBL, DRB };
_ssdm_SpecConstant(cpU);
# 8 "kociemba/cubiecube.c"

    static const signed char coU[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
_ssdm_SpecConstant(coU);
# 9 "kociemba/cubiecube.c"

    static const edge_t epU[12] = { UB, UR, UF, UL, DR, DF, DL, DB, FR, FL, BL, BR };
_ssdm_SpecConstant(epU);
# 10 "kociemba/cubiecube.c"

    static const signed char eoU[12] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
_ssdm_SpecConstant(eoU);
# 11 "kociemba/cubiecube.c"

    static const corner_t cpR[8] = { DFR, UFL, ULB, URF, DRB, DLF, DBL, UBR };
_ssdm_SpecConstant(cpR);
# 12 "kociemba/cubiecube.c"

    static const signed char coR[8] = { 2, 0, 0, 1, 1, 0, 0, 2 };
_ssdm_SpecConstant(coR);
# 13 "kociemba/cubiecube.c"

    static const edge_t epR[12] = { FR, UF, UL, UB, BR, DF, DL, DB, DR, FL, BL, UR };
_ssdm_SpecConstant(epR);
# 14 "kociemba/cubiecube.c"

    static const signed char eoR[12] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
_ssdm_SpecConstant(eoR);
# 15 "kociemba/cubiecube.c"

    static const corner_t cpF[8] = { UFL, DLF, ULB, UBR, URF, DFR, DBL, DRB };
_ssdm_SpecConstant(cpF);
# 16 "kociemba/cubiecube.c"

    static const signed char coF[8] = { 1, 2, 0, 0, 2, 1, 0, 0 };
_ssdm_SpecConstant(coF);
# 17 "kociemba/cubiecube.c"

    static const edge_t epF[12] = { UR, FL, UL, UB, DR, FR, DL, DB, UF, DF, BL, BR };
_ssdm_SpecConstant(epF);
# 18 "kociemba/cubiecube.c"

    static const signed char eoF[12] = { 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0 };
_ssdm_SpecConstant(eoF);
# 19 "kociemba/cubiecube.c"

    static const corner_t cpD[8] = { URF, UFL, ULB, UBR, DLF, DBL, DRB, DFR };
_ssdm_SpecConstant(cpD);
# 20 "kociemba/cubiecube.c"

    static const signed char coD[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
_ssdm_SpecConstant(coD);
# 21 "kociemba/cubiecube.c"

    static const edge_t epD[12] = { UR, UF, UL, UB, DF, DL, DB, DR, FR, FL, BL, BR };
_ssdm_SpecConstant(epD);
# 22 "kociemba/cubiecube.c"

    static const signed char eoD[12] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
_ssdm_SpecConstant(eoD);
# 23 "kociemba/cubiecube.c"

    static const corner_t cpL[8] = { URF, ULB, DBL, UBR, DFR, UFL, DLF, DRB };
_ssdm_SpecConstant(cpL);
# 24 "kociemba/cubiecube.c"

    static const signed char coL[8] = { 0, 1, 2, 0, 0, 2, 1, 0 };
_ssdm_SpecConstant(coL);
# 25 "kociemba/cubiecube.c"

    static const edge_t epL[12] = { UR, UF, BL, UB, DR, DF, FL, DB, FR, UL, DL, BR };
_ssdm_SpecConstant(epL);
# 26 "kociemba/cubiecube.c"

    static const signed char eoL[12] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
_ssdm_SpecConstant(eoL);
# 27 "kociemba/cubiecube.c"

    static const corner_t cpB[8] = { URF, UFL, UBR, DRB, DFR, DLF, ULB, DBL };
_ssdm_SpecConstant(cpB);
# 28 "kociemba/cubiecube.c"

    static const signed char coB[8] = { 0, 0, 1, 2, 0, 0, 2, 1 };
_ssdm_SpecConstant(coB);
# 29 "kociemba/cubiecube.c"

    static const edge_t epB[12] = { UR, UF, UL, BR, DR, DF, DL, BL, FR, FL, UB, DB };
_ssdm_SpecConstant(epB);
# 30 "kociemba/cubiecube.c"

    static const signed char eoB[12] = { 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1 };
_ssdm_SpecConstant(eoB);
# 31 "kociemba/cubiecube.c"


    if (!moveCube_initialized) {
        int i;
        for (i =0; i<8 ; i++){
            moveCube[0].cp[i] = cpU[i];
            moveCube[0].co[i] = coU[i];
            moveCube[1].cp[i] = cpR[i];
            moveCube[1].co[i] = coR[i];
            moveCube[2].cp[i] = cpF[i];
            moveCube[2].co[i] = coF[i];
            moveCube[3].cp[i] = cpD[i];
            moveCube[3].co[i] = coD[i];
            moveCube[4].cp[i] = cpL[i];
            moveCube[4].co[i] = coL[i];
            moveCube[5].cp[i] = cpB[i];
            moveCube[5].co[i] = coB[i];

        }
        for (i =0; i<12 ; i++){
            moveCube[0].ep[i] = epU[i];
            moveCube[0].eo[i] = eoU[i];
            moveCube[1].ep[i] = epR[i];
            moveCube[1].eo[i] = eoR[i];
            moveCube[2].ep[i] = epF[i];
            moveCube[2].eo[i] = eoF[i];
            moveCube[3].ep[i] = epD[i];
            moveCube[3].eo[i] = eoD[i];
            moveCube[4].ep[i] = epL[i];
            moveCube[4].eo[i] = eoL[i];
            moveCube[5].ep[i] = epB[i];
            moveCube[5].eo[i] = eoB[i];

        }
# 89 "kociemba/cubiecube.c"
    }

    return moveCube;
}

cubiecube_t* get_cubiecube()
{
    static cubiecube_t result [1];


    static const corner_t cp[8] = { URF, UFL, ULB, UBR, DFR, DLF, DBL, DRB };
_ssdm_SpecConstant(cp);
# 99 "kociemba/cubiecube.c"

    static const signed char co[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
_ssdm_SpecConstant(co);
# 100 "kociemba/cubiecube.c"

    static const edge_t ep[12] = { UR, UF, UL, UB, DR, DF, DL, DB, FR, FL, BL, BR };
_ssdm_SpecConstant(ep);
# 101 "kociemba/cubiecube.c"

    static const signed char eo[12] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
_ssdm_SpecConstant(eo);
# 102 "kociemba/cubiecube.c"

    int i;
    for (i =0; i<8 ; i++){
        result->cp[i]= cp[i];
        result->co[i]= co[i];
    }
    for (i =0; i<12 ; i++){
        result->ep[i]= ep[i];
        result->eo[i]= eo[i];
    }






    return result;
}

cubiecube_t* get_cubiecube2()
{
    static cubiecube_t result [1];


    static const corner_t cp[8] = { URF, UFL, ULB, UBR, DFR, DLF, DBL, DRB };
_ssdm_SpecConstant(cp);
# 126 "kociemba/cubiecube.c"

    static const signed char co[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
_ssdm_SpecConstant(co);
# 127 "kociemba/cubiecube.c"

    static const edge_t ep[12] = { UR, UF, UL, UB, DR, DF, DL, DB, FR, FL, BL, BR };
_ssdm_SpecConstant(ep);
# 128 "kociemba/cubiecube.c"

    static const signed char eo[12] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
_ssdm_SpecConstant(eo);
# 129 "kociemba/cubiecube.c"

    int i;
    for (i =0; i<8 ; i++){
        result->cp[i]= cp[i];
        result->co[i]= co[i];
    }
    for (i =0; i<12 ; i++){
        result->ep[i]= ep[i];
        result->eo[i]= eo[i];
    }





    return result;
}

int Cnk(int n, int k) {
    int i, j, s;
    if (n < k)
        return 0;
    if (k > n / 2)
        k = n - k;
    for (s = 1, i = n, j = 1; i != n - k; i--, j++) {
        s *= i;
        s /= j;
    }
    return s;
}

void rotateLeft_corner(corner_t* arr, int l, int r)

{
    int i;
    corner_t temp = arr[l];
    for (i = l; i < r; i++)
        arr[i] = arr[i + 1];
    arr[r] = temp;
}

void rotateRight_corner(corner_t* arr, int l, int r)

{
    int i;
    corner_t temp = arr[r];
    for (i = r; i > l; i--)
        arr[i] = arr[i - 1];
    arr[l] = temp;
}


void rotateLeft_edge(edge_t* arr, int l, int r)

{
    int i;
    edge_t temp = arr[l];
    for (i = l; i < r; i++)
        arr[i] = arr[i + 1];
    arr[r] = temp;
}

void rotateRight_edge(edge_t* arr, int l, int r)

{
    int i;
    edge_t temp = arr[r];
    for (i = r; i > l; i--)
        arr[i] = arr[i - 1];
    arr[l] = temp;
}

facecube_t* toFaceCube(cubiecube_t* cubiecube)
{
    int i, j, n;
    signed char ori;
    facecube_t* fcRet = get_facecube();
    for(i = 0; i < 8; i++) {
        j = cubiecube->cp[i];

        ori = cubiecube->co[i];
        for (n = 0; n < 3; n++)
            fcRet->f[cornerFacelet[i][(n + ori) % 3]] = cornerColor[j][n];
    }
    for(i = 0; i < 12; i++)
    {
        j = cubiecube->ep[i];

        ori = cubiecube->eo[i];
        for (n = 0; n < 2; n++)
            fcRet->f[edgeFacelet[i][(n + ori) % 2]] = edgeColor[j][n];
    }
    return fcRet;
}

void cornerMultiply(cubiecube_t* cubiecube, cubiecube_t* b)
{
    int corn;
    signed char oriA, oriB, ori;
    corner_t cPerm[8] = {0};
    signed char cOri[8] = {0};
    for (corn = 0; corn < 8; corn++) {
        cPerm[corn] = cubiecube->cp[b->cp[corn]];

        oriA = cubiecube->co[b->cp[corn]];
        oriB = b->co[corn];
        ori = 0;

        if (oriA < 3 && oriB < 3)
        {
            ori = oriA + oriB;
            if (ori >= 3)
                ori -= 3;


        } else if (oriA < 3 && oriB >= 3)

        {
            ori = oriA + oriB;
            if (ori >= 6)
                ori -= 3;
        } else if (oriA >= 3 && oriB < 3)

        {
            ori = oriA - oriB;
            if (ori < 3)
                ori += 3;
        } else if (oriA >= 3 && oriB >= 3)

        {
            ori = oriA - oriB;
            if (ori < 0)
                ori += 3;

        }
        cOri[corn] = ori;
    }
    for(corn = 0; corn < 8; corn++) {
        cubiecube->cp[corn] = cPerm[corn];
        cubiecube->co[corn] = cOri[corn];
    }
}

void edgeMultiply(cubiecube_t* cubiecube, cubiecube_t* b)
{
    int edge;
    edge_t ePerm[12] = {0};
    signed char eOri[12] = {0};

    for(edge = 0; edge < 12; edge++) {
        ePerm[edge] = cubiecube->ep[b->ep[edge]];
        eOri[edge] = (b->eo[edge] + cubiecube->eo[b->ep[edge]]) % 2;
    }
    for(edge = 0; edge < 12; edge++) {
        cubiecube->ep[edge] = ePerm[edge];
        cubiecube->eo[edge] = eOri[edge];
    }
}

void multiply(cubiecube_t* cubiecube, cubiecube_t* b)
{
    cornerMultiply(cubiecube, b);
    edgeMultiply(cubiecube, b);
}

void invCubieCube(cubiecube_t* cubiecube, cubiecube_t* c)
{
    int edge, corn;
    for (edge = 0; edge < 12; edge++)
        c->ep[cubiecube->ep[edge]] = edge;
    for (edge = 0; edge < 12; edge++)
        c->eo[edge] = cubiecube->eo[c->ep[edge]];
    for (corn = 0; corn < 8; corn++)
        c->cp[cubiecube->cp[corn]] = corn;
    for (corn = 0; corn < 8; corn++) {
        signed char ori = cubiecube->co[c->cp[corn]];
        if (ori >= 3)

            c->co[corn] = ori;
        else {
            c->co[corn] = -ori;
            if (c->co[corn] < 0)
                c->co[corn] += 3;
        }
    }
}

short getTwist(cubiecube_t* cubiecube)
{
    short ret = 0;
    int i;
    for (i = URF; i < DRB; i++)
        ret = (short) (3 * ret + cubiecube->co[i]);
    return ret;
}

void setTwist(cubiecube_t* cubiecube, short twist)
{
    int twistParity = 0;
    int i;
    for (i = DRB - 1; i >= URF; i--) {
        twistParity += cubiecube->co[i] = (signed char) (twist % 3);
        twist /= 3;
    }
    cubiecube->co[DRB] = (signed char) ((3 - twistParity % 3) % 3);
}

short getFlip(cubiecube_t* cubiecube)
{
    int i;
    short ret = 0;
    for (i = UR; i < BR; i++)
        ret = (short) (2 * ret + cubiecube->eo[i]);
    return ret;
}

void setFlip(cubiecube_t* cubiecube, short flip)
{
    int i;
    int flipParity = 0;
    for (i = BR - 1; i >= UR; i--) {
        flipParity += cubiecube->eo[i] = (signed char) (flip % 2);
        flip /= 2;
    }
    cubiecube->eo[BR] = (signed char) ((2 - flipParity % 2) % 2);
}

short cornerParity(cubiecube_t* cubiecube)
{
    int i, j;
    int s = 0;
    for (i = DRB; i >= URF + 1; i--)
        for (j = i - 1; j >= URF; j--)
            if (cubiecube->cp[j] > cubiecube->cp[i])
                s++;
    return (short) (s % 2);
}

short edgeParity(cubiecube_t* cubiecube)
{
    int i, j;
    int s = 0;
    for (i = BR; i >= UR + 1; i--)
        for (j = i - 1; j >= UR; j--)
            if (cubiecube->ep[j] > cubiecube->ep[i])
                s++;
    return (short) (s % 2);
}

short getFRtoBR(cubiecube_t* cubiecube)
{
    int a = 0, x = 0, j;
    int b = 0;
    edge_t edge4[4] = {0};

    for (j = BR; j >= UR; j--)
        if (FR <= cubiecube->ep[j] && cubiecube->ep[j] <= BR) {
            a += Cnk(11 - j, x + 1);
            edge4[3 - x++] = cubiecube->ep[j];
        }

    for (j = 3; j > 0; j--)

    {
        int k = 0;
        while (edge4[j] != j + 8) {
            rotateLeft_edge(edge4, 0, j);
            k++;
        }
        b = (j + 1) * b + k;
    }
    return (short) (24 * a + b);
}
void setFRtoBR(cubiecube_t* cubiecube, short idx)
{
    int x, j, k, e;
    edge_t sliceEdge[4] = { FR, FL, BL, BR };
    edge_t otherEdge[8] = { UR, UF, UL, UB, DR, DF, DL, DB };
    int b = idx % 24;
    int a = idx / 24;
    for (e = 0; e < 12; e++)
        cubiecube->ep[e] = DB;

    for (j = 1; j < 4; j++)
    {
        k = b % (j + 1);
        b /= j + 1;
        while (k-- > 0)
            rotateRight_edge(sliceEdge, 0, j);
    }

    x = 3;
    for (j = UR; j <= BR; j++)
        if (a - Cnk(11 - j, x + 1) >= 0) {
            cubiecube->ep[j] = sliceEdge[3 - x];
            a -= Cnk(11 - j, x-- + 1);
        }
    x = 0;
    for (j = UR; j <= BR; j++)
        if (cubiecube->ep[j] == DB)
            cubiecube->ep[j] = otherEdge[x++];
}

short getURFtoDLF(cubiecube_t* cubiecube)
{
    int a = 0, x = 0, j, b = 0;
    corner_t corner6[6] = {0};

    for (j = URF; j <= DRB; j++)
        if (cubiecube->cp[j] <= DLF) {
            a += Cnk(j, x + 1);
            corner6[x++] = cubiecube->cp[j];
        }

    for (j = 5; j > 0; j--)

    {
        int k = 0;
        while (corner6[j] != j) {
            rotateLeft_corner(corner6, 0, j);
            k++;
        }
        b = (j + 1) * b + k;
    }
    return (short) (720 * a + b);
}

void setURFtoDLF(cubiecube_t* cubiecube, short idx)
{
    int x;
    corner_t corner6[6] = { URF, UFL, ULB, UBR, DFR, DLF };
    corner_t otherCorner[2] = { DBL, DRB };
    int b = idx % 720;
    int a = idx / 720;
    int c, j, k;
    for(c = 0; c < 8; c++)
        cubiecube->cp[c] = DRB;

    for (j = 1; j < 6; j++)
    {
        k = b % (j + 1);
        b /= j + 1;
        while (k-- > 0)
            rotateRight_corner(corner6, 0, j);
    }
    x = 5;
    for (j = DRB; j >= 0; j--)
        if (a - Cnk(j, x + 1) >= 0) {
            cubiecube->cp[j] = corner6[x];
            a -= Cnk(j, x-- + 1);
        }
    x = 0;
    for (j = URF; j <= DRB; j++)
        if (cubiecube->cp[j] == DRB)
            cubiecube->cp[j] = otherCorner[x++];
}

int getURtoDF(cubiecube_t* cubiecube)
{
    int a = 0, x = 0;
    int b = 0, j;
    edge_t edge6[6] = {0};

    for (j = UR; j <= BR; j++)
        if (cubiecube->ep[j] <= DF) {
            a += Cnk(j, x + 1);
            edge6[x++] = cubiecube->ep[j];
        }

    for (j = 5; j > 0; j--)

    {
        int k = 0;
        while (edge6[j] != j) {
            rotateLeft_edge(edge6, 0, j);
            k++;
        }
        b = (j + 1) * b + k;
    }
    return 720 * a + b;
}

void setURtoDF(cubiecube_t* cubiecube, int idx)
{
    int x, e, j, k;
    edge_t edge6[6] = { UR, UF, UL, UB, DR, DF };
    edge_t otherEdge[6] = { DL, DB, FR, FL, BL, BR };
    int b = idx % 720;
    int a = idx / 720;

    for(e = 0; e < 12; e++)
        cubiecube->ep[e] = BR;

    for (j = 1; j < 6; j++)
    {
        k = b % (j + 1);
        b /= j + 1;
        while (k-- > 0)
            rotateRight_edge(edge6, 0, j);
    }
    x = 5;
    for (j = BR; j >= 0; j--)
        if (a - Cnk(j, x + 1) >= 0) {
            cubiecube->ep[j] = edge6[x];
            a -= Cnk(j, x-- + 1);
        }
    x = 0;
    for (j = UR; j <= BR; j++)
        if (cubiecube->ep[j] == BR)
            cubiecube->ep[j] = otherEdge[x++];
}

short getURtoUL(cubiecube_t* cubiecube)
{
    int a = 0, b = 0, x = 0, j;
    edge_t edge3[3] = {0};

    for (j = UR; j <= BR; j++)
        if (cubiecube->ep[j] <= UL) {
            a += Cnk(j, x + 1);
            edge3[x++] = cubiecube->ep[j];
        }

    for (j = 2; j > 0; j--)

    {
        int k = 0;
        while (edge3[j] != j) {
            rotateLeft_edge(edge3, 0, j);
            k++;
        }
        b = (j + 1) * b + k;
    }
    return (short) (6 * a + b);
}

void setURtoUL(cubiecube_t* cubiecube, short idx)
{
    int x, e, j, k;
    edge_t edge3[3] = { UR, UF, UL };
    int b = idx % 6;
    int a = idx / 6;
    for(e = 0; e < 12; e++) {
        cubiecube->ep[e] = BR;
    }

    for (j = 1; j < 3; j++) {
        k = b % (j + 1);
        b /= j + 1;
        while (k-- > 0)
            rotateRight_edge(edge3, 0, j);
    }
    x = 2;
    for (j = BR; j >= 0; j--) {
        if (a - Cnk(j, x + 1) >= 0) {
            cubiecube->ep[j] = edge3[x];
            a -= Cnk(j, x-- + 1);
        }
    }
}

short getUBtoDF(cubiecube_t* cubiecube)
{
    int a = 0, x = 0, b = 0, j;
    edge_t edge3[3] = {0};

    for (j = UR; j <= BR; j++)
        if (UB <= cubiecube->ep[j] && cubiecube->ep[j] <= DF) {
            a += Cnk(j, x + 1);
            edge3[x++] = cubiecube->ep[j];
        }

    for (j = 2; j > 0; j--)

    {
        int k = 0;
        while (edge3[j] != UB + j) {
            rotateLeft_edge(edge3, 0, j);
            k++;
        }
        b = (j + 1) * b + k;
    }
    return (short) (6 * a + b);
}

void setUBtoDF(cubiecube_t* cubiecube, short idx)
{
    int x, e, j, k;
    edge_t edge3[3] = { UB, DR, DF };
    int b = idx % 6;
    int a = idx / 6;
    for (e = 0; e < 12; e++)
        cubiecube->ep[e] = BR;

    for (j = 1; j < 3; j++)
    {
        k = b % (j + 1);
        b /= j + 1;
        while (k-- > 0)
            rotateRight_edge(edge3, 0, j);
    }
    x = 2;
    for (j = BR; j >= 0; j--)
        if (a - Cnk(j, x + 1) >= 0) {
            cubiecube->ep[j] = edge3[x];
            a -= Cnk(j, x-- + 1);
        }
}

int getURFtoDLB(cubiecube_t* cubiecube)
{
    corner_t perm[8] = {0};
    int b = 0, i, j;
    for (i = 0; i < 8; i++)
        perm[i] = cubiecube->cp[i];
    for (j = 7; j > 0; j--)
    {
        int k = 0;
        while (perm[j] != j) {
            rotateLeft_corner(perm, 0, j);
            k++;
        }
        b = (j + 1) * b + k;
    }
    return b;
}

void setURFtoDLB(cubiecube_t* cubiecube, int idx)
{
    corner_t perm[8] = { URF, UFL, ULB, UBR, DFR, DLF, DBL, DRB };
    int k, j;
    int x = 7;
    for (j = 1; j < 8; j++) {
        k = idx % (j + 1);
        idx /= j + 1;
        while (k-- > 0)
            rotateRight_corner(perm, 0, j);
    }

    for (j = 7; j >= 0; j--)
        cubiecube->cp[j] = perm[x--];
}

int getURtoBR(cubiecube_t* cubiecube)
{
    edge_t perm[12] = {0};
    int b = 0, i, j;
    for (i = 0; i < 12; i++)
        perm[i] = cubiecube->ep[i];
    for (j = 11; j > 0; j--)
    {
        int k = 0;
        while (perm[j] != j) {
            rotateLeft_edge(perm, 0, j);
            k++;
        }
        b = (j + 1) * b + k;
    }
    return b;
}

void setURtoBR(cubiecube_t* cubiecube, int idx)
{
    edge_t perm[12] = { UR, UF, UL, UB, DR, DF, DL, DB, FR, FL, BL, BR };
    int k, j;
    int x = 11;
    for (j = 1; j < 12; j++) {
        k = idx % (j + 1);
        idx /= j + 1;
        while (k-- > 0)
            rotateRight_edge(perm, 0, j);
    }
    for (j = 11; j >= 0; j--)
        cubiecube->ep[j] = perm[x--];
}

int verify(cubiecube_t* cubiecube)
{
    int sum = 0, e, i, c;
    int edgeCount[12] = {0};
    int cornerCount[8] = {0};

    for(e = 0; e < 12; e++)
        edgeCount[cubiecube->ep[e]]++;
    for (i = 0; i < 12; i++)
        if (edgeCount[i] != 1)
            return -2;

    for (i = 0; i < 12; i++)
        sum += cubiecube->eo[i];
    if (sum % 2 != 0)
        return -3;

    for(c = 0; c < 8; c++)
        cornerCount[cubiecube->cp[c]]++;
    for (i = 0; i < 8; i++)
        if (cornerCount[i] != 1)
            return -4;

    sum = 0;
    for (i = 0; i < 8; i++)
        sum += cubiecube->co[i];
    if (sum % 3 != 0)
        return -5;

    if ((edgeParity(cubiecube) ^ cornerParity(cubiecube)) != 0)
        return -6;

    return 0;
}

int getURtoDF_standalone(short idx1, short idx2)
{
    int res, i;
    cubiecube_t *a = get_cubiecube();
    cubiecube_t *b = get_cubiecube2();



    setURtoUL(a, idx1);
    setUBtoDF(b, idx2);
    for (i = 0; i < 8; i++) {
        if (a->ep[i] != BR) {
            if (b->ep[i] != BR) {
                return -1;
            } else {
                b->ep[i] = a->ep[i];
            }
        }
    }
    res = getURtoDF(b);


    return res;
}
