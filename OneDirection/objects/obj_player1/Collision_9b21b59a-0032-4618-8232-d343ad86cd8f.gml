/// @description Collision with fences & jumpables

show_debug_message("Action " + current_action + ", " + string(action));


if (running && current_action != "jumping" || !action)
{
	speed = 0;
	failure();
}