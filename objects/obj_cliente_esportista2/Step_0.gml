/// @description Insert description here
if global.dialogo == false and distance_to_object(obj_keko_venda) < 350 {
	sprite_index = spr_npc_walking_d;
	x += velh;
} else if global.dialogo == false and distance_to_object(obj_keko_venda) >= 350 {
	instance_create_layer(x, y, "Instance_tr", obj_cliente_artista);
	instance_destroy();
}