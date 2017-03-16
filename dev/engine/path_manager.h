#ifndef _PATH_MANAGER_H_
#define _PATH_MANAGER_H_

extern unsigned char gamer_route[GAMER_MAX_PATHS][GAMER_MAX_FRAME];

void engine_path_manager_init()
{
	// Path #1.
	gamer_route[0][0] = 4;  gamer_route[0][1] = 4;  gamer_route[0][2] = 4;  gamer_route[0][3] = 4;  gamer_route[0][4] = 4;  gamer_route[0][5] = 4;  gamer_route[0][6] = 2;
	gamer_route[0][7] = 4;  gamer_route[0][8] = 2;  gamer_route[0][9] = 2;  gamer_route[0][10] = 2; gamer_route[0][11] = 2; gamer_route[0][12] = 2; gamer_route[0][13] = 3;
	gamer_route[0][14] = 2; gamer_route[0][15] = 3; gamer_route[0][16] = 3; gamer_route[0][17] = 3; gamer_route[0][18] = 3; gamer_route[0][19] = 3; gamer_route[0][20] = 1;
	gamer_route[0][21] = 3; gamer_route[0][22] = 1; gamer_route[0][23] = 1; gamer_route[0][24] = 1; gamer_route[0][25] = 1; gamer_route[0][26] = 1; gamer_route[0][27] = 1;
	gamer_route[0][28] = 4; gamer_route[0][29] = 4; gamer_route[0][30] = 4; gamer_route[0][31] = 4; gamer_route[0][32] = 4; gamer_route[0][33] = 4; gamer_route[0][34] = 2;
	gamer_route[0][35] = 4; gamer_route[0][36] = 2; gamer_route[0][37] = 2; gamer_route[0][38] = 2; gamer_route[0][39] = 2; gamer_route[0][40] = 2; gamer_route[0][41] = 3;
	gamer_route[0][42] = 2; gamer_route[0][43] = 3; gamer_route[0][44] = 3; gamer_route[0][45] = 3; gamer_route[0][46] = 3; gamer_route[0][47] = 3; gamer_route[0][48] = 1;
	gamer_route[0][49] = 3; gamer_route[0][50] = 1; gamer_route[0][51] = 1; gamer_route[0][52] = 1; gamer_route[0][53] = 1; gamer_route[0][54] = 1; gamer_route[0][55] = 1;

	// Path #2.
	gamer_route[1][0] = 2;
	gamer_route[1][1] = 2;
	gamer_route[1][2] = 2;
	gamer_route[1][3] = 2;
	gamer_route[1][4] = 2;
	gamer_route[1][5] = 2;
	gamer_route[1][6] = 4;
	gamer_route[1][7] = 2;
	gamer_route[1][8] = 4;
	gamer_route[1][9] = 4;
	gamer_route[1][10] = 4;
	gamer_route[1][11] = 4;
	gamer_route[1][12] = 4;
	gamer_route[1][13] = 1;
	gamer_route[1][14] = 4;
	gamer_route[1][15] = 1;
	gamer_route[1][16] = 1;
	gamer_route[1][17] = 1;
	gamer_route[1][18] = 1;
	gamer_route[1][19] = 1;
	gamer_route[1][20] = 3;
	gamer_route[1][21] = 1;
	gamer_route[1][22] = 3;
	gamer_route[1][23] = 3;
	gamer_route[1][24] = 3;
	gamer_route[1][25] = 3;
	gamer_route[1][26] = 3;
	gamer_route[1][27] = 3;
	gamer_route[1][28] = 2;
	gamer_route[1][29] = 2;
	gamer_route[1][30] = 2;
	gamer_route[1][31] = 2;
	gamer_route[1][32] = 2;
	gamer_route[1][33] = 2;
	gamer_route[1][34] = 4;
	gamer_route[1][35] = 2;
	gamer_route[1][36] = 4;
	gamer_route[1][37] = 4;
	gamer_route[1][38] = 4;
	gamer_route[1][39] = 4;
	gamer_route[1][40] = 4;
	gamer_route[1][41] = 1;
	gamer_route[1][42] = 4;
	gamer_route[1][43] = 1;
	gamer_route[1][44] = 1;
	gamer_route[1][45] = 1;
	gamer_route[1][46] = 1;
	gamer_route[1][47] = 1;
	gamer_route[1][48] = 3;
	gamer_route[1][49] = 1;
	gamer_route[1][50] = 3;
	gamer_route[1][51] = 3;
	gamer_route[1][52] = 3;
	gamer_route[1][53] = 3;
	gamer_route[1][54] = 3;
	gamer_route[1][55] = 3;


}

#endif//_PATH_MANAGER_H_