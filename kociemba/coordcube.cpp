// #include <sys/types.h>
// #include <stdio.h>
// #include "prunetable_helpers.h"
// #include "coordcube.h"
// #include "cubiecube.h"

// short parityMove[2][18] = {
//     { 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1 },
//     { 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0 }
// };


// void setPruning(signed char *table, int index, signed char value) {
//     if ((index & 1) == 0)
//         table[index / 2] &= 0xf0 | value;
//     else
//         table[index / 2] &= 0x0f | (value << 4);
// }

// // Extract pruning value
// signed char getPruning(signed char *table, int index) {
//     signed char res;

//     if ((index & 1) == 0)
//         res = (table[index / 2] & 0x0f);
//     else
//         res = ((table[index / 2] >> 4) & 0x0f);

//     return res;
// }
