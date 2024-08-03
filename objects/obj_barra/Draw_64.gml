/// Draw GUI Event

// Cálculo da altura da barra preenchida
var amount = (ponto / ponto_max) * pontobar_h; 
// Ajusta a posição inicial da barra para a direita
var x1 = (view_w) - (pontobar_w ) +1250; // Ajuste a posição conforme necessário
var y1 = (view_h / 2) + (pontobar_h / 2);
var x2 = x1 + pontobar_w;
var y2 = y1 - amount; // Ajuste para desenhar a barra verticalmente

// Desenhar o fundo da barra
draw_set_color(color_2);
draw_rectangle(x1, (view_h / 2) - (pontobar_h / 2), x2, y1 +200, false);

// Desenhar a barra preenchida
if (ponto > 0) {
    draw_set_color(color_1);
    draw_rectangle(x1, y2, x2, y1+200, false);
}
