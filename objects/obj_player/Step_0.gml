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