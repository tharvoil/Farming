//Sets up inventory information using 2d arrays.

//Set up Global variables used
globalvar showInv;
showInv = true;
globalvar maxItems;
maxItems = 5;

global.invmap = ds_grid_create(maxItems, 3);

for (i = 0; i < maxItems; i += 1;){
	ds_grid_set(global.invmap, i, 0, -1);
	ds_grid_set(global.invmap, i, 1, -1);
	ds_grid_set(global.invmap, i, 2, -1);
}
//Initalize item information array

//load information from localization file



//Test variables
ds_grid_set(global.invmap, 0, 0, 2);
ds_grid_set(global.invmap, 1, 0, 0);
ds_grid_set(global.invmap, 2, 0, 1);

//Testing saving of the grid  - goes to appdata\local\farming
ini_open("Save.ini");
ini_write_string("Save", "0", ds_grid_write(global.invmap));
ini_close();