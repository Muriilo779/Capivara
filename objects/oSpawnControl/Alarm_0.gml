if(!global.GameOver)
{
	//Setting the alarm event to create another wall 
	alarm[0] = room_speed * random_range(1.25, 2.0);
}
else exit;
/// @description Instiante the walls if we are in the game itself
//X position for the walls
var xWall = room_width + 120;


//Y position for the lower (and kinda the high) walls
var yLowWall =  irandom_range(940, 1632);
var yHighWall = (yLowWall - 1080) -  844;

var candyLow = instance_create_layer(xWall, yLowWall, "Walls", oWallTop);
var candyHigh = instance_create_layer(xWall, yHighWall + 1080, "Walls", oWallTop);
//Creating both walls and putting them into a variable
var lowWall = instance_create_layer(candyLow.x, yLowWall, "Walls", oWall,);
var highWall = instance_create_layer(candyHigh.x, yHighWall, "Walls", oWall);

//Creating both top wall

//Instantiante the coins and putting in them a target
var coin = instance_create_layer(xWall, yLowWall, "Walls", oCoin);
coin.target = lowWall.id;

//Debug message for code supervision
show_debug_message(lowWall.y);
show_debug_message(highWall.y);
