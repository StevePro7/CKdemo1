#ifndef _ENUM_MANAGER_H_
#define _ENUM_MANAGER_H_

#define SCREEN_TYPE_NONE	0
#define SCREEN_TYPE_SPLASH	1
#define SCREEN_TYPE_READY	2
#define SCREEN_TYPE_PLAY	3

enum
{
	screen_type_none,	// 0
	screen_type_splash,	// 1
	screen_type_ready,	// 2
	screen_type_play,	// 3
} enum_curr_screen_type, enum_next_screen_type;

#endif//_ENUM_MANAGER_H_