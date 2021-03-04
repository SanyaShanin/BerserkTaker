/// @description 
area = game_area.id;


InitPos = function() {
	pos = new vec2((x - game_area.x) div game_area.cell.x, (y - game_area.y) div game_area.cell.y);
	pos.x = clamp(pos.x, 0, game_area.size.x);
	pos.y = clamp(pos.y, 0, game_area.size.y);
	mypos = game_area.GetRealPos(pos);
	prpos = pos.Copy();
}
InitPos();

step = 1;
nextcommand = noone;

function Collise() {
	show_debug_message("collise")
}

function Step(dpos) {
	if (step < 1) {
		nextcommand = dpos;
		return;
	} 
	
	if (dpos.x != 0) {
		image_xscale = sign(dpos.x);
	}
	if (pos.x + dpos.x < 0) {
		Collise();
		return false;
	}
	if (pos.y + dpos.y < 0) {
		Collise();
		return false;
	}
	if (pos.x + dpos.x > game_area.size.x) {
		Collise();
		return false;
	}
	if (pos.y + dpos.y > game_area.size.y) {
		Collise();
		return false;
	}
	npos = new vec2(pos.x + dpos.x, pos.y + dpos.y);
	with obj {
		if (self.id != other.id) 
		if (pos.x == other.npos.x && pos.y == other.npos.y) {
			other.Collise();
			return false;
		}
	}
	step = 0;
	pos.x += dpos.x;
	pos.y += dpos.y;
	return true;
}