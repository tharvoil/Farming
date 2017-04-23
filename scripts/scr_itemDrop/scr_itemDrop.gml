for (i = 0; i < maxItems; i += 1){
	if (ds_grid_get(global.invmap,i,0) == argument0){
		ds_grid_set(global.invmap,i,0,-1);
		ds_grid_set(global.invmap,i,1,-1);
		ds_grid_set(global.invmap,i,2,-1);
		return(1);
	}
}
return(0);