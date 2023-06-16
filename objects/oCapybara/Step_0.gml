
vspeed = vspeed + 0.5;
vspeed = clamp(vspeed, -20, 20);

angle = lerp(angle, -vspeed * 10, .1);
angle = clamp(angle, -30, 30);
