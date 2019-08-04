/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(right_key)
{
	steps_instances[selected_step].image_index = 0;
	selected_step += 1;
	if (selected_step >= steps_count) {
		selected_step = 0;
		show_debug_message("step: " + string(selected_step))
	}
	steps_instances[selected_step].image_index = 1;
	global.angle = selected_step * 2 * pi/steps_count;
}

if keyboard_check_pressed(left_key)
{
	steps_instances[selected_step].image_index = 0;
	selected_step -= 1;
	if (selected_step < 0) {
		selected_step = steps_count - 1;
		show_debug_message("step: " + string(selected_step))
	}
	
	steps_instances[selected_step].image_index = 1;
	global.angle = selected_step * 2 * pi/steps_count;
}