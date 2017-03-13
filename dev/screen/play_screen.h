#ifndef _PLAY_SCREEN_H_
#define _PLAY_SCREEN_H_

void screen_play_screen_load()
{
	engine_font_manager_draw_data(SCREEN_TYPE_PLAY, 31, 0);
}
void screen_play_screen_update(unsigned char *screen_type, unsigned int curr_joypad1, unsigned int prev_joypad1)
{
	if (curr_joypad1 & PORT_A_KEY_RIGHT && !(prev_joypad1 & PORT_A_KEY_RIGHT))
	{
		engine_font_manager_draw_text(LOCALE_PAUSED, 8, 17);
	}

	*screen_type = SCREEN_TYPE_PLAY;
}

#endif//_PLAY_SCREEN_H_