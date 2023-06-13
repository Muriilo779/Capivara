/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var xWall = room_width + 120;

var yLowWall =  irandom_range(832, 1568);

var lowWall = instance_create_layer(xWall, yLowWall, "Walls", oWall,);
var highWall = instance_create_layer(xWall, (yLowWall - 1080) - 520 , "Walls", oWall);

show_debug_message(lowWall.y);
show_debug_message(highWall.y);
alarm[0] = room_speed * random_range(2, 3);