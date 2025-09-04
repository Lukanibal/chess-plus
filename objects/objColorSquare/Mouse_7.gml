global.game_color := color;

ini_open("settings.ini");
ini_write_real("SETTINGS", "COLOR", global.game_color);
ini_close();