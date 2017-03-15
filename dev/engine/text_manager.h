#ifndef _TEXT_MANAGER_H_
#define _TEXT_MANAGER_H_

void engine_text_manager_draw()
{
	engine_font_manager_draw_text(LOCALE_TITLE1, 8, 11);
	engine_font_manager_draw_text(LOCALE_TITLE2, 8, 12);

	engine_font_manager_draw_text(LOCALE_SIDE1, 24, 0);
	engine_font_manager_draw_text(LOCALE_SIDE2, 24, 1);

	engine_font_manager_draw_text(LOCALE_STEVEPRO1, 24, 22);
	engine_font_manager_draw_text(LOCALE_STEVEPRO2, 24, 23);
}

#endif//_TEXT_MANAGER_H_