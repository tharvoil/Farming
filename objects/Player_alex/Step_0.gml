//MovePlayer();



if(self.pressed_left){
	if( dir != DIR_LEFT) {
		dir = DIR_LEFT;
		sprite_index = sprites[dir];
		image_index=0;
		image_speed = 1.0;
		dx = -player_speed;
		dy = 0;
	}
}else if(self.pressed_right){
	if( dir != DIR_RIGHT) {
		dir = DIR_RIGHT;
		sprite_index = sprites[dir];
		image_index=0;
		image_speed = 1.0;
		dx = player_speed;
		dy = 0;		
	}
}else if(self.pressed_up){
	if( dir != DIR_UP) {
		dir = DIR_UP;
		sprite_index = sprites[dir];
		image_index=0;
		image_speed = 1.0;
		dy = -player_speed;
		dx = 0;		
	}
}else if(self.pressed_down){
	if( dir != DIR_DOWN) {
		dir = DIR_DOWN;
		sprite_index = sprites[dir];
		image_index=0;
		image_speed = 1.0;
		dy = player_speed;
		dx = 0;		
	}
}else{
	if( dir != DIR_STAND) {
		dir = DIR_STAND;
		sprite_index = sprites[dir];
		image_index=0;
		image_speed = 1.0;
		dy = 0;
		dx = 0;		
		}
}
ProcessCollision(id, dx,dy, 16,16,16,2 );