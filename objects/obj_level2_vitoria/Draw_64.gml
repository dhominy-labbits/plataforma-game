// Coordenadas e tamanhos
var largura = display_get_gui_width();
var altura = display_get_gui_height();
var escala = 1.5;
var retangulo_largura = 300 * escala;
var retangulo_altura = 100 * escala;
var botao_largura = 150 * escala;
var botao_altura = 50 * escala;

// Coordenadas do retângulo principal
var x1 = (largura / 2) - (retangulo_largura / 2);
var y1 = (altura / 2) - (retangulo_altura / 2);
var x2 = x1 + retangulo_largura;
var y2 = y1 + retangulo_altura;

// Coordenadas do botão
var bx1 = (largura / 2) - (botao_largura / 2);
var by1 = y2 + 20;
var bx2 = bx1 + botao_largura;
var by2 = by1 + botao_altura;

// Desenhar retângulo principal
draw_set_color(c_gray);
draw_rectangle(x1, y1, x2, y2, false);

// Desenhar mensagem dentro do retângulo principal
draw_set_color(c_white);
draw_set_font(pixelify_gameover);
draw_text((largura / 2) - (string_width(mensagem) / 2), (altura / 2) - (string_height(mensagem) / 2), mensagem);

// Desenhar botão
draw_set_color(c_ltgrey);
draw_rectangle(bx1, by1, bx2, by2, false);

// Desenhar mensagem do botão
draw_set_color(c_black);
draw_text((largura / 2) - (string_width(botao_mensagem) / 2), by1 + (botao_altura / 2) - (string_height(botao_mensagem) / 2), botao_mensagem);
