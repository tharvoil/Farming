//THIS FUNCTION CHECKS THE GLOBAL VARIABLES FOR THE TIME OF THE DATE AND THEN SETS THE NAME.
var obj = obj_timeCycle;
// 24:00/12am through 3:59/4am
if global.curHour >= 0 and global.curHour < 4 and obj.cycleClockType = 24 or
    global.curHour >= 0 and global.curHour < 4 and obj.cycleClockType = 12 and obj.cycleClock12 = "AM" { 
        global.curDayTime = ds_list_find_value(obj.dayTime,7); 
        exit;
        }
// 4:00/4am through 6:59/7am
if global.curHour >= 4 and global.curHour < 7 and obj.cycleClockType = 24 or
    global.curHour >= 4 and global.curHour < 7 and obj.cycleClockType = 12 and obj.cycleClock12 = "AM" {
        global.curDayTime = ds_list_find_value(obj.dayTime,0);
        exit;
        }
// 7:01/7am through 11:59/12pm
if global.curHour >= 7 and global.curHour < 12 and obj.cycleClockType = 24 or
    global.curHour >= 7 and global.curHour < 12 and obj.cycleClockType = 12 and obj.cycleClock12 = "AM" { 
        global.curDayTime = ds_list_find_value(obj.dayTime,1);
        exit;
        }
// 12:00/12pm through 13:59/2pm
if global.curHour >= 12 and global.curHour < 14 and obj.cycleClockType = 24 or
    global.curHour >= 0 and global.curHour < 2 and obj.cycleClockType = 12 and obj.cycleClock12 = "PM" { 
        global.curDayTime = ds_list_find_value(obj.dayTime,2);
        exit;
        }
// 14:00/2pm through 5:59/6pm
if global.curHour >= 14 and global.curHour < 18 and obj.cycleClockType = 24 or
    global.curHour >= 2 and global.curHour < 6 and obj.cycleClockType = 12 and obj.cycleClock12 = "PM" {
        global.curDayTime = ds_list_find_value(obj.dayTime,3); 
        exit;
        }
// 18:00/6pm through 8:59/9pm
if global.curHour >= 18 and global.curHour < 21 and obj.cycleClockType = 24 or
    global.curHour >= 6 and global.curHour < 9 and obj.cycleClockType = 12 and obj.cycleClock12 = "PM" { 
        global.curDayTime = ds_list_find_value(obj.dayTime,4);  
        exit;
        }
// 21:00/9pm through 21:59/10pm
if global.curHour >= 21 and global.curHour < 22 and obj.cycleClockType = 24 or
    global.curHour >= 9 and global.curHour < 10 and obj.cycleClockType = 12 and obj.cycleClock12 = "PM" { 
        global.curDayTime = ds_list_find_value(obj.dayTime,5);   
        exit;
        }  
// 22:00/10pm through 11:59/12am
if global.curHour >= 22 and global.curHour < 24 and obj.cycleClockType = 24 or
    global.curHour >= 10 and global.curHour < 12 and obj.cycleClockType = 12 and obj.cycleClock12 = "PM" { 
        global.curDayTime = ds_list_find_value(obj.dayTime,6);
        exit;
        }

