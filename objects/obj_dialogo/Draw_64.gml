/// @description Insert description here
if inicializar == true {
	var _guil = display_get_gui_width() - 209;
	var _guia = display_get_gui_height();

	var _xx = 0;
	var _yy = _guia - 250;
	
	var main_text_box_heigth = 250;
	
	var main_text_box_x1 = 210;
	var main_text_box_x2 = display_get_gui_width() - 210;
	var main_text_box_y1 = display_get_gui_height() - 300;
	var main_text_box_y2 = main_text_box_y1 + main_text_box_heigth;
	var main_text_box_border_width = 5;
	
	var face_sprite_left_box_x1 = main_text_box_x1 + 31;
	var face_sprite_left_box_x2 = main_text_box_x1 + 31 + 240;
	var face_sprite_left_box_y1 = main_text_box_y1 - 164;
	var face_sprite_left_box_y2 = face_sprite_left_box_y1 + 237;

	var face_sprite_right_box_x1 = main_text_box_x2 - 31 - 240;
	var face_sprite_right_box_x2 = face_sprite_right_box_x1 + 240;
	var face_sprite_right_box_y1 = main_text_box_y1 - 164;
	var face_sprite_right_box_y2 = face_sprite_left_box_y1 + 237;
	
	var char_name_box_padding = 15;
	
	var char_name_left_box_x1 = face_sprite_left_box_x2 + 31 ;
	var char_name_left_box_x2 = char_name_left_box_x1 + (string_width(texto_grid[# Infos.Nome, pagina]) + char_name_box_padding);
	var char_name_left_box_y1 = main_text_box_y1 - 6;
	var char_name_left_box_y2 = face_sprite_left_box_y2;
	
	var char_name_right_box_x2 = face_sprite_right_box_x1 - 31 - char_name_box_padding;
	var char_name_right_box_x1 = char_name_right_box_x2 - (string_width(texto_grid[# Infos.Nome, pagina]) + char_name_box_padding);
	var char_name_right_box_y1 = main_text_box_y1 - 6;
	var char_name_right_box_y2 = face_sprite_left_box_y2;
	
	
	var _y_text_box_bottom = _guia - 50;
	
	var _c = c_black;
	var _sprite = texto_grid[# Infos.Retrato, pagina];
	var _texto = string_copy(texto_grid[# Infos.Texto, pagina],0,caractere);
	var _texto_borda = 6;
	
	var _cor_borda = $a8b5b2;
	var _cor_caixa_texto = $c7cfcc;
	var text_color = $151d28;
	
	// 73 pixels
	
	draw_set_font(pixelify);
	
	// Desenhar caixa de diálogo e fala do personagem
	draw_rectangle_color(main_text_box_x1 - main_text_box_border_width, main_text_box_y1 - main_text_box_border_width, main_text_box_x2 + main_text_box_border_width, main_text_box_y2 + main_text_box_border_width,_cor_borda, _cor_borda, _cor_borda, _cor_borda, false); // Desenhar a borda da caixa de texto
	draw_rectangle_color(main_text_box_x1,main_text_box_y1,main_text_box_x2,main_text_box_y2,_cor_caixa_texto, _cor_caixa_texto, _cor_caixa_texto, _cor_caixa_texto,false); // Desenhar caixa de texto
	draw_text_ext_color(main_text_box_x1 + 30, main_text_box_y1 + 73 + 16, _texto, 32, _guil - 264,text_color, text_color, text_color, text_color,1); // Desenhar fala na caixa de texto

	// Desenhar diálogo com o face sprite do lado esquerdo
	if texto_grid[# Infos.Lado,pagina] == 0 {
		
		// Desenha a caixa do face sprite + sprite
		draw_rectangle_color(face_sprite_left_box_x1 - main_text_box_border_width, face_sprite_left_box_y1 - main_text_box_border_width, face_sprite_left_box_x2 + main_text_box_border_width, face_sprite_left_box_y2 + main_text_box_border_width, _cor_borda, _cor_borda, _cor_borda, _cor_borda, false); // Desenhar a borda da caixa do rosto
		draw_rectangle_color(face_sprite_left_box_x1, face_sprite_left_box_y1, face_sprite_left_box_x2 , face_sprite_left_box_y2, _cor_caixa_texto, _cor_caixa_texto, _cor_caixa_texto, _cor_caixa_texto,false); // Desenhar caixa do rosto
		draw_sprite_ext(_sprite, 0, face_sprite_left_box_x1, face_sprite_left_box_y1, 1, 1, 0, c_white, 1); // Desenhar sprite de rosto
		
		// Desenha a caixa do nome do personagem + nome
		draw_rectangle_color(char_name_left_box_x1 - main_text_box_border_width, char_name_left_box_y1 - main_text_box_border_width, char_name_left_box_x2 + char_name_box_padding + main_text_box_border_width, char_name_left_box_y2 + main_text_box_border_width, _cor_borda, _cor_borda, _cor_borda, _cor_borda, false); // Desenhar a borda da caixa do rosto
		draw_rectangle_color(char_name_left_box_x1, char_name_left_box_y1, char_name_left_box_x2 + char_name_box_padding, char_name_left_box_y2, _cor_caixa_texto, _cor_caixa_texto, _cor_caixa_texto, _cor_caixa_texto,false); // Desenhar caixa do rosto
		draw_text_color(char_name_left_box_x1 + char_name_box_padding, char_name_left_box_y1 + char_name_box_padding, texto_grid[# Infos.Nome, pagina],text_color, text_color, text_color, text_color, 1); // Desenhar nome do personagem
		
		
	} // Desenhar diálogo com o face sprite do lado direito
	else {
		
		// Desenha a caixa do face sprite + sprite
		draw_rectangle_color(face_sprite_right_box_x1 - main_text_box_border_width, face_sprite_right_box_y1 - main_text_box_border_width, face_sprite_right_box_x2 + main_text_box_border_width, face_sprite_right_box_y2 + main_text_box_border_width, _cor_borda, _cor_borda, _cor_borda, _cor_borda, false); // Desenhar a borda da caixa do rosto
		draw_rectangle_color(face_sprite_right_box_x1, face_sprite_right_box_y1, face_sprite_right_box_x2 , face_sprite_right_box_y2, _cor_caixa_texto, _cor_caixa_texto, _cor_caixa_texto, _cor_caixa_texto,false); // Desenhar caixa do rosto
		draw_sprite_ext(_sprite, 0, face_sprite_right_box_x1, face_sprite_right_box_y1, 1, 1, 0, c_white, 1); // Desenhar sprite de rosto
		
		//var _stgw = string_width(texto_grid[# Infos.Nome, pagina]); // Calcula largura do nome do personagem
		//draw_text(_guil - 16 - _stgw, _yy - 32, texto_grid[# Infos.Nome, pagina]); // Desenhar nome do personagem
		
		// Desenha a caixa do nome do personagem + nome
		draw_rectangle_color(char_name_right_box_x1 - main_text_box_border_width, char_name_right_box_y1 - main_text_box_border_width, char_name_right_box_x2 + char_name_box_padding + main_text_box_border_width, char_name_right_box_y2 + main_text_box_border_width, _cor_borda, _cor_borda, _cor_borda, _cor_borda, false); // Desenhar a borda da caixa do rosto
		draw_rectangle_color(char_name_right_box_x1, char_name_right_box_y1, char_name_right_box_x2 + char_name_box_padding, char_name_right_box_y2, _cor_caixa_texto, _cor_caixa_texto, _cor_caixa_texto, _cor_caixa_texto,false); // Desenhar caixa do rosto
		draw_text_color(char_name_right_box_x1 + char_name_box_padding, char_name_right_box_y1 + char_name_box_padding, texto_grid[# Infos.Nome, pagina],text_color, text_color, text_color, text_color, 1); // Desenhar nome do personagem
	}
	
	if op_draw == true { //Verifica se existem opções a serem produzidas
		var _opx = _xx + 32;
		var _opy = main_text_box_y1 - 65; // Altura da primeira opção
		var _opsep = 65; // Separação entre as opções
		var _op_borda = 6;
		
		var _op_width = 0;
		
		for (var i = 0; i< op_num; i++) {
			if string_width(op[i]) > _op_width {
				_op_width = string_width(op[i]);
			}
		}
		_op_width += _op_borda;
		
		op_selecionada += keyboard_check_pressed(ord("W")) - keyboard_check_pressed(ord("S"));
		op_selecionada = clamp(op_selecionada, 0, op_num - 1);
		
		for (var i = 0; i< op_num; i++) {
			//var _stringw = string_width(op[i]);
			var _stringh = string_height(op[i]);
			
			var op_box_x2 = main_text_box_x2;
			var op_box_x1 = main_text_box_x2 - _op_width;
			var op_box_y1 = _opy - (_opsep * i);
			var op_box_y2 = op_box_y1 + _stringh;
			
			// Desenha a janela das opções
			draw_rectangle_color(op_box_x1 - main_text_box_border_width, op_box_y1 - main_text_box_border_width, op_box_x2 + main_text_box_border_width, op_box_y2 + main_text_box_border_width, _cor_borda, _cor_borda, _cor_borda, _cor_borda, false)
			draw_rectangle_color(op_box_x1, op_box_y1,op_box_x2, op_box_y2, _cor_caixa_texto, _cor_caixa_texto, _cor_caixa_texto, _cor_caixa_texto, false);
			
			// Desenha o texto das opções
			draw_text_color(op_box_x1 + _op_borda, op_box_y1, op[i],text_color, text_color, text_color, text_color, 1);
			
			if op_selecionada == i {
				// Desenha o sprite do seletor de opção
				draw_sprite_ext(spr_option_selector, 0, op_box_x1 - 0, _opy - (_opsep * i) + 20, 6, 6, 315, c_white, 1)
			}
		}
		
		if keyboard_check_pressed(ord("F")) { // Escolher uma opção
		show_debug_message("Apertou F");
		var _dialogo = instance_create_layer(x, y, "Dialogo",obj_dialogo);
		_dialogo.npc_nome = op_resposta[op_selecionada];
		
		instance_destroy();
	}
	}
}