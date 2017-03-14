#ifndef _PATH_MANAGER_H_
#define _PATH_MANAGER_H_

extern unsigned char gamer_route[GAMER_MAX_PATHS][GAMER_MAX_FRAME];

void engine_path_manager_init()
{
	// Route #0.
	gamer_route[0][0] = 4; gamer_route[0][1] = 4; gamer_route[0][2] = 4; gamer_route[0][3] = 4; gamer_route[0][4] = 4; gamer_route[0][5] = 4;
	gamer_route[0][6] = 2; gamer_route[0][7] = 4;
	gamer_route[0][8] = 2; gamer_route[0][9] = 2; gamer_route[0][10] = 2; gamer_route[0][11] = 2; gamer_route[0][12] = 2;

	// Route #1.
}

#endif//_PATH_MANAGER_H_