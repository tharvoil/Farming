//Look for existing item in inventory
for (i = 0; i < maxItems; i += 1){
	if (ds_grid_get(global.invmap, i, 0) == argument0){
	//todo - add neted if statement to check if max stacks
	ds_grid_add(global.invmap,i,1,1);
	return(1);
	}
}
//look for free slot in inventory
for (i = 0; i < maxItems; i += 1){
	if (ds_grid_get(global.invmap, i, 0) == -1){
	ds_grid_set(global.invmap,i,0,argument0);
	ds_grid_add(global.invmap,i,1,1);
	return(1);
	}
}
//No free room in inventory
return(0);