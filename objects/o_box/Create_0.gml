/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

level.on_player_move.add(function (npos) {
	if (npos.x == pos.x && npos.y == pos.y) {
		instance_destroy();
	}
})