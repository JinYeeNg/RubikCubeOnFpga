
// #include <stdio.h>

// int main()
// {
//     printf("Hello World");
//     void* ptr;
//     int len = 1;
    
//     FILE* f = fopen("/home/jinyeeng/Documents/FYP/source_code/kociemba/kociemba/ckociemba/cache/flipMove", "rb");
//     if (!fread(ptr, len, 1, f))
//        ((void)0); // suppress -Wunused-result warning
//     fclose(f);
//     return 0;
// }
/* fread example: read an entire file */
#include <stdio.h>
#include <stdlib.h>


int main () {
  FILE * pFile;
  long lSize;
  short * buffer;
  size_t result;

  pFile = fopen ( "cache/MergeURtoULandUBtoDF" , "rb" );
  if (pFile==NULL) {fputs ("File error",stderr); exit (1);}

  // obtain file size:
  fseek (pFile , 0 , SEEK_END);
  lSize = (ftell (pFile))/2;
  rewind (pFile);

  // allocate memory to contain the whole file:
  buffer = (short*) malloc (sizeof(short)*lSize);
  if (buffer == NULL) {fputs ("Memory error",stderr); exit (2);}
  // copy the file into the buffer:
  //printf("%ld",lSize);
  result = fread (buffer,2,lSize,pFile);
  if (result != lSize) {fputs ("Reading error",stderr); exit (3);}
  for (int i =0 ; i< lSize ; i++) {
    //printf( "%hu" , buffer[i] );
    printf( "%#06hx" , buffer[i] );
  }
  

  /* the whole file is now loaded in the memory buffer. */
  //printf("hello ");
  // terminate
  fclose (pFile);
  free (buffer);
  return 0;
}