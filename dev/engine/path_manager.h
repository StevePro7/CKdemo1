#ifndef _PATH_MANAGER_H_
#define _PATH_MANAGER_H_

extern unsigned char gamer_route[GAMER_MAX_PATHS][GAMER_MAX_FRAME];

void engine_path_manager_init()
{
	// Route #0.
	gamer_route[0][0] = 4;  gamer_route[0][1] = 4;  gamer_route[0][2] = 4;  gamer_route[0][3] = 4;  gamer_route[0][4] = 4;  gamer_route[0][5] = 4;  gamer_route[0][6] = 2;
	gamer_route[0][7] = 4;  gamer_route[0][8] = 2;  gamer_route[0][9] = 2;  gamer_route[0][10] = 2; gamer_route[0][11] = 2; gamer_route[0][12] = 2; gamer_route[0][13] = 3;
	gamer_route[0][14] = 2; gamer_route[0][15] = 3; gamer_route[0][16] = 3; gamer_route[0][17] = 3; gamer_route[0][18] = 3; gamer_route[0][19] = 3; gamer_route[0][20] = 1;
	gamer_route[0][21] = 3; gamer_route[0][22] = 1; gamer_route[0][23] = 1; gamer_route[0][24] = 1; gamer_route[0][25] = 1; gamer_route[0][26] = 1; gamer_route[0][27] = 1;
	gamer_route[0][28] = 4; gamer_route[0][29] = 4; gamer_route[0][30] = 4; gamer_route[0][31] = 4; gamer_route[0][32] = 4; gamer_route[0][33] = 4; gamer_route[0][34] = 2;
	gamer_route[0][35] = 4; gamer_route[0][36] = 2; gamer_route[0][37] = 2; gamer_route[0][38] = 2; gamer_route[0][39] = 2; gamer_route[0][40] = 2; gamer_route[0][41] = 3;
	gamer_route[0][42] = 2; gamer_route[0][43] = 3; gamer_route[0][44] = 3; gamer_route[0][45] = 3; gamer_route[0][46] = 3; gamer_route[0][47] = 3; gamer_route[0][48] = 1;
	gamer_route[0][49] = 3; gamer_route[0][50] = 1; gamer_route[0][51] = 1; gamer_route[0][52] = 1; gamer_route[0][53] = 1; gamer_route[0][54] = 1; gamer_route[0][55] = 1;

	// Route #1.
}

#endif//_PATH_MANAGER_H_