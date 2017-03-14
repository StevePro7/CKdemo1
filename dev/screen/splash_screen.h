#ifndef _SPLASH_SCREEN_H_
#define _SPLASH_SCREEN_H_

void screen_splash_screen_load()
{
	unsigned char bob = gamer_route[0];

	if (hacker_debug)
	{
		engine_font_manager_draw_data(SCREEN_TYPE_SPLASH, 31, 0);
	}

	engine_font_manager_draw_data(bob, 10, 1);
}
void screen_splash_screen_update(unsigned char *screen_type, unsigned int curr_joypad1, unsigned int prev_joypad1)
{
	if (curr_joypad1 & PORT_A_KEY_UP && !(prev_joypad1 & PORT_A_KEY_UP))
	{
		engine_font_manager_draw_text(LOCALE_PAUSED, 10, 2);
	}

	*screen_type = SCREEN_TYPE_SPLASH;
}

#endif//_SPLASH_SCREEN_H_