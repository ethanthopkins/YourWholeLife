#macro CARDINAL_DIR round(oLouis.playerDirection/90)
global.playerPaused = false;
room = rBunker;

//TEXT
global.oldLine = 0;
global.justForShow = false;
global.windowWidth = window_get_width();
global.windowHeight = window_get_height();
global.slow = .15;
global.medium = .25;
global.fast = .5;