/// @description Action ending timing

/*	var attack = instance_create_layer(x, y, "Instances", obj_attack)
	attack.direction = obj_player.image_angle
	attack.speed = 12
	attack.depth = -100
	attack.image_angle = image_angle
	
	*/
	
// end the jump
show_debug_message("Ending action " + current_action);
action = false;
image_index = 0;