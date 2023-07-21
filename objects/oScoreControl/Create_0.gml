/// @description Start some variable 
//global variable to count the coins 
global.TotalCoins = 0;

//Variable to store the best score 
maxScore = 0;
device_mouse_dbclick_enable(false);
fontMap = "0123456789";
font = font_add_sprite_ext(sNumbers, fontMap, false, 1);
