/// @description Insert description here
// Primeiro, desenhe o resto do jogo normalmente
draw_self();

// Em seguida, desenhe o fade
if (fade_alpha > 0) {
    draw_set_alpha(fade_alpha);
    draw_rectangle_color(0, 0, display_get_width(), display_get_height(), c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1); // Resetar a opacidade de desenho para 1
}
