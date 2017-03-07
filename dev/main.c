//#include "main.h"

#include "..\lib\SMSlib.h"
#include "gfx.h"

void loadAssets(void)
{
	SMS_loadPSGaidencompressedTiles(clear__tiles__psgcompr, 0);
	SMS_loadSTMcompressedTileMap(0, 0, clear__tilemap__stmcompr);
	SMS_loadBGPalette(clear__palette__bin);

	SMS_loadPSGaidencompressedTiles(field__tiles__psgcompr, 8);
	SMS_loadBGPalette(field__palette__bin);
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
SMS_EMBED_SDSC_HEADER(0, 2, 2017, 3, 7, "stevepro", "CK demo1", "stevepro CK demo1");