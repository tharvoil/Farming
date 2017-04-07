var slot = argument[0] //This will decide the slot to save the information in.
var obj = obj_timeCycle;
//This below line just makes sure that the wrong call is not made when calendars are disabled to prevent an error

switch(global.dateCalendarOn)    {
    case true:
        global.calendarSave[slot,0] = true //This is the slot is active check
        global.calendarSave[slot,1] = obj.curSec
        global.calendarSave[slot,2] = obj.curMin
        global.calendarSave[slot,3] = obj.curHour
        global.calendarSave[slot,4] = obj.cycleClock12
        global.calendarSave[slot,5] = obj.curDay
        global.calendarSave[slot,6] = obj.curWeek
        global.calendarSave[slot,7] = obj.curMonth
        global.calendarSave[slot,8] = obj.curYear
    case false:
        global.calendarSave[slot,0] = true //This is the slot is active check
        global.calendarSave[slot,1] = obj.curSec
        global.calendarSave[slot,2] = obj.curMin
        global.calendarSave[slot,3] = obj.curHour
    }


