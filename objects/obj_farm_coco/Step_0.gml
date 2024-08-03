/// Step
/// @description Inserir descrição aqui

if hit == true {
    veloc = 0;
    alarm[1] = 5;
    hit = false;
}

if vida <= 0 {
    if reset == false {
        image_index = 0;
        reset = true;
    }
    sprite_index = sprite_morrendo;
    if scr_fim_da_animacao() {
		var _inst = instance_create_layer(x, y, "Instances", obj_item);
        instance_destroy();
    }
}

if vida > 0 {
    // Mover o obje

    // Colidir com a parede inimigo, destruir o objeto
    if place_meeting(x, y, obj_parede_inimigo) {
        instance_destroy();
    }
}
