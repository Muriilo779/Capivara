/// @description Instiante the walls

//X position for the walls
var xWall = room_width + 120;


//Y position for the lower (and kinda the high) walls
var yLowWall =  irandom_range(832, 1568);

//Y position for the high wall
var yHighWall = (yLowWall - 1080) - 520;

//Creating both walls and putting them into a variable
var lowWall = instance_create_layer(xWall, yLowWall, "Walls", oWall,);
var highWall = instance_create_layer(xWall, yHighWall, "Walls", oWall);

//Instantiante the coins and putting in them a target
var coin = instance_create_layer(xWall, yLowWall, "Walls", oCoin);
coin.target = lowWall.id;

//Debug message for code supervision
show_debug_message(lowWall.y);
show_debug_message(highWall.y);

//Setting the alarm event to create another wall 
alarm[0] = room_speed * random_range(2, 3);
