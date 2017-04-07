//THIS HEAVY CALL WILL DETERMINE HOW MANY MINUTES YOU ARE INTO YOUR DAY AND THEN ADJUST THE ALPHA ONE STEP
//AT A TIME UNTIL IT IS WHERE IT BELONGS.
//NOTICE THIS USES THE GLOBAL MINUTES/HOURS SO YOU CAN MANUALLY PAUSE THE SYSTEM AND ADJUST THE TIME TO WHATEVER YOU WANT 
//AND THEN RUN THIS COMMAND TO ADJUST THE ALPHA TO YOUR NEW TIME SETTINGS.
var obj = obj_timeCycle;
var ii=0;
var up=false
if obj.cycleClockType = 24 or obj.cycleClockType = 12 and obj.cycleClock12 = "AM" then ii = global.curHour*60+global.curMin;
else ii = (global.curHour+12)*60+global.curMin;

obj.alpha = obj.cycleMaxAlpha;

for(i=0;i<=ii;i+=1) {
    if ii <= obj.cycleNightPause and obj.cycleSwap = false {obj.alpha=obj.cycleMaxAlpha;exit;}
    if ii <= obj.cycleDayPause and obj.cycleSwap = true {obj.alpha=obj.cycleMaxAlpha;exit;}
    if ii > 720 and ii < 720+obj.cycleDayPause and obj.cycleSwap = false {obj.alpha=0;exit;}
    if ii > 720 and ii < 720+obj.cycleNightPause and obj.cycleSwap = true {obj.alpha=0;exit;}
    
    if up = false {
        if i > obj.cycleNightPause and obj.cycleSwap = false    {
            obj.alpha -= obj.cycleDayAlphaChange;
            if obj.alpha <= 0 or i = 720 {
                up = true;
                obj.alpha = 0;
                }
            }
        if i > obj.cycleDayPause and obj.cycleSwap = true    {
            obj.alpha -= obj.cycleNightAlphaChange;
            if obj.alpha <= 0 or i = 720 {
                up = true;
                obj.alpha = 0;
                }
            }
        }
    if up = true {
        if i > (720+obj.cycleDayPause) and obj.cycleSwap = false    {
            obj.alpha += obj.cycleNightAlphaChange;
            if obj.alpha >= obj.cycleMaxAlpha or i = 1440 {
                obj.alpha = obj.cycleMaxAlpha;
                exit;
                }
            }
        if i > (720+obj.cycleNightPause) and obj.cycleSwap = true    {
            obj.alpha += obj.cycleDayAlphaChange;
            if obj.alpha >= obj.cycleMaxAlpha or i = 1440 {
                obj.alpha = obj.cycleMaxAlpha;
                exit;
                }
            }
        }
    }

