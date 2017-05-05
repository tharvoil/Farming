/// @description Insert description here
// You can write your code in this editor
mp_sync();
mp_addPosition("Pos",5*room_speed);
mp_setType("Pos",mp_type.SMART);
mp_tolerance("Pos",20);


/**
 * Tell the engine to add the basic drawing variables:
 * image_alpha,image_angle,image_blend,image_index,image_speed,image_xscale
 * image_yscale,visible
 */
mp_addBuiltinBasic("basicDrawing",15*room_speed);
mp_setType("basicDrawing",mp_type.SMART);

/**
 * Tell the engine to add the builtin GameMaker variables:
 * direction,gravity,gravity_direction,friction,hspeed,vspeed
 */
mp_addBuiltinPhysics("basicPhysics",15*room_speed);
mp_setType("basicPhysics",mp_type.SMART);

mp_add("controls","pressed_up,pressed_down,pressed_left,pressed_right",buffer_bool,1);

Global();

self.pressed_up = false;
self.pressed_down = false;
self.pressed_left = false;
self.pressed_right = false;
self.name = "";








dir = DIR_STAND;
sprites = global.Sprites[0];
player_speed = 4;
dx = 0;
dy = 0;

silhouette_colour = $3F3FAF;
