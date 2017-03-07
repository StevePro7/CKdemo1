#ifndef _TREE_MANAGER_H_
#define _TREE_MANAGER_H_

void engine_tree_manager_draw_treeXY(unsigned char x, unsigned char y)
{
	const unsigned int *pnt = tree__tilemap__bin;

	SMS_setNextTileatXY(x+0, y+0); 	SMS_setTile (*pnt + 0);
	SMS_setNextTileatXY(x+1, y+0); 	SMS_setTile (*pnt + 1);
	SMS_setNextTileatXY(x+0, y+1); 	SMS_setTile (*pnt + 2);
	SMS_setNextTileatXY(x+1, y+1); 	SMS_setTile (*pnt + 3);
}

void engine_tree_manager_draw_border()
{
	unsigned char tx = 0;
	unsigned char ty = 0;
	for (tx=0; tx<24; tx+=2)
	{
		engine_tree_manager_draw_treeXY(tx, 0);
		engine_tree_manager_draw_treeXY(tx, 22);
	}
	for (ty=2; ty<22; ty+=2)
	{
		engine_tree_manager_draw_treeXY(0, ty);
		engine_tree_manager_draw_treeXY(22, ty);
	}
}

#endif//_TREE_MANAGER_H_