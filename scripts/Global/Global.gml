#macro DIR_STAND	0
#macro DIR_UP		1
#macro DIR_DOWN	2
#macro DIR_LEFT	3
#macro DIR_RIGHT	4
#macro DIR_DEAD	5


// allow different player characters (unused just now)
global.psprite = 0
global.psprite[0] = spr_player_idle_down;
global.psprite[1] = spr_player_move_up;
global.psprite[2] = spr_player_move_down;
global.psprite[3] = spr_player_move_left;
global.psprite[4] = spr_player_move_right
// The player charcters
global.Sprites = 0;
global.Sprites[0] = global.psprite;
