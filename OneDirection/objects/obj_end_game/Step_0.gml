/// @description Insert description here
// You can write your code in this editor

if (shake_time > 0)
{
view_xport[0] += random_range(-shake_magnitude, shake_magnitude);
view_yport[0] += random_range(-shake_magnitude, shake_magnitude);

shake_time --;

camera_set_view_pos(view_camera[0], view_xport[0], view_yport[0])
}
