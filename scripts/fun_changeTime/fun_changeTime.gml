var seconds = argument[0];      //This is the second you are setting your system to.
var minutes = argument[1];      //This is the minute you are setting your system to.
var hours = argument[2];        //This is the hour you are setting your time to. This regardless of cycleClockType 12/24 this is a 24 hour time, so if you want 4pm set it to 16.
var save = argument[3];         //If true, the system will save the current time before changing it.
var slot = argument[4];         //This is the slot that the time iwll be saved into.
var alphaCorrect = argument[5]; //If true, the system will adjust the alpha to match the new time.

var obj = obj_timeCycle;

if seconds > 59 then seconds = 59;
if minutes > 59 then minutes = 59;
if hours > 23 then hours = 23;


if save = true  {
    fun_calendarSave(slot); //Save the current settings to the choosen slot.
    }
    
obj.curSec = seconds;
obj.curMin = minutes;
obj.curHour = hours;
if obj.cycleClockType = 12 and hours > 12   {
    obj.curHour = hours - 12;
    obj.cycleClock12 = "PM";
    }
if obj.cycleClockType = 12 and hours <= 12   {
    obj.curHour = hours;
    obj.cycleClock12 = "AM";
    }
if obj.cycleClockType = 24 then obj.curHour = hours;
global.curSec = seconds;
global.curMin = minutes;
global.curHour = obj.curHour;

if alphaCorrect = true then fun_alphaCorrection(); //Correct the Alpha.
fun_dayTimeName();  //Correct the named time of day.

