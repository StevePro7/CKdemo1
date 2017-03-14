#ifndef _HACK_MANAGER_H_
#define _HACK_MANAGER_H_

#define PEEK(addr)			(*(unsigned char *)(addr))
#define POKE(addr, data)	(*(unsigned char *)(addr) = (data))

extern unsigned char hacker_debug;
extern unsigned char hacker_steps, hacker_delay, hacker_hands, hacker_music, hacker_sound;

#define HACKER_START		0x0050

void engine_hack_manager_init()
{
	hacker_debug = PEEK(HACKER_START - 1);		// 0x004F		// 0=debug on otherwise off.

	hacker_steps = PEEK(HACKER_START + 0);		// 0x0050		// 0=music on otherwise off.
	hacker_delay = PEEK(HACKER_START + 1);		// 0x0051		// 0=music on otherwise off.
	hacker_hands = PEEK(HACKER_START + 2);		// 0x0052		// 0=music on otherwise off.
	hacker_music = PEEK(HACKER_START + 3);		// 0x0053		// 0=music on otherwise off.
	hacker_sound = PEEK(HACKER_START + 4);		// 0x0054		// 0=sound on otherwise off.
}

void engine_hack_manager_invert()
{
	hacker_debug = !hacker_debug;

	// TODO uncomment after testing
	hacker_steps = 1;
	hacker_hands = !hacker_hands;
	hacker_music = !hacker_music;
	hacker_sound = !hacker_sound;
}

void engine_hack_manager_resetX()
{
	hacker_debug = 0;

	hacker_steps = 0;
	hacker_delay = 0;
	hacker_hands = 0;
	hacker_music = 0;
	hacker_sound = 0;
}

#endif//_HACK_MANAGER_H_