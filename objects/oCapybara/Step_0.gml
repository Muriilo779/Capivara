
velv += grav;
velv = clamp(velv, -40, 20);
y += velv;

angle = lerp(angle, -velv * 10, .05);
angle = clamp(angle, -30, 30);
