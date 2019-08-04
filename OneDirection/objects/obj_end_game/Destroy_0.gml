/// @description Insert description here
// You can write your code in this editor
show_debug_message("End game destroyed")
view_xport[0] = 0;
view_yport[0] = 0;

if (map_success) {
	room_goto_next();
}

obj_player1.x = 1920;
obj_player1.y = 1920;
obj_player1.frozen = false;