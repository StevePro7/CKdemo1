#ifndef _TITLE_SCREEN_H_
#define _TITLE_SCREEN_H_

void screen_title_screen_load()
{
	engine_tree_manager_draw();
	engine_text_manager_draw();
}

void screen_title_screen_update(unsigned char *screen_type, unsigned int curr_joypad1, unsigned int prev_joypad1)
{
	if (curr_joypad1 & PORT_A_KEY_2 && !(prev_joypad1 & PORT_A_KEY_2))
	{
		if (hacker_sound)
		{
			PSGSFXPlay(SOUND_PSG, SFX_CHANNELS2AND3);
		}
	}

	*screen_type = SCREEN_TYPE_TITLE;
}

#endif//_TITLE_SCREEN_H_