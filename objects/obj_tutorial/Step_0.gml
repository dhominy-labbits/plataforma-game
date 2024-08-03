/// @description Insert description here
if inicializar == false {
    scr_textos();
    inicializar = true;
    alarm[1] = 1;
}

if caractere < string_length(texto_grid[# Infos.Texto, pagina]) {
    if (mouse_check_button_pressed(mb_left)) {
        caractere = string_length(texto_grid[# Infos.Texto, pagina]);
    }
} else {
    show_debug_message("Próximo");
    
    if pagina < ds_grid_height(texto_grid) - 1 { // Verifica se ainda há páginas de diálogo
        if (mouse_check_button_pressed(mb_left)) {
            alarm[1] = 1;
            caractere = 0;
            pagina++;
        }
    } else {
        if op_num != 0 {
            op_draw = true;
        } else {
            if (mouse_check_button_pressed(mb_left)) {
                alarm_set(0, 3);
            }
        }
    }
}
