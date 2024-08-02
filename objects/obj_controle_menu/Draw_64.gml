/// @description UI

// CORAÇÃO VAZIO
var _sprl2 = sprite_get_width(spr_vida2);
var _buffer2 = 40;
var _vidas2 = obj_player.vida2;

// Looping perfeito para atualizar vidas / DESENHAR VIDAS
for (var i = 0; i < _vidas2; i++) {
    draw_sprite_ext(spr_vida2, 0, 20 + (_sprl2 * i) + (_buffer2 * i), 40, 2.2, 2.2, 0, c_white, 1);
}

// CORAÇÃO CHEIO
var _sprl = sprite_get_width(spr_vida);
var _buffer = 40;
var _vidas = obj_player.vida;

// Looping perfeito para atualizar vidas / DESENHAR VIDAS
for (var i = 0; i < _vidas; i++) {
    draw_sprite_ext(spr_vida, 0, 20 + (_sprl * i) + (_buffer * i), 40, 2.2, 2.2, 0, c_white, 1);
}

// Desenho da UI

// Obtenha a largura da câmera
var cam = view_camera[0]; // Supondo que você esteja usando a view 0
var view_w = camera_get_view_width(cam);

// Defina a sprite do item
var item_sprite = spr_potion; // Substitua por sua sprite do item
var margem = 40;

// Obtenha a largura e altura da sprite
var sprite_w = sprite_get_width(item_sprite) + 10;
var sprite_h = sprite_get_height(item_sprite) + 10;

// Escala para a sprite
var sprite_scale = 4; // Altere este valor para aumentar ou diminuir o tamanho da sprite

// Desenha a sprite do item no canto superior direito da tela com escala
draw_sprite_ext(item_sprite, 0, view_w - (sprite_w * sprite_scale) - margem + 1350, margem +10, sprite_scale, sprite_scale, 0, c_white, 1);

// Desenha o número de itens coletados ao lado da sprite com escala
var itens_coletados_text = string(global.itens_coletados);
var text_scale = 3.5; // Altere este valor para aumentar ou diminuir o tamanho do texto
draw_text_transformed(view_w - (sprite_w * sprite_scale) - margem + 1450, margem + (sprite_h * sprite_scale) / 2 - 8 - 90, itens_coletados_text, text_scale, text_scale, 0);

