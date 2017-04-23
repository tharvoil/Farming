//Sets up the item ds grid - used if the save file does not exist for some reason
//Number of item ids to use, can be expanded for future use
numitemids = 10;
//Create grid
global.itemmap = ds_grid_create(numitemids, 5);

ds_grid_set(global.itemmap,0,0,0); //ID number of the item
ds_grid_set(global.itemmap,0,1,"Item Name"); //Name of the item
ds_grid_set(global.itemmap,0,2,"Item Description"); //Description of the item
ds_grid_set(global.itemmap,0,3,1); //Max number of items in a stack, -1 for no limit
ds_grid_set(global.itemmap,0,4,-1); //Max durability, -1 for no durability

ds_grid_set(global.itemmap,1,0,1); //ID
ds_grid_set(global.itemmap,1,1,"Hoe"); //Name
ds_grid_set(global.itemmap,1,2,"A basic hoe used to"); //Description
ds_grid_set(global.itemmap,1,3,1); //Stack Limit
ds_grid_set(global.itemmap,1,4,-1); //Durability

ds_grid_set(global.itemmap,2,0,2); //ID
ds_grid_set(global.itemmap,2,1,"Watering Can"); //Name
ds_grid_set(global.itemmap,2,2,"A basic watering can used to water crops"); //Description
ds_grid_set(global.itemmap,2,3,1); //Stack Limit
ds_grid_set(global.itemmap,2,4,-1); //Durability

ds_grid_set(global.itemmap,3,0,3); //ID
ds_grid_set(global.itemmap,3,1,"Axe"); //Name
ds_grid_set(global.itemmap,3,2,"A basic axe used to cut down trees"); //Description
ds_grid_set(global.itemmap,3,3,1); //Stack Limit
ds_grid_set(global.itemmap,3,4,-1); //Durability

ds_grid_set(global.itemmap,4,0,4); //ID
ds_grid_set(global.itemmap,4,1,"Pickaxe"); //Name
ds_grid_set(global.itemmap,4,2,"A basic pickaxe used to mine rocks"); //Description
ds_grid_set(global.itemmap,4,3,1); //Stack Limit
ds_grid_set(global.itemmap,4,4,-1); //Durability