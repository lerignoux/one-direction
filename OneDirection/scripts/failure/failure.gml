/// failure()
/// @description player failed, shake cam and plan a reset

show_debug_message("Game over");
instance_create_layer(x, y, "Instances", obj_end_game);
obj_end_game.map_success = false;