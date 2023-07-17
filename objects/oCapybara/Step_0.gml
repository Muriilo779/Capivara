if(mouse_check_button_pressed(mb_left))
{
	velv = 0;
	velv -= 27;
}

velv += grav;
velv = clamp(velv, -40, 20);
y += velv;

angle = lerp(angle, -velv * 10, .05);
angle = clamp(angle, -30, 30);

