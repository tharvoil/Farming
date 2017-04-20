//Set up Global variables used
globalvar showInv;
showInv = true;
globalvar maxItems;
maxItems = 5;

//Initalize inventory
for (i = 0; i < maxItems; i += 1;){
	global.inventory[i] = -1;
}