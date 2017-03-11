#ifndef _CONTENT_MANAGER_H_
#define _CONTENT_MANAGER_H_

#define CLEAR_TILES		0
#define TREE_TILES		8
#define FONT_TILES		16
#define SPRITE_TILES	80

void engine_content_manager_load()
{
	// Clear tiles.
	SMS_loadPSGaidencompressedTiles(clear__tiles__psgcompr, CLEAR_TILES);
	SMS_loadSTMcompressedTileMap(0, 0, clear__tilemap__stmcompr);
	SMS_loadBGPalette(clear__palette__bin);

	// Tree tiles.
	SMS_loadPSGaidencompressedTiles(tree__tiles__psgcompr, TREE_TILES);
	SMS_loadBGPalette(tree__palette__bin);

	// Font tiles.
	SMS_loadPSGaidencompressedTiles(font__tiles__psgcompr, FONT_TILES);
	SMS_loadBGPalette(font__palette__bin);

	// Sprite tiles.
	SMS_loadPSGaidencompressedTiles(sprites__tiles__psgcompr, SPRITE_TILES);
	SMS_loadSpritePalette(sprites__palette__bin);
}

#endif//_CONTENT_MANAGER_H_