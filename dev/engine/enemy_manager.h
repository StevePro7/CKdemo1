#ifndef _ENEMY_MANAGER_H_
#define _ENEMY_MANAGER_H_

extern unsigned char proX, proY, proColor, proFrame, proTile;
extern unsigned char adiX, adiY, adiColor, adiFrame, adiTile;
extern unsigned char suzX, suzY, suzColor, suzFrame, suzTile;

#define PRO_BASE_TILE	SPRITE_TILES + 16
#define ADI_BASE_TILE	SPRITE_TILES + 32
#define SUZ_BASE_TILE	SPRITE_TILES + 48

static void pro_calculate_tile();
static void adi_calculate_tile();
static void suz_calculate_tile();

void engine_enemy_manager_init()
{
	proX = 144;
	proY = 144;
	proColor = 0;

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

	pro_calculate_tile();
	adi_calculate_tile();
	suz_calculate_tile();
}
void engine_enemy_manager_toggle_pro_color()
{
	proColor = (1 - proColor);
	pro_calculate_tile();
}
void engine_gamer_manager_toggle_pro_frame()
{
	proFrame = (1 - proFrame);
	pro_calculate_tile();
}
void engine_enemy_manager_toggle_adi_color()
{
	adiColor = (1 - adiColor);
	adi_calculate_tile();
}
void engine_gamer_manager_toggle_adi_frame()
{
	adiFrame = (1 - adiFrame);
	adi_calculate_tile();
}
void engine_enemy_manager_toggle_suz_color()
{
	suzColor = (1 - suzColor);
	suz_calculate_tile();
}
void engine_gamer_manager_toggle_suz_frame()
{
	suzFrame = (1 - suzFrame);
	suz_calculate_tile();
}
void engine_enemy_manager_draw()
{
	//unsigned char tile = PRO_BASE_TILE + ((proColor * 2) + proFrame) * 2;
	engine_font_manager_draw_data(suzTile, 10, 6);
	//engine_sprite_manager_draw_pro(proX, proY, proTile);
	//engine_sprite_manager_draw_pro(adiX, adiY, adiTile);
	engine_sprite_manager_draw_pro(suzX, suzY, suzTile);

	//engine_sprite_manager_draw_pro(proX, proY, SPRITE_TILES + 16);


	//drawSprite(96, 24,  SPRITE_TILES + 16);
	//drawSprite(96, 64,  SPRITE_TILES + 18);
	//drawSprite(128, 24, SPRITE_TILES + 20);
	//drawSprite(128, 64, SPRITE_TILES + 22);
}

static void pro_calculate_tile()
{
	proTile = PRO_BASE_TILE + ((proColor * 2) + proFrame) * 2;
}
static void adi_calculate_tile()
{
	adiTile = ADI_BASE_TILE + ((adiColor * 2) + adiFrame) * 2;
}
static void suz_calculate_tile()
{
	suzTile = SUZ_BASE_TILE + ((suzColor * 2) + suzFrame) * 2;
}
#endif//_ENEMY_MANAGER_H_