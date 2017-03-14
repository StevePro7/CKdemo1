#ifndef _ENUM_MANAGER_H_
#define _ENUM_MANAGER_H_

// Screen type.
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

// Direction type.
#define DIRECTION_NONE	0
#define DIRECTION_UP	1
#define DIRECTION_DOWN	2
#define DIRECTION_LEFT	3
#define DIRECTION_RIGHT	4

enum
{
	direction_none,		// 0
	direction_up,		// 1
	direction_down,		// 2
	direction_left,		// 3
	direction_right,	// 4
} enum_direction_type;

// Lifecycle type.
#define LIFECYCLE_IDLE	0
#define LIFECYCLE_MOVE	1

enum
{
	lifecycle_idle,		// 0
	lifecycle_move,		// 1
} enum_direction_type;

#endif//_ENUM_MANAGER_H_