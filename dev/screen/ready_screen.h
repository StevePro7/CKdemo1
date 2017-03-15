#ifndef _READY_SCREEN_H_
#define _READY_SCREEN_H_

void screen_ready_screen_load()
{
	if (hacker_debug)
	{
		engine_font_manager_draw_data(SCREEN_TYPE_READY, 31, 2);
	}

	engine_gamer_manager_load();
	engine_enemy_manager_load();

	engine_tree_manager_draw_border();
	engine_tree_manager_draw_inside();

	engine_text_manager_draw();
}
void screen_ready_screen_update(unsigned char *screen_type, unsigned int curr_joypad1, unsigned int prev_joypad1)
{
	rand();
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
		*screen_type = SCREEN_TYPE_PLAY;
	}

	engine_gamer_manager_draw();
	engine_enemy_manager_draw();
}

#endif//_READY_SCREEN_H_