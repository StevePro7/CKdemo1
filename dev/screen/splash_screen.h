#ifndef _SPLASH_SCREEN_H_
#define _SPLASH_SCREEN_H_

void screen_splash_screen_load()
{
	engine_font_manager_draw_data(SCREEN_TYPE_SPLASH, 31, 0);
}
void screen_splash_screen_update(unsigned char *screen_type, unsigned int curr_joypad1, unsigned int prev_joypad1)
{
	if (curr_joypad1 & PORT_A_KEY_UP && !(prev_joypad1 & PORT_A_KEY_UP))
	{
		//engine_font_manager_draw_text(LOCALE_PAUSED, 8, 5);
		if (hacker_sound)
		{
			PSGSFXPlay(SOUND_PSG, SFX_CHANNELS2AND3);
		}
		*screen_type = SCREEN_TYPE_READY;
	}
}

#endif//_SPLASH_SCREEN_H_