//THESE SETTINGS SHOULD NOT NEED TO BE CHANGED AND COULD CAUSE AN ERROR IF CHANGED TOO MUCH.

//THESE for loops prevent missing names for the calendar lists when using it.
if global.dateCalendarOn = true {
//This creates and fills the list day names with a simple number.
var i;
days = ds_list_create();
for (i=0;i<dateDays+1;i+=1)
    {ds_list_add(days,string(i));}
//-------------------------------
//This creates and fills the list month names with a simple number.
months = ds_list_create();
for (i=0;i<dateMonths+1;i+=1)
    {ds_list_add(months,string(i));}
//-------------------------------
//This creates and fills the list season names with a simple number.
seasons = ds_list_create();
for (i=0;i<dateSeasons+1;i+=1)
    {ds_list_add(seasons,string(i));}
}
//------------------------------------------------

/*
THE BELOW SETTINGS DO NOT NEED TO BE CHANGED.
//Creating the surface we will use to shade out world.
This create the surface to the size of the view of the room to keep it lighter weight.
If you want it to stay a specific size, update it here as well as in the draw_dayCycle script
*/
cycleSurf = surface_create(room_width,room_height);  
//------------------------------------------------

cycleSeconds = 86440;
cycleFullDay = (cycleLength*60)*room_speed;
cycleSwap = false

cycleDayAlphaChange = cycleMaxAlpha/((720-cycleNightPause));
cycleNightAlphaChange = cycleMaxAlpha/((720-cycleDayPause));


global.curSec = curSec;
global.curMin = curMin;
global.curHour = curHour;
for (i=0;i<argument[0]-1;i+=1) 
    {global.calendarSave[i,0] = 0;}
global.curDayTime = "null";
fun_dayTimeName();
    
//YOU CAN CALL THIS FUNCTION AT ANYTIME TO PRECISELY RESET THE ALPHA BUT BE WARNED ITS A HEAVY FUNCTION SO USE IT SPARINGLY.
fun_alphaCorrection(); //Sets the initial Alpha. 
//------------------------------------------------
fun_dayTimeName(); //function will set the name time of day.

//Here we build the global variables easily accessible for other game objects, features and functions.
global.curClock = string(curHour)+":"+string(curMin)+":"+string(curSec);
if global.dateCalendarOn = true {
dateStartingYear = curYear;
global.curDay = curDay;
global.curDayName = ds_list_find_value(days,string(curDay));
global.curWeek = curWeek;
global.curMonth = curMonth;
global.curMonthName = ds_list_find_value(months,string(curMonth));
global.curYear = curYear;
global.curSeason = ds_list_find_value(seasons,string(curMonth));
}



