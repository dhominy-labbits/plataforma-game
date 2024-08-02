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
	obj_barra.ponto +=1;
        instance_destroy();
    }
}

if vida > 0 {
    // Mover o objeto no eixo Y com uma velocidade constante
    y += veloc_y;
	
    // Colidir com a parede inimigo, destruir o objeto
    if place_meeting(x, y, obj_parede_inimigo) {
        instance_destroy();
    }
}

if obj_barra.ponto >= 3 {
	
    // Colidir com a parede inimigo, destruir o objeto
    if place_meeting(x, y, obj_parede_inimigo) {
		obj_barra.ponto -= 1;
        instance_destroy();
    }
}