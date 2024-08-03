/// @description Insert description here
// Variáveis de texto
var texto_superior = "Você venceu";
var texto_meio = "Você é uma pessoa com talento para vendas! Continue investindo nisto!";
var texto_inferior = "Pressioneo X no canto superior direito da janela para sair";

// Definir cor do texto
draw_set_color(c_black);

// Definir fonte
draw_set_font(pixelify);

// Definir alinhamento do texto
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Calcular posições
var largura_tela = display_get_width();
var altura_tela = display_get_height();

var posicao_superior_y = altura_tela * 0.2;
var posicao_meio_y = altura_tela * 0.5;
var posicao_inferior_y = altura_tela * 0.8;

// Desenhar textos
draw_text(largura_tela / 2, posicao_superior_y, texto_superior);
draw_text(largura_tela / 2, posicao_meio_y, texto_meio);
draw_text(largura_tela / 2, posicao_inferior_y, texto_inferior);

// Checar se qualquer tecla foi pressionada para sair do jogo
//if (keyboard_check_pressed(vk_anykey)) {
//	game_end();
//}

//if pode_fechar == false {
//	pode_fechar = true;
//	alarm[0] = 60 * 2;
//}

