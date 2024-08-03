
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var x1 = 240;
var y1 = 208 + 175 + 100;

var btn_width = 324;
var btn_heigth = 64;
var btn_shadow_offset = 6;
var btn_spacing = 15 + btn_shadow_offset;

var btn_color = make_color_rgb(222,158,65);
var btn_shadow_color = $402751;

var text_color = $7a367b;

var creditos_titulo_cor = c_white;
var creditos_nomes_cor = c_white;

var margin = 90;
var m_x = device_mouse_x_to_gui(0);
var m_y = device_mouse_y_to_gui(0);

var creditos_x = (gui_width / 2);
var creditos_y = (gui_height / 2 - 100);
var creditos_nomes_espaco = 48;

//draw_set_halign(fa_center);

// Desenhar logotipo
var logo_x = 240;
var logo_y = 208;

draw_set_font(logo_menu);
//draw_text_color(logo_x, logo_y, "KEKOCADA", btn_color, btn_color, btn_color, btn_color, 1);

draw_set_font(pixelify);

// Listar as opções

for (var i = 0; i < op_max; i++){
    var y2 = y1 + (margin * i);
	
	var btn_x2 = x1 + btn_width;
	var btn_y1 = y1 + ((btn_heigth + btn_spacing) * i);
	var btn_y2 = btn_y1 + btn_heigth;
	
	var btn_shadow_x2 = btn_x2 + btn_shadow_offset;
	var btn_shadow_y2 = btn_y2 + btn_shadow_offset;
	
    var string_w = string_width(options[i]);
    var string_h = string_height(options[i]);
	
	//Desenhar o quadrado da sombra
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_rectangle_color(x1, btn_y1, btn_shadow_x2, btn_shadow_y2, btn_shadow_color, btn_shadow_color, btn_shadow_color, btn_shadow_color, false);
	
	// Desenhar o quadrado do botão
	draw_rectangle_color(x1, btn_y1, btn_x2, btn_y2, btn_color, btn_color, btn_color, btn_color, false);
    
	// Verificar se o mouse está hovering
	if (point_in_rectangle(m_x, m_y, x1, btn_y1, btn_x2, btn_y2)){
        draw_set_color(c_black);
        index = i;
		
		//Verificar se o player clica nessa opção
        if(mouse_check_button_pressed(mb_left)){
			
            if (index == 0){ // Novo jogo
				//audio_play_sound(snd_click_menu,0,0);
				if (!instance_exists(obj_fade)){
				var _targetRoom = Room1;
				Fade(_targetRoom,60,c_black);
				}
                room_goto(Room1);
                //instance_create_layer(0, 0, layer, obj_transicao);
                obj_player.x = 32;
                obj_player.y = 315;
				//instance_create_layer(0,0,"Instances", obj_controle2);
				instance_destroy(obj_player);
				
            }
            
            if (index == 1) { // Carregar jogo
				audio_play_sound(snd_click_menu,0,0);
				//instance_create_layer(0,0,"Instances", obj_controle2);
             //   if file_exists("save.sav") {
               //     ini_open("save.sav");
                    // Carrega informações do jogador
					
               //     obj_player.x = ini_read_real("Jogador", "x_atual", 0);
               //     obj_player.y = ini_read_real("Jogador", "y_atual", 0);
                //    room_goto(ini_read_real("Jogador", "sala_atual", 0));
                 //   obj_player.vida = ini_read_real("Jogador", "vida_atual", 5);
					

                   // ini_close();
					
               // }
            }
            
            if (index == 2){ //Créditos
				audio_play_sound(snd_click_menu,0,0);
                if mostrando_creditos == false {
					mostrando_creditos = true;
				} else {
					mostrando_creditos = false;
				}
            }
            
            if (index == 3){ // Créditos
				audio_play_sound(snd_click_menu,0,0);
                game_end();
            }
        }
    } else {
        draw_set_color(text_color);
    }
    
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
    // Desenha das palavras dos botões do Menu
	draw_text(x1 + btn_width /2, btn_y2 - (btn_heigth / 2), options[i]);
	
	// Desenhar os créditos, se true
	if mostrando_creditos == true {
		draw_text_color(creditos_x, creditos_y,"Design", creditos_titulo_cor, creditos_titulo_cor, creditos_titulo_cor, creditos_titulo_cor, 1);
		draw_text_color(creditos_x, creditos_y + (1 * creditos_nomes_espaco),"Gab Santos", creditos_nomes_cor, creditos_nomes_cor, creditos_nomes_cor, creditos_nomes_cor, 1);
		draw_text_color(creditos_x, creditos_y + (2 * creditos_nomes_espaco),"Dante Martins", creditos_nomes_cor, creditos_nomes_cor, creditos_nomes_cor, creditos_nomes_cor, 1);
		draw_text_color(creditos_x, creditos_y + (3 * creditos_nomes_espaco),"Oliver Brito", creditos_nomes_cor, creditos_nomes_cor, creditos_nomes_cor, creditos_nomes_cor, 1);
		
		draw_text_color(creditos_x, creditos_y + (5 * creditos_nomes_espaco),"Programação", creditos_titulo_cor, creditos_titulo_cor, creditos_titulo_cor, creditos_titulo_cor, 1);
		draw_text_color(creditos_x, creditos_y + (6 * creditos_nomes_espaco),"Dhominy Murilo", creditos_nomes_cor, creditos_nomes_cor, creditos_nomes_cor, creditos_nomes_cor, 1);
		draw_text_color(creditos_x, creditos_y + (7 * creditos_nomes_espaco),"Luis Santos", creditos_nomes_cor, creditos_nomes_cor, creditos_nomes_cor, creditos_nomes_cor, 1);
		
	}
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

// ...


