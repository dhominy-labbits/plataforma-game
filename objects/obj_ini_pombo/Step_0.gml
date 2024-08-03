/// @description Inserir descrição aqui
if hit == true{
	veloc = 0;
	alarm[1] = 5;
	hit = false;
	
audio_play_sound(SFX_POMBO, 1, false);
}

if vida <=0{
	
	if reset == false{
		image_index = 0;
		reset = true;
	}
	sprite_index = sprite_morrendo;
	if scr_fim_da_animacao(){
		instance_destroy();
	}
}
if vida > 0{
// colidir com a parede inimigo, muda a direção
if place_meeting(x,y, obj_parede_inimigo){
	if direc == 0{
	direc = 1;
	}else if direc ==1{
	direc = 0;
	}
}

// andando para direita
if direc == 0{
	sprite_index = spr_pombo_d;
	x += veloc;
} // andar para esquerda
else if direc ==1{
	sprite_index = spr_pombo_e;
	x -= veloc;
}

if vida <=0{
	instance_destroy();
}
}