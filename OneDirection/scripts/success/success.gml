/// success()
/// @description player won, display a congratulation and plan next level

show_debug_message("Congratulations");
instance_create_layer(x, y, "Instances", obj_end_game);
obj_end_game.map_success = true;