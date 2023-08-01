/// @description Check if things happened
if(room == MenuOption || room == MenuScore) 
{
	if(keyboard_check_pressed(vk_backspace))
	{
		room_goto(Menu);
	}	
}
/*
If I lose the game, and we're on the game, and the sequence didn't show up yet,
and it has passed 1 second after the player collide with the wall, create a 
sequence showing the score and option
*/
if(global.GameOver  && room = Game && sequenceVar ==  true && global.Timer <= 0)
{
	//Create the sequence
	sequenceGameOver = layer_sequence_create("Sequences", room_width / 2, room_height / 2, GameOverAnimation);
	
	//Set to false to not create 1 sentence per frame
	sequenceVar = false;
	
	//Stop textint the current score
	fontTimer = false;
}

if(deleteSequence) 
{
	//Destroy the previous sequence
	layer_sequence_destroy(sequenceGameOver);
	
	//Set ot false to be possible to create the setence again 
	deleteSequence = false;
}

//If Pressed is set to true when we pressed the PlayButtonRestart, and the restart sequence didn't show up yet
if(global.Pressed && sequenceVarRestart == true)
{
	//Create the sequence
	gameRestart = layer_sequence_create("Sequences", room_width / 2, room_height / 2, GameRestartAnimation);
	
	//1 second to restart the game
	alarm[0] = room_speed;
	
	//Set to false to not create 1 sentence per frame
	sequenceVarRestart = false;
	
	//Set to false cuz I wanto
	global.Pressed = false
	
	//Next frame we delete the sequence
	deleteSequence = true;
}
