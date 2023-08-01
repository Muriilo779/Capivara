/// @description Check for the target
if (instance_exists(target)) 
{
	x = target.x;
} 
else 
{
	instance_destroy();
}

if(global.GameOver) instance_destroy();