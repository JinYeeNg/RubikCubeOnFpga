#include <iostream>
#include "layerAll.h"
using namespace std;
uint4_t rMoves [200];

void printAllSteps(uint9_t order)
{
	uint9_t i;
	cout << "New Total Moves: " << order <<"\n\n";
	uint9_t newMove = 0;
	for (i = 0; i < order; i++)
	{
		if ((rMoves[i] != vRotate) && (rMoves[i] != hRotate))
		{
			newMove++;
		}
	}
	cout <<"New Total Moves(Without Rotations): " << newMove << "\n\n" ;

	uint9_t moveCounter = 0;

	printf("Moves:\n");

	for (i = 0; i < order; i++)
	{
		moveCounter++;
		switch (rMoves[i])
		{
		case uClock:
			printf("U ");
			break;
		case uCClock:
			printf("U' ");
			break;
		case dClock:
			printf("D ");
			break;
		case dCClock:
			printf("D' ");
			break;
		case bClock:
			printf("B ");
			break;
		case bCClock:
			printf("B' ");
			break;
		case fClock:
			printf("F ");
			break;
		case fCClock:
			printf("F' ");
			break;
		case lClock:
			printf("L ");
			break;
		case lCClock:
			printf("L' ");
			break;
		case rClock:
			printf("R ");
			break;
		case rCClock:
			printf("R' ");
			break;
		case hRotate:
			printf("H ");
			break;
		case vRotate:
			printf("V ");
			break;
		default:
			printf("WTF?");
			break;
		}
		// //putStr("%d ", moves[i]);
		//writeMove(moves[i], 0);
	}
	printf("\n");
}


int main()
{
	uint3_t cubieColor_tb[6][9] = {
	{ R,B,B,G,W,O,W,W,O }, //U
	{ Y,R,W,Y,Y,W,Y,W,B }, //D
	{ R,Y,G,Y,O,G,Y,R,O }, //B
	{ O,G,G,W,R,O,B,B,R }, //F
	{ Y,O,B,R,G,B,G,R,R }, //L
	{ W,Y,W,B,B,G,G,O,O }  //R
	};

	uint9_t order;
	solveCube(cubieColor_tb, rMoves, &order);
	//cout << order;
	printAllSteps(order);
    return 0;
}
