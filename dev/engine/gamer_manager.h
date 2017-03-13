#ifndef _GAMER_MANAGER_H_
#define _GAMER_MANAGER_H_

extern unsigned char kidX, kidY, kidColor, kidFrame, kidTile;

#define KID_BASE_TILE	SPRITE_TILES + 0

static void kid_calculate_tile();

void engine_gamer_manager_init()
{
	kidColor = 0;
}
void engine_gamer_manager_load()
{
	kidX = 32;
	kidY = 32;
	kidFrame = 0;
	kid_calculate_tile();
}
void engine_gamer_manager_toggle_color()
{
	kidColor = (1 - kidColor);
	kid_calculate_tile();
}
void engine_gamer_manager_toggle_frame()
{
	kidFrame = (1 - kidFrame);
	kid_calculate_tile();
}
void engine_gamer_manager_draw()
{
	//unsigned char tile = KID_BASE_TILE + ((kidColor * 2) + kidFrame) * 2;
	//engine_font_manager_draw_data(kidTile, 0, 0);
	engine_sprite_manager_draw_kid(kidX, kidY, kidTile);

	//engine_sprite_manager_draw_kid(kidX + 00, kidY, SPRITE_TILES + 0);
	//engine_sprite_manager_draw_kid(kidX + 16, kidY, SPRITE_TILES + 2);
	//engine_sprite_manager_draw_kid(kidX + 32, kidY, SPRITE_TILES + 4);
	//engine_sprite_manager_draw_kid(kidX + 48, kidY, SPRITE_TILES + 6);
}

static void kid_calculate_tile()
{
	kidTile = KID_BASE_TILE + ((kidColor * 2) + kidFrame) * 2;
}

#endif//_GAMER_MANAGER_H_