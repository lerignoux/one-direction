/// success()
/// @description player won, We start the next level

show_debug_message("Congratulations");
instance_create_layer(x, y, "Instances", obj_end_game);
obj_end_game.map_success = true;