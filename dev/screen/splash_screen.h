#ifndef _SPLASH_SCREEN_H_
#define _SPLASH_SCREEN_H_

void screen_splash_screen_load()
{
//	unsigned char direction = gamer_route[0][0];

	if (hacker_debug)
	{
		engine_font_manager_draw_data(SCREEN_TYPE_SPLASH, 31, 0);
	}

	engine_tree_manager_draw_treeXY(4, 2);
	engine_tree_manager_draw_treeXY(6, 6);
	pathIndex = 0;
	moveFrame = 0;
}
void screen_splash_screen_update(unsigned char *screen_type, unsigned int curr_joypad1, unsigned int prev_joypad1)
{
	engine_gamer_manager_update();

	if (curr_joypad1 & PORT_A_KEY_UP && !(prev_joypad1 & PORT_A_KEY_UP))
	{
		//engine_font_manager_draw_text(LOCALE_PAUSED, 10, 2);
		direction = gamer_route[0][0];
		engine_gamer_manager_move();
	
		
	}

	*screen_type = SCREEN_TYPE_SPLASH;

	engine_gamer_manager_draw();
}

#endif//_SPLASH_SCREEN_H_