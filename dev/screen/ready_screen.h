#ifndef _READY_SCREEN_H_
#define _READY_SCREEN_H_

void screen_ready_screen_load()
{
	if (hacker_debug)
	{
		engine_font_manager_draw_data(SCREEN_TYPE_READY, 31, 0);
	}

	engine_tree_manager_draw_border();
	engine_tree_manager_draw_inside();
	engine_font_manager_draw_text(LOCALE_TITLE1, 8, 11);
	engine_font_manager_draw_text(LOCALE_TITLE2, 8, 12);
}
void screen_ready_screen_update(unsigned char *screen_type, unsigned int curr_joypad1, unsigned int prev_joypad1)
{
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
}

#endif//_READY_SCREEN_H_