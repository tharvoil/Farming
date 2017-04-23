//Draw the hotbar with items
if (showInv) {
	var x1, x2, y1, y2;
	x1 = 0;
	x2 = 400;
	y1 = 0;
	y2 = y1 + 64;
	
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(x1,y1,x2,y2,0);
	draw_set_alpha(1);

	for (i = 0; i< maxItems; i += 1;){
		draw_sprite(spr_campFire,0,x1 + 24 + (i * 40), y2- 24);
		if (ds_grid_get(global.invmap, i, 0)!= -1){
			draw_sprite(spr_items,ds_grid_get(global.invmap, i, 0), x1 + 24 + (i * 40), y2- 24);
		}
	}

}