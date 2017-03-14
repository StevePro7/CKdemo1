#include "main.h"

// Global variables.
bool global_pause;
unsigned char hacker_debug;
unsigned char hacker_steps, hacker_delay, hacker_hands, hacker_music, hacker_sound;
unsigned char enum_curr_screen_type, enum_next_screen_type;

void custom_initialize();
void custom_load_content();
void custom_screen_manager_load(unsigned char screen_type);
void custom_screen_manager_update(unsigned char *screen_type, const unsigned int curr_joypad1, const unsigned int prev_joypad1);

void main (void)
{
	// Must be static to persist values!
	static unsigned int curr_joypad1 = 0;
	static unsigned int prev_joypad1 = 0;

	unsigned char psgFXGetStatus = 0;
	global_pause = false;

	SMS_setSpritePaletteColor(0, RGB(0,0,0));

	SMS_setSpriteMode(SPRITEMODE_NORMAL);
	SMS_useFirstHalfTilesforSprites(true);

	// Check this clears Everdrive text!
	engine_asm_manager_clear_VRAM();

	custom_initialize();
	custom_load_content();

	SMS_displayOn();
	

	enum_curr_screen_type = SCREEN_TYPE_NONE;
	enum_next_screen_type = SCREEN_TYPE_SPLASH;
	//enum_next_screen_type = SCREEN_TYPE_READY;
	//enum_next_screen_type = SCREEN_TYPE_PLAY;
	for (;;)
	{
		if (SMS_queryPauseRequested())
		{
			SMS_resetPauseRequest();
			global_pause = !global_pause;
			if (global_pause)
			{
				engine_font_manager_draw_text(LOCALE_PAUSED, 8, 12);
				PSGSilenceChannels();
			}
			else
			{
				engine_font_manager_draw_text(LOCALE_TITLE2, 8, 12);
				PSGRestoreVolumes();
			}
		}

		if (global_pause)
		{
			continue;
		}

		if (enum_curr_screen_type != enum_next_screen_type)
		{
			enum_curr_screen_type = enum_next_screen_type;
			custom_screen_manager_load(enum_curr_screen_type);
		}

		SMS_initSprites();

		curr_joypad1 = SMS_getKeysStatus();
		custom_screen_manager_update(&enum_next_screen_type, curr_joypad1, prev_joypad1);

		SMS_finalizeSprites();
		SMS_waitForVBlank();
		SMS_copySpritestoSAT();

		PSGFrame();
		PSGSFXFrame();

		prev_joypad1 = curr_joypad1;
	}
}

void custom_initialize()
{
	engine_hack_manager_init();
	engine_hack_manager_invert();

	if (0 == hacker_delay)
	{
		hacker_delay = ENEMY_STD_DELAY;
	}
	if (hacker_delay < ENEMY_MIN_DELAY)
	{
		hacker_delay = ENEMY_MIN_DELAY;
	}

	engine_gamer_manager_init();
	engine_enemy_manager_init();
}
void custom_load_content()
{
	engine_content_manager_load();

	engine_gamer_manager_load();
	engine_enemy_manager_load();
}
void custom_screen_manager_load(unsigned char screen_type)
{
	switch (screen_type)
	{
	case SCREEN_TYPE_SPLASH:
		screen_splash_screen_load();
		break;
	case SCREEN_TYPE_READY:
		screen_ready_screen_load();
		break;
	case SCREEN_TYPE_PLAY:
		screen_play_screen_load();
		break;
	}
}
void custom_screen_manager_update(unsigned char *screen_type, const unsigned int curr_joypad1, const unsigned int prev_joypad1)
{
	switch (*screen_type)
	{
	case SCREEN_TYPE_SPLASH:
		screen_splash_screen_update(screen_type, curr_joypad1, prev_joypad1);
		break;
	case SCREEN_TYPE_READY:
		screen_ready_screen_update(screen_type, curr_joypad1, prev_joypad1);
		break;
	case SCREEN_TYPE_PLAY:
		screen_play_screen_update(screen_type, curr_joypad1, prev_joypad1);
		break;
	}

	if (hacker_debug)
	{
		engine_font_manager_draw_data(curr_joypad1, 30, 12);
		engine_font_manager_draw_data(prev_joypad1, 30, 13);
	}
}

SMS_EMBED_SEGA_ROM_HEADER(9999, 0);
SMS_EMBED_SDSC_HEADER(0, 2, 2017, 3, 7, "stevepro", "CK demo1", "stevepro CK demo1");

//void draw_sprites()
//{
	// KID
	//drawSprite(32, 32, SPRITE_TILES + 0);
	//drawSprite(32, 64, SPRITE_TILES + 2);	// #1
	//drawSprite(64, 24, SPRITE_TILES + 4); drawSprite(64, 64, SPRITE_TILES + 6);	// #2
	// PRO
	//drawSprite(96, 24,  SPRITE_TILES + 16); drawSprite(96, 64,  SPRITE_TILES + 18);	// #1
	//drawSprite(128, 24, SPRITE_TILES + 20); drawSprite(128, 64, SPRITE_TILES + 22);	// #2
	// ADI
	//drawSprite(24, 128, SPRITE_TILES + 32); drawSprite(24, 168, SPRITE_TILES + 34);	// #1
	//drawSprite(64, 128, SPRITE_TILES + 36); drawSprite(64, 168, SPRITE_TILES + 38);	// #2
	// SUZ
	//drawSprite(96, 128,  SPRITE_TILES + 48); drawSprite(96, 168,  SPRITE_TILES + 50);	// #1
	//drawSprite(128, 128, SPRITE_TILES + 52); drawSprite(128, 168, SPRITE_TILES + 54);	// #2
//}