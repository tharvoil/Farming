var days = argument[0];     //This is the day you are chaning the calendar day to.
var weeks = argument[1];    //This is the week you are chaning the calendar day to.
var months = argument[2];   //This is the month you are chaning the calendar day to.
var years = argument[3];    //This is the year you are chaning the calendar day to.
var save = argument[4];     //This is whether you want to save the old settings first.
var slot = argument[5];     //If saving the old settings, which slot to save too.

var obj = obj_timeCycle;
if days > obj.dateDays then days = obj.dateDays;        //This will correct any over the max cycle calls made.
if weeks > obj.dateWeeks then days = obj.dateWeeks;     //This will correct any over the max cycle calls made.
if months > obj.dateMonths then days = obj.dateMonths;  //This will correct any over the max cycle calls made.

if save = true  {
    fun_calendarSave(slot);
    }
switch(global.dateCalendarOn)   {
    case true:
        obj.curDay = days;
        obj.curWeek = weeks;
        obj.curMonth = months;
        obj.curYear = years;
        global.curDay = days;
        global.curDayName = ds_list_find_value(obj.days,string(obj.curDay));
        global.curWeek = weeks;
        global.curMonth = months;
        global.curMonthName = ds_list_find_value(obj.months,string(obj.curMonth));
        global.curYear = years;
        global.curSeason = ds_list_find_value(obj.seasons,string(obj.curMonth));
    case false:
        exit;
    }
