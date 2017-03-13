#ifndef _READY_SCREEN_H_
#define _READY_SCREEN_H_

void screen_ready_screen_load()
{
	engine_font_manager_draw_data(SCREEN_TYPE_READY, 31, 0);
}
void screen_ready_screen_update(unsigned char *screen_type, unsigned int curr_joypad1, unsigned int prev_joypad1)
{
	if (curr_joypad1 & PORT_A_KEY_RIGHT && !(prev_joypad1 & PORT_A_KEY_RIGHT))
	{
		engine_font_manager_draw_text(LOCALE_PAUSED, 8, 17);
	}

	*screen_type = SCREEN_TYPE_READY;
}

#endif//_READY_SCREEN_H_