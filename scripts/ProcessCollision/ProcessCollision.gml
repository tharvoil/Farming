/// ProcessCollision(_inst, _collision, _dx,_dy, _left,_right, _top,_bottom)
#macro TILE_SIZE	16		// size of debug tilemap
#macro TILE_SHIFT   5		// 1<<5 = 32

var _inst = argument0;
var _dx = argument1;
var _dy = argument2;
var _right = argument3;
var _left = argument4;
var _top = argument5;
var _bottom = argument6;

var COLLISION_DEBUG=false;
var DEBUG_TILE = 2;


with( _inst )
{
	// Now move and do collision checks.
	x += _dx;
	y += _dy; 
	
	}




















