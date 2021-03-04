/// @description 

if (step < 1) {
	step += delta_time * 0.000001 / 0.15;
	step = min(1, step);
	var f = 1 - sqr(1 - step);
	var cpos = new vec2(lerp(prpos.x, pos.x, f), lerp(prpos.y, pos.y, f));
	mypos = game_area.GetRealPos(cpos);
	
	if (step >= 1) {
		prpos = pos.Copy();
		if (is_struct(nextcommand)) {
			Step(nextcommand);
			nextcommand = noone;
		}
	}
}

x = mypos.x;
y = mypos.y;