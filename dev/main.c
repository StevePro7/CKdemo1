//#include "main.h"

#include "..\lib\SMSlib.h"
#include "gfx.h"

#define CLEAR_TILES		0
#define FONT_TILES		16

void loadAssets(void)
{
	SMS_loadPSGaidencompressedTiles(clear__tiles__psgcompr, CLEAR_TILES);
	SMS_loadSTMcompressedTileMap(0, 0, clear__tilemap__stmcompr);
	SMS_loadBGPalette(clear__palette__bin);

	SMS_loadPSGaidencompressedTiles(font__tiles__psgcompr, FONT_TILES);
	SMS_loadBGPalette(font__palette__bin);
}

void main (void)
{
	SMS_setSpriteMode (SPRITEMODE_NORMAL);
	loadAssets();

	for (;;)
	{
	}
}

SMS_EMBED_SEGA_ROM_HEADER(9999, 0);
SMS_EMBED_SDSC_HEADER(0, 2, 2017, 3, 7, "stevepro2", "CK demo1", "stevepro CK demo1");