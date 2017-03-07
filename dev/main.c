#include "main.h"

void main (void)
{
	SMS_setSpriteMode(SPRITEMODE_NORMAL);
	engine_font_manager_load();

	for (;;)
	{
	}
}

SMS_EMBED_SEGA_ROM_HEADER(9999, 0);
SMS_EMBED_SDSC_HEADER(0, 2, 2017, 3, 7, "stevepro4", "CK demo1", "stevepro CK demo1");