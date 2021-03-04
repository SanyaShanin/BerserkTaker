// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function vec2(x, y) constructor {
	if (x == undefined) {
		x = 0;
	}
	if (y == undefined) {
		y = x;
	}
	self.x = x;
	self.y = y;
	
	function Copy() {
		return new vec2(x, y);
	}
}

function Dialoge(messages) constructor {
	self.messages = messages;
	i = 0;
	
	function Next() {
		if (i < array_length(self.messages)) {
			i++;
			return self.messages[i - 1];
		}
		else {
			return noone;
		}
	}
}

function Message(sprite, side, text) constructor {
	self.sprite = sprite;
	self.text = text;
	self.side = side;
}

function ShowDialoge(dialoge, func) {
	var o = instance_create_depth(0, 0, 0, o_dialoge);
	o.dialoge = dialoge;
	o.func = func;
}

function Delegate() constructor {
	subscribers = [];
	
	add = function(sub) {
		for(var i = 0; i < array_length(subscribers); i++) {
			if (subscribers[i] == sub) return;
		}
		subscribers[array_length(subscribers)] = sub;
	}
	
	remove = function(sub) {
		var subs = [];
		for(var i = 0; i < array_length(subscribers); i++) {
			if (subscribers[i] == sub) continue;
			subs[array_length(subs)] = subscribers[i];
		}
		subscribers = subs;
	}
	
	clear = function() {
		subscribers = [];
	}
	
	invoke = function(args) {
		for(var i = 0; i < array_length(subscribers); i++) {
			if (is_method(subscribers[i])) subscribers[i](args);
		}
	}
	
	execute = invoke;
	exec = invoke;
	call = invoke;
}