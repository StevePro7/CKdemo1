#ifndef _SOUND_MANAGER_H_
#define _SOUND_MANAGER_H_

void engine_sound_manager_play()
{
	if (hacker_sound)
	{
		PSGSFXPlay(SOUND_PSG, SFX_CHANNEL2);
	}
}

#endif//_SOUND_MANAGER_H_