if global.lightingCycle = false then exit;
var ii=0;

//HERE WE FIGURE OUT HOW MANY MINUTES INTO THE DAY WE ARE
if cycleClockType = 24 or cycleClockType = 12 and cycleClock12 = "PM" and curHour = 12  
    or cycleClockType = 12 and cycleClock12 = "AM" and curHour < 12 then ii = global.curHour*60+global.curMin;
else ii = (global.curHour+12)*60+global.curMin;

//HERE WE DO A QUICK CLEAN CHECK TO SEE IF IT'S MIDNIGHT OR NOON
if ii <= cycleNightPause and cycleSwap = false  {alpha=cycleMaxAlpha;exit;}
if ii <= cycleDayPause and cycleSwap = true {alpha=cycleMaxAlpha;exit;}
if ii > 720 and ii < 720+cycleDayPause {alpha=0;exit;}
if ii > 720 and ii < 720+cycleNightPause {alpha=0;exit;}

//IF IT'S NOT MIDNIGHT OR NOON THIS FIGURES OUT WHAT TIME IT IS AND ADVANCES THE ALPHA FROM THERE.
if ii > cycleNightPause and ii < 720+cycleDayPause and cycleSwap = false {
    alpha -= cycleDayAlphaChange;
    exit;
    }
if ii > cycleDayPause and ii < 720+cycleNightPause and cycleSwap = true {
    alpha -= cycleNightAlphaChange;
    exit;
    }
if ii >= 720 + cycleDayPause and cycleSwap = false and alpha < cycleMaxAlpha {
    alpha += cycleNightAlphaChange;
    exit;
    }
if ii >= 720 + cycleNightPause and cycleSwap = true and alpha < cycleMaxAlpha {
    alpha += cycleDayAlphaChange;
    exit;
    }



