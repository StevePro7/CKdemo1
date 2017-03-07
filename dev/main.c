#include "main.h"

void main (void)
{
	SMS_setSpriteMode(SPRITEMODE_NORMAL);
	engine_asm_manager_clear_VRAM();

	// Check this clears Everdrive text!
	engine_content_manager_load();

	//engine_font_manager_draw_text("ABC ALB", 0, 0);
	//engine_font_manager_draw_data(17, 10, 0);
	//engine_font_manager_draw_data_ZERO(19, 10, 2);

	engine_hack_manager_init();

	
	//engine_font_manager_draw_data(hacker_music, 10, 10);
	//engine_tree_manager_draw_treeXY(4, 4);
	
	//engine_font_manager_draw_text("SGB ALB", 0, 0);
	engine_tree_manager_draw_border();
	SMS_displayOn();
	for (;;)
	{
	}
}

SMS_EMBED_SEGA_ROM_HEADER(9999, 0);
SMS_EMBED_SDSC_HEADER(0, 2, 2017, 3, 7, "stevepro", "CK demo1", "stevepro CK demo1");