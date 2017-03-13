#include "main.h"

#define MUSIC_PSG		music_psg
#define SOUND_PSG		sound_psg

void draw_sprites();
void drawSprite(unsigned char x, unsigned char y, unsigned char tile)
{
	SMS_addSprite(x+0, y+0, tile+0);
	SMS_addSprite(x+8, y+0, tile+1);
	SMS_addSprite(x+0, y+8, tile+8);
	SMS_addSprite(x+8, y+8, tile+9);
}

void main (void)
{
	static unsigned int curr_joypad1 = 0;
	static unsigned int prev_joypad1 = 0;

	SMS_setSpritePaletteColor(0, RGB(0,0,0));

	SMS_setSpriteMode(SPRITEMODE_NORMAL);
	SMS_useFirstHalfTilesforSprites(true);
	engine_asm_manager_clear_VRAM();

	// Check this clears Everdrive text!
	engine_content_manager_load();
	engine_hack_manager_init();

	SMS_displayOn();
	for (;;)
	{
		SMS_initSprites();

		SMS_finalizeSprites();
		SMS_waitForVBlank();
		SMS_copySpritestoSAT();

		PSGFrame();
		PSGSFXFrame();

		curr_joypad1 = SMS_getKeysStatus();

		//if (curr_joypad1 & PORT_B_KEY_2 && !(prev_joypad1 & PORT_B_KEY_2))
		if (curr_joypad1 & PORT_A_KEY_UP && !(prev_joypad1 & PORT_A_KEY_UP))
		{
			PSGSFXPlay(SOUND_PSG, 3);
		}

		if (SMS_queryPauseRequested())
		{
			SMS_resetPauseRequest();
			PSGPlayNoRepeat(MUSIC_PSG);
			//PSGSFXPlay(SOUND_PSG, 3);
		}

		prev_joypad1 = curr_joypad1;
	}
}

SMS_EMBED_SEGA_ROM_HEADER(9999, 0);
SMS_EMBED_SDSC_HEADER(0, 2, 2017, 3, 7, "stevepro2", "CK demo1", "stevepro CK demo1");


/*
//engine_font_manager_draw_data(hacker_music, 10, 10);
	//engine_tree_manager_draw_treeXY(4, 4);
	
	engine_tree_manager_draw_border();
	engine_tree_manager_draw_inside();
	//engine_font_manager_draw_text(LOCALE_TITLE1, 8, 11);
	//engine_font_manager_draw_text(LOCALE_TITLE2, 8, 12);

	//global_high_score = 0;
	//engine_font_manager_draw_data(global_high_score, 10, 1);

	//global_high_score += 25000;
	//engine_font_manager_draw_data(global_high_score, 10, 11);
*/

void draw_sprites()
{
	// KID
	drawSprite(24, 24, SPRITE_TILES + 0); drawSprite(24, 64, SPRITE_TILES + 2);	// #1
	drawSprite(64, 24, SPRITE_TILES + 4); drawSprite(64, 64, SPRITE_TILES + 6);	// #2
	// PRO
	drawSprite(96, 24,  SPRITE_TILES + 16); drawSprite(96, 64,  SPRITE_TILES + 18);	// #1
	drawSprite(128, 24, SPRITE_TILES + 20); drawSprite(128, 64, SPRITE_TILES + 22);	// #2
	// ADI
	drawSprite(24, 128, SPRITE_TILES + 32); drawSprite(24, 168, SPRITE_TILES + 34);	// #1
	drawSprite(64, 128, SPRITE_TILES + 36); drawSprite(64, 168, SPRITE_TILES + 38);	// #2
	// SUZ
	drawSprite(96, 128,  SPRITE_TILES + 48); drawSprite(96, 168,  SPRITE_TILES + 50);	// #1
	drawSprite(128, 128, SPRITE_TILES + 52); drawSprite(128, 168, SPRITE_TILES + 54);	// #2
}