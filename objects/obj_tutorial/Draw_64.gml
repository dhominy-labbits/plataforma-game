/// @description Insert description here
if inicializar == true {
    var _gui_width = display_get_gui_width();
    var _gui_height = display_get_gui_height();

    var main_text_box_width = 600;
    var main_text_box_heigth = 250;

    var main_text_box_x1 = (_gui_width - main_text_box_width) / 2;
    var main_text_box_x2 = main_text_box_x1 + main_text_box_width;
    var main_text_box_y1 = (_gui_height - main_text_box_heigth) / 2;
    var main_text_box_y2 = main_text_box_y1 + main_text_box_heigth;
    var main_text_box_border_width = 5;

    var _texto = string_copy(texto_grid[# Infos.Texto, pagina], 0, caractere);
    var _texto_borda = 6;

    var _cor_borda = $a8b5b2;
    var _cor_caixa_texto = $c7cfcc;
    var text_color = $151d28;

    draw_set_font(pixelify);

    // Desenhar caixa de diálogo e fala do personagem
    draw_rectangle_color(main_text_box_x1 - main_text_box_border_width, main_text_box_y1 - main_text_box_border_width, main_text_box_x2 + main_text_box_border_width, main_text_box_y2 + main_text_box_border_width, _cor_borda, _cor_borda, _cor_borda, _cor_borda, false); // Desenhar a borda da caixa de texto
    draw_rectangle_color(main_text_box_x1, main_text_box_y1, main_text_box_x2, main_text_box_y2, _cor_caixa_texto, _cor_caixa_texto, _cor_caixa_texto, _cor_caixa_texto, false); // Desenhar caixa de texto
    draw_text_ext_color(main_text_box_x1 + 30, main_text_box_y1 + 30, _texto, 32, main_text_box_width - 60, text_color, text_color, text_color, text_color, 1); // Desenhar fala na caixa de texto
	
	// Desenhar sprite animado no canto inferior direito
    var sprite_x = main_text_box_x2 - sprite_get_width(spr_next_indicator) - 10;
    var sprite_y = main_text_box_y2 - sprite_get_height(spr_next_indicator) - 10;
    draw_sprite(spr_next_indicator, 0, sprite_x, sprite_y);
}
