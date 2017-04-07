//WHEN CALLED this code will update the calander and the global variables containing the calender information.
curDay += 1;
global.curDay = curDay; //Update globals.
global.curDayName = ds_list_find_value(days,global.curDay);   //Update globals.      
if global.curDay <= dateDays then fun_calendarChange("day"); //Run Day Start Code
if curDay > dateDays   {
    curDay = 1;
    curWeek += 1;
    global.curDay = curDay; //Update globals.
    global.curDayName = ds_list_find_value(days,global.curDay); //Update globals.
    fun_calendarChange("day");//Run Day Start Code
    global.curWeek = curWeek; //Update globals.
    if curWeek <= dateWeeks then fun_calendarChange("week"); //Run Week Start Code
    if curWeek > dateWeeks  {
        curWeek = 1;
        curMonth += 1;
        if cycleLightSwap = true { //CHECKS TO SEE IF IT NEEDS TO SWAP THE DAY/NIGHT LANGTH FOR THE SECOND HALF OF THE YEAR
            if curMonth > dateMonths/2 {cycleSwap=true;}
            else cycleSwap=false;
            }
        global.curWeek = curWeek; //Update globals.
        fun_calendarChange("week"); //Run Week Start Code
        global.curMonth = curMonth; //Update globals.
        global.curMonthName = ds_list_find_value(months,global.curMonth);
        if curMonth <= dateMonths then fun_calendarChange("month"); //Run Month Start Code
        global.curSeason = ds_list_find_value(seasons,string(curMonth));
        if curMonth > dateMonths    {
            curMonth = 1;
            curYear += 1;
            global.curMonth = curMonth; //Update globals.
            global.curMonthName = ds_list_find_value(months,global.curMonth); //Update globals.
            fun_calendarChange("month"); //Run Month Start Code
            global.curSeason = ds_list_find_value(seasons,string(curMonth));
            global.curYear = curYear; //Update globals.
            fun_calendarChange("year"); //Run Year Start Code
        }
    }
}   




