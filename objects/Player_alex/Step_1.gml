if (htme_isLocal()){
self.pressed_up = keyboard_check(vk_up);
self.pressed_down = keyboard_check(vk_down);
self.pressed_left = keyboard_check(vk_left);
self.pressed_right = keyboard_check(vk_right);
}

mp_map_syncIn("name",self.name);
mp_map_syncIn("pressed_up",self.pressed_up);
mp_map_syncIn("pressed_down",self.pressed_down);
mp_map_syncIn("pressed_left",self.pressed_left);
mp_map_syncIn("pressed_right",self.pressed_right);