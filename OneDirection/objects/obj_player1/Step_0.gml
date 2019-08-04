/// @description User update

/*

KEYBOARD DEBUG
x += keyboard_check(vk_right) * movespeed
x += -keyboard_check(vk_left) * movespeed
y += -keyboard_check(vk_up) * movespeed
y += keyboard_check(vk_down) * movespeed
*/


// mouse position + move to mouse if distance > X

// debug information


mouse_pos_x = mouse_x
mouse_pos_y = mouse_y

if frozen {
    return;	
}

if (!running){
	if mouse_check_button_pressed(mb_left) 
	{
		global.angle = degtorad(point_direction(x, y, mouse_pos_x, mouse_pos_y));
		show_debug_message("Angle slected: " + string(global.angle))
		running = true;
	}
	if (keyboard_check_pressed(action_button))
	{
	    running = true;
	}
}

if (keyboard_check_pressed(action_button) && !action)
{
	show_debug_message("Starting action " + current_action);
    action = true;
	//sprite_index = spr_player_jump;
	action_vfx = instance_create_layer(x,y, "Instances", obj_vfx_jump);
	turbine_sound = choose(snd_turbine_0,snd_turbine_1,snd_turbine_2);
	audio_play_sound(turbine_sound, 10, false);
	alarm[0] = action_duration;
}

if (running) {
	next_pos = angle_pos(move_speed/10);
	move_towards_point(x+next_pos[0], y+next_pos[1], move_speed)
	if (random(60) < 0.3) {
		robot_sound = choose(snd_robot_0,snd_robot_1);
		audio_play_sound(robot_sound, 10, false);
	}
}
