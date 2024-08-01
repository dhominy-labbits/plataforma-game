// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_movendo(){
// Controlando o player
direita = keyboard_check(ord("D"));
esquerda = keyboard_check(ord("A"));
cima = keyboard_check_pressed(ord("W"));

hveloc = (direita - esquerda) * veloc;
if direita{
	direc = 0;
	sprite_index = spr_player_run;
}else if esquerda{
	direc = 1;
	sprite_index = spr_player_run2;
}else{
	if direc == 0{
		sprite_index = spr_player_idle;
	}else if direc ==1{
		sprite_index = spr_player_idle2;
	}
}

if !place_meeting(x, y + 1, obj_chao){
	vveloc += gravidade;
}else{
	if cima{
	vveloc = -3.5;
}
}


if place_meeting(x + hveloc, y, obj_chao){
	while !place_meeting(x + sign(hveloc), y, obj_chao){
		x += sign(hveloc);
	}
	hveloc = 0;
}
x += hveloc;

if place_meeting(x,y + vveloc, obj_chao){
	while !place_meeting(x, y + sign(vveloc), obj_chao){
		y += sign(vveloc);
	}
	vveloc = 0;
}
y += vveloc;


if keyboard_check_pressed(vk_space){
	image_index = 0;
	estado = scr_player_atacando;
	
	if direc == 0{
		instance_create_layer(x +20, y - 8, "Instances", ob_hitbox);
	}
	else if direc == 1{
		instance_create_layer(x -20, y - 8, "Instances", ob_hitbox);
	}
  }
}

function scr_player_atacando(){
	if direc == 0{
		sprite_index = spr_player_atack_d;
	} else if direc == 1{
		sprite_index = spr_player_atack_e;
	}
	
	if function ScrFimDaAnimacao(){

var _sprite=sprite_index;
var _image=image_index;
if(argument_count > 0)   _sprite=argument[0];
if(argument_count > 1)  _image=argument[1];
var _type=sprite_get_speed_type(sprite_index);
var _spd=sprite_get_speed(sprite_index)*image_speed;
if(_type == spritespeed_framespersecond)
    _spd = _spd/room_speed;
if(argument_count > 2) _spd=argument[2];
return _image+_spd >= sprite_get_number(_sprite);
}
(){								
		estado = scr_player_movendo;
	}
}

