/// @description GUI layer
//Write the current score 
if(room = Game)
{
	if(!global.GameOver && fontTimer == true)
	{
		//Set the fonts atributtes 
		draw_set_font(font);
		draw_set_halign(fa_center);
		
		//Draw Score
		draw_text_ext_transformed(room_width / 2, 100, global.TotalCoins, 0, 9999, 1.5, 1.5,0);
		
		//Reset
		draw_set_font(-1);
		draw_set_halign(-1);
	}
}
//If the player collided with the wall, and it has been one second, and we're into the game
if(global.GameOver && global.Timer <= -room_speed * 1 && room = Game)
{
	//Set the fonts atributtes
	draw_set_font(fNoteToSelf);
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	
	//Draw the Record pontuation in the end game screen
	draw_text_ext_transformed(room_width / 2, 135, maxScore, 0, 9999, 1, 1,0);
	
	//Draw the score we did in the gameplay
	draw_text_ext_transformed(room_width / 2, 305, global.TotalCoins, 0, 9999, 1, 1,0);
	
	//Reset font atributtes
	draw_set_color(-1);
	draw_set_font(-1);
	draw_set_halign(-1);
}