/// @description 
cell = new vec2(64, 48);
size = new vec2(sprite_width div cell.x, sprite_height div cell.y);

function GetRealPos(pos) {
	return new vec2(x + (pos.x + 0.5) * cell.x, y + (pos.y + 0.5) * cell.y);
}
function GetObject(cpos) {
	with obj {
		if (cpos.x == pos.x && cpos.y == pos.y) {
			show_debug_message(id);
			return id;
		}
	}
	return noone;
}