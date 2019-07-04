#include "layerAll.h"
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "ap_int.h"
using namespace std;

uint4_t moves [200];
uint9_t moveCounter = 0 ;
uint3_t cubieColor [6][9] ;

uint1_t edgeCorrect(uint4_t edge)
{
	switch (edge)
	{
	case 1:
		if ((cubieColor[0][4] == cubieColor[0][7]) &&
			(cubieColor[3][4] == cubieColor[3][1]))
		{
			return 1;
		}
		break;
	case 2:
		if ((cubieColor[0][4] == cubieColor[0][3]) &&
			(cubieColor[4][4] == cubieColor[4][1]))
		{
			return 1;
		}
		break;
	case 3:
		if ((cubieColor[0][4] == cubieColor[0][1]) &&
			(cubieColor[2][4] == cubieColor[2][1]))
		{
			return 1;
		}
		break;
	case 4:
		if ((cubieColor[0][4] == cubieColor[0][5]) &&
			(cubieColor[5][4] == cubieColor[5][1]))
		{
			return 1;
		}
		break;
	case 5:
		if ((cubieColor[3][4] == cubieColor[3][3]) &&
			(cubieColor[4][4] == cubieColor[4][5]))
		{
			return 1;
		}
		break;
	case 6:
		if ((cubieColor[4][4] == cubieColor[4][3]) &&
			(cubieColor[2][4] == cubieColor[2][5]))
		{
			return 1;
		}
		break;
	case 7:
		if ((cubieColor[5][4] == cubieColor[5][5]) &&
			(cubieColor[2][4] == cubieColor[2][3]))
		{
			return 1;
		}
		break;
	case 8:
		if ((cubieColor[3][4] == cubieColor[3][5]) &&
			(cubieColor[5][4] == cubieColor[5][3]))
		{
			return 1;
		}
		break;
	}
	return 0;
}

uint4_t findEdge(uint3_t fEC, uint3_t sEC ) //firstEdgeColor, secondEdgeColor
{
	uint4_t edgeNumber = 0;

	if (((cubieColor[0][7] == fEC) && (cubieColor[3][1] == sEC)) ||
		((cubieColor[0][7] == sEC) && (cubieColor[3][1] == fEC)))
	{
		edgeNumber = 1;
	}
	if (((cubieColor[0][3] == fEC) && (cubieColor[4][1] == sEC)) ||
		((cubieColor[0][3] == sEC) && (cubieColor[4][1] == fEC)))
	{
		edgeNumber = 2;
	}
	if (((cubieColor[0][1] == fEC) && (cubieColor[2][1] == sEC)) ||
		((cubieColor[0][1] == sEC) && (cubieColor[2][1] == fEC)))
	{
		edgeNumber = 3;
	}
	if (((cubieColor[0][5] == fEC) && (cubieColor[5][1] == sEC)) ||
		((cubieColor[0][5] == sEC) && (cubieColor[5][1] == fEC)))
	{

		edgeNumber = 4;
	}
	if (((cubieColor[3][3] == fEC) && (cubieColor[4][5] == sEC)) ||
		((cubieColor[3][3] == sEC) && (cubieColor[4][5] == fEC)))
	{
		edgeNumber = 5;
	}
	if (((cubieColor[4][3] == fEC) && (cubieColor[2][5] == sEC)) ||
		((cubieColor[4][3] == sEC) && (cubieColor[2][5] == fEC)))
	{
		edgeNumber = 6;
	}
	if (((cubieColor[5][5] == fEC) && (cubieColor[2][3] == sEC)) ||
		((cubieColor[5][5] == sEC) && (cubieColor[2][3] == fEC)))
	{
		edgeNumber = 7;
	}
	if (((cubieColor[3][5] == fEC) && (cubieColor[5][3] == sEC)) ||
		((cubieColor[3][5] == sEC) && (cubieColor[5][3] == fEC)))
	{
		edgeNumber = 8;
	}
	if (((cubieColor[1][1] == fEC) && (cubieColor[3][7] == sEC)) ||
		((cubieColor[1][1] == sEC) && (cubieColor[3][7] == fEC)))
	{
		edgeNumber = 9;
	}
	if (((cubieColor[1][3] == fEC) && (cubieColor[4][7] == sEC)) ||
		((cubieColor[1][3] == sEC) && (cubieColor[4][7] == fEC)))
	{
		edgeNumber = 10;
	}
	if (((cubieColor[1][7] == fEC) && (cubieColor[2][7] == sEC)) ||
		((cubieColor[1][7] == sEC) && (cubieColor[2][7] == fEC)))
	{
		edgeNumber = 11;
	}
	if (((cubieColor[1][5] == fEC) && (cubieColor[5][7] == sEC)) ||
		((cubieColor[1][5] == sEC) && (cubieColor[5][7] == fEC)))
	{
		edgeNumber = 12;
	}

	return edgeNumber;
}

void turnCube(uint4_t turn )
{
	moveCounter++;
	//moves = (uint4_t *)realloc(moves, moveCounter * sizeof(uint4_t));
	moves[moveCounter - 1] = turn;
	//if (moves == 0)
	//{
		//printf("ERROR: Out of memory\n");
	//}

	//writeMove(turn, 0);

	uint3_t cubieTemp[6][9];
	uint3_t i; uint4_t j;

	turnCube_label0:for (i = 0; i < 6; i++)
	{
		for (j = 0; j < 9; j++)
		{
			cubieTemp[i][j] = cubieColor[i][j];
		}
	}

	switch (turn)
	{
	case uClock:
		cubieColor[4][0] = cubieTemp[3][0];
		cubieColor[4][1] = cubieTemp[3][1];
		cubieColor[4][2] = cubieTemp[3][2];

		cubieColor[3][0] = cubieTemp[5][0];
		cubieColor[3][1] = cubieTemp[5][1];
		cubieColor[3][2] = cubieTemp[5][2];

		cubieColor[5][0] = cubieTemp[2][0];
		cubieColor[5][1] = cubieTemp[2][1];
		cubieColor[5][2] = cubieTemp[2][2];

		cubieColor[2][0] = cubieTemp[4][0];
		cubieColor[2][1] = cubieTemp[4][1];
		cubieColor[2][2] = cubieTemp[4][2];

		cubieColor[0][0] = cubieTemp[0][6];
		cubieColor[0][1] = cubieTemp[0][3];
		cubieColor[0][2] = cubieTemp[0][0];
		cubieColor[0][3] = cubieTemp[0][7];
		cubieColor[0][4] = cubieTemp[0][4];
		cubieColor[0][5] = cubieTemp[0][1];
		cubieColor[0][6] = cubieTemp[0][8];
		cubieColor[0][7] = cubieTemp[0][5];
		cubieColor[0][8] = cubieTemp[0][2];
		break;
	case uCClock:
		cubieColor[4][0] = cubieTemp[2][0];
		cubieColor[4][1] = cubieTemp[2][1];
		cubieColor[4][2] = cubieTemp[2][2];

		cubieColor[3][0] = cubieTemp[4][0];
		cubieColor[3][1] = cubieTemp[4][1];
		cubieColor[3][2] = cubieTemp[4][2];

		cubieColor[5][0] = cubieTemp[3][0];
		cubieColor[5][1] = cubieTemp[3][1];
		cubieColor[5][2] = cubieTemp[3][2];

		cubieColor[2][0] = cubieTemp[5][0];
		cubieColor[2][1] = cubieTemp[5][1];
		cubieColor[2][2] = cubieTemp[5][2];

		cubieColor[0][0] = cubieTemp[0][2];
		cubieColor[0][1] = cubieTemp[0][5];
		cubieColor[0][2] = cubieTemp[0][8];
		cubieColor[0][3] = cubieTemp[0][1];
		cubieColor[0][4] = cubieTemp[0][4];
		cubieColor[0][5] = cubieTemp[0][7];
		cubieColor[0][6] = cubieTemp[0][0];
		cubieColor[0][7] = cubieTemp[0][3];
		cubieColor[0][8] = cubieTemp[0][6];
		break;
	case dClock:
		cubieColor[4][6] = cubieTemp[2][6];
		cubieColor[4][7] = cubieTemp[2][7];
		cubieColor[4][8] = cubieTemp[2][8];

		cubieColor[3][6] = cubieTemp[4][6];
		cubieColor[3][7] = cubieTemp[4][7];
		cubieColor[3][8] = cubieTemp[4][8];

		cubieColor[5][6] = cubieTemp[3][6];
		cubieColor[5][7] = cubieTemp[3][7];
		cubieColor[5][8] = cubieTemp[3][8];

		cubieColor[2][6] = cubieTemp[5][6];
		cubieColor[2][7] = cubieTemp[5][7];
		cubieColor[2][8] = cubieTemp[5][8];

		cubieColor[1][0] = cubieTemp[1][6];
		cubieColor[1][1] = cubieTemp[1][3];
		cubieColor[1][2] = cubieTemp[1][0];
		cubieColor[1][3] = cubieTemp[1][7];
		cubieColor[1][4] = cubieTemp[1][4];
		cubieColor[1][5] = cubieTemp[1][1];
		cubieColor[1][6] = cubieTemp[1][8];
		cubieColor[1][7] = cubieTemp[1][5];
		cubieColor[1][8] = cubieTemp[1][2];
		break;
	case dCClock:
		cubieColor[4][6] = cubieTemp[3][6];
		cubieColor[4][7] = cubieTemp[3][7];
		cubieColor[4][8] = cubieTemp[3][8];

		cubieColor[3][6] = cubieTemp[5][6];
		cubieColor[3][7] = cubieTemp[5][7];
		cubieColor[3][8] = cubieTemp[5][8];

		cubieColor[5][6] = cubieTemp[2][6];
		cubieColor[5][7] = cubieTemp[2][7];
		cubieColor[5][8] = cubieTemp[2][8];

		cubieColor[2][6] = cubieTemp[4][6];
		cubieColor[2][7] = cubieTemp[4][7];
		cubieColor[2][8] = cubieTemp[4][8];

		cubieColor[1][0] = cubieTemp[1][2];
		cubieColor[1][1] = cubieTemp[1][5];
		cubieColor[1][2] = cubieTemp[1][8];
		cubieColor[1][3] = cubieTemp[1][1];
		cubieColor[1][4] = cubieTemp[1][4];
		cubieColor[1][5] = cubieTemp[1][7];
		cubieColor[1][6] = cubieTemp[1][0];
		cubieColor[1][7] = cubieTemp[1][3];
		cubieColor[1][8] = cubieTemp[1][6];
		break;
	case bClock:
		cubieColor[0][0] = cubieTemp[5][2];
		cubieColor[0][1] = cubieTemp[5][5];
		cubieColor[0][2] = cubieTemp[5][8];

		cubieColor[1][6] = cubieTemp[4][0];
		cubieColor[1][7] = cubieTemp[4][3];
		cubieColor[1][8] = cubieTemp[4][6];

		cubieColor[4][0] = cubieTemp[0][2];
		cubieColor[4][3] = cubieTemp[0][1];
		cubieColor[4][6] = cubieTemp[0][0];

		cubieColor[5][2] = cubieTemp[1][8];
		cubieColor[5][5] = cubieTemp[1][7];
		cubieColor[5][8] = cubieTemp[1][6];

		cubieColor[2][0] = cubieTemp[2][6];
		cubieColor[2][1] = cubieTemp[2][3];
		cubieColor[2][2] = cubieTemp[2][0];
		cubieColor[2][3] = cubieTemp[2][7];
		cubieColor[2][4] = cubieTemp[2][4];
		cubieColor[2][5] = cubieTemp[2][1];
		cubieColor[2][6] = cubieTemp[2][8];
		cubieColor[2][7] = cubieTemp[2][5];
		cubieColor[2][8] = cubieTemp[2][2];
		break;
	case bCClock:
		cubieColor[0][0] = cubieTemp[4][6];
		cubieColor[0][1] = cubieTemp[4][3];
		cubieColor[0][2] = cubieTemp[4][0];

		cubieColor[1][6] = cubieTemp[5][8];
		cubieColor[1][7] = cubieTemp[5][5];
		cubieColor[1][8] = cubieTemp[5][2];

		cubieColor[4][0] = cubieTemp[1][6];
		cubieColor[4][3] = cubieTemp[1][7];
		cubieColor[4][6] = cubieTemp[1][8];

		cubieColor[5][2] = cubieTemp[0][0];
		cubieColor[5][5] = cubieTemp[0][1];
		cubieColor[5][8] = cubieTemp[0][2];

		cubieColor[2][0] = cubieTemp[2][2];
		cubieColor[2][1] = cubieTemp[2][5];
		cubieColor[2][2] = cubieTemp[2][8];
		cubieColor[2][3] = cubieTemp[2][1];
		cubieColor[2][4] = cubieTemp[2][4];
		cubieColor[2][5] = cubieTemp[2][7];
		cubieColor[2][6] = cubieTemp[2][0];
		cubieColor[2][7] = cubieTemp[2][3];
		cubieColor[2][8] = cubieTemp[2][6];
		break;
	case fClock:
		cubieColor[0][6] = cubieTemp[4][8];
		cubieColor[0][7] = cubieTemp[4][5];
		cubieColor[0][8] = cubieTemp[4][2];

		cubieColor[1][0] = cubieTemp[5][6];
		cubieColor[1][1] = cubieTemp[5][3];
		cubieColor[1][2] = cubieTemp[5][0];

		cubieColor[4][2] = cubieTemp[1][0];
		cubieColor[4][5] = cubieTemp[1][1];
		cubieColor[4][8] = cubieTemp[1][2];

		cubieColor[5][0] = cubieTemp[0][6];
		cubieColor[5][3] = cubieTemp[0][7];
		cubieColor[5][6] = cubieTemp[0][8];

		cubieColor[3][0] = cubieTemp[3][6];
		cubieColor[3][1] = cubieTemp[3][3];
		cubieColor[3][2] = cubieTemp[3][0];
		cubieColor[3][3] = cubieTemp[3][7];
		cubieColor[3][4] = cubieTemp[3][4];
		cubieColor[3][5] = cubieTemp[3][1];
		cubieColor[3][6] = cubieTemp[3][8];
		cubieColor[3][7] = cubieTemp[3][5];
		cubieColor[3][8] = cubieTemp[3][2];
		break;
	case fCClock:
		cubieColor[0][6] = cubieTemp[5][0];
		cubieColor[0][7] = cubieTemp[5][3];
		cubieColor[0][8] = cubieTemp[5][6];

		cubieColor[1][0] = cubieTemp[4][2];
		cubieColor[1][1] = cubieTemp[4][5];
		cubieColor[1][2] = cubieTemp[4][8];

		cubieColor[4][2] = cubieTemp[0][8];
		cubieColor[4][5] = cubieTemp[0][7];
		cubieColor[4][8] = cubieTemp[0][6];

		cubieColor[5][0] = cubieTemp[1][2];
		cubieColor[5][3] = cubieTemp[1][1];
		cubieColor[5][6] = cubieTemp[1][0];

		cubieColor[3][0] = cubieTemp[3][2];
		cubieColor[3][1] = cubieTemp[3][5];
		cubieColor[3][2] = cubieTemp[3][8];
		cubieColor[3][3] = cubieTemp[3][1];
		cubieColor[3][4] = cubieTemp[3][4];
		cubieColor[3][5] = cubieTemp[3][7];
		cubieColor[3][6] = cubieTemp[3][0];
		cubieColor[3][7] = cubieTemp[3][3];
		cubieColor[3][8] = cubieTemp[3][6];
		break;
	case lClock:
		cubieColor[3][0] = cubieTemp[0][0];
		cubieColor[3][3] = cubieTemp[0][3];
		cubieColor[3][6] = cubieTemp[0][6];

		cubieColor[1][0] = cubieTemp[3][0];
		cubieColor[1][3] = cubieTemp[3][3];
		cubieColor[1][6] = cubieTemp[3][6];

		cubieColor[2][2] = cubieTemp[1][6];
		cubieColor[2][5] = cubieTemp[1][3];
		cubieColor[2][8] = cubieTemp[1][0];

		cubieColor[0][0] = cubieTemp[2][8];
		cubieColor[0][3] = cubieTemp[2][5];
		cubieColor[0][6] = cubieTemp[2][2];

		cubieColor[4][0] = cubieTemp[4][6];
		cubieColor[4][1] = cubieTemp[4][3];
		cubieColor[4][2] = cubieTemp[4][0];
		cubieColor[4][3] = cubieTemp[4][7];
		cubieColor[4][4] = cubieTemp[4][4];
		cubieColor[4][5] = cubieTemp[4][1];
		cubieColor[4][6] = cubieTemp[4][8];
		cubieColor[4][7] = cubieTemp[4][5];
		cubieColor[4][8] = cubieTemp[4][2];
		break;
	case lCClock:
		cubieColor[3][0] = cubieTemp[1][0];
		cubieColor[3][3] = cubieTemp[1][3];
		cubieColor[3][6] = cubieTemp[1][6];

		cubieColor[1][0] = cubieTemp[2][8];
		cubieColor[1][3] = cubieTemp[2][5];
		cubieColor[1][6] = cubieTemp[2][2];

		cubieColor[2][2] = cubieTemp[0][6];
		cubieColor[2][5] = cubieTemp[0][3];
		cubieColor[2][8] = cubieTemp[0][0];

		cubieColor[0][0] = cubieTemp[3][0];
		cubieColor[0][3] = cubieTemp[3][3];
		cubieColor[0][6] = cubieTemp[3][6];

		cubieColor[4][0] = cubieTemp[4][2];
		cubieColor[4][1] = cubieTemp[4][5];
		cubieColor[4][2] = cubieTemp[4][8];
		cubieColor[4][3] = cubieTemp[4][1];
		cubieColor[4][4] = cubieTemp[4][4];
		cubieColor[4][5] = cubieTemp[4][7];
		cubieColor[4][6] = cubieTemp[4][0];
		cubieColor[4][7] = cubieTemp[4][3];
		cubieColor[4][8] = cubieTemp[4][6];
		break;
	case rClock:
		cubieColor[3][2] = cubieTemp[1][2];
		cubieColor[3][5] = cubieTemp[1][5];
		cubieColor[3][8] = cubieTemp[1][8];

		cubieColor[1][2] = cubieTemp[2][6];
		cubieColor[1][5] = cubieTemp[2][3];
		cubieColor[1][8] = cubieTemp[2][0];

		cubieColor[2][0] = cubieTemp[0][8];
		cubieColor[2][3] = cubieTemp[0][5];
		cubieColor[2][6] = cubieTemp[0][2];

		cubieColor[0][2] = cubieTemp[3][2];
		cubieColor[0][5] = cubieTemp[3][5];
		cubieColor[0][8] = cubieTemp[3][8];

		cubieColor[5][0] = cubieTemp[5][6];
		cubieColor[5][1] = cubieTemp[5][3];
		cubieColor[5][2] = cubieTemp[5][0];
		cubieColor[5][3] = cubieTemp[5][7];
		cubieColor[5][4] = cubieTemp[5][4];
		cubieColor[5][5] = cubieTemp[5][1];
		cubieColor[5][6] = cubieTemp[5][8];
		cubieColor[5][7] = cubieTemp[5][5];
		cubieColor[5][8] = cubieTemp[5][2];
		break;
	case rCClock:
		cubieColor[3][2] = cubieTemp[0][2];
		cubieColor[3][5] = cubieTemp[0][5];
		cubieColor[3][8] = cubieTemp[0][8];

		cubieColor[1][2] = cubieTemp[3][2];
		cubieColor[1][5] = cubieTemp[3][5];
		cubieColor[1][8] = cubieTemp[3][8];

		cubieColor[2][0] = cubieTemp[1][8];
		cubieColor[2][3] = cubieTemp[1][5];
		cubieColor[2][6] = cubieTemp[1][2];

		cubieColor[0][2] = cubieTemp[2][6];
		cubieColor[0][5] = cubieTemp[2][3];
		cubieColor[0][8] = cubieTemp[2][0];

		cubieColor[5][0] = cubieTemp[5][2];
		cubieColor[5][1] = cubieTemp[5][5];
		cubieColor[5][2] = cubieTemp[5][8];
		cubieColor[5][3] = cubieTemp[5][1];
		cubieColor[5][4] = cubieTemp[5][4];
		cubieColor[5][5] = cubieTemp[5][7];
		cubieColor[5][6] = cubieTemp[5][0];
		cubieColor[5][7] = cubieTemp[5][3];
		cubieColor[5][8] = cubieTemp[5][6];
		break;
	}
}

void solveStage1(uint4_t edgeNumber)
{
	switch (edgeNumber)
	{
	case 1:
		turnCube(fClock);
		turnCube(fClock);
		turnCube(dClock);
		turnCube(rClock);
		turnCube(rClock);
		break;
	case 2:
		turnCube(lClock);
		turnCube(lClock);
		turnCube(dClock);
		turnCube(dClock);
		turnCube(rClock);
		turnCube(rClock);
		break;
	case 3:
		turnCube(bClock);
		turnCube(bClock);
		turnCube(dCClock);
		turnCube(rClock);
		turnCube(rClock);
		break;
	case 4:
		break;
	case 5:
		turnCube(fCClock);
		turnCube(dClock);
		turnCube(rClock);
		turnCube(rClock);
		if (cubieColor[0][7] != W)
		{
			turnCube(fClock);
		}
		break;
	case 6:
		turnCube(lCClock);
		turnCube(dClock);
		turnCube(dClock);
		turnCube(rClock);
		turnCube(rClock);
		if (cubieColor[0][3] != W)
		{
			turnCube(lClock);
		}
		break;
	case 7:
		turnCube(rCClock);
		break;
	case 8:
		turnCube(rClock);
		break;
	case 9:
		turnCube(dClock);
		turnCube(rClock);
		turnCube(rClock);
		break;
	case 10:
		turnCube(dClock);
		turnCube(dClock);
		turnCube(rClock);
		turnCube(rClock);
		break;
	case 11:
		turnCube(dCClock);
		turnCube(rClock);
		turnCube(rClock);
		break;
	case 12:
		turnCube(rClock);
		turnCube(rClock);
		break;
	}

	if (cubieColor[0][5] != W)
	{
		turnCube(rCClock);
		turnCube(uClock);
		turnCube(fCClock);
		turnCube(uCClock);
	}
}

void rotateCubeHorizontal() //rotate F -> R, R -> B ...
{
	 moveCounter++;
	// //writeMove(hRotate, 0);

	 //moves = (uint4_t *)realloc(moves, moveCounter * sizeof(uint4_t));
	 moves[moveCounter - 1] = hRotate;

	// if (moves == 0)
	// {
	// 	printf("ERROR: Out of memory\n");
	// }

	 uint3_t cubieTemp[6][9];
	 uint3_t i; uint4_t j;

	rotateCubeHorizontal_label1:for (i = 0; i < 6; i++)
	{
		for (j = 0; j < 9; j++)
		{
			cubieTemp[i][j] = cubieColor[i][j];
		}
	}

	cubieColor[0][0] = cubieTemp[0][6];
	cubieColor[0][1] = cubieTemp[0][3];
	cubieColor[0][2] = cubieTemp[0][0];
	cubieColor[0][3] = cubieTemp[0][7];
	cubieColor[0][4] = cubieTemp[0][4];
	cubieColor[0][5] = cubieTemp[0][1];
	cubieColor[0][6] = cubieTemp[0][8];
	cubieColor[0][7] = cubieTemp[0][5];
	cubieColor[0][8] = cubieTemp[0][2];

	cubieColor[1][0] = cubieTemp[1][2];
	cubieColor[1][1] = cubieTemp[1][5];
	cubieColor[1][2] = cubieTemp[1][8];
	cubieColor[1][3] = cubieTemp[1][1];
	cubieColor[1][4] = cubieTemp[1][4];
	cubieColor[1][5] = cubieTemp[1][7];
	cubieColor[1][6] = cubieTemp[1][0];
	cubieColor[1][7] = cubieTemp[1][3];
	cubieColor[1][8] = cubieTemp[1][6];

	cubieColor[2][0] = cubieTemp[4][0];
	cubieColor[2][1] = cubieTemp[4][1];
	cubieColor[2][2] = cubieTemp[4][2];
	cubieColor[2][3] = cubieTemp[4][3];
	cubieColor[2][4] = cubieTemp[4][4];
	cubieColor[2][5] = cubieTemp[4][5];
	cubieColor[2][6] = cubieTemp[4][6];
	cubieColor[2][7] = cubieTemp[4][7];
	cubieColor[2][8] = cubieTemp[4][8];

	cubieColor[3][0] = cubieTemp[5][0];
	cubieColor[3][1] = cubieTemp[5][1];
	cubieColor[3][2] = cubieTemp[5][2];
	cubieColor[3][3] = cubieTemp[5][3];
	cubieColor[3][4] = cubieTemp[5][4];
	cubieColor[3][5] = cubieTemp[5][5];
	cubieColor[3][6] = cubieTemp[5][6];
	cubieColor[3][7] = cubieTemp[5][7];
	cubieColor[3][8] = cubieTemp[5][8];

	cubieColor[4][0] = cubieTemp[3][0];
	cubieColor[4][1] = cubieTemp[3][1];
	cubieColor[4][2] = cubieTemp[3][2];
	cubieColor[4][3] = cubieTemp[3][3];
	cubieColor[4][4] = cubieTemp[3][4];
	cubieColor[4][5] = cubieTemp[3][5];
	cubieColor[4][6] = cubieTemp[3][6];
	cubieColor[4][7] = cubieTemp[3][7];
	cubieColor[4][8] = cubieTemp[3][8];

	cubieColor[5][0] = cubieTemp[2][0];
	cubieColor[5][1] = cubieTemp[2][1];
	cubieColor[5][2] = cubieTemp[2][2];
	cubieColor[5][3] = cubieTemp[2][3];
	cubieColor[5][4] = cubieTemp[2][4];
	cubieColor[5][5] = cubieTemp[2][5];
	cubieColor[5][6] = cubieTemp[2][6];
	cubieColor[5][7] = cubieTemp[2][7];
	cubieColor[5][8] = cubieTemp[2][8];
}

uint9_t optimizeCube()
{
	uint9_t i;
	uint9_t order = 0;

	for (i = 0; i < moveCounter; i++)
	{
		if (((((moves[i] % 2 == 0) && (moves[i] + 1 != (moves[i + 1]))) || (moves[i] == 12)) ||
			(((moves[i] % 2 == 1) && (moves[i] - 1 != (moves[i + 1]))) || (moves[i] == 13))) &&

			!((moves[i] == moves[i + 1]) &&
			(moves[i + 1] == moves[i + 2]) &&
				(moves[i + 2] == moves[i + 3])))
		{
			moves[order++] = moves[i];
		}
		else if (((moves[i] == moves[i + 1]) &&
			(moves[i + 1] == moves[i + 2]) &&
			(moves[i + 2] == moves[i + 3])))
		{
			i += 3;
		}
		else
		{
			i = i + 1;
		}
	}
	return order;
}

uint1_t cornerCorrect(uint3_t corner)
{
	switch (corner)
	{
	case 1:
		if ((cubieColor[0][4] == cubieColor[0][6]) &&
			(cubieColor[3][4] == cubieColor[3][0]) &&
			(cubieColor[4][4] == cubieColor[4][2]))
		{
			return 1;
		}
		break;
	case 2:
		if ((cubieColor[0][4] == cubieColor[0][0]) &&
			(cubieColor[2][4] == cubieColor[2][2]) &&
			(cubieColor[4][0] == cubieColor[4][0]))
		{
			return 1;
		}
		break;
	case 3:
		if ((cubieColor[0][4] == cubieColor[0][2]) &&
			(cubieColor[2][4] == cubieColor[2][0]) &&
			(cubieColor[5][4] == cubieColor[5][2]))
		{
			return 1;
		}
		break;
	case 4:
		if ((cubieColor[0][4] == cubieColor[0][8]) &&
			(cubieColor[3][4] == cubieColor[3][2]) &&
			(cubieColor[5][4] == cubieColor[5][0]))
		{
			return 1;
		}
		break;
	}
	return 0;
}

uint4_t findCorner(uint3_t fCC, uint3_t sCC, uint3_t tCC) //firstCornerColor, secondCornerColor, thirdCornerColor
{
	uint4_t cornerNumber = 0;

	if (((cubieColor[0][6] == fCC) || (cubieColor[0][6] == sCC) || (cubieColor[0][6] == tCC)) &&
		((cubieColor[4][2] == fCC) || (cubieColor[4][2] == sCC) || (cubieColor[4][2] == tCC)) &&
		((cubieColor[3][0] == fCC) || (cubieColor[3][0] == sCC) || (cubieColor[3][0] == tCC)))
	{
		cornerNumber = 1;
	}
	if (((cubieColor[0][0] == fCC) || (cubieColor[0][0] == sCC) || (cubieColor[0][0] == tCC)) &&
		((cubieColor[2][2] == fCC) || (cubieColor[2][2] == sCC) || (cubieColor[2][2] == tCC)) &&
		((cubieColor[4][0] == fCC) || (cubieColor[4][0] == sCC) || (cubieColor[4][0] == tCC)))
	{
		cornerNumber = 2;
	}
	if (((cubieColor[0][2] == fCC) || (cubieColor[0][2] == sCC) || (cubieColor[0][2] == tCC)) &&
		((cubieColor[2][0] == fCC) || (cubieColor[2][0] == sCC) || (cubieColor[2][0] == tCC)) &&
		((cubieColor[5][2] == fCC) || (cubieColor[5][2] == sCC) || (cubieColor[5][2] == tCC)))
	{
		cornerNumber = 3;
	}
	if (((cubieColor[0][8] == fCC) || (cubieColor[0][8] == sCC) || (cubieColor[0][8] == tCC)) &&
		((cubieColor[3][2] == fCC) || (cubieColor[3][2] == sCC) || (cubieColor[3][2] == tCC)) &&
		((cubieColor[5][0] == fCC) || (cubieColor[5][0] == sCC) || (cubieColor[5][0] == tCC)))
	{
		cornerNumber = 4;
	}
	if (((cubieColor[1][0] == fCC) || (cubieColor[1][0] == sCC) || (cubieColor[1][0] == tCC)) &&
		((cubieColor[3][6] == fCC) || (cubieColor[3][6] == sCC) || (cubieColor[3][6] == tCC)) &&
		((cubieColor[4][8] == fCC) || (cubieColor[4][8] == sCC) || (cubieColor[4][8] == tCC)))
	{
		cornerNumber = 5;
	}
	if (((cubieColor[1][6] == fCC) || (cubieColor[1][6] == sCC) || (cubieColor[1][6] == tCC)) &&
		((cubieColor[2][8] == fCC) || (cubieColor[2][8] == sCC) || (cubieColor[2][8] == tCC)) &&
		((cubieColor[4][6] == fCC) || (cubieColor[4][6] == sCC) || (cubieColor[4][6] == tCC)))
	{
		cornerNumber = 6;
	}
	if (((cubieColor[1][8] == fCC) || (cubieColor[1][8] == sCC) || (cubieColor[1][8] == tCC)) &&
		((cubieColor[2][6] == fCC) || (cubieColor[2][6] == sCC) || (cubieColor[2][6] == tCC)) &&
		((cubieColor[5][8] == fCC) || (cubieColor[5][8] == sCC) || (cubieColor[5][8] == tCC)))
	{
		cornerNumber = 7;
	}
	if (((cubieColor[1][2] == fCC) || (cubieColor[1][2] == sCC) || (cubieColor[1][2] == tCC)) &&
		((cubieColor[3][8] == fCC) || (cubieColor[3][8] == sCC) || (cubieColor[3][8] == tCC)) &&
		((cubieColor[5][6] == fCC) || (cubieColor[5][6] == sCC) || (cubieColor[5][6] == tCC)))
	{
		cornerNumber = 8;
	}

	return cornerNumber;
}

void moveCornerCubieD()
{
	turnCube(rCClock);
	turnCube(dCClock);
	turnCube(rClock);
}

void solveCorner()
{
	turnCube(rCClock);
	turnCube(dCClock);
	turnCube(rClock);
	turnCube(dClock);
}

void solveStage2(uint3_t fC, uint3_t sC, uint3_t tC)
{
	// if on top move it to bottom first
	if (findCorner(fC, sC, tC) <= 4)
	{
		// move a corner piece down if on top
		switch (findCorner(fC, sC, tC))
		{
		case 1:
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			moveCornerCubieD();
			rotateCubeHorizontal();
			break;
		case 2:
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			moveCornerCubieD();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			break;
		case 3:
			rotateCubeHorizontal();
			moveCornerCubieD();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			break;
		case 4:
			moveCornerCubieD();
			break;
		}
	}
	// now solve it with a new position of the corner piece on the bottom
	// move the corner piece directly bottom of the intended corner
	switch (findCorner(fC, sC, tC))
	{
	case 5:
		turnCube(dClock);
		break;
	case 6:
		turnCube(dClock);
		turnCube(dClock);
		break;
	case 7:
		turnCube(dCClock);
		break;
	case 8:
		break;
	}

	//check if the corner piece is in the right place
	while ((cubieColor[0][8] != cubieColor[0][4]) ||
		(cubieColor[3][2] != cubieColor[3][4]) ||
		(cubieColor[5][0] != cubieColor[5][4]))
	{
		solveCorner();
	}
}
///////////////////stage 3////////////////////////////////////////////////////////////

void rotateCubeVertical() //rotate F -> D, D -> B ...
{
	moveCounter++;
	//writeMove(vRotate, 0);

	//moves = (uint4_t *)realloc(moves, moveCounter * sizeof(uint4_t));
	moves[moveCounter - 1] = vRotate;

//	if (moves == 0)
//	{
//		printf("ERROR: Out of memory\n");
//	}

	uint3_t cubieTemp[6][9];
	uint3_t  i; uint4_t j;

	for (i = 0; i < 6; i++)
	{
		for (j = 0; j < 9; j++)
		{
			cubieTemp[i][j] = cubieColor[i][j];
		}
	}

	cubieColor[0][0] = cubieTemp[3][0];
	cubieColor[0][1] = cubieTemp[3][1];
	cubieColor[0][2] = cubieTemp[3][2];
	cubieColor[0][3] = cubieTemp[3][3];
	cubieColor[0][4] = cubieTemp[3][4];
	cubieColor[0][5] = cubieTemp[3][5];
	cubieColor[0][6] = cubieTemp[3][6];
	cubieColor[0][7] = cubieTemp[3][7];
	cubieColor[0][8] = cubieTemp[3][8];

	cubieColor[1][0] = cubieTemp[2][8];
	cubieColor[1][1] = cubieTemp[2][7];
	cubieColor[1][2] = cubieTemp[2][6];
	cubieColor[1][3] = cubieTemp[2][5];
	cubieColor[1][4] = cubieTemp[2][4];
	cubieColor[1][5] = cubieTemp[2][3];
	cubieColor[1][6] = cubieTemp[2][2];
	cubieColor[1][7] = cubieTemp[2][1];
	cubieColor[1][8] = cubieTemp[2][0];

	cubieColor[2][0] = cubieTemp[0][8];
	cubieColor[2][1] = cubieTemp[0][7];
	cubieColor[2][2] = cubieTemp[0][6];
	cubieColor[2][3] = cubieTemp[0][5];
	cubieColor[2][4] = cubieTemp[0][4];
	cubieColor[2][5] = cubieTemp[0][3];
	cubieColor[2][6] = cubieTemp[0][2];
	cubieColor[2][7] = cubieTemp[0][1];
	cubieColor[2][8] = cubieTemp[0][0];

	cubieColor[3][0] = cubieTemp[1][0];
	cubieColor[3][1] = cubieTemp[1][1];
	cubieColor[3][2] = cubieTemp[1][2];
	cubieColor[3][3] = cubieTemp[1][3];
	cubieColor[3][4] = cubieTemp[1][4];
	cubieColor[3][5] = cubieTemp[1][5];
	cubieColor[3][6] = cubieTemp[1][6];
	cubieColor[3][7] = cubieTemp[1][7];
	cubieColor[3][8] = cubieTemp[1][8];

	cubieColor[4][0] = cubieTemp[4][2];
	cubieColor[4][1] = cubieTemp[4][5];
	cubieColor[4][2] = cubieTemp[4][8];
	cubieColor[4][3] = cubieTemp[4][1];
	cubieColor[4][4] = cubieTemp[4][4];
	cubieColor[4][5] = cubieTemp[4][7];
	cubieColor[4][6] = cubieTemp[4][0];
	cubieColor[4][7] = cubieTemp[4][3];
	cubieColor[4][8] = cubieTemp[4][6];

	cubieColor[5][0] = cubieTemp[5][6];
	cubieColor[5][1] = cubieTemp[5][3];
	cubieColor[5][2] = cubieTemp[5][0];
	cubieColor[5][3] = cubieTemp[5][7];
	cubieColor[5][4] = cubieTemp[5][4];
	cubieColor[5][5] = cubieTemp[5][1];
	cubieColor[5][6] = cubieTemp[5][8];
	cubieColor[5][7] = cubieTemp[5][5];
	cubieColor[5][8] = cubieTemp[5][2];
}

void stage3Movea()
{
	turnCube(uClock);
	turnCube(rClock);
	turnCube(uCClock);
	turnCube(rCClock);
	turnCube(uCClock);
	turnCube(fCClock);
	turnCube(uClock);
	turnCube(fClock);
}
void stage3Moveb()
{
	turnCube(uCClock);
	turnCube(lCClock);
	turnCube(uClock);
	turnCube(lClock);
	turnCube(uClock);
	turnCube(fClock);
	turnCube(uCClock);
	turnCube(fCClock);
}

void solveStage3a()
{
	// solve it first if its in the right place already
	while (((cubieColor[2][1] == cubieColor[3][4]) &&
		((cubieColor[0][1] == cubieColor[5][4]) ||
		(cubieColor[0][1] == cubieColor[4][4]))) ||

			((cubieColor[3][1] == cubieColor[3][4]) &&
		((cubieColor[0][7] == cubieColor[5][4]) ||
				(cubieColor[0][7] == cubieColor[4][4]))) ||


			((cubieColor[4][1] == cubieColor[3][4]) &&
		((cubieColor[0][3] == cubieColor[5][4]) ||
				(cubieColor[0][3] == cubieColor[4][4]))) ||

			((cubieColor[5][1] == cubieColor[3][4]) &&
		((cubieColor[0][5] == cubieColor[5][4]) ||
				(cubieColor[0][5] == cubieColor[4][4]))))
	{
		if (cubieColor[2][1] == cubieColor[3][4])
		{
			if (cubieColor[0][1] == cubieColor[5][4])
			{
				turnCube(uClock);
				turnCube(uClock);
				stage3Movea();
			}
			if (cubieColor[0][1] == cubieColor[4][4])
			{
				turnCube(uClock);
				turnCube(uClock);
				stage3Moveb();
			}
		}
		if (cubieColor[3][1] == cubieColor[3][4])
		{
			if (cubieColor[0][7] == cubieColor[5][4])
			{
				stage3Movea();
			}
			if (cubieColor[0][7] == cubieColor[4][4])
			{
				stage3Moveb();
			}
		}
		if (cubieColor[4][1] == cubieColor[3][4])
		{
			if (cubieColor[0][3] == cubieColor[5][4])
			{
				turnCube(uCClock);
				stage3Movea();
			}
			if (cubieColor[0][3] == cubieColor[4][4])
			{
				turnCube(uCClock);
				stage3Moveb();
			}
		}
		if (cubieColor[5][1] == cubieColor[3][4])
		{
			if (cubieColor[0][5] == cubieColor[5][4])
			{
				turnCube(uClock);
				stage3Movea();
			}
			if (cubieColor[0][5] == cubieColor[4][4])
			{
				turnCube(uClock);
				stage3Moveb();
			}
		}
	}
}



void stage3Prepare(uint3_t fC, uint3_t sC)
{
	switch (findEdge(fC, sC))
	{
	case 5:
		rotateCubeHorizontal();
		rotateCubeHorizontal();
		rotateCubeHorizontal();
		stage3Movea();
		rotateCubeHorizontal();
		break;
	case 6:
		rotateCubeHorizontal();
		rotateCubeHorizontal();
		stage3Movea();
		rotateCubeHorizontal();
		rotateCubeHorizontal();
		break;
	case 7:
		rotateCubeHorizontal();
		stage3Movea();
		rotateCubeHorizontal();
		rotateCubeHorizontal();
		rotateCubeHorizontal();
		break;
	case 8:
		if (cubieColor[3][4] != cubieColor[3][5])
		{
			stage3Movea();
		}
		break;
	}
}

void solveStage3(uint3_t fC, uint3_t sC)
{
	solveStage3a();
	// if the edge piece is on a side, move it up (to U face)
	if (5 <= findEdge(fC, sC))
	{
		stage3Prepare(fC, sC);
	}
	solveStage3a();
}

void solveStage4a()
{
	// if non of them matches
	if ((cubieColor[0][4] != cubieColor[0][1]) &&
		(cubieColor[0][4] != cubieColor[0][3]) &&
		(cubieColor[0][4] != cubieColor[0][5]) &&
		(cubieColor[0][4] != cubieColor[0][7]))
	{
		turnCube(fClock);
		turnCube(uClock);
		turnCube(rClock);
		turnCube(uCClock);
		turnCube(rCClock);
		turnCube(fCClock);
	}

	// if L shape
	if (((cubieColor[0][4] != cubieColor[0][1]) &&
		(cubieColor[0][4] == cubieColor[0][7])) ||
		((cubieColor[0][4] == cubieColor[0][1]) &&
		(cubieColor[0][4] != cubieColor[0][7])))
	{
		if (cubieColor[0][1] == cubieColor[0][5])
		{
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
		}
		else if (cubieColor[0][5] == cubieColor[0][7])
		{
			rotateCubeHorizontal();
			rotateCubeHorizontal();
		}
		else if (cubieColor[0][3] == cubieColor[0][7])
		{
			rotateCubeHorizontal();
		}
		turnCube(fClock);
		turnCube(uClock);
		turnCube(rClock);
		turnCube(uCClock);
		turnCube(rCClock);
		turnCube(fCClock);
	}

	// if one line
	if (((cubieColor[0][4] == cubieColor[0][1]) &&
		(cubieColor[0][4] == cubieColor[0][7]) &&
		(cubieColor[0][4] != cubieColor[0][3]) &&
		(cubieColor[0][4] != cubieColor[0][5])) ||
		((cubieColor[0][4] == cubieColor[0][3]) &&
		(cubieColor[0][4] == cubieColor[0][5]) &&
			(cubieColor[0][4] != cubieColor[0][1]) &&
			(cubieColor[0][4] != cubieColor[0][7])))
	{
		if ((cubieColor[0][4] == cubieColor[0][1]) &&
			(cubieColor[0][4] == cubieColor[0][7]))
		{
			rotateCubeHorizontal();
		}
		turnCube(fClock);
		turnCube(rClock);
		turnCube(uClock);
		turnCube(rCClock);
		turnCube(uCClock);
		turnCube(fCClock);
	}
}

void stage4sequence()
{
	turnCube(rClock);
	turnCube(uClock);
	turnCube(rCClock);
	turnCube(uClock);
	turnCube(rClock);
	turnCube(uClock);
	turnCube(uClock);
	turnCube(rCClock);
}

void solveStage4b()
{
	// any better method????

	//state 3 two corners match
	if (((cubieColor[0][4] == cubieColor[0][0]) &&
		(cubieColor[0][4] == cubieColor[0][2]) &&
		(cubieColor[0][4] != cubieColor[0][6]) &&
		(cubieColor[0][4] != cubieColor[0][8])) ||

		((cubieColor[0][4] != cubieColor[0][0]) &&
		(cubieColor[0][4] != cubieColor[0][2]) &&
			(cubieColor[0][4] == cubieColor[0][6]) &&
			(cubieColor[0][4] == cubieColor[0][8])) ||

			((cubieColor[0][4] == cubieColor[0][0]) &&
		(cubieColor[0][4] != cubieColor[0][2]) &&
				(cubieColor[0][4] == cubieColor[0][6]) &&
				(cubieColor[0][4] != cubieColor[0][8])) ||

				((cubieColor[0][4] != cubieColor[0][0]) &&
		(cubieColor[0][4] == cubieColor[0][2]) &&
					(cubieColor[0][4] != cubieColor[0][6]) &&
					(cubieColor[0][4] == cubieColor[0][8])) ||

					((cubieColor[0][4] == cubieColor[0][0]) &&
		(cubieColor[0][4] != cubieColor[0][2]) &&
						(cubieColor[0][4] != cubieColor[0][6]) &&
						(cubieColor[0][4] == cubieColor[0][8])) ||

						((cubieColor[0][4] != cubieColor[0][0]) &&
		(cubieColor[0][4] == cubieColor[0][2]) &&
							(cubieColor[0][4] == cubieColor[0][6]) &&
							(cubieColor[0][4] != cubieColor[0][8])))
	{
		while (cubieColor[0][4] != cubieColor[3][0])
		{
			rotateCubeHorizontal();
		}
		stage4sequence();
	}

	//state 2 one corner match
	else if ((cubieColor[0][4] == cubieColor[0][0]) ||
		(cubieColor[0][4] == cubieColor[0][2]) ||
		(cubieColor[0][4] == cubieColor[0][6]) ||
		(cubieColor[0][4] == cubieColor[0][8]))
	{
		while (cubieColor[0][4] != cubieColor[0][6])
		{
			rotateCubeHorizontal();
		}
		stage4sequence();
	}

	//state 1 no corner match
	else
	{
		while (cubieColor[0][4] != cubieColor[4][2])
		{
			rotateCubeHorizontal();
		}
		stage4sequence();
	}
}

void stage5sequence1()
{
	turnCube(rCClock);
	turnCube(fClock);
	turnCube(rCClock);
	turnCube(bClock);
	turnCube(bClock);
	turnCube(rClock);
	turnCube(fCClock);
	turnCube(rCClock);
	turnCube(bClock);
	turnCube(bClock);
	turnCube(rClock);
	turnCube(rClock);
	turnCube(uCClock);
}

void stage5sequence2()
{
	turnCube(fClock);
	turnCube(fClock);
	turnCube(uClock);
	turnCube(lClock);
	turnCube(rCClock);
	turnCube(fClock);
	turnCube(fClock);
	turnCube(lCClock);
	turnCube(rClock);
	turnCube(uClock);
	turnCube(fClock);
	turnCube(fClock);
}

void stage5sequence3()
{
	turnCube(fClock);
	turnCube(fClock);
	turnCube(uCClock);
	turnCube(lClock);
	turnCube(rCClock);
	turnCube(fClock);
	turnCube(fClock);
	turnCube(lCClock);
	turnCube(rClock);
	turnCube(uCClock);
	turnCube(fClock);
	turnCube(fClock);
}

void solveStage5a()
{
	// can it be better???
	if (cornerCorrect(1) && cornerCorrect(2) &&
		!cornerCorrect(3) && !cornerCorrect(4))
	{
		rotateCubeHorizontal();
	}
	else if (!cornerCorrect(1) && !cornerCorrect(2) &&
		cornerCorrect(3) && cornerCorrect(4))
	{
		rotateCubeHorizontal();
		rotateCubeHorizontal();
		rotateCubeHorizontal();
	}
	else if (cornerCorrect(1) && !cornerCorrect(2) &&
		!cornerCorrect(3) && cornerCorrect(4))
	{
		rotateCubeHorizontal();
		rotateCubeHorizontal();
	}
	stage5sequence1();

}

void solveStage5b()
{
	if (!edgeCorrect(1) && !edgeCorrect(2) &&
		!edgeCorrect(3) && !edgeCorrect(4))
	{
		stage5sequence2();
	}
	else
	{
		if (edgeCorrect(1) && !edgeCorrect(2) &&
			!edgeCorrect(3) && !edgeCorrect(4))
		{
			rotateCubeHorizontal();
			rotateCubeHorizontal();
		}
		else if (!edgeCorrect(1) && edgeCorrect(2) &&
			!edgeCorrect(3) && !edgeCorrect(4))
		{
			rotateCubeHorizontal();
		}
		else if (!edgeCorrect(1) && !edgeCorrect(2) &&
			!edgeCorrect(3) && edgeCorrect(4))
		{
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
		}

		//check wheather clkwise or cclkwise need

		if (cubieColor[3][1] == cubieColor[4][1])
		{
			stage5sequence2();
		}
		else
		{
			stage5sequence3();
		}

	}
}

//void printAllSteps(uint9_t order)
//{
//	uint9_t i;
//	printf("New Total Moves: %d\n\n", order);
//	uint9_t newMove = 0;
//	for (i = 0; i < order; i++)
//	{
//		if ((moves[i] != vRotate) && (moves[i] != hRotate))
//		{
//			newMove++;
//		}
//	}
//	printf("New Total Moves(Without Rotations): %d\n\n", newMove);
//
//	uint9_t moveCounter = 0;
//
//	printf("Moves:\n");
//
//	for (i = 0; i < order; i++)
//	{
//		moveCounter++;
//		switch (moves[i])
//		{
//		case uClock:
//			printf("U ");
//			break;
//		case uCClock:
//			printf("U' ");
//			break;
//		case dClock:
//			printf("D ");
//			break;
//		case dCClock:
//			printf("D' ");
//			break;
//		case bClock:
//			printf("B ");
//			break;
//		case bCClock:
//			printf("B' ");
//			break;
//		case fClock:
//			printf("F ");
//			break;
//		case fCClock:
//			printf("F' ");
//			break;
//		case lClock:
//			printf("L ");
//			break;
//		case lCClock:
//			printf("L' ");
//			break;
//		case rClock:
//			printf("R ");
//			break;
//		case rCClock:
//			printf("R' ");
//			break;
//		case hRotate:
//			printf("H ");
//			break;
//		case vRotate:
//			printf("V ");
//			break;
//		default:
//			printf("WTF?");
//			break;
//		}
//		// //putStr("%d ", moves[i]);
//		//writeMove(moves[i], 0);
//	}
//	printf("\n");
//}


void solveCube (uint3_t cubieColor_tb [6][9],uint4_t rMoves [200] , uint9_t * order)
{
	uint3_t i ; uint4_t j;
	for (i = 0; i < 6; i++)
		{
			for (j = 0; j < 9; j++)
			{
				cubieColor[i][j] = cubieColor_tb[i][j];
			}
		}
	//Old Method
	//Stage 1 -> make + with white
	//free(moves);
	moveCounter=0;
	while (!edgeCorrect(1) || !edgeCorrect(2) ||
		!edgeCorrect(3) || !edgeCorrect(4))
	{
		solveStage1(findEdge(W, B));
		rotateCubeHorizontal();
		solveStage1(findEdge(W, O));
		rotateCubeHorizontal();
		solveStage1(findEdge(W, G));
		rotateCubeHorizontal();
		solveStage1(findEdge(W, R));
		rotateCubeHorizontal();
	}
	//stage 2
	while (!cornerCorrect(1) || !cornerCorrect(2) ||!cornerCorrect(3) || !cornerCorrect(4))
	    {
	        if (!cornerCorrect(4))
	        {
	            solveStage2(W, B, R);
	        }
	        rotateCubeHorizontal();
	        if (!cornerCorrect(4))
	        {
	            solveStage2(W, B, O);
	        }
	        rotateCubeHorizontal();
	        if (!cornerCorrect(4))
	        {
	            solveStage2(W, O, G);
	        }
	        rotateCubeHorizontal();
	        if (!cornerCorrect(4))
	        {
	            solveStage2(W, G, R);
	        }
	        rotateCubeHorizontal();
	    }



	//stage3
	rotateCubeVertical();
	rotateCubeVertical();
	rotateCubeHorizontal();

	while (!edgeCorrect(5) || !edgeCorrect(6) ||
		!edgeCorrect(7) || !edgeCorrect(8))
	{
		solveStage3(B, R);
		rotateCubeHorizontal();
		solveStage3(R, G);
		rotateCubeHorizontal();
		solveStage3(G, O);
		rotateCubeHorizontal();
		solveStage3(O, B);
		rotateCubeHorizontal();
	}

	//Stage 4
	//step 1
	//make the top corss if it's not corss yet
	if ((cubieColor[0][4] != cubieColor[0][1]) ||
		(cubieColor[0][4] != cubieColor[0][3]) ||
		(cubieColor[0][4] != cubieColor[0][5]) ||
		(cubieColor[0][4] != cubieColor[0][7]))
	{
		solveStage4a();
	}
	//step 2
	//make all the top same color
	while ((cubieColor[0][4] != cubieColor[0][0]) ||
		(cubieColor[0][4] != cubieColor[0][2]) ||
		(cubieColor[0][4] != cubieColor[0][6]) ||
		(cubieColor[0][4] != cubieColor[0][8]))
	{
		solveStage4b();
	}

	//stage 5
	//step 1
	//make the top corners right

	while (!cornerCorrect(1) || !cornerCorrect(2) ||
		!cornerCorrect(3) || !cornerCorrect(4))
	{
		// 0 or 1 match
		if ((!cornerCorrect(1) && !cornerCorrect(2) &&
			!cornerCorrect(3) && !cornerCorrect(4)) ||
			(cornerCorrect(1) && !cornerCorrect(2) &&
				!cornerCorrect(3) && !cornerCorrect(4)) ||
				(!cornerCorrect(1) && cornerCorrect(2) &&
					!cornerCorrect(3) && !cornerCorrect(4)) ||
					(!cornerCorrect(1) && !cornerCorrect(2) &&
						cornerCorrect(3) && !cornerCorrect(4)) ||
						(!cornerCorrect(1) && !cornerCorrect(2) &&
							!cornerCorrect(3) && cornerCorrect(4)))
		{
			turnCube(uClock);
		}
		else
		{
			solveStage5a();
		}
	}
	//step 2
	//finish it
	while (!edgeCorrect(1) || !edgeCorrect(2) ||
		!edgeCorrect(3) || !edgeCorrect(4))
	{
		solveStage5b();
	}

	*order=optimizeCube();
	for (uint9_t i=0; i<*order; i++ ){
		rMoves[i]=moves[i];
	}
	//printAllSteps(order);
}
