/// @description 

// Inherit the parent event
event_inherited();

image_xscale = sign(o_player.x - x);
dialoge = new Dialoge([]);
func = undefined;
level.on_player_move.add(function (npos) {
	if (abs(npos.x - pos.x) <= 0 ||
		abs(npos.y - pos.y) <= 0) &&
		abs(npos.x - pos.x) <= 1 &&
		abs(npos.y - pos.y) <= 1 {
			ShowDialoge(dialoge, func);
		}
})