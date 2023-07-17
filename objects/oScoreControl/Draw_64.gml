/// @description GUI layer
if(room = Game)
{
	draw_set_font(fSugarPunch)
	draw_text_ext_transformed_color(540 - font_get_size(fSugarPunch), 20, global.TotalCoins, 1, 1000, 3, 3, 1, c_black, c_black, c_black, c_black, 1);
	//draw_text_ext_transformed_color(20, 50, maxScore, 1, 1000, 3, 3, 1, c_black, c_black, c_black, c_black, 1);
	draw_set_font(-1)
}