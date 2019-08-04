/// @description Next level on keypress

if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter))
{
	room_goto(rm_tutorial);
}