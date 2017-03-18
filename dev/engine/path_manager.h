#ifndef _PATH_MANAGER_H_
#define _PATH_MANAGER_H_

extern unsigned char gamer_route[GAMER_MAX_PATHS][GAMER_MAX_FRAME];

void engine_path_manager_init()
{
	// Path #1.
	
	gamer_route[0][0] = 3;  gamer_route[0][1] = 2;  gamer_route[0][2] = 2;  gamer_route[0][3] = 2;  gamer_route[0][4] = 2;  gamer_route[0][5] = 2;  gamer_route[0][6] = 2;
	gamer_route[0][7] = 2;  gamer_route[0][8] = 2;  gamer_route[0][9] = 4;  gamer_route[0][10] = 4; gamer_route[0][11] = 4; gamer_route[0][12] = 4; gamer_route[0][13] = 4;
	gamer_route[0][14] = 4; gamer_route[0][15] = 4; gamer_route[0][16] = 4; gamer_route[0][17] = 4; gamer_route[0][18] = 1; gamer_route[0][19] = 1; gamer_route[0][20] = 1;
	gamer_route[0][21] = 1; gamer_route[0][22] = 1; gamer_route[0][23] = 1; gamer_route[0][24] = 1; gamer_route[0][25] = 1; gamer_route[0][26] = 1; gamer_route[0][27] = 3;
	gamer_route[0][28] = 3; gamer_route[0][29] = 3; gamer_route[0][30] = 3; gamer_route[0][31] = 3; gamer_route[0][32] = 3; gamer_route[0][33] = 3; gamer_route[0][34] = 3;
	gamer_route[0][35] = 3; gamer_route[0][36] = 2; gamer_route[0][37] = 2; gamer_route[0][38] = 2; gamer_route[0][39] = 2; gamer_route[0][40] = 2; gamer_route[0][41] = 2;
	gamer_route[0][42] = 2; gamer_route[0][43] = 2; gamer_route[0][44] = 2; gamer_route[0][45] = 4; gamer_route[0][46] = 4; gamer_route[0][47] = 1; gamer_route[0][48] = 1;
	gamer_route[0][49] = 3; gamer_route[0][50] = 1; gamer_route[0][51] = 1; gamer_route[0][52] = 1; gamer_route[0][53] = 1; gamer_route[0][54] = 1; gamer_route[0][55] = 1;


	// Path #1.
	/*
	gamer_route[0][0] = 4;  gamer_route[0][1] = 4;  gamer_route[0][2] = 4;  gamer_route[0][3] = 4;  gamer_route[0][4] = 4;  gamer_route[0][5] = 4;  gamer_route[0][6] = 2;
	gamer_route[0][7] = 4;  gamer_route[0][8] = 2;  gamer_route[0][9] = 2;  gamer_route[0][10] = 2; gamer_route[0][11] = 2; gamer_route[0][12] = 2; gamer_route[0][13] = 3;
	gamer_route[0][14] = 2; gamer_route[0][15] = 3; gamer_route[0][16] = 3; gamer_route[0][17] = 3; gamer_route[0][18] = 3; gamer_route[0][19] = 3; gamer_route[0][20] = 1;
	gamer_route[0][21] = 3; gamer_route[0][22] = 1; gamer_route[0][23] = 1; gamer_route[0][24] = 1; gamer_route[0][25] = 1; gamer_route[0][26] = 1; gamer_route[0][27] = 1;
	gamer_route[0][28] = 4; gamer_route[0][29] = 4; gamer_route[0][30] = 4; gamer_route[0][31] = 4; gamer_route[0][32] = 4; gamer_route[0][33] = 4; gamer_route[0][34] = 2;
	gamer_route[0][35] = 4; gamer_route[0][36] = 2; gamer_route[0][37] = 2; gamer_route[0][38] = 2; gamer_route[0][39] = 2; gamer_route[0][40] = 2; gamer_route[0][41] = 3;
	gamer_route[0][42] = 2; gamer_route[0][43] = 3; gamer_route[0][44] = 3; gamer_route[0][45] = 3; gamer_route[0][46] = 3; gamer_route[0][47] = 3; gamer_route[0][48] = 1;
	gamer_route[0][49] = 3; gamer_route[0][50] = 1; gamer_route[0][51] = 1; gamer_route[0][52] = 1; gamer_route[0][53] = 1; gamer_route[0][54] = 1; gamer_route[0][55] = 1;
	
	// Path #2.
	gamer_route[1][0] = 2;  gamer_route[1][1] = 2;  gamer_route[1][2] = 2;  gamer_route[1][3] = 2;  gamer_route[1][4] = 2;  gamer_route[1][5] = 2;  gamer_route[1][6] = 4;
	gamer_route[1][7] = 2;  gamer_route[1][8] = 4;  gamer_route[1][9] = 4;  gamer_route[1][10] = 4; gamer_route[1][11] = 4; gamer_route[1][12] = 4; gamer_route[1][13] = 1;
	gamer_route[1][14] = 4; gamer_route[1][15] = 1; gamer_route[1][16] = 1; gamer_route[1][17] = 1; gamer_route[1][18] = 1; gamer_route[1][19] = 1; gamer_route[1][20] = 3;
	gamer_route[1][21] = 1; gamer_route[1][22] = 3; gamer_route[1][23] = 3; gamer_route[1][24] = 3; gamer_route[1][25] = 3; gamer_route[1][26] = 3; gamer_route[1][27] = 3;
	gamer_route[1][28] = 2; gamer_route[1][29] = 2; gamer_route[1][30] = 2; gamer_route[1][31] = 2; gamer_route[1][32] = 2; gamer_route[1][33] = 2; gamer_route[1][34] = 4;
	gamer_route[1][35] = 2; gamer_route[1][36] = 4; gamer_route[1][37] = 4; gamer_route[1][38] = 4; gamer_route[1][39] = 4; gamer_route[1][40] = 4; gamer_route[1][41] = 1;
	gamer_route[1][42] = 4; gamer_route[1][43] = 1; gamer_route[1][44] = 1; gamer_route[1][45] = 1; gamer_route[1][46] = 1; gamer_route[1][47] = 1; gamer_route[1][48] = 3;
	gamer_route[1][49] = 1; gamer_route[1][50] = 3; gamer_route[1][51] = 3; gamer_route[1][52] = 3; gamer_route[1][53] = 3; gamer_route[1][54] = 3; gamer_route[1][55] = 3;

	// Path #3.
	gamer_route[2][0] = 1;  gamer_route[2][1] = 4;  gamer_route[2][2] = 4;  gamer_route[2][3] = 4;  gamer_route[2][4] = 4;  gamer_route[2][5] = 4;  gamer_route[2][6] = 4;
	gamer_route[2][7] = 4;  gamer_route[2][8] = 4;  gamer_route[2][9] = 2;  gamer_route[2][10] = 2; gamer_route[2][11] = 2; gamer_route[2][12] = 2; gamer_route[2][13] = 2;
	gamer_route[2][14] = 2; gamer_route[2][15] = 2; gamer_route[2][16] = 2; gamer_route[2][17] = 2; gamer_route[2][18] = 3; gamer_route[2][19] = 3; gamer_route[2][20] = 3;
	gamer_route[2][21] = 3; gamer_route[2][22] = 3; gamer_route[2][23] = 3; gamer_route[2][24] = 3; gamer_route[2][25] = 3; gamer_route[2][26] = 3; gamer_route[2][27] = 1;
	gamer_route[2][28] = 1; gamer_route[2][29] = 1; gamer_route[2][30] = 1; gamer_route[2][31] = 1; gamer_route[2][32] = 1; gamer_route[2][33] = 1; gamer_route[2][34] = 1;
	gamer_route[2][35] = 1; gamer_route[2][36] = 4; gamer_route[2][37] = 4; gamer_route[2][38] = 4; gamer_route[2][39] = 4; gamer_route[2][40] = 4; gamer_route[2][41] = 4;
	gamer_route[2][42] = 4; gamer_route[2][43] = 4; gamer_route[2][44] = 4; gamer_route[2][45] = 2; gamer_route[2][46] = 2; gamer_route[2][47] = 3; gamer_route[2][48] = 3;
	gamer_route[2][49] = 1; gamer_route[2][50] = 3; gamer_route[2][51] = 3; gamer_route[2][52] = 3; gamer_route[2][53] = 3; gamer_route[2][54] = 3; gamer_route[2][55] = 3;

	// Path #4.
	gamer_route[3][0] = 3;  gamer_route[3][1] = 2;  gamer_route[3][2] = 2;  gamer_route[3][3] = 2;  gamer_route[3][4] = 2;  gamer_route[3][5] = 2;  gamer_route[3][6] = 2;
	gamer_route[3][7] = 2;  gamer_route[3][8] = 2;  gamer_route[3][9] = 4;  gamer_route[3][10] = 4; gamer_route[3][11] = 4; gamer_route[3][12] = 4; gamer_route[3][13] = 4;
	gamer_route[3][14] = 4; gamer_route[3][15] = 4; gamer_route[3][16] = 4; gamer_route[3][17] = 4; gamer_route[3][18] = 1; gamer_route[3][19] = 1; gamer_route[3][20] = 1;
	gamer_route[3][21] = 1; gamer_route[3][22] = 1; gamer_route[3][23] = 1; gamer_route[3][24] = 1; gamer_route[3][25] = 1; gamer_route[3][26] = 1; gamer_route[3][27] = 3;
	gamer_route[3][28] = 3; gamer_route[3][29] = 3; gamer_route[3][30] = 3; gamer_route[3][31] = 3; gamer_route[3][32] = 3; gamer_route[3][33] = 3; gamer_route[3][34] = 3;
	gamer_route[3][35] = 3; gamer_route[3][36] = 2; gamer_route[3][37] = 2; gamer_route[3][38] = 2; gamer_route[3][39] = 2; gamer_route[3][40] = 2; gamer_route[3][41] = 2;
	gamer_route[3][42] = 2; gamer_route[3][43] = 2; gamer_route[3][44] = 2; gamer_route[3][45] = 4; gamer_route[3][46] = 4; gamer_route[3][47] = 1; gamer_route[3][48] = 1;
	gamer_route[3][49] = 3; gamer_route[3][50] = 1; gamer_route[3][51] = 1; gamer_route[3][52] = 1; gamer_route[3][53] = 1; gamer_route[3][54] = 1; gamer_route[3][55] = 1;
	*/
}

#endif//_PATH_MANAGER_H_