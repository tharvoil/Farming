/// @description Go to bed
// You can write your code in this editor

//Make all end of day adjustments to crops

//If the crop is watered, add full growth, otherwise only half and resets watered variable
if (cropWatered == 1)
	{
	cropGrowth = cropGrowth + cropGrowthPerDay;
	cropWatered  = 0;
	}else cropGrowth = cropGrowth + (cropGrowthPerDay / 2);
	
//Increase crop Stage if growth has completed for stage.
if (cropGrowth >= 100)
	{
	cropGrowth = 0;
	cropStage = cropStage + 1;
	}
	
// Set sprites for crops based on stage.

image_index = cropStage;