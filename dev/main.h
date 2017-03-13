#ifndef __MAIN__
#define __MAIN__

#include <stdbool.h>
#include "..\lib\SMSlib.h"
#include "..\lib\PSGlib.h"
#include "gfx.h"
#include "psg.h"

#include "engine\global_manager.h"
#include "engine\locale_manager.h"
#include "engine\hack_manager.h"
#include "engine\enum_manager.h"
#include "engine\content_manager.h"
#include "engine\font_manager.h"
#include "engine\tree_manager.h"
#include "engine\sprite_manager.h"
#include "engine\gamer_manager.h"
#include "engine\enemy_manager.h"
#include "engine\asm_manager.h"

#include "screen\splash_screen.h"
#include "screen\ready_screen.h"
#include "screen\play_screen.h"

//_ENEMY_MANAGER_H_
unsigned char proX, proY, proColor, proFrame, proTile;
unsigned char adiX, adiY, adiColor, adiFrame, adiTile;
unsigned char suzX, suzY, suzColor, suzFrame, suzTile;

//_GAMER_MANAGER_H_
unsigned char kidX, kidY, kidColor, kidFrame, kidTile;

#endif//__MAIN__