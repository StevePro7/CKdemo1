#ifndef _FONT_MANAGER_H_
#define _FONT_MANAGER_H_

void engine_font_manager_load()
{
	SMS_loadPSGaidencompressedTiles(clear__tiles__psgcompr, CLEAR_TILES);
	SMS_loadSTMcompressedTileMap(0, 0, clear__tilemap__stmcompr);
	SMS_loadBGPalette(clear__palette__bin);

	SMS_loadPSGaidencompressedTiles(font__tiles__psgcompr, FONT_TILES);
	SMS_loadBGPalette(font__palette__bin);
}

#endif//_FONT_MANAGER_H_