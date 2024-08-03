/// Step Event
/// @description Detecta os inputs

script_execute(estado);

// Combate
if (alarm[0] > 0) {
    if (image_alpha >= 1) {
        alfa_hit = -0.08;
    } else if (image_alpha <= 0) {
        alfa_hit = 0.05;
    }
    image_alpha += alfa_hit;
} else {
    image_alpha = 1;
}

// Morte//
if (vida <= 0 && !instance_exists(obj_game_over_screen)) {
  instance_create_layer(0, 0, "Instance_tr", obj_game_over_screen); // Cria a tela de "Game Over"
}

#region Diálogo
if distance_to_object(obj_par_npc) <= 10 {
	if keyboard_check_pressed(ord("F")) and global.dialogo == false {
		show_debug_message("Apertou F");
		var _npc = instance_nearest(x, y, obj_par_npc);
		var _dialogo = instance_create_layer(x, y, "Dialogo",obj_dialogo);
		_dialogo.npc_nome = _npc.nome;
	}
}
#endregion


// Verificar todos os objetos obj_caramelo na sala
var nearest_caramelo = instance_nearest(x, y, obj_caramelo);

// Verificar se a distância ao obj_caramelo é menor ou igual a 15
if (nearest_caramelo != noone && point_distance(x, y, nearest_caramelo.x, nearest_caramelo.y) <= 15) {
    // Verificar se a tecla F foi pressionada
    if (keyboard_check_pressed(ord("F"))) {
        // Destruir o objeto pelo ID
        with (nearest_caramelo) {
            instance_destroy(inst_2A9AF8DA);
        }
    }
}