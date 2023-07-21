/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(room == Menu || room == Game) exit;

if(keyboard_check_pressed(vk_backspace))
{
	room_goto(Menu)
}
