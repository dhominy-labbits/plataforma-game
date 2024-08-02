/// @description Insert description here
if hit == true{
	veloc = 0;
	alarm[1] = 5;
	hit = false;
}

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
	sprite_index = spr_skate_d;
	x += veloc;
} // andar para esquerda
else if direc ==1{
	sprite_index = spr_skate_e;
	x -= veloc;
}
