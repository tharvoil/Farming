///EXAMPLES OF DRAWING THE SYSTEM OUTPUT
//EXAMPLES OF Cycle Outputs

if alpha <= .35 draw_set_colour(c_blue);
if alpha > .35 draw_set_colour(c_white);
draw_sprite(spr_clock,0,200,200);
if global.dateCalendarOn    {
    draw_text(200, 200, string_hash_to_newline("Clock:  " + string(global.curClock)));
    draw_text(32, 32, string_hash_to_newline("Day:    " + string(global.curDay)));
    draw_text(32, 48, string_hash_to_newline("Season: " + string(ds_list_find_value(seasons,global.curMonth))));
    draw_text(32, 64, string_hash_to_newline("Year:   " + string(global.curYear)));
    }
if !global.dateCalendarOn    {
    draw_text(32, 32, string_hash_to_newline("Clock:  " + string(global.curClock)));
    draw_text(32, 48, string_hash_to_newline(string(global.curDayTime)));
    draw_text(32, 64, string_hash_to_newline("ALPHA:  " + string(alpha)));
    }





