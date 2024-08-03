/// @description Insert description here
// Evento Step
if (fading_out) {
    fade_alpha += fade_speed;
    if (fade_alpha >= 1) {
        fade_alpha = 1;
        if global.clientes_satisfeitos < 4 {
			show_debug_message("Falhou");
			var _dialogo = instance_create_layer(x, y, "Dialogo",obj_tutorial);
			_dialogo.npc_nome = "pontuacao_final_falha";
			instance_destroy();
		} else {
			show_debug_message("Acertou");
			var _dialogo = instance_create_layer(x, y, "Dialogo",obj_tutorial);
			_dialogo.npc_nome = "pontuacao_final_sucesso";
			instance_destroy();
		}
    }
}
