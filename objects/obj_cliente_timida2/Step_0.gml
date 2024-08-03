/// @description Insert description here
if global.dialogo == false and distance_to_object(obj_keko_venda) < 350 {
	sprite_index = spr_npc_walking_d;
	x += velh;
} else if global.dialogo == false and distance_to_object(obj_keko_venda) >= 350 {
	// Analisar se player venceu
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
	instance_destroy();
}