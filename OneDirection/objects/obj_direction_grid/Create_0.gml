/// @description Insert description here
// You can write your code in this editor

step = 0;
steps_count = 60;
steps_instances = [];
step_distance = 200;
selected_step = 0;

right_key = vk_right;
left_key = vk_left;

repeat(steps_count) {
	var angle = step * 2 * pi/steps_count;
	dx = cos(angle) * step_distance;
	dy = -1 * sin(angle) * step_distance * 0.7;

	show_debug_message("step at " + string(dx) + ", " + string(dy));
	var inst = instance_create_layer(room_width/2 + dx, room_height/2 + dy, "Instances", obj_direction_step);
	
	show_debug_message("INstance " + string(inst));
	inst.depth = -100;
	steps_instances[step] = inst.id
	step += 1;
}
