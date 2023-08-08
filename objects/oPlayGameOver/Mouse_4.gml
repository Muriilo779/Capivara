/// @description Restart all the variables to be possible to executte the sequence again
//if the button get to the final of the instance
if(timer <= 0)
{
	global.GameOver = false;
	oGameControl.sequenceVar = true;
	global.Timer = room_speed * 1;
	global.Pressed = true;

	//Play sound effect 
	RandomSoundEffect();
}