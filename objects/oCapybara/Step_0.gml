velv += grav;
velv = clamp(velv, -40, 20);
y += velv;

if(global.GameOver)
{
	global.Timer--;
	angle-= 6;
	angle = clamp(angle, -1080, 30);
	exit;
}

if(mouse_check_button_pressed(mb_left))
{
	velv = 0;
	velv -= 22;
}


angle = lerp(angle, -velv * 10, .05);
angle = clamp(angle, -30, 30);

