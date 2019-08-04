/// @description Creating user

move_speed = 4;
global.angle = 0; // move angle in degree
global.player_id = self.id;

mouse_pos_x = x;
mouse_pos_y = y;

depth = -1000;

frozen = false;
running = false;

action_button = vk_space;
action_duration = 35;
action = false;
current_action = "jumping";
action_vfx = pointer_null;

jump_height = 80;
jump_offset = 0;
idle_sprite_offset = sprite_get_yoffset(spr_player_idle);

music = audio_play_sound(snd_the_grind, 10, false);