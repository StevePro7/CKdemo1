#ifndef _ENEMY_MANAGER_H_
#define _ENEMY_MANAGER_H_

extern unsigned char proX, proY, proColor, proFrame, proTile;
extern unsigned char adiX, adiY, adiColor, adiFrame, adiTile;
extern unsigned char suzX, suzY, suzColor, suzFrame, suzTile;

#define PRO_BASE_TILE	SPRITE_TILES + 16

void engine_enemy_manager_init()
{
	proX = 144;
	proY = 144;
	proColor = 1;
	
	adiX = 32;
	adiY = 144;
	adiColor = 0;

	suzX = 144;
	suzY = 32;
	suzColor = 0;
}
void engine_enemy_manager_load()
{
	proFrame = 0;
	adiFrame = 0;
	suzFrame = 0;
}
void engine_enemy_manager_draw()
{
	unsigned char tile = PRO_BASE_TILE + ((proColor * 2) + proFrame) * 2;
	engine_font_manager_draw_data(tile, 20, 6);
	engine_sprite_manager_draw_pro(proX, proY, tile);

	//engine_sprite_manager_draw_pro(proX, proY, SPRITE_TILES + 16);

	
	

	//drawSprite(96, 24,  SPRITE_TILES + 16);
	//drawSprite(96, 64,  SPRITE_TILES + 18);
	//drawSprite(128, 24, SPRITE_TILES + 20);
	//drawSprite(128, 64, SPRITE_TILES + 22);
}

#endif//_ENEMY_MANAGER_H_