/// @description Creating user

image_speed = 0

move_speed = 4;
global.angle = 0; // move angle in degree
global.player_id = self.id;

mouse_pos_x = x;
mouse_pos_y = y;

depth = -1000;

frozen = false;
running = false;

action_button = vk_space;
action_duration = 30;
action = false;
current_action = "jumping";

music = audio_play_sound(snd_the_grind, 10, false);