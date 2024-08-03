/// @description Insert description here

if distance_to_object(obj_keko_venda) > 15 {
	x -= velh;
} else {
	var _dialogo = instance_create_layer(x, y, "Dialogo",obj_dialogo);
		_dialogo.npc_nome = npc_nome;
		instance_create_layer(x, y, "Instance_tr", obj_cliente_esportista2);
		global.dialogo = true;
		instance_destroy();
}