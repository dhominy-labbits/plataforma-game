/// @description UI

//
var _sprl = sprite_get_width(spr_vida);
var _buffer = 40;
var _vidas = obj_player.vida;

//looping perfeito para atualizar vidas / DESENHAR VIDAS
for (var i = 0; i < _vidas; i++;){
	draw_sprite_ext(spr_vida, 0, 20 + (_sprl * i) + (_buffer * i), 40, 2.2, 2.2,0, c_white, 1);
}