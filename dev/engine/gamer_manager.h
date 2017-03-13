#ifndef _GAMER_MANAGER_H_
#define _GAMER_MANAGER_H_

extern unsigned char kidX, kidY;

void engine_gamer_manager_load()
{
	kidX = 32;
	kidY = 32;
}
void engine_gamer_manager_draw()
{
	engine_sprite_manager_draw_kid(kidX, kidY, SPRITE_TILES);
}

#endif//_GAMER_MANAGER_H_