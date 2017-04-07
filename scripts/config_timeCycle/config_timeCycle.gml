///Set the Main Variables 
//These variable will determine how the time cycle runs.

//This is the variable you will call to pause the Time cycle for any reason in game. 
global.pauseCycle = false;  //When set to true the system will stop the counters until set back to false.
global.dateCalendarOn = true;//TO ENABLE CALENDARS SET TO TRUE:
global.lightingCycle = false; //Setting this to false will not draw or modify the darkness. The clock will still work.
//-------------------------------
cycleLength = 60;      //Length of a entire day/night cycle in REAL WORLD MINUTES.
cycleDayPause = 240;    //Choose the length of time in GAME WORLD minutes that Alpha will sit at the minimum(Brightest.)
cycleNightPause = 180;  //Choose the length of time in GAME WORLD minutes that Alpha will sit at the maximum(Darkest.)
cycleMaxAlpha = .7;     //Choose the max level of darkness. 1 = Absolute Darkness, 0 = Bright as day.
cycleColor = c_black;   //This is the main color used for your darkness. Choosing other colors can match the tone of the scene.
cycleLightSwap = true;  //Enabling this feature will swamp the length of the day and nice cycles half way through the year to simulate summer/winter day lengths.
cycleClock = true;      //Enable or disable the 00:00:00 clock for display in game. THIS WILL NOT EFFECT THE TIME KEEPING CLOCK.
cycleClockType = 24;     //The type of clock you want, 12 hours of 24 hours.
cycleClock12 = "PM";     // This determines AM/PM on a twelve hour clock switch over.
//The starting time for your game
curSec = 0;
curMin = 0;
curHour = 6;
//This creates 10 initial time save slots, storing 10 base variables. Set to 0 if you are not using time saving.
//If you know you are not going to use saves, or you want more or less change this number to avoid errors for unused slots.
var saveSlots = 10;
//-------------------------------

//This is where you can setup your calender and seasons if applicable to your game:
if global.dateCalendarOn = true {
    dateDays = 7;           //Choose how many days you want in a week.
    dateWeeks = 4;          //Choose how many weeks you want in a month.
    dateMonths = 4;        //Choose how many months you want in a year.
    dateSeasons = 4;        //Choose the amount of seasons you want in your world.
    curDay = 1;             //Starting day
    curWeek = 1;            //Starting Week
    curMonth = 1;           //Starting Month
    curYear = 1;          //Starting Year
    }
//-------------------------------
//The names for the time of the day will be automatically selected, but you can modify the names here:
dayTime = ds_list_create();
ds_list_add(dayTime,"Dawn");      // 4:00/4am through 6:59/7am
ds_list_add(dayTime,"Morning");   // 7:01/7am through 11:59/12pm
ds_list_add(dayTime,"Midday");    // 12:00/12pm through 13:59/2pm
ds_list_add(dayTime,"Afternoon"); // 14:00/2pm through 5:59/6pm
ds_list_add(dayTime,"Evening");   // 18:00/6pm through 8:59/9pm
ds_list_add(dayTime,"Dusk");      // 21:00/9pm through 21:59/10pm
ds_list_add(dayTime,"Night");     // 22:00/10pm through 11:59/12am
ds_list_add(dayTime,"Midnight");  // 24:00/12am through 3:59/4am
//-------------------------------
fun_cycleCreateLists(saveSlots); //This script creates the names list.

if global.dateCalendarOn = true {
//Name your days. Copy and paste a list entry for each day of your game week in the 
//order they will appear in your game world
//Example: ds_list_add(global.days,'Monday');
ds_list_replace(days,1,"Monday");
ds_list_replace(days,2,"Tuesday");
ds_list_replace(days,3,"Wednesday");
ds_list_replace(days,4,"Thursday");
ds_list_replace(days,5,"Friday");
ds_list_replace(days,6,"Saturday");
ds_list_replace(days,7,"Sunday");
//-------------------------------
//Name your months. Copy and paste a list entry for each Month of your game week in the 
//order they will appear in your game world
//Example: ds_list_add(global.months,'January');
ds_list_replace(months,1,"Spring");
ds_list_replace(months,2,"Summer");
ds_list_replace(months,3,"Fall");
ds_list_replace(months,4,"Winter");
ds_list_replace(months,5,"May");
ds_list_replace(months,6,"June");
ds_list_replace(months,7,"July");
ds_list_replace(months,8,"Augest");
ds_list_replace(months,9,"September");
ds_list_replace(months,10,"October");
ds_list_replace(months,11,"November");
ds_list_replace(months,12,"December");
//-------------------------------
//Name your seasons. Copy and paste a list entry for each season you have made and 
//match their index number with the month the season will exist in.
//Example: ds_list_add(global.seasons,'Spring');
ds_list_replace(seasons,1,"Spring");
ds_list_replace(seasons,2,"Summer");
ds_list_replace(seasons,3,"Fall");
ds_list_replace(seasons,4,"Winter");
ds_list_replace(seasons,5,"Summer");
ds_list_replace(seasons,6,"Summer");
ds_list_replace(seasons,7,"Fall");
ds_list_replace(seasons,8,"Fall");
ds_list_replace(seasons,9,"Fall");
ds_list_replace(seasons,10,"Winter");
ds_list_replace(seasons,11,"Winter");
ds_list_replace(seasons,12,"Winter");
//------------------------------------------------
}



