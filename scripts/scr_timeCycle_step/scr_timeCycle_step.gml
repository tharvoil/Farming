if global.pauseCycle = true then exit; //This check exits the script if you have the system paused which will stop all progression.

curSec += round(cycleSeconds/cycleFullDay); //This will add seconds per tick based on how many ticks will be in your game day.
global.curSec = curSec; //Update globals.
if curSec > 59  { //Here we check to see whether another minute has passed and then progress the minutes and decrease our seconds as needed.
    var i;
    for(i=curSec;i>59;i-=60;)    {
    curSec -= 60;
    curMin += 1;
    }
    global.curSec = curSec; //Update globals.
    global.curMin = curMin;//Update globals.
    if curMin <= 59 then fun_alphaAdjust(); //Calling this function will advance the Alpha in whichever direction it needs.
    if curMin > 59  { //Here we check to see whether and hour has passed and then progress the hours and decrease our minutes as needed.
        curMin -= 60;
        fun_alphaAdjust(); //Calling this function will advance the Alpha in whichever direction it needs.
        global.curMin = curMin;//Update globals.
        curHour += 1;
        global.curHour = curHour; //Update globals.
        if curHour < cycleClockType and cycleClockType = 24 or curHour <= cycleClockType and cycleClockType = 12    {
            fun_calendarChange("hour");//Run the hourly code
            fun_dayTimeName(); //This function will update the name of the time of day. Ex: Morning, Midday, Night
            }
        var tempChanged = false //This sets a temp flag for changing the AM/PM clock
        if curHour >= cycleClockType and cycleClockType = 24 { //This fires off he end of the day commands and will update the calendar if it's enabled.
            curHour = 0;
            global.curHour = curHour;//Update globals.
            fun_dayTimeName(); //This function will update the name of the time of day. Ex: Morning, Midday, Night
            if global.dateCalendarOn = true   {fun_cycleCalendar();}
            fun_calendarChange("hour");//Run the hourly code
            }
        if curHour = cycleClockType and cycleClockType = 12 and cycleClock12 = "PM" { //This fires off he end of the day commands and will update the calendar if it's enabled.
            cycleClock12 = "AM"
            var tempChanged = true;
            if global.dateCalendarOn = true and cycleClock12 = "AM" {
                fun_cycleCalendar(); //Change up the calender
                }
            }
        if curHour = cycleClockType and cycleClockType = 12 and cycleClock12 = "AM" and tempChanged = false { //This denies the end of day commands when the system is a 12 hour clock and it's still AM.
            cycleClock12 = "PM"  
            }  
        if curHour > cycleClockType and cycleClockType = 12 {
            curHour = 1;
            global.curHour = curHour;//Update globals.
            fun_dayTimeName(); //This function will update the name of the time of day. Ex: Morning, Midday, Night
            fun_calendarChange("hour");//Run the hourly code
            }
        }
    }

//THE FOLLOWING IS THE CLOCK OUTPUT for both the 12 hour and 24 hour clocks
if cycleClock = true    { //BY SETTING THIS TO FALSE THE GLOBAL CLOCK WILL NOT UPDATE BUT THE MAIN CLOCK WILL STILL CONTINUE WITHOUT PAUSE.
    var hour = global.curHour,minute = global.curMin,second = global.curSec;
    if global.curSec < 10 then second = "0"+string(global.curSec);
    if global.curMin < 10 then minute = "0"+string(global.curMin);
    if global.curHour < 10 then hour = "0"+string(global.curHour);
    if cycleClockType = 24 {global.curClock = string(hour)+":"+string(minute)+":"+string(second);} //You can modify this code if you don't want your clock to show something it does by default, for instance the seconds.
    else {global.curClock = string(hour)+":"+string(minute)+":"+string(second)+ " - " + cycleClock12;} //You can modify this code if you don't want your clock to show something it does by default, for instance the seconds.
    }
else global.curClock = "null";



