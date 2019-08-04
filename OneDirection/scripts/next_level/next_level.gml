/// next_level()
/// @description launch next level

instance_destroy(global.player_id);
room_goto_next();
instance_create_layer(1920, 1920, "Instances", obj_player1);