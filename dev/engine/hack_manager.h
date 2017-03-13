#ifndef _HACK_MANAGER_H_
#define _HACK_MANAGER_H_

#define PEEK(addr)			(*(unsigned char *)(addr))
#define POKE(addr, data)	(*(unsigned char *)(addr) = (data))

extern unsigned char hacker_music, hacker_sound;

#define HACKER_START		0x0050

void engine_hack_manager_init()
{
	hacker_music = PEEK(HACKER_START + 3);		// 0x0053		// 0=music on otherwise off.
	hacker_sound = PEEK(HACKER_START + 4);		// 0x0054		// 0=sound on otherwise off.
}

void engine_hack_manager_invert()
{
	hacker_music = !hacker_music;
	hacker_sound = !hacker_sound;
}

void engine_hack_manager_resetX()
{
	hacker_music = 0;
	hacker_sound = 0;
}

#endif//_HACK_MANAGER_H_