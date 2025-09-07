/// @description Capture async events from NekoPresence.

var ev_type = async_load[? "event_type"];

if (ev_type == "DiscordReady")
{
	global.discord_initialized = true;
	ready := true;
	
	np_setpresence("In Chess+", "Messing around in menus");
}