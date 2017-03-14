#ifndef _GAMER_MANAGER_H_
#define _GAMER_MANAGER_H_

extern unsigned char kidX, kidY, velX, velY, kidColor, kidFrame, kidTile;
extern unsigned char pathIndex, moveFrame, direction, lifecycle;

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
	velX = 0;
	velY = 0;
	kidFrame = 0;
	kid_calculate_tile();
	direction = DIRECTION_NONE;
	lifecycle = LIFECYCLE_IDLE;
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
void engine_gamer_manager_update_direction()
{
}
void engine_gamer_manager_update_lifecycle()
{
}
void engine_gamer_manager_move()
{
	lifecycle = LIFECYCLE_MOVE;
	engine_gamer_manager_toggle_frame();
}
void engine_gamer_manager_update()
{
	if (LIFECYCLE_IDLE == lifecycle)
	{
		return;
	}

	if (DIRECTION_UP == direction)
	{
		velY += hacker_steps;
		kidY -= hacker_steps;
		if (velY >= GAMER_MAX_STEPS)
		{
			velY = 0;
			if (1 == kidFrame)
			{
				engine_gamer_manager_toggle_frame();
			}
			else
			{
				lifecycle = LIFECYCLE_IDLE;
			}
		}
	}
	if (DIRECTION_DOWN == direction)
	{
		velY += hacker_steps;
		kidY += hacker_steps;
		if (velY >= GAMER_MAX_STEPS)
		{
			velY = 0;
			if (1 == kidFrame)
			{
				engine_gamer_manager_toggle_frame();
			}
			else
			{
				lifecycle = LIFECYCLE_IDLE;
			}
		}
	}
	if (DIRECTION_LEFT == direction)
	{
		velX += hacker_steps;
		kidX -= hacker_steps;
		if (velX >= GAMER_MAX_STEPS)
		{
			velX = 0;
			if (1 == kidFrame)
			{
				engine_gamer_manager_toggle_frame();
			}
			else
			{
				lifecycle = LIFECYCLE_IDLE;
			}
		}
	}
	if (DIRECTION_RIGHT == direction)
	{
		velX += hacker_steps;
		kidX += hacker_steps;
		if (velX >= GAMER_MAX_STEPS)
		{
			velX = 0;
			if (1 == kidFrame)
			{
				engine_gamer_manager_toggle_frame();
			}
			else
			{
				lifecycle = LIFECYCLE_IDLE;
			}
		}
	}
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