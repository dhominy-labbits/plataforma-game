/// Draw Event

var amount = (ponto / ponto_max) * pontobar_h; // Fórmula para altura da barra preenchida
var x1 = (view_w -200) - (pontobar_w - 150);
var y1 = (view_h / 2) + (pontobar_h / 2);
var x2 = x1 + pontobar_w;
var y2 = y1 - amount; // Ajuste para desenhar a barra verticalmente


// Desenhar o fundo da barra
draw_set_color(color_2);
draw_rectangle(x1, (view_h / 2) - (pontobar_h / 2), x2, y1, false);

// Desenhar a barra preenchida
if (ponto > 0){
    draw_set_color(color_1);
    draw_rectangle(x1, y2, x2, y1, false);
}
