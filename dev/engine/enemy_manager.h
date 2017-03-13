#ifndef _ENEMY_MANAGER_H_
#define _ENEMY_MANAGER_H_

extern unsigned char proX, proY;
extern unsigned char adiX, adiY;
extern unsigned char suzX, suzY;

void engine_enemy_manager_init()
{
	proX = 144;
	proY = 144;
	adiX = 32;
	adiY = 144;
	suzX = 144;
	suzY = 32;
}
void engine_enemy_manager_load()
{
}
void engine_enemy_manager_draw()
{
	engine_sprite_manager_draw_pro(proX, proY, SPRITE_TILES + 16);
}

#endif//_ENEMY_MANAGER_H_