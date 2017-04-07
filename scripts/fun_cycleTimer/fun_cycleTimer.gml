var amount = argument[0];
var time = argument[1];
var obj = obj_timeCycle;

switch(time)
    {
    case "second":
        var value = round(amount/(obj.cycleSeconds/obj.cycleFullDay));
        return value;
        exit;
    case "minute":
        var value = round((amount*60)/(obj.cycleSeconds/obj.cycleFullDay));
        return value;
        exit;
    case "hour":
        var value = round((amount*60*60)/(obj.cycleSeconds/obj.cycleFullDay));
        return value;
        exit;
    case "day":
        var value = round((amount*obj.cycleSeconds)/(obj.cycleSeconds/obj.cycleFullDay));
        return value;
        exit;
    case "week":
        if global.dateCalendarOn    {
        var value = round((amount*obj.cycleSeconds*obj.dateDays)/(obj.cycleSeconds/obj.cycleFullDay));
        return value;
        }
        exit;
    case "month":
        if global.dateCalendarOn    {
        var value = round((amount*obj.cycleSeconds*obj.dateDays*obj.dateWeeks)/(obj.cycleSeconds/obj.cycleFullDay));
        return value;
        }
        exit;
    case "year":
        if global.dateCalendarOn    {
        var value = round((amount*obj.cycleFullDay*obj.dateDays*obj.dateWeeks*obj.dateMonths)/(obj.cycleSeconds/obj.cycleFullDay));
        return value;
        }
        exit;  
    }

