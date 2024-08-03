/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Tocar a música em loop

if obj_barra.ponto >=25{
	instance_destroy(obj_level2_controle);
	instance_create_layer(256, 0, "Instances", obj_level2_vitoria);
}

