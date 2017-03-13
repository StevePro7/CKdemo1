#ifndef _SPLASH_SCREEN_H_
#define _SPLASH_SCREEN_H_

void screen_splash_screen_load()
{
	engine_font_manager_draw_data(1, 30, 1);
}
//void screen_splash_screen_update(unsigned char *screen_type)
void screen_splash_screen_update(unsigned char *screen_type, unsigned int curr_joypad1, unsigned int prev_joypad1)
{
	if (curr_joypad1 & PORT_A_KEY_RIGHT && !(prev_joypad1 & PORT_A_KEY_RIGHT))
	{
		engine_font_manager_draw_text(LOCALE_PAUSED, 8, 5);
	}

	*screen_type = SCREEN_TYPE_SPLASH;
}

#endif//_SPLASH_SCREEN_H_