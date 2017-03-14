#ifndef _GAMER_MANAGER_H_
#define _GAMER_MANAGER_H_

extern unsigned char kidX, kidY, kidColor, kidFrame, kidTile;
extern unsigned char pathIndex, moveFrame;

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
	engine_sprite_manager_draw(kidX, kidY, kidTile);
}

static void kid_calculate_tile()
{
	kidTile = KID_BASE_TILE + ((kidColor * 2) + kidFrame) * 2;
}

#endif//_GAMER_MANAGER_H_