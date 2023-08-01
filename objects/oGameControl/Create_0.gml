/// @description Start some variable 

//Global variable to count the coins 
global.TotalCoins = 0;

//Global variable to count when the text can show up in the gameOver 
global.Timer = room_speed * 1;

//Global variable to check if we pressed the playButtonGameOver
global.Pressed = -1;

//Global variable to check if the player has collided with the walls  
global.GameOver = false;

//Variable to store the best score 
maxScore = 0;

//Don't allow double clicks
device_mouse_dbclick_enable(false);

//Setting font
fontMap = "0123456789";
font = font_add_sprite_ext(sNumbers, fontMap, false, 1);

//Variables control to the sequences
sequenceVar = true;
sequenceVarRestart = true;

//Variable to control the font score, set to false if we lose and set to true if we clicked play again
fontTimer = true;

//Variable to control if we can delete the gameover sequence
deleteSequence = false