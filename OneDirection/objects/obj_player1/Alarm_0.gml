/// @description Action ending timing

// end the jump
show_debug_message("Ending action " + current_action);
action = false;
// sprite_index = spr_player_idle;
instance_destroy(action_vfx)
sprite_set_offset(spr_player_idle, sprite_get_xoffset(spr_player_idle), sprite_get_yoffset(spr_player_idle));