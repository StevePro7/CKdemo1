#ifndef _PLAY_SCREEN_H_
#define _PLAY_SCREEN_H_

void screen_play_screen_load()
{
	if (hacker_debug)
	{
		engine_font_manager_draw_data(SCREEN_TYPE_PLAY, 31, 2);
	}

	if (hacker_music)
	{
		PSGPlayNoRepeat(MUSIC_PSG);
	}

	engine_gamer_manager_load();
	engine_enemy_manager_load();

	engine_tree_manager_draw_border();
	engine_tree_manager_draw_inside();

	engine_text_manager_draw();
	//engine_font_manager_draw_text(LOCALE_TITLE1, 8, 11);
	//engine_font_manager_draw_text(LOCALE_TITLE2, 8, 12);

	pathIndex = 0;
	//pathIndex = rand() % GAMER_MAX_PATHS;
	moveFrame = 0;

	direction = gamer_route[pathIndex][moveFrame];
	engine_gamer_manager_move();

	if (hacker_debug)
	{
		engine_font_manager_draw_data(pathIndex, 31, 5);
	}
}
void screen_play_screen_update(unsigned char *screen_type, unsigned int curr_joypad1, unsigned int prev_joypad1)
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

	if (hacker_hands)
	{
		engine_enemy_manager_update();
	}

	if (curr_joypad1 & PORT_A_KEY_UP && !(prev_joypad1 & PORT_A_KEY_UP))
	{
		engine_gamer_manager_toggle_color();
	}
	if (curr_joypad1 & PORT_A_KEY_DOWN && !(prev_joypad1 & PORT_A_KEY_DOWN))
	{
		engine_enemy_manager_toggle_adi_color();
	}
	if (curr_joypad1 & PORT_A_KEY_LEFT && !(prev_joypad1 & PORT_A_KEY_LEFT))
	{
		engine_enemy_manager_toggle_suz_color();
	}
	if (curr_joypad1 & PORT_A_KEY_RIGHT && !(prev_joypad1 & PORT_A_KEY_RIGHT))
	{
		engine_enemy_manager_toggle_pro_color();
	}

	if (curr_joypad1 & PORT_A_KEY_2 && !(prev_joypad1 & PORT_A_KEY_2))
	{
		if (hacker_sound)
		{
			PSGSFXPlay(SOUND_PSG, SFX_CHANNELS2AND3);
		}
	}

	if (curr_joypad1 & PORT_A_KEY_1 && !(prev_joypad1 & PORT_A_KEY_1))
	{
		*screen_type =SCREEN_TYPE_READY;
	}

	engine_gamer_manager_draw();
	engine_enemy_manager_draw();
}

#endif//_PLAY_SCREEN_H_