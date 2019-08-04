/// failure()
/// @description player failed, We restart the level

show_debug_message("Game over");

instance_create_layer(x, y, "Instances", obj_end_game);
obj_end_game.map_success = false;