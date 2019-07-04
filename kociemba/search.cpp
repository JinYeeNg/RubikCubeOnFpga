// #include <time.h>
//#include "tbb/parallel_for.h"
// #include <stdlib.h>
#include <stdio.h>
// #include <stdbool.h>
#include "hls_stream.h"
#include "search.h"
#include "color.h"
#include "facecube.h"
#include "coordcube.h"
//#include "tbb/atomic.h"
//#include "tbb/task_group.h"

#define MIN(a, b) (((a) < (b)) ? (a) : (b))
#define MAX(a, b) (((a) > (b)) ? (a) : (b))
#define arraySize1 8000
#define arraySize2 1000
#define arraySize3 1000
int nOld = -1;
short twistOld = -1;
short flipOld = -1;
short sliceOld = -100;
cubiecube_t moveCube[6];


// int loop = 0;
// int loop2 = 0;
char label[18][2] = {{0, 1}, {0, 2}, {0, 3}, {1, 1}, {1, 2}, {1, 3}, {2, 1}, {2, 2}, {2, 3}, {3, 1}, {3, 2}, {3, 3}, {4, 1}, {4, 2}, {4, 3}, {5, 1}, {5, 2}, {5, 3}};
char label3[10][2] = {{0, 1}, {0, 2}, {0, 3}, {1, 2}, {2, 2}, {3, 1}, {3, 2}, {3, 3}, {4, 2}, {5, 2}};
bool parityMove[2][18] = {
    {1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1},
    {0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0}};

typedef struct
{
    short flip; // phase1 coordinates
    short twist;
    short slice;
    bool parity; // phase2 coordinates
    short URFtoDLF;
    short FRtoBR;
    short URtoDF;
    char depthPhase1;
    char n;
    char i[31];
} search_t2;
search_t2 search_sol[1];

short twistMove3[N_MOVE];
short flipMove3[N_MOVE];
short FRtoBR_Move3[N_MOVE];
short URFtoDLF_Move3[N_MOVE];
short URtoDF_Move3[N_MOVE];
short parityMove3[N_MOVE];
short FRtoBR_Move3_2[N_MOVE];

hls::stream<search_t2> P2Buffer;
bool end = false;
int a = 0;
void setPruning(signed char *table, int index, signed char value)
{
    if ((index & 1) == 0)
        table[index / 2] &= 0xf0 | value;
    else
        table[index / 2] &= 0x0f | (value << 4);
}

// Extract pruning value
signed char getPruning(signed char *table, int index)
{
    signed char res;

    if ((index & 1) == 0)
        res = (table[index / 2] & 0x0f);
    else
        res = ((table[index / 2] >> 4) & 0x0f);

    return res;
}
coordcube_t *get_coordcube(cubiecube_t *cubiecube)
{
    static coordcube_t result[1];
    //coordcube_t* result = (coordcube_t *) calloc(1, sizeof(coordcube_t)); //change

    result->twist = getTwist(cubiecube);
    result->flip = getFlip(cubiecube);
    result->parity = cornerParity(cubiecube);
    result->FRtoBR = getFRtoBR(cubiecube);
    result->URFtoDLF = getURFtoDLF(cubiecube);
    result->URtoUL = getURtoUL(cubiecube);
    result->UBtoDF = getUBtoDF(cubiecube);
    result->URtoDF = getURtoDF(cubiecube); // only needed in phase2

    return result;
}

void solutionToString(search_t2 *search, char length, char depthPhase1, char *encode_array)
{
    // static char s [100];

    //char* s = (char*) calloc(length * 3 + 5, 1);
    //int cur = 0, i;
    //unsigned encode = 0;

    for (char i = 0; i < length; i++)
    {
#pragma HLS LOOP_TRIPCOUNT avg = 21
        encode_array[i] = search->i[i];
    }
}

void storeP1(search_t2 *searchFrom, search_t2 *searchTo, char end, char start)
{

    for (char i = 0; i < 31; i++)
    {
#pragma HLS LOOP_TRIPCOUNT max = 30
        searchTo->i[i] = searchFrom->i[i];
    }

    searchTo->depthPhase1 = searchFrom->depthPhase1;
    searchTo->flip = searchFrom->flip;
    searchTo->twist = searchFrom->twist;
    searchTo->slice = searchFrom->slice;
    searchTo->n = searchFrom->n;
}

void storeP3(search_t2 *searchFrom, search_t2 *searchTo, char start)
{
    // #pragma HLS PIPELINE

    for (char i = 0; i < 5; i++)
    {
        // #pragma HLS PIPELINE
        int i1 = start + 2 * i;
        int i2 = start + 2 * i + 1;
        searchTo->i[i1] = searchFrom->i[i1];
        searchTo->i[i2] = searchFrom->i[i2];
    }
}

void storeP2(search_t2 *searchFrom, search_t2 *searchTo, char start)
{
    // #pragma HLS PIPELINE

    for (char i = 0; i < 5; i++)
    {
        // #pragma HLS PIPELINE
        int i1 = start + 2 * i;
        int i2 = start + 2 * i + 1;
        searchTo->i[i1] = searchFrom->i[i1];
        searchTo->i[i2] = searchFrom->i[i2];
    }
    //	searchTo->i[30] = searchFrom->i[30];
    searchTo->n = searchFrom->n;
    searchTo->parity = searchFrom->parity;
    searchTo->URFtoDLF = searchFrom->URFtoDLF;
    searchTo->FRtoBR = searchFrom->FRtoBR;
    searchTo->URtoDF = searchFrom->URtoDF;
}
int P2(search_t2 P3Buffer[arraySize3][1], int &P3Start, int &P3End, char depthPhase1, char depthPhase2,
       short FRtoBR_Move2[213840],
       short URFtoDLF_Move2[362880],
       short URtoDF_Move2[362880],
       signed char Slice_URFtoDLF_Parity_Prun2[483840],
       signed char Slice_URtoDF_Parity_Prun2[483840])
{
    search_t2 search[1];
    char n = P3Buffer[P3End]->n;
    storeP2(P3Buffer[P3End], search, depthPhase1 - 1);
    //    storeP2(P3Buffer[P3End], search, depthPhase1+depthPhase2, depthPhase1);

    //      for (char i = 0; i < 9; i++)
    //      {
    //  #pragma HLS UNROLL
    //          URFtoDLF_Move3[2 * i] = URFtoDLF_Move2[search->URFtoDLF * N_MOVE + 2 * i];
    //          URFtoDLF_Move3[2 * i + 1] = URFtoDLF_Move2[search->URFtoDLF * N_MOVE + 2 * i + 1];
    //          FRtoBR_Move3[2 * i] = FRtoBR_Move2[search->FRtoBR * N_MOVE + 2 * i];
    //          FRtoBR_Move3[2 * i + 1] = FRtoBR_Move2[search->FRtoBR * N_MOVE + 2 * i + 1];
    //          URtoDF_Move3[2 * i] = URtoDF_Move2[search->URtoDF * N_MOVE + 2 * i];
    //          URtoDF_Move3[2 * i + 1] = URtoDF_Move2[search->URtoDF * N_MOVE + 2 * i + 1];
    //      }

    if (search->URFtoDLF != nOld)
    {
        for (int i = 0; i < 18; i++)
        {
            URFtoDLF_Move3[i] = URFtoDLF_Move2[search->URFtoDLF * N_MOVE + i];
            FRtoBR_Move3_2[i] = FRtoBR_Move2[search->FRtoBR * N_MOVE + i];
            URtoDF_Move3[i] = URtoDF_Move2[search->URtoDF * N_MOVE + i];
        }
        // memcpy(URFtoDLF_Move3, &URFtoDLF_Move2[search->URFtoDLF * N_MOVE], N_MOVE * sizeof(short));
        // memcpy(FRtoBR_Move3_2, &FRtoBR_Move2[search->FRtoBR * N_MOVE], N_MOVE * sizeof(short));
        // memcpy(URtoDF_Move3, &URtoDF_Move2[search->URtoDF * N_MOVE], N_MOVE * sizeof(short));
        nOld = search->URFtoDLF;
        // loop = loop + 1;
        // loop++;
    }
    // loop2 = loop2 + 3;
    n = n + 1;
    bool parityOld = search->parity;
    char axOld = search->i[n - 1];
    char s = 0;
    char iSol;
    char nStore = 0;

    for (char i = 1; i <= 10; i++)
    {
#pragma HLS PIPELINE

        char ax = label3[i - 1][0];
        char po = label3[i - 1][1];
        //        search->i[n] = 3 * ax + po - 1;
        //search->n = n;
        if (!(n != depthPhase1 && (axOld == ax || axOld - 3 == ax)))
        {

            char mv = 3 * ax + po - 1;
            short URFtoDLF = URFtoDLF_Move3[mv];
            short FRtoBR = FRtoBR_Move3_2[mv];
            bool parity = parityMove[parityOld][mv];
            short URtoDF = URtoDF_Move3[mv];

            signed char a;
            signed char b;
            int index = (N_SLICE2 * URtoDF + FRtoBR) * 2 + parity;
            int index1 = (N_SLICE2 * URFtoDLF + FRtoBR) * 2 + parity;
            if ((index & 1) == 0)
                a = (Slice_URtoDF_Parity_Prun2[index / 2] & 0x0f);
            else
                a = ((Slice_URtoDF_Parity_Prun2[index / 2] >> 4) & 0x0f);
            if ((index1 & 1) == 0)
                b = (Slice_URFtoDLF_Parity_Prun2[index1 / 2] & 0x0f);
            else
                b = ((Slice_URFtoDLF_Parity_Prun2[index1 / 2] >> 4) & 0x0f);
            char minDistPhase2 = MAX(a, b);
            if (minDistPhase2 == 0)
            {
                iSol = mv;
                search_sol->depthPhase1 = depthPhase1;
                s = depthPhase1 + depthPhase2;
            }
            if ((depthPhase1 + depthPhase2 - n > minDistPhase2))
            {

                storeP3(search, P3Buffer[P3Start], depthPhase1 - 1);
                P3Buffer[P3Start]->URFtoDLF = URFtoDLF;
                P3Buffer[P3Start]->FRtoBR = FRtoBR;
                P3Buffer[P3Start]->parity = parity;
                P3Buffer[P3Start]->URtoDF = URtoDF;
                P3Buffer[P3Start]->n = n;
                P3Buffer[P3Start]->i[n] = mv;
                P3Start++;
                if (P3Start == arraySize3)
                {
                    P3Start = 0;
                }
                if (P3Start == P3End)
                {
                    printf("P3full");
                    if (P3Start == 0)
                    {
                        P3Start = arraySize3;
                    }
                    P3Start--;
                }
            }
        }
    }
    if (s != 0)
    {
        int start = depthPhase1 - 1;
        for (char i = 0; i < 5; i++)
        {
            // #pragma HLS UNROLL
            // #pragma HLS PIPELINE
            int i1 = start + 2 * i;
            int i2 = start + 2 * i + 1;
            search_sol->i[i1] = search->i[i1];
            search_sol->i[i2] = search->i[i2];
        }
        search_sol->i[n] = iSol;
    }
    return s;
}

int phase2(search_t2 P3Buffer[arraySize3][1], char maxDepth,
           short URFtoDLF,
           short FRtoBR,
           short URtoUL,
           short UBtoDF,
           bool parity,
           short FRtoBR_Move2[213840],
           short URFtoDLF_Move2[362880],
           short URtoDF_Move2[362880],
           short URtoUL_Move2[23760],
           short UBtoDF_Move2[23760],
           short MergeURtoULandUBtoDF2[112896],
           signed char Slice_URFtoDLF_Parity_Prun2[483840],
           signed char Slice_URtoDF_Parity_Prun2[483840])
{
    // #pragma HLS STREAM variable = P2Buffer depth = 1000 dim = 1
    search_t2 search[1];
    if (P2Buffer.empty() == false)
    {
        P2Buffer.read(*search);
    }
    char mv = 0, d1 = 0, d2 = 0, i;
    char depthPhase1 = search->depthPhase1;
    char maxDepthPhase2 = MIN(10, maxDepth - depthPhase1); // Allow only max 10 moves in phase2
    char depthPhase2 = 1, minDistPhase2 = 1;
    for (i = 0; i < depthPhase1; i++)
    {
        search_sol->i[i] = search->i[i];
    }
    short URtoDF;
    char n = depthPhase1;
    char nOld = n;
    //depthPhase1 = n+1 store in it
    for (i = 0; i < depthPhase1; i++)
    {
#pragma HLS LOOP_TRIPCOUNT max = 18
        // mv= search->i[i];
        // mv = 3 * search->ax[i] + search->po[i] - 1;
        mv = search->i[i];
        // System.out.format("%d %d %d %d\n", i, mv, ax[i], po[i]);

        // int k, j;
        // cubiecube_t *a;
        // a = get_cubiecube();
        // cubiecube_t *moveCube = get_moveCube();
        // setURFtoDLF(a,URFtoDLF);
        // for (j = 0; j < 6; j++)
        // {
        //     for (k = 0; k < 3; k++)
        //     {
        //         cornerMultiply(a, &moveCube[j]);
        //         URFtoDLF_Move3[ 3 * j + k] = getURFtoDLF(a);
        //     }
        //     cornerMultiply(a, &moveCube[j]);
        // }

        URFtoDLF = URFtoDLF_Move2[URFtoDLF * N_MOVE + mv];
        FRtoBR = FRtoBR_Move2[FRtoBR * N_MOVE + mv];
        parity = parityMove[parity][mv];
        URtoUL = URtoUL_Move2[URtoUL * N_MOVE + mv];
        UBtoDF = UBtoDF_Move2[UBtoDF * N_MOVE + mv];
    }
    if ((d1 = getPruning(Slice_URFtoDLF_Parity_Prun2,
                         (N_SLICE2 * URFtoDLF + FRtoBR) * 2 + parity)) > maxDepthPhase2)
        return -1;
    URtoDF = MergeURtoULandUBtoDF2[URtoUL * 336 + UBtoDF];

    if ((d2 = getPruning(Slice_URtoDF_Parity_Prun2,
                         (N_SLICE2 * URtoDF + FRtoBR) * 2 + parity)) > maxDepthPhase2)
        return -1;

    if ((minDistPhase2 = MAX(d1, d2)) == 0) // already solved
        return depthPhase1;

    search->URFtoDLF = URFtoDLF;
    search->FRtoBR = FRtoBR;
    search->parity = parity;
    // search->URtoUL = URtoUL;
    // search->UBtoDF = UBtoDF;
    search->URtoDF = URtoDF;
    search->n = depthPhase1 - 1;
    // printf("%d %d %d %d %d %d  \n",  search->URFtoDLF ,search->FRtoBR , search->parity, search->URtoUL, search->UBtoDF ,search->URtoDF );
    // printf("Input ");
    // for (int i =0; i <= search->n ; i++){
    //     printf("%d %d | ", search->ax[i], search->po[i]);
    // }
    // printf("\n");

    int P3Start;
    int P3End = 0;
    for (depthPhase2 = 1; depthPhase2 <= maxDepthPhase2; depthPhase2++)
    {
#pragma HLS LOOP_TRIPCOUNT max = 10
        P3Start = 1;
        P3End = 0;
        storeP2(search, P3Buffer[0], depthPhase1 - 1);
        //store
        // printf("%d \n", depthPhase2);
        // printf("\n");
        while (P3End != P3Start)
        {
#pragma HLS LOOP_TRIPCOUNT max = 1000

            char n = P3Buffer[P3Start]->n;
            // printf("%d %d \n" , P3Buffer[P3Start]->ax[n] ,  P3Buffer[P3Start]->po[n], n);            // printf("HI\n");
            a = P2(P3Buffer, P3Start, P3End, depthPhase1, depthPhase2,
                   FRtoBR_Move2,
                   URFtoDLF_Move2,
                   URtoDF_Move2,
                   Slice_URFtoDLF_Parity_Prun2,
                   Slice_URtoDF_Parity_Prun2);
            if (a != 0)
            {
                return a;
            }
            P3End++;
            if (P3End == arraySize3)
            {
                P3End = 0;
            }
        }
    }
    return -1;
}

void parallel_v2(search_t2 P1Buffer[arraySize1][1], int &P1Start, int &P1End, bool &first, char depthPhase1, char maxDepth,
                 short twistMove2[39366],
                 short flipMove2[36864],
                 short FRtoBR_Move2[213840],
                 signed char Slice_Twist_Prun2[541283],
                 signed char Slice_Flip_Prun2[506880])
{
#pragma HLS STREAM variable = P2Buffer depth = 1000 dim = 1

    search_t2 search_new[1];
    storeP1(P1Buffer[P1End], search_new, 18, 0);
    char n = search_new->n;
    char axOld = (search_new->i[n]) / 3;
    char poOld = search_new->i[n] - 3 * axOld + 1;
    // axOld = search_new->ax[n];
    // poOld = search_new->po[n];

    // printf("n %d \n", n);
    //free(a);
    // dump_to_file((void*) twistMove, sizeof(twistMove), "twistMove", cache_dir);

    //    int twistMove4 [9];

    if (twistOld != search_new->twist || flipOld != search_new->flip || sliceOld != search_new->slice)
    {
        short a = P1Buffer[P1End]->twist;
        short b = P1Buffer[P1End]->flip;
        short c = P1Buffer[P1End]->slice;
        for (int i = 0; i < 18; i++)
        {
#pragma HLS PIPELINE
            twistMove3[i] = twistMove2[a * 18 + i];
            flipMove3[i] = flipMove2[b * 18 + i];
            FRtoBR_Move3[i] = FRtoBR_Move2[c * 24 * 18 + i];
        }
        //         for (int i=0; i < 18; i++){
        // #pragma HLS PIPELINE

        //         }
        //         for (int i=0; i < 18; i++){
        // #pragma HLS PIPELINE
        //             FRtoBR_Move3[i]= FRtoBR_Move2[c * 24 * 18+i];
        //         }
        // memcpy(twistMove3, &twistMove2[a* N_MOVE], 18 * sizeof(short));
        // memcpy(flipMove3, &flipMove2[b * N_MOVE], N_MOVE * sizeof(short));
        // memcpy(FRtoBR_Move3, &FRtoBR_Move2[c * 24 * N_MOVE], N_MOVE * sizeof(short));
        sliceOld = search_new->slice;
        flipOld = search_new->flip;
        twistOld = search_new->twist;
        // loop = loop + 3;
    }
    //     	for (int i=0; i <9; i++){
    // #pragma HLS PIPELINE
    //     		int n_k = twistMove2[(P1Buffer[P1End]->twist * N_MOVE)+i];
    //             twistMove3[2*i]= n_k>>0;
    //             twistMove3[2*i+1]= (n_k>> 16) ;
    //     	}
    //        for (int i =0; i< 9; i++){
    //            int n_k=twistMove4[i];
    //
    //        }
    // if (flipOld != search_new->flip)
    // {
    //     memcpy(flipMove3, &flipMove2[P1Buffer[P1End]->flip * N_MOVE], N_MOVE * sizeof(short));
    //     flipOld = search_new->flip;
    //     loop++;
    // }
    // if (sliceOld != search_new->slice)
    // {
    //     memcpy(FRtoBR_Move3, &FRtoBR_Move2[P1Buffer[P1End]->slice * 24 * N_MOVE], N_MOVE * sizeof(short));
    //     sliceOld = search_new->slice;
    //     loop++;
    // }
    // loop2 = loop2 + 3;
    // printf("");
    // memcpy(flipMove3, &flipMove2[P1Buffer[P1End]->flip * N_MOVE], N_MOVE * sizeof(short));
    // memcpy(FRtoBR_Move3, &FRtoBR_Move2[P1Buffer[P1End]->slice * 24 * N_MOVE], N_MOVE * sizeof(short));
    // // memcpy(twistMove3, &twistMove2[search_new->twist * N_MOVE], N_MOVE * sizeof(short));

    if (first == true)
    {
        n--;
        first = false;
    }
    n++;
    bool zero = false;
    // int j = 0;
    // if (axOld == 0 || axOld == 3) //becareful
    // {
    //     j = 3;
    // }
    // int startIni = P1End;

    for (char i = 0; i <= 17; i++)
    {
#pragma HLS LOOP_TRIPCOUNT max = 18

        // printf("%d ", push);
        if (zero == true)
        {
            i = 18; //break;
            continue;
        }
        if (n == 0)
        {
            i = 3 * axOld + poOld - 1;
            zero = true;
        }
        // search_t2 search_new[1];
        // storeP1(P1Buffer[startIni], search_new, 31);

        // printf(" start %d ax0 %d po0 %d \n", start, search_new->ax[0], search_new->po[0]);
        char ax = label[i][0];
        char po = label[i][1];
        search_new->i[n] = 3 * ax + po - 1;
        // search_new->ax[n] = ax;
        // search_new->po[n] = po;
        // printf("test %d %d\n",search_new->ax[n], search_new->po[n]);
        search_new->n = n;

        if ((n != 0 && axOld == ax) || (n != 0 && axOld - 3 == ax))
        {
            continue;
        }
        char mv = 3 * ax + po - 1;
        search_new->twist = twistMove3[mv];
        // char mv2= mv/2;
        // // printf("%d ", mv2);
        // if(mv %2 !=0){
        //   search_new->twist = twistMove4[mv2]>>16;
        // }else{
        //     search_new->twist = twistMove4[mv2];
        // }

        // printf("twist %d", search_new->twist);
        search_new->slice = FRtoBR_Move3[mv] / 24;
        search_new->flip = flipMove3[mv];
        char minDistPhase1 = MAX(
            getPruning(Slice_Flip_Prun2, N_SLICE1 * search_new->flip + search_new->slice),
            getPruning(Slice_Twist_Prun2, N_SLICE1 * search_new->twist + search_new->slice));
        if (minDistPhase1 == 0 && n >= depthPhase1 - 5)
        {
            minDistPhase1 = 10;
            if (n == depthPhase1 - 1)
            {
                search_new->depthPhase1 = depthPhase1;
                P2Buffer.write(*search_new);

                // printf ("%d %d %d %d %d %d %d %d %d %d \n",depthPhase1, n, search_new->ax[n], search_new->po[n],search_new->flip,search_new->twist,search_new->slice,minDistPhase1,search_new->ax[2], search_new->po[2]);
                //                while (P2Start == P2End)
                //                {
                //#pragma HLS LOOP_TRIPCOUNT max=0
                //                    printf("P2full");
                //                }

                // if(P2Start == arraySize2){
                //     P2Start=0;
                // }
                // printf("%d \n", P2Start);
            }

            // search_new->depthPhase1 = depthPhase1;
            // *P2Buffer[P2Start] = *search_new;

            //minDistPhase1 = 10; // instead of 10 any value >5 is possible
            //phase2
        }
        if (depthPhase1 - n > minDistPhase1)
        {
            // printf(" start %d ax0 %d po0 %d \n", P1Start, search_new->ax[0], search_new->po[0]);
            // search_new->minDistPhase1=minDistPhase1;
            storeP1(search_new, P1Buffer[P1Start], 18, 0);
            // printf ("%d %d %d %d %d %d %d %d %d %d \n",depthPhase1, n, search_new->ax[n], search_new->po[n],search_new->flip,search_new->twist,search_new->slice,minDistPhase1,search_new->ax[2], search_new->po[2]);
            // for (int i =0; i <=n ; i++){
            //     printf("%d %d | ", search_new->ax[i], search_new->po[i]);
            // }
            // printf("\n");
            // printf ("%d %d %d %d %d %d %d %d \n",depthPhase1, n, search_new->ax[n], search_new->po[n],search_new->flip,search_new->twist,search_new->slice,minDistPhase1);
            // coorBuffer[start]->twist=search_new->twist;
            P1Start++;
            if (P1Start == arraySize1)
            {
                P1Start = 0;
            }
            if (P1Start == P1End)
            {
                //printf("P1full");
                if (P1Start == 0)
                {
                    P1Start = arraySize1;
                }
                P1Start--;
                //exit(0);
            }
            // printf(" start %d ax0 %d po0 %d \n", start, search_new->ax[0], search_new->po[0]);
            //store
        }
    }
}

void blockP2(short URFtoDLF, short FRtoBR, bool parity, short URtoUL, short UBtoDF, search_t2 P3Buffer[arraySize1][1], char maxDepth, char *encode_length, char encode_array[30],
             short FRtoBR_Move2[213840],
             short URFtoDLF_Move2[362880],
             short URtoDF_Move2[362880],
             short URtoUL_Move2[23760],
             short UBtoDF_Move2[23760],
             short MergeURtoULandUBtoDF2[112896],
             signed char Slice_URFtoDLF_Parity_Prun2[483840],
             signed char Slice_URtoDF_Parity_Prun2[483840])
{
#pragma HLS STREAM variable = P2Buffer depth = 1000 dim = 1
    char s;
    do
    {

#pragma HLS LOOP_TRIPCOUNT max = 1000
        //         while (P2End != P2Start)
        //         {
        // #pragma HLS LOOP_TRIPCOUNT max=1000
        s = -1;
        // printf("P2 %d \n", P2Start);
        s = phase2(P3Buffer, maxDepth,
                   URFtoDLF,
                   FRtoBR,
                   URtoUL,
                   UBtoDF,
                   parity,
                   FRtoBR_Move2,
                   URFtoDLF_Move2,
                   URtoDF_Move2,
                   URtoUL_Move2,
                   UBtoDF_Move2,
                   MergeURtoULandUBtoDF2,
                   Slice_URFtoDLF_Parity_Prun2,
                   Slice_URtoDF_Parity_Prun2);
        if ((s >= 0))
        {
            char depthPhase1 = search_sol->depthPhase1;
            char axOld = search_sol->i[depthPhase1 - 1] / 3;
            char ax = search_sol->i[depthPhase1] / 3;
            if ((s == depthPhase1 || (axOld != ax && axOld != ax + 3)))
            {

                solutionToString(search_sol, s, -1, encode_array);
                *encode_length = s;
                a = -2;
                return;
            }
        }
        // if(i++==4){
        //     break;
        // }
        // break;
        // P2End++;
        // if (P2End == arraySize2)
        // {
        //     P2End = 0;
        // }
        // }
        // printf("");
        if (P2Buffer.empty())
        {
            break;
        }

    } while (1);
}

void blockP1(short flip, short twist, short slice, search_t2 P1Buffer[arraySize1][1], char depthPhase1, char maxDepth,
             short URFtoDLF, short FRtoBR, bool parity, short URtoUL, short UBtoDF, search_t2 P3Buffer[arraySize1][1], char *encode_length, char encode_array[30],
             short twistMove2[39366],
             short flipMove2[36864],
             short FRtoBR_Move2[213840],
             signed char Slice_Twist_Prun2[541283],
             signed char Slice_Flip_Prun2[506880],
             short URFtoDLF_Move2[362880],
             short URtoDF_Move2[362880],
             short URtoUL_Move2[23760],
             short UBtoDF_Move2[23760],
             short MergeURtoULandUBtoDF2[112896],
             signed char Slice_URFtoDLF_Parity_Prun2[483840],
             signed char Slice_URtoDF_Parity_Prun2[483840])
{

    for (char p = 0; p <= 17; p++)
    {
        bool first = true;
        // search->ax[0] = label[p][0];
        // search->po[0] = label[p][1];
        P1Buffer[0]->i[0] = 3 * label[p][0] + label[p][1] - 1;
        P1Buffer[0]->n = 0;
        P1Buffer[0]->depthPhase1 = depthPhase1;
        P1Buffer[0]->flip = flip;
        P1Buffer[0]->twist = twist;
        P1Buffer[0]->slice = slice;
        // storeP1(search, P1Buffer[0], 31);
        // *coorBuffer[0] = *search;

        // printf("p %d ", p);
        int P1Start = 1;
        int P1End = 0;
        //first layer, n=0, po,ax, store first coorBuffer
        while (P1End != P1Start)
        {
#pragma HLS LOOP_TRIPCOUNT max = 8000
            if (a == -2)
            {
                return;
            }

            //move down update start
            parallel_v2(P1Buffer, P1Start, P1End, first, depthPhase1, maxDepth,
                        twistMove2,
                        flipMove2,
                        FRtoBR_Move2,
                        Slice_Twist_Prun2,
                        Slice_Flip_Prun2);
            P1End++;
            if (P1End == arraySize1)
            {
                P1End = 0;
            }
            if(P2Buffer.empty()!=true){
                blockP2(URFtoDLF, FRtoBR, parity, URtoUL, UBtoDF, P3Buffer, maxDepth, encode_length, encode_array,
                        FRtoBR_Move2,
                        URFtoDLF_Move2,
                        URtoDF_Move2,
                        URtoUL_Move2,
                        UBtoDF_Move2,
                        MergeURtoULandUBtoDF2,
                        Slice_URFtoDLF_Parity_Prun2,
                        Slice_URtoDF_Parity_Prun2);
                // iter=0;
            }
            // printf("P2start %d \n", P2Start);
            // printf("start %d \n", start);
        }

    }
    // end = true;
}

void solution(char facelets[54], char maxDepth, bool *unsolvable, char *encode_length, char encode_array[30],
              short twistMove2[39366],
              short flipMove2[36864],
              short FRtoBR_Move2[213840],
              short URFtoDLF_Move2[362880],
              short URtoDF_Move2[362880],
              short URtoUL_Move2[23760],
              short UBtoDF_Move2[23760],
              short MergeURtoULandUBtoDF2[112896],
              signed char Slice_URFtoDLF_Parity_Prun2[483840],
              signed char Slice_URtoDF_Parity_Prun2[483840],
              signed char Slice_Twist_Prun2[541283],
              signed char Slice_Flip_Prun2[506880])
{

#pragma HLS INTERFACE s_axilite port = return bundle = CTRL_BUS
#pragma HLS INTERFACE s_axilite port = encode_array bundle = CTRL_BUS
#pragma HLS INTERFACE s_axilite port = encode_length bundle = CTRL_BUS
#pragma HLS INTERFACE s_axilite port = unsolvable bundle = CTRL_BUS
#pragma HLS INTERFACE s_axilite port = maxDepth bundle = CTRL_BUS
#pragma HLS INTERFACE s_axilite port = facelets bundle = CTRL_BUS
#pragma HLS INTERFACE m_axi depth = 39366 port = twistMove2 offset = slave bundle = CTRL_BUS1
#pragma HLS INTERFACE m_axi depth = 36864 port = flipMove2 offset = slave bundle = CTRL_BUS2
#pragma HLS INTERFACE m_axi depth = 213840 port = FRtoBR_Move2 offset = slave bundle = CTRL_BUS3
#pragma HLS INTERFACE m_axi depth = 362880 port = URFtoDLF_Move2 offset = slave bundle = CTRL_BUS1
#pragma HLS INTERFACE m_axi depth = 362880 port = URtoDF_Move2 offset = slave bundle = CTRL_BUS2
#pragma HLS INTERFACE m_axi depth = 23760 port = URtoUL_Move2 offset = slave bundle = CTRL_BUS3
#pragma HLS INTERFACE m_axi depth = 23760 port = UBtoDF_Move2 offset = slave bundle = CTRL_BUS1
#pragma HLS INTERFACE m_axi depth = 112896 port = MergeURtoULandUBtoDF2 offset = slave bundle = CTRL_BUS2
#pragma HLS INTERFACE m_axi depth = 483840 port = Slice_URFtoDLF_Parity_Prun2 offset = slave bundle = CTRL_BUS1
#pragma HLS INTERFACE m_axi depth = 483840 port = Slice_URtoDF_Parity_Prun2 offset = slave bundle = CTRL_BUS2
#pragma HLS INTERFACE m_axi depth = 541283 port = Slice_Twist_Prun2 offset = slave bundle = CTRL_BUS1
#pragma HLS INTERFACE m_axi depth = 506880 port = Slice_Flip_Prun2 offset = slave bundle = CTRL_BUS2
    // search_t2 search[1];
    *unsolvable = false;
    *encode_length = 0;
    //search_t* search = (search_t*) calloc(1, sizeof(search_t));
    facecube_t *fc;
    cubiecube_t *cc;
    coordcube_t *c;
    //         for (int i=0; i < 18; i++){
    // #pragma HLS PIPELINE
    //             twistMove3[i]= twistMove2[0* 18+i];
    //             flipMove3[i]= flipMove2[0 * 18+i];
    //             FRtoBR_Move3[i]= FRtoBR_Move2[0 * 24 * 18+i];
    //         }
    //         for (int i=0; i < 18; i++){
    // #pragma HLS PIPELINE

    //         }
    //         for (int i=0; i < 18; i++){
    // #pragma HLS PIPELINE

    //         }
    // get_moveCube(moveCube);
    // printf("HI");
    char s;
    char i;
    char depthPhase1;
    // time_t tStart;
    // +++++++++++++++++++++check for wrong input +++++++++++++++++++++++++++++
    int count[6] = {0};

    bool complete = true;
    for (i = 0; i < 6; i++)
    {
        if (facelets[9 * i] != facelets[9 * i + 1] ||
            facelets[9 * i] != facelets[9 * i + 2] ||
            facelets[9 * i] != facelets[9 * i + 3] ||
            facelets[9 * i] != facelets[9 * i + 4] ||
            facelets[9 * i] != facelets[9 * i + 5] ||
            facelets[9 * i] != facelets[9 * i + 6] ||
            facelets[9 * i] != facelets[9 * i + 7] ||
            facelets[9 * i] != facelets[9 * i + 8])
        {
            complete = false;
        }
    }
    if (complete == true)
    {
        return;
    }

    for (i = 0; i < 54; i++)
        switch (facelets[i])
        {
        case 'U':
            count[U]++;
            break;
        case 'R':
            count[R]++;
            break;
        case 'F':
            count[F]++;
            break;
        case 'D':
            count[D]++;
            break;
        case 'L':
            count[L]++;
            break;
        case 'B':
            count[B]++;
            break;
        }

    for (i = 0; i < 6; i++)
        if (count[i] != 9)
        {
            *unsolvable = true;
            return;
        }

    fc = get_facecube_fromstring(facelets);
    cc = toCubieCube(fc);
    if ((s = verify(cc)) != 0)
    {
        *unsolvable = true;
        return;
    }

    // +++++++++++++++++++++++ initialization +++++++++++++++++++++++++++++++++
    c = get_coordcube(cc);

    // search->po[0] = 1;
    // search->ax[0] = 0;
    // search->i[0]=0;
    short flip = c->flip;
    short twist = c->twist;
    short parity = c->parity;
    short slice = c->FRtoBR / 24;
    short URFtoDLF = c->URFtoDLF;
    short FRtoBR = c->FRtoBR;

    //    short slice = c->FRtoBR / 24;
    short URtoUL = c->URtoUL;
    short UBtoDF = c->UBtoDF;

    // search->minDistPhase1 = 1; // else failure for depth=1, n=0

    // +++++++++++++++++++ Main loop ++++++++++++++++++++++++++++++++++++++++++

    // bool done = false;
    // // tbb::parallel_for(unsigned(1),unsigned(19),[&](unsigned depthPhase) {
    search_t2 P1Buffer[arraySize1][1];
    //    search_t2 P2Buffer[arraySize2][1];
    search_t2 P3Buffer[arraySize3][1];

    // search_t2 coor_buffer[10000][1];
    char n;

    // int P2Start = 0;
    // int P2End = 0;

    // search_t2 trial[1];
    // search_t2 trial2[18][1];

    // trial->ax[0]=100;
    // *trial2[9]=*trial;
    // printf("%d",trial2[9]->ax[0] );
    // trial2[9]->ax[0]=20;
    // printf("%d",trial->ax[0] );
    // printf("%d",trial2[9]->ax[0] );
    // int a =0;
    for (depthPhase1 = 1; depthPhase1 <= 18; depthPhase1++)
    {
// #pragma HLS DEPENDENCE variable = P2Buffer intra false
// #pragma HLS DEPENDENCE variable = loop2 intra false
// #pragma HLS DEPENDENCE variable = loop intra false
// #pragma HLS DEPENDENCE variable = end intra false
// #pragma HLS DATAFLOW
// #pragma HLS DEPENDENCE variable = a intra false
#pragma HLS LOOP_TRIPCOUNT max = 18
        end = false;
        a = 0;
        // P2End = 0;
        // P2Start = 0;
        //       tbb::task_group group;
        //       auto B1 = [&](){blockP1(c->flip, c->twist, slice, P1Buffer, depthPhase1, maxDepth,
        //               twistMove2,
        //               flipMove2,
        //               FRtoBR_Move2,
        //               Slice_Twist_Prun2,
        //               Slice_Flip_Prun2 );};
        //       // group.run(B1);
        //       // group.wait();
        //
        //       auto B2 = [&](){blockP2(c->URFtoDLF, c->FRtoBR, c->parity, c->URtoUL, c->UBtoDF, P3Buffer, maxDepth,encode_length, encode_array,
        //               FRtoBR_Move2,
        //               URFtoDLF_Move2,
        //               URtoDF_Move2,
        //               URtoUL_Move2,
        //               UBtoDF_Move2,
        //               MergeURtoULandUBtoDF2,
        //               Slice_URFtoDLF_Parity_Prun2,
        //               Slice_URtoDF_Parity_Prun2);};
        //       group.run(B1);
        //       group.run(B2);
        //       group.wait();
        char maxDepth2 = maxDepth;
        //         for(int k =0; k <2; k++){
        // #pragma HLS UNROLL
        //             if(k==0){
        blockP1(flip, twist, slice, P1Buffer, depthPhase1, maxDepth, URFtoDLF, FRtoBR, parity, URtoUL, UBtoDF, P3Buffer, encode_length, encode_array,
                twistMove2,
                flipMove2,
                FRtoBR_Move2,
                Slice_Twist_Prun2,
                Slice_Flip_Prun2,
                URFtoDLF_Move2,
                URtoDF_Move2,
                URtoUL_Move2,
                UBtoDF_Move2,
                MergeURtoULandUBtoDF2,
                Slice_URFtoDLF_Parity_Prun2,
                Slice_URtoDF_Parity_Prun2);
        // }else{
        // blockP2(URFtoDLF, FRtoBR, parity, URtoUL, UBtoDF, P3Buffer, maxDepth2, encode_length, encode_array,
        //         FRtoBR_Move2_2,
        //         URFtoDLF_Move2,
        //         URtoDF_Move2,
        //         URtoUL_Move2,
        //         UBtoDF_Move2,
        //         MergeURtoULandUBtoDF2,
        //         Slice_URFtoDLF_Parity_Prun2,
        //         Slice_URtoDF_Parity_Prun2);
        //     }
        // }

        //         while (P2Buffer.empty() != true)
        //         {
        // #pragma HLS LOOP_TRIPCOUNT max = 100
        //             search_t2 search3[1];
        //             P2Buffer.read(*search3);
        //         }
        if (a == -2)
        {
            // printf("%d ", loop);
            // printf("loop2 %d ", loop2);
            return;
        }
    }
    // printf("%d",a );
    return;
}
