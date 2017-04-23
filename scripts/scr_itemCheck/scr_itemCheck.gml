for (i = 0; i < maxItems; i += 1){
	if (ds_grid_get(global.invmap,i,0) == argument0){
		return(1);
	}
}
return(0);