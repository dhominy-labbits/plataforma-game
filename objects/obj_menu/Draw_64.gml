

//draw_set_font(fnt_menu);
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var x1 = gui_width / 2;
var y1 = gui_height /2 + 100;
var margin = 90;
var m_x = device_mouse_x_to_gui(0);
var m_y = device_mouse_y_to_gui(0);

draw_set_halign(fa_center);

// ...

for (var i = 0; i < op_max; i++){
    var y2 = y1 + (margin * i);
    var string_w = string_width(options[i]);
    var string_h = string_height(options[i]);
    
    if (point_in_rectangle(m_x, m_y, x1 - string_w /2 -30, y2 - string_h /2, x1 + string_w, y2 + string_h)){
        draw_set_color(c_black);
        index = i;
        if(mouse_check_button_pressed(mb_left)){
            if (index == 0){
				//audio_play_sound(snd_click_menu,0,0);
                room_goto(Room1);
                //instance_create_layer(0, 0, layer, obj_transicao);
                obj_player.x = 32;
                obj_player.y = 315;
				//instance_create_layer(0,0,"Instances", obj_controle2);
				instance_destroy(obj_player);
				
            }
            
            if (index == 1) {
				audio_play_sound(snd_click_menu,0,0);
				//instance_create_layer(0,0,"Instances", obj_controle2);
                if file_exists("save.sav") {
                    ini_open("save.sav");
                    // Carrega informações do jogador
                    obj_player.x = ini_read_real("Jogador", "x_atual", 0);
                    obj_player.y = ini_read_real("Jogador", "y_atual", 0);
                    room_goto(ini_read_real("Jogador", "sala_atual", 0));
                    obj_player.vida = ini_read_real("Jogador", "vida_atual", 5);

                    ini_close();
                }
            }
            
            if (index == 2){
				audio_play_sound(snd_click_menu,0,0);
                room_goto(Room2);
            }
            
            if (index == 3){
				audio_play_sound(snd_click_menu,0,0);
                game_end();
            }
        }
    } else {
        draw_set_color(c_white);
    }
    
    draw_text(x1, y2, options[i]);
}

// ...


