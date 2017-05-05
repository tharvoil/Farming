//Run time tracking, only if time is not paused
if (global.timepause = false) {
//Keep track of frames
	frame +=1;
//Every X frames add one second, reset frame counter, 
//can adjust timespeed variable to speed up or slow down time
	if (frame = timespeed){
		global.second += 1;
		frame = 0;
	}
//If 60 seconds have passed, add a minute, reset seconds
	if (global.second = 60){
		global.minute += 1;
		global.second = 0;
	}
//If 60 minutes have passed, add a hour, reset minutes
	if (global.minute = 60){
		global.hour += 1;
		global.minute = 0;
	}
//If 24 hours has passed, add a day, reset hours
	if (global.hour = 24) {
		global.day += 1;
		global.hour = 0;
	}
}