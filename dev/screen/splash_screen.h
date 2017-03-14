#ifndef _SPLASH_SCREEN_H_
#define _SPLASH_SCREEN_H_

void screen_splash_screen_load()
{
	if (hacker_debug)
	{
		engine_font_manager_draw_data(SCREEN_TYPE_SPLASH, 31, 0);
		engine_font_manager_draw_data(hacker_steps, 31, 3);
	}

	//engine_tree_manager_draw_treeXY(4, 0);
	//engine_tree_manager_draw_treeXY(0, 4);
	//engine_tree_manager_draw_treeXY(8, 4);
	//engine_tree_manager_draw_treeXY(4, 8);

	pathIndex = 0;
	moveFrame = 0;

	direction = gamer_route[pathIndex][moveFrame];
	engine_gamer_manager_move();
}
void screen_splash_screen_update(unsigned char *screen_type, unsigned int curr_joypad1, unsigned int prev_joypad1)
{
	if (LIFECYCLE_IDLE == lifecycle)
	{
		moveFrame++;
		if (moveFrame >= GAMER_MAX_FRAME)
		{
			moveFrame = 0;
			*screen_type = SCREEN_TYPE_READY;
			return;
		}

		direction = gamer_route[pathIndex][moveFrame];
		engine_gamer_manager_move();
	}

	engine_gamer_manager_update();

	if (curr_joypad1 & PORT_A_KEY_UP && !(prev_joypad1 & PORT_A_KEY_UP))
	{
		*screen_type = SCREEN_TYPE_PLAY;
	}

	*screen_type = SCREEN_TYPE_SPLASH;

	engine_gamer_manager_draw();
	engine_enemy_manager_draw();
}

#endif//_SPLASH_SCREEN_H_