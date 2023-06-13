/// @description Check for the target
if (instance_exists(target)) 
{
	x = target.x;
} 
else 
{
	instance_destroy();
}