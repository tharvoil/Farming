var slot = argument[0] //This will decide the slot to save the information in.
var time = argument[1] //This is either true or false. True = Calendar+Time, False = Time Only
var clear = argument[2] //This is either true or false. True = Clear the saved spot, False = Keep it for later
var alphaCorrect = argument[3] //This true or false will correct the alpha state after the time is changed.

var obj = obj_timeCycle;
//This below line just makes sure that the wrong call is not made when calendars are disabled to prevent an error
if time = true and global.dateCalendarOn = false then time = false;
if !global.calendarSave[slot,0] then exit

switch(time)    {
    case true:
        if clear = true then global.calendarSave[slot,0] = false
        obj.curSec = global.calendarSave[slot,1] 
        obj.curMin = global.calendarSave[slot,2]
        obj.curHour = global.calendarSave[slot,3]
        obj.cycleClock12 = global.calendarSave[slot,4]
        obj.curDay = global.calendarSave[slot,5]
        obj.curWeek = global.calendarSave[slot,6]
        obj.curMonth = global.calendarSave[slot,7]
        obj.curYear = global.calendarSave[slot,8]
        global.curSec = obj.curSec;
        global.curMin = obj.curMin;
        global.curHour = obj.curHour;
        global.curDay = obj.curDay;
        global.curDayName = ds_list_find_value(obj.days,string(obj.curDay));
        global.curWeek = obj.curWeek;
        global.curMonth = obj.curMonth;
        global.curMonthName = ds_list_find_value(obj.months,string(obj.curMonth));
        global.curYear = obj.curYear;
        global.curSeason = ds_list_find_value(obj.seasons,string(obj.curMonth));
        if alphaCorrect = true then fun_alphaCorrection();
        fun_dayTimeName();
    case false:
        if clear = true then global.calendarSave[slot,0] = false
        obj.curSec = global.calendarSave[slot,1]
        obj.curMin = global.calendarSave[slot,2]
        obj.curHour = global.calendarSave[slot,3]
        global.curSec = obj.curSec;
        global.curMin = obj.curMin;
        global.curHour = obj.curHour;
        if alphaCorrect = true then fun_alphaCorrection();
        fun_dayTimeName();
    }

