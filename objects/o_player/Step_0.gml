/// @description 

event_inherited()

if (keyboard_check_pressed(ord("D"))) {
	level.on_player_move.invoke(new vec2(pos.x + 1, pos.y + 0));
	Step(new vec2(1, 0));
}

if (keyboard_check_pressed(ord("A"))) {
	level.on_player_move.invoke(new vec2(pos.x - 1, pos.y + 0));
	Step(new vec2(-1, 0));
}

if (keyboard_check_pressed(ord("W"))) {
	level.on_player_move.invoke(new vec2(pos.x + 0, pos.y - 1));
	Step(new vec2(0, -1));
}

if (keyboard_check_pressed(ord("S"))) {
	level.on_player_move.invoke(new vec2(pos.x + 0, pos.y + 1));
	Step(new vec2(0, 1));
}