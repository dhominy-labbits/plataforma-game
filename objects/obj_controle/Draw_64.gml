/// @description UI

//
var _sprl = sprite_get_width(spr_vida);
var _buffer = 40;
var _vidas = obj_player.vida;

//looping perfeito para atualizar vidas / DESENHAR VIDAS
for (var i = 0; i < _vidas; i++;){
	draw_sprite_ext(spr_vida, 0, 20 + (_sprl * i) + (_buffer * i), 40, 2.2, 2.2,0, c_white, 1);
}

/// Draw Event

// Defina a sprite do item
var item_sprite = spr_potion; // Substitua por sua sprite do item
var margem = 40;

// Obtenha a largura e altura da sprite
var sprite_w = sprite_get_width(item_sprite) +10;
var sprite_h = sprite_get_height(item_sprite)+ 10;

// Escala para a sprite
var sprite_scale = 4; // Altere este valor para aumentar ou diminuir o tamanho da sprite

// Desenha a sprite do item no canto superior direito da tela com escala
draw_sprite_ext(item_sprite, 0, room_width - (sprite_w * sprite_scale) - margem+ 500, margem, sprite_scale, sprite_scale, 0, c_white, 1);

// Desenha o número de itens coletados ao lado da sprite com escala
var itens_coletados_text = string(global.itens_coletados);
var text_scale = 3.5; // Altere este valor para aumentar ou diminuir o tamanho do texto
draw_text_transformed(room_width - (sprite_w * sprite_scale) - margem +600, margem + (sprite_h * sprite_scale) / 2 - 8 -100, itens_coletados_text, text_scale, text_scale, 0);
