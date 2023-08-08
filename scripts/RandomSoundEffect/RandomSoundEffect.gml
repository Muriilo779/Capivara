// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function RandomSoundEffect()
{
	var _sound = irandom(2);
		switch(_sound)
		{
			case 0: 
				//Sound effect 
				audio_play_sound(ClickSoundEffect1, 1, false);
				break;
			
			case 1: 
				//Sound effect 
				audio_play_sound(ClickSoundEffect2, 1, false);
				break;
				
			case 2: 
				//Sound effect 
				audio_play_sound(ClickSoundEffect3, 1, false);
				break;
		}
}

function RandomWingSound()
{
	var _sound = irandom(2);
	switch(_sound)
	{
		case 0: 
			//Sound effect 
			audio_play_sound(WingsSoundEffect1, 1, false);
			break;
			
		case 1: 
			//Sound effect 
			audio_play_sound(WingsSoundEffect2, 1, false);
			break;
				
		case 2: 
			//Sound effect 
			audio_play_sound(WingsSoundEffect3, 1, false);
			break;
	}
}