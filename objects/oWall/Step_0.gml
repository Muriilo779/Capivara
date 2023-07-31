/// @description Every frame
if(global.Pause)
{
	hspeed = 0;
	exit;
}

if (x <= -800) {
	instance_destroy();
}

