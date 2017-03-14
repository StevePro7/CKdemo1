#ifndef _SPLASH_SCREEN_H_
#define _SPLASH_SCREEN_H_

void screen_splash_screen_load()
{
	if (hacker_debug)
	{
		engine_font_manager_draw_data(SCREEN_TYPE_SPLASH, 31, 0);
	}
}
void screen_splash_screen_update(unsigned char *screen_type, unsigned int curr_joypad1, unsigned int prev_joypad1)
{
}

#endif//_SPLASH_SCREEN_H_