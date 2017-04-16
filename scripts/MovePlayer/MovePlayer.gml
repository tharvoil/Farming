leftkey = keyboard_check(vk_left);
rightkey = keyboard_check(vk_right);
upkey = keyboard_check(vk_up);
downkey = keyboard_check(vk_down);

if (!leftkey && !rightkey && !upkey && !downkey){

		dir = DIR_STAND;
		sprite_index = sprites[dir];
		image_index=0;
		image_speed = 1.0;
		dy = 0;
		dx = 0;

}
if (leftkey){
	if( dir != DIR_LEFT) {
		dir = DIR_LEFT;
		sprite_index = sprites[dir];
		image_index=0;
		image_speed = 1.0;
		dx = dx - player_speed;
	}
} 
if(rightkey){
	if( dir != DIR_RIGHT) {
		dir = DIR_RIGHT;
		sprite_index = sprites[dir];
		image_index=0;
		image_speed = 1.0;
		dx = dx + player_speed;	
	}
}
if(upkey){
	if( dir != DIR_UP) {
		dir = DIR_UP;
		sprite_index = sprites[dir];
		image_index=0;
		image_speed = 1.0;
		dy = dy - player_speed;	
	}
}
if(downkey){
	if( dir != DIR_DOWN) {
		dir = DIR_DOWN;
		sprite_index = sprites[dir];
		image_index=0;
		image_speed = 1.0;
		dy = dy + player_speed;	
	}
}

ProcessCollision(id, dx,dy, 16,16,16,2 );