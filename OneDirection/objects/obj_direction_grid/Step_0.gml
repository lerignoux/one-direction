/// @description Insert description here
// You can write your code in this editor

right_input = keyboard_check_pressed(right_key);
left_input = keyboard_check_pressed(left_key);

if (keyboard_check_released(right_key))
{
	right_duration = 0.0;
}

if (keyboard_check(right_key))
{
	if (right_duration > press_threshold)
	{
		right_input = true;
		right_duration = press_threshold/2;
	}
	else {
		right_duration ++; 
	}
}

if (keyboard_check_released(left_key))
{
	left_duration = 0.0;
}

if (keyboard_check(left_key))
{
	if (left_duration > press_threshold)
	{
		left_input = true;
		left_duration = press_threshold/2;
	}
	else {
		left_duration ++; 
	}
}

if right_input
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

if left_input
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