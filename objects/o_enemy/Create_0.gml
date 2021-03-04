/// @description 

// Inherit the parent event
event_inherited();

active = false;
level.on_player_move.add(function(npos) {
	if (npos.x == pos.x && npos.y == pos.y) {
		active = true;
		sprite_index = BEHELIT_SCREAM;
		with game_area.GetObject(new vec2(pos.x + 1, pos.y + 0))
			if (object_index != o_player) Step(new vec2(1, 0))
		with game_area.GetObject(new vec2(pos.x - 1, pos.y + 0))
			if (object_index != o_player) Step(new vec2(-1, 0))
		with game_area.GetObject(new vec2(pos.x + 0, pos.y + 1))
			if (object_index != o_player) Step(new vec2(0, 1))
		with game_area.GetObject(new vec2(pos.x + 0, pos.y - 1))
			if (object_index != o_player) Step(new vec2(0, -1))
	}
})