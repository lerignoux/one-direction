/// AnglePos(distance)
/// @description AnglePos(distance)
/// @param distance

/// Returns the position found at the follow up distance on the player angle
var distance = argument[0];

dx = cos(global.angle) * distance;
dy = -1 * sin(global.angle) * distance;

return [dx, dy]