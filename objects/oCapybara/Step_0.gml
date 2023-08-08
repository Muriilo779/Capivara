///@description Every frame 

//Gravity
velv += grav;
velv = clamp(velv, -40, 20);
y += velv;

//If I lost start to fall and spin
if(global.GameOver)
{
	global.Timer--;
	angle-= 6;
	angle = clamp(angle, -1080, 30);
	exit;
}

//If the player touch the screen go higher 
if(mouse_check_button_pressed(mb_left))
{
	RandomWingSound();
	velv = 0;
	velv -= 22;
}

//Making the Capybara change it angle when going up 
angle = lerp(angle, -velv * 10, .05);
angle = clamp(angle, -30, 30);

