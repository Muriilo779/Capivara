/// @description GUI layer
if(room = Game)
{
	draw_set_font(font);
	draw_set_halign(fa_center);
	
	draw_text_ext_transformed(room_width / 2, 100, global.TotalCoins, 0, 9999, 1.5, 1.5,0);
	
	draw_set_font(-1);
	draw_set_halign(-1);
}

if(room == MenuScore)
{
	draw_set_font(font);
	draw_set_halign(fa_center);
	
	draw_text_ext_transformed(room_width / 2, 100, maxScore, 0, 9999, 1.5, 1.5,0);
	
	draw_set_font(-1);
	draw_set_halign(-1);
}