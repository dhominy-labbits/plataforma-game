// Coordenadas e tamanhos
var largura = display_get_gui_width();
var altura = display_get_gui_height();
var escala = 1.5;
var botao_largura = 150 * escala;
var botao_altura = 50 * escala;

// Coordenadas do botão
var bx1 = (largura / 2) - (botao_largura / 2)+100;
var by1 = (altura / 2) + 60; // Ajuste necessário para refletir a posição correta do botão
var bx2 = bx1 + botao_largura+100;
var by2 = by1 + botao_altura;

// Verificar se o clique foi dentro das coordenadas do botão
if (device_mouse_x_to_gui(0) >= bx1 && device_mouse_x_to_gui(0) <= bx2 && device_mouse_y_to_gui(0) >= by1 && device_mouse_y_to_gui(0) <= by2) {
    // Trocar para a próxima sala (substitua "sala_proxima" pelo nome da sua sala)
	if (!instance_exists(obj_fade)){
				var _targetRoom = Room3;
				Fade(_targetRoom,60,c_black);
				}
    room_goto(Room3);
}
