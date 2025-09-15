global.player_turn := false;

global.white_captures := [];
global.black_captures := [];


_gui_width := display_get_gui_width();
_gui_height := display_get_gui_height();

check := false;
mate := false;

checking := noone;
global.checking_check := false;

chesson_gen();