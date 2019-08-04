/// @description Insert description here
// You can write your code in this editor



/*

KEYBOARD DEBUG
x += keyboard_check(vk_right) * movespeed
x += -keyboard_check(vk_left) * movespeed
y += -keyboard_check(vk_up) * movespeed
y += keyboard_check(vk_down) * movespeed
*/


// mouse position + move to mouse if distance > X


mouse_pos_x = mouse_x
mouse_pos_y = mouse_y
image_angle = point_direction(x, y, mouse_pos_x, mouse_pos_y);



if mouse_check_button_pressed(mb_left) 
{
	if (move == 0)
	{
		move_towards_point(mouse_pos_x, mouse_pos_y, movespeed);
	}
	
move = 1
}

//	point_distance(x, y, mouse_pos_x, mouse_pos_y) > 6) && move == 0

