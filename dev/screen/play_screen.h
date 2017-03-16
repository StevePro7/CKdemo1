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

	pathIndex = 0;
	//pathIndex = rand() % GAMER_MAX_PATHS;
	moveFrame = 0;

	direction = gamer_route[pathIndex][moveFrame];
	engine_gamer_manager_move();

	if (hacker_debug)
	{
		engine_font_manager_draw_data(pathIndex, 31, 3);
	}
}
void screen_play_screen_update(unsigned char *screen_type, unsigned int curr_joypad1, unsigned int prev_joypad1)
{
	engine_gamer_manager_draw();
	engine_enemy_manager_draw();

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

	engine_input_manager_update(curr_joypad1, prev_joypad1);
	if (curr_joypad1 & PORT_A_KEY_2 && !(prev_joypad1 & PORT_A_KEY_2))
	{
		if (hacker_sound)
		{
			PSGSFXPlay(SOUND_PSG, SFX_CHANNELS2AND3);
		}
	}
}

#endif//_PLAY_SCREEN_H_