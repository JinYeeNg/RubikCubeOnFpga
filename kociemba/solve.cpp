#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "search.h"
#include "coordcube.h"
#include "prunetable_helpers.h"
#include "cubiecube.h"
//D2 R' D' F2 B D R2 D2 R' F2 D' F2 U' B2 L2 U2 D R2 U
//D2 R' D' F2 B D R2 D2 R' F2 D' F2 U' B2 L2 U2 D R2 U
// short twistMove[N_TWIST][N_MOVE];
// short flipMove[N_FLIP][N_MOVE];
// short FRtoBR_Move[N_FRtoBR][N_MOVE];
// short URFtoDLF_Move[N_URFtoDLF][N_MOVE] = {{0}};
// short URtoDF_Move[N_URtoDF][N_MOVE] = {{0}};
// short URtoUL_Move[N_URtoUL][N_MOVE] = {{0}};
// short UBtoDF_Move[N_UBtoDF][N_MOVE] = {{0}};
// short MergeURtoULandUBtoDF[336][336] = {{0}};
// signed char Slice_URFtoDLF_Parity_Prun[N_SLICE2 * N_URFtoDLF * N_PARITY / 2] = {0};
// signed char Slice_URtoDF_Parity_Prun[N_SLICE2 * N_URtoDF * N_PARITY / 2] = {0};
// signed char Slice_Twist_Prun[N_SLICE1 * N_TWIST / 2 + 1] = {0};
// signed char Slice_Flip_Prun[N_SLICE1 * N_FLIP / 2] = {0};

short twistMove[39366];
int twistMove5[39366];
short flipMove[36864];
short FRtoBR_Move[213840];
short URFtoDLF_Move[362880] = {0};
short URtoDF_Move[362880] = {0};
short URtoUL_Move[23760] = {0};
short UBtoDF_Move[23760] = {0};
short MergeURtoULandUBtoDF[112896] = {0};
signed char Slice_URFtoDLF_Parity_Prun[483840] = {0};
signed char Slice_URtoDF_Parity_Prun[483840] = {0};
signed char Slice_Twist_Prun[541283] = {0};
signed char Slice_Flip_Prun[506880] = {0};

void initPruning()
{
    short parityMove[2][18] = {
        {1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1},
        {0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0}};
    cubiecube_t *a;
    cubiecube_t moveCube[6];//=get_moveCube();
    get_moveCube(moveCube);

    //if(check_cached_table("twistMove", (void*) twistMove, sizeof(twistMove), cache_dir) != 0) {
    if (1)
    {
        short i;
        int k, j;
        
        a = get_cubiecube();
        for (i = 0; i < N_TWIST; i++)
        {
            setTwist(a, i);
            bool pass =true;
            short n;
            for (j = 0; j < 6; j++)
            {
                for (k = 0; k < 3; k++)
                {
                    cornerMultiply(a, &moveCube[j]);
                    if(pass==true){
                        
                        n =getTwist(a) ;
                        //n=twistMove[(i * N_MOVE + 3 * j + k)/2] ;
                        pass=false;
                    }else{
                         
                        twistMove5[(i * N_MOVE + ( 3 * j + k)/2)] =( getTwist(a) << 16) +n;
                        pass=true;
                    }
                }
                cornerMultiply(a, &moveCube[j]); // 4. faceturn restores
            }
        }
        //free(a);
        // char cache_dir = 'cache';
        // dump_to_file((void*) twistMove5, sizeof(twistMove5), "twistMoveInt", &cache_dir);
    }
    if (1)
    {
        short i;
        int k, j;
        a = get_cubiecube();
        for (i = 0; i < N_TWIST; i++)
        {
            setTwist(a, i);
            for (j = 0; j < 6; j++)
            {
                for (k = 0; k < 3; k++)
                {
                    cornerMultiply(a, &moveCube[j]);
                    twistMove[i * N_MOVE + 3 * j + k] = getTwist(a);
                }
                cornerMultiply(a, &moveCube[j]); // 4. faceturn restores
            }
        }
        //free(a);
        //dump_to_file((void*) twistMove, sizeof(twistMove), "twistMove", cache_dir);
    }

    //if(check_cached_table("flipMove", (void*) flipMove, sizeof(flipMove), cache_dir) != 0) {
    if (1)
    {
        short i;
        int k, j;
        a = get_cubiecube();
        for (i = 0; i < N_FLIP; i++)
        {
            setFlip(a, i);
            for (j = 0; j < 6; j++)
            {
                for (k = 0; k < 3; k++)
                {
                    edgeMultiply(a, &moveCube[j]);
                    flipMove[i * N_MOVE + 3 * j + k] = getFlip(a);
                }
                edgeMultiply(a, &moveCube[j]);
            }
        }
        //free(a);
        //dump_to_file((void*) flipMove, sizeof(flipMove), "flipMove", cache_dir);
    }

    //if(check_cached_table("FRtoBR_Move", (void*) FRtoBR_Move, sizeof(FRtoBR_Move), cache_dir) != 0) {
    if (1)
    {
        short i;
        int k, j;
        a = get_cubiecube();
        for (i = 0; i < N_FRtoBR; i++)
        {
            setFRtoBR(a, i);
            for (j = 0; j < 6; j++)
            {
                for (k = 0; k < 3; k++)
                {
                    edgeMultiply(a, &moveCube[j]);
                    FRtoBR_Move[i * N_MOVE + 3 * j + k] = getFRtoBR(a);
                }
                edgeMultiply(a, &moveCube[j]);
            }
        }
        //free(a);
        //dump_to_file((void*) FRtoBR_Move, sizeof(FRtoBR_Move), "FRtoBR_Move", cache_dir);
    }

    if (1)
    {
        //if(check_cached_table("URFtoDLF_Move", (void*) URFtoDLF_Move, sizeof(URFtoDLF_Move), cache_dir) != 0) {
        short i;
        int k, j;
        a = get_cubiecube();
        for (i = 0; i < N_URFtoDLF; i++)
        {
            setURFtoDLF(a, i);
            for (j = 0; j < 6; j++)
            {
                for (k = 0; k < 3; k++)
                {
                    cornerMultiply(a, &moveCube[j]);
                    URFtoDLF_Move[i * N_MOVE + 3 * j + k] = getURFtoDLF(a);
                }
                cornerMultiply(a, &moveCube[j]);
            }
        }
        //free(a);
        //dump_to_file((void*) URFtoDLF_Move, sizeof(URFtoDLF_Move), "URFtoDLF_Move", cache_dir);
    }

    //if(check_cached_table("URtoDF_Move", (void*) URtoDF_Move, sizeof(URtoDF_Move), cache_dir) != 0) {
    if (1)
    {
        short i;
        int k, j;
        a = get_cubiecube();
        for (i = 0; i < N_URtoDF; i++)
        {
            setURtoDF(a, i);
            for (j = 0; j < 6; j++)
            {
                for (k = 0; k < 3; k++)
                {
                    edgeMultiply(a, &moveCube[j]);
                    URtoDF_Move[i * N_MOVE + 3 * j + k] = (short)getURtoDF(a);
                    // Table values are only valid for phase 2 moves!
                    // For phase 1 moves, casting to short is not possible.
                }
                edgeMultiply(a, &moveCube[j]);
            }
        }
        //free(a);
        //dump_to_file((void*) URtoDF_Move, sizeof(URtoDF_Move), "URtoDF_Move", cache_dir);
    }

    //if(check_cached_table("URtoUL_Move", (void*) URtoUL_Move, sizeof(URtoUL_Move), cache_dir) != 0) {
    if (1)
    {
        short i;
        int k, j;
        a = get_cubiecube();
        for (i = 0; i < N_URtoUL; i++)
        {
            setURtoUL(a, i);
            for (j = 0; j < 6; j++)
            {
                for (k = 0; k < 3; k++)
                {
                    edgeMultiply(a, &moveCube[j]);
                    URtoUL_Move[i * N_MOVE + 3 * j + k] = getURtoUL(a);
                }
                edgeMultiply(a, &moveCube[j]);
            }
        }
        //free(a);
        //dump_to_file((void*) URtoUL_Move, sizeof(URtoUL_Move), "URtoUL_Move", cache_dir);
    }

    //if(check_cached_table("UBtoDF_Move", (void*) UBtoDF_Move, sizeof(UBtoDF_Move), cache_dir) != 0) {
    if (1)
    {
        short i;
        int k, j;
        a = get_cubiecube();
        for (i = 0; i < N_UBtoDF; i++)
        {
            setUBtoDF(a, i);
            for (j = 0; j < 6; j++)
            {
                for (k = 0; k < 3; k++)
                {
                    edgeMultiply(a, &moveCube[j]);
                    UBtoDF_Move[i * N_MOVE + 3 * j + k] = getUBtoDF(a);
                }
                edgeMultiply(a, &moveCube[j]);
            }
        }
        //free(a);
        //dump_to_file((void*) UBtoDF_Move, sizeof(UBtoDF_Move), "UBtoDF_Move", cache_dir);
    }

    //if(check_cached_table("MergeURtoULandUBtoDF", (void*) MergeURtoULandUBtoDF, sizeof(MergeURtoULandUBtoDF), cache_dir) != 0) {
    if (1)
    {
        // for i, j <336 the six edges UR,UF,UL,UB,DR,DF are not in the
        // UD-slice and the index is <20160
        short uRtoUL, uBtoDF;
        for (uRtoUL = 0; uRtoUL < 336; uRtoUL++)
        {
            for (uBtoDF = 0; uBtoDF < 336; uBtoDF++)
            {
                MergeURtoULandUBtoDF[uRtoUL * 336 + uBtoDF] = (short)getURtoDF_standalone(uRtoUL, uBtoDF);
            }
        }
        //dump_to_file((void*) MergeURtoULandUBtoDF, sizeof(MergeURtoULandUBtoDF), "MergeURtoULandUBtoDF", cache_dir);
    }

    //if(check_cached_table("Slice_URFtoDLF_Parity_Prun", (void*) Slice_URFtoDLF_Parity_Prun, sizeof(Slice_URFtoDLF_Parity_Prun), cache_dir) != 0) {
    if (1)
    {
        int depth = 0, done = 1;
        int i, j;
        for (i = 0; i < N_SLICE2 * N_URFtoDLF * N_PARITY / 2; i++)
            Slice_URFtoDLF_Parity_Prun[i] = -1;
        setPruning(Slice_URFtoDLF_Parity_Prun, 0, 0);
        //printf("1\n");
        while (done != N_SLICE2 * N_URFtoDLF * N_PARITY)
        {
            // printf("%d %d %d\n", done, N_SLICE2 * N_URFtoDLF * N_PARITY, depth);
            for (i = 0; i < N_SLICE2 * N_URFtoDLF * N_PARITY; i++)
            {
                int parity = i % 2;
                int URFtoDLF = (i / 2) / N_SLICE2;
                int slice = (i / 2) % N_SLICE2;
                if (getPruning(Slice_URFtoDLF_Parity_Prun, i) == depth)
                {
                    for (j = 0; j < 18; j++)
                    {
                        int newSlice;
                        int newURFtoDLF;
                        int newParity;
                        switch (j)
                        {
                        case 3:
                        case 5:
                        case 6:
                        case 8:
                        case 12:
                        case 14:
                        case 15:
                        case 17:
                            continue;
                        default:
                            newSlice = FRtoBR_Move[slice * N_MOVE + j];
                            newURFtoDLF = URFtoDLF_Move[URFtoDLF * N_MOVE + j];
                            newParity = parityMove[parity][j];
                            if (getPruning(Slice_URFtoDLF_Parity_Prun, (N_SLICE2 * newURFtoDLF + newSlice) * 2 + newParity) == 0x0f)
                            {
                                setPruning(Slice_URFtoDLF_Parity_Prun, (N_SLICE2 * newURFtoDLF + newSlice) * 2 + newParity,
                                           (signed char)(depth + 1));
                                done++;
                            }
                        }
                    }
                }
            }
            depth++;
        }
        //printf("2\n");
        //dump_to_file((void*) Slice_URFtoDLF_Parity_Prun, sizeof(Slice_URFtoDLF_Parity_Prun), "Slice_URFtoDLF_Parity_Prun", cache_dir);
        //printf("3\n");
    }

    if (1)
    {
        //if(check_cached_table("Slice_URtoDF_Parity_Prun", (void*) Slice_URtoDF_Parity_Prun, sizeof(Slice_URtoDF_Parity_Prun), cache_dir) != 0) {
        int depth = 0, done = 1;
        int i, j;
        for (i = 0; i < N_SLICE2 * N_URtoDF * N_PARITY / 2; i++)
            Slice_URtoDF_Parity_Prun[i] = -1;
        setPruning(Slice_URtoDF_Parity_Prun, 0, 0);
        while (done != N_SLICE2 * N_URtoDF * N_PARITY)
        {
            for (i = 0; i < N_SLICE2 * N_URtoDF * N_PARITY; i++)
            {
                int parity = i % 2;
                int URtoDF = (i / 2) / N_SLICE2;
                int slice = (i / 2) % N_SLICE2;
                if (getPruning(Slice_URtoDF_Parity_Prun, i) == depth)
                {
                    for (j = 0; j < 18; j++)
                    {
                        int newSlice;
                        int newURtoDF;
                        int newParity;
                        switch (j)
                        {
                        case 3:
                        case 5:
                        case 6:
                        case 8:
                        case 12:
                        case 14:
                        case 15:
                        case 17:
                            continue;
                        default:
                            newSlice = FRtoBR_Move[slice * N_MOVE + j];
                            newURtoDF = URtoDF_Move[URtoDF * N_MOVE + j];
                            newParity = parityMove[parity][j];
                            if (getPruning(Slice_URtoDF_Parity_Prun, (N_SLICE2 * newURtoDF + newSlice) * 2 + newParity) == 0x0f)
                            {
                                setPruning(Slice_URtoDF_Parity_Prun, (N_SLICE2 * newURtoDF + newSlice) * 2 + newParity,
                                           (signed char)(depth + 1));
                                done++;
                            }
                        }
                    }
                }
            }
            depth++;
        }
        //dump_to_file((void*) Slice_URtoDF_Parity_Prun, sizeof(Slice_URtoDF_Parity_Prun), "Slice_URtoDF_Parity_Prun", cache_dir);
    }

    if (1)
    {
        //if(check_cached_table("Slice_Twist_Prun", (void*) Slice_Twist_Prun, sizeof(Slice_Twist_Prun), cache_dir) != 0) {
        int depth = 0, done = 1;
        int i, j;
        for (i = 0; i < N_SLICE1 * N_TWIST / 2 + 1; i++)
            Slice_Twist_Prun[i] = -1;
        setPruning(Slice_Twist_Prun, 0, 0);
        while (done != N_SLICE1 * N_TWIST)
        {
            for (i = 0; i < N_SLICE1 * N_TWIST; i++)
            {
                int twist = i / N_SLICE1, slice = i % N_SLICE1;
                if (getPruning(Slice_Twist_Prun, i) == depth)
                {
                    for (j = 0; j < 18; j++)
                    {
                        int newSlice = FRtoBR_Move[slice * 24 * N_MOVE + j] / 24;
                        int newTwist = twistMove[twist * N_MOVE + j];
                        if (getPruning(Slice_Twist_Prun, N_SLICE1 * newTwist + newSlice) == 0x0f)
                        {
                            setPruning(Slice_Twist_Prun, N_SLICE1 * newTwist + newSlice, (signed char)(depth + 1));
                            done++;
                        }
                    }
                }
            }
            depth++;
        }
        //dump_to_file((void*) Slice_Twist_Prun, sizeof(Slice_Twist_Prun), "Slice_Twist_Prun", cache_dir);
    }

    if (1)
    {
        //if(check_cached_table("Slice_Flip_Prun", (void*) Slice_Flip_Prun, sizeof(Slice_Flip_Prun), cache_dir) != 0) {
        int depth = 0, done = 1;
        int i, j;
        for (i = 0; i < N_SLICE1 * N_FLIP / 2; i++)
            Slice_Flip_Prun[i] = -1;
        setPruning(Slice_Flip_Prun, 0, 0);
        while (done != N_SLICE1 * N_FLIP)
        {
            for (i = 0; i < N_SLICE1 * N_FLIP; i++)
            {
                int flip = i / N_SLICE1, slice = i % N_SLICE1;
                if (getPruning(Slice_Flip_Prun, i) == depth)
                {
                    for (j = 0; j < 18; j++)
                    {
                        int newSlice = FRtoBR_Move[slice * 24 * N_MOVE + j] / 24;
                        int newFlip = flipMove[flip * N_MOVE + j];
                        if (getPruning(Slice_Flip_Prun, N_SLICE1 * newFlip + newSlice) == 0x0f)
                        {
                            setPruning(Slice_Flip_Prun, N_SLICE1 * newFlip + newSlice, (signed char)(depth + 1));
                        //    printf("%d ",depth);
                            done++;
                        }
                    }
                }
            }
            depth++;
        }
        //dump_to_file((void*) Slice_Flip_Prun, sizeof(Slice_Flip_Prun), "Slice_Flip_Prun", cache_dir);
    }
}

int main(int argc, char **argv)
{
               initPruning();
// printf("HI");
//int a=check_cached_table("twistMove", (void*) twistMove, sizeof(twistMove), "caches");
//a=check_cached_table("flipMove", (void*) flipMove, sizeof(flipMove), "caches");
//a =check_cached_table("FRtoBR_Move", (void*) FRtoBR_Move, sizeof(FRtoBR_Move), "caches");
//a=check_cached_table("URFtoDLF_Move", (void*) URFtoDLF_Move, sizeof(URFtoDLF_Move), "caches");
//a=check_cached_table("URtoDF_Move", (void*) URtoDF_Move, sizeof(URtoDF_Move), "caches");
//a=check_cached_table("URtoUL_Move", (void*) URtoUL_Move, sizeof(URtoUL_Move), "caches");
//a=check_cached_table("UBtoDF_Move", (void*) UBtoDF_Move, sizeof(UBtoDF_Move), "caches");
//a=check_cached_table("MergeURtoULandUBtoDF", (void*) MergeURtoULandUBtoDF, sizeof(MergeURtoULandUBtoDF), "caches");
//a=check_cached_table("Slice_URFtoDLF_Parity_Prun", (void*) Slice_URFtoDLF_Parity_Prun, sizeof(Slice_URFtoDLF_Parity_Prun), "caches");
//a=check_cached_table("Slice_URtoDF_Parity_Prun", (void*) Slice_URtoDF_Parity_Prun, sizeof(Slice_URtoDF_Parity_Prun), "caches");
//a=check_cached_table("Slice_Twist_Prun", (void*) Slice_Twist_Prun, sizeof(Slice_Twist_Prun), "caches");
//a=check_cached_table("Slice_Flip_Prun", (void*) Slice_Flip_Prun, sizeof(Slice_Flip_Prun), "caches");

    //if (argc > 1) {
    // char patternized[64];
    char *colour = argv[1];
    // char facelets [54];
    // for (int face =0; face<54; face++){
    //     facelets[face]=facelets2[face];
    // }
    //char colour[54]="DRLUUBFBRBLURRLRUBLRDDFDLFUFUFFDBRDUBRUFLLFDDBFLUBLRBD";
    // if (argc > 2) {
    //     patternize(facelets, argv[2], patternized);
    //     facelets = patternized;
    // }

    char encode_length;
    char encode_array[30];
    bool unsolvable = false;
    solution(
        colour,
        30,
        &unsolvable,
        &encode_length,
        encode_array,
        twistMove,
        flipMove,
        FRtoBR_Move,
        URFtoDLF_Move,
        URtoDF_Move,
        URtoUL_Move,
        UBtoDF_Move,
        MergeURtoULandUBtoDF,
        Slice_URFtoDLF_Parity_Prun,
        Slice_URtoDF_Parity_Prun,
        Slice_Twist_Prun,
        Slice_Flip_Prun);
    if (unsolvable == true)
    {
        puts("Unsolvable cube!");
        return 2;
    }
    // puts(sol);
    //puts(solu);
    //free(sol);
    // printf("%d \n" , encode_length);
    for (int i = 0; i < encode_length; i++)
    {
        switch (encode_array[i])
        {
        case uClock:
            printf("U ");
            break;
        case uCClock:
            printf("U' ");
            break;
        case uClock2:
            printf("U2 ");
            break;

        case dClock:
            printf("D ");
            break;
        case dCClock:
            printf("D' ");
            break;
        case dClock2:
            printf("D2 ");
            break;

        case bClock:
            printf("B ");
            break;
        case bCClock:
            printf("B' ");
            break;
        case bClock2:
            printf("B2 ");
            break;

        case fClock:
            printf("F ");
            break;
        case fCClock:
            printf("F' ");
            break;
        case fClock2:
            printf("F2 ");
            break;

        case lClock:
            printf("L ");
            break;
        case lCClock:
            printf("L' ");
            break;
        case lClock2:
            printf("L2 ");
            break;

        case rClock:
            printf("R ");
            break;
        case rCClock:
            printf("R' ");
            break;
        case rClock2:
            printf("R2 ");
            break;

        default:
            printf("WTF?");
            break;
        }
        // //putStr("%d ", moves[i]);
        //writeMove(moves[i], 0);
    }
    if (encode_length != 0)
    {
        printf("\n");
    }
    //printf(" correct answer is D2 R' D' F2 B D R2 D2 R' F2 D' F2 U' B2 L2 U2 D R2 U");

    // for (int i =0; i < 3; i++){
    //     printf ("%d", Slice_Flip_Prun[i]);
    // }
    return 0;
    //} else {
    //    return 1;
    //}
}
