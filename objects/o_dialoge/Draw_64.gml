/// @description 

if (!is_struct(mess)) {
	mess = dialoge.Next()
	if (!is_struct(mess)) {
		if (func != undefined)
			func();
		instance_destroy();
		exit;
	}
}

draw_set_font(f_norm);
draw_sprite_ext(mess.sprite, current_time * 0.001 * 24, window_get_width()/2 + window_get_width() * 0.4 * sign(mess.side - 0.5), window_get_height(), 4 * sign(0.5 - mess.side), 4, 0, c_white, 1);
for(var i = 0; i < window_get_width(); i+= 64)
	draw_sprite(s_dialoge, -1, i, window_get_height() - 64);
draw_text(10, window_get_height() - 40, mess.text);

if (keyboard_check_pressed(vk_space)) {
	mess = noone;
}

