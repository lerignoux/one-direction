obj_player1.frozen = true;
obj_player1.running = false;

show_debug_message("Game over");
instance_create_layer(x, y, "Instances", obj_end_game);