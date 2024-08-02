/// Event Draw
/// @description Desenhar o poder e gerenciar o disparo

draw_self();

// Variável para controlar a animação do poder
var poder_anim_index = (image_index % sprite_get_number(spr_poder)); // Variável local para a animação do poder

if (poder == true) {
    var dir = point_direction(x, y, mouse_x, mouse_y);
    var xx = lengthdir_x(20, dir);
    var yy = lengthdir_y(55, dir);

    // Atualiza o índice da imagem para a animação do poder
    poder_anim_index = (poder_anim_index + 1) % sprite_get_number(spr_poder); // Atualiza o índice da imagem para animação

    // Desenha a sprite do poder com a animação
    draw_sprite_ext(spr_poder, poder_anim_index, x + xx, y - 10 + yy, 1, 1, dir, c_white, 1);

    // Verificar se o tempo de recarga terminou
    if (cooldown <= 0) {
        if (mouse_check_button_pressed(mb_left)) {
            obj_player.estado = scr_player_disparando;
            var inst = instance_create_layer(x + xx, y + yy - 10, "Instances", obj_poder);
            inst.melhoria = false;
            inst.direction = dir;
            inst.image_angle = dir;
            inst.speed = 7;
            poder_carga -= 1;

            // Reiniciar o tempo de recarga
            cooldown = cooldown_max;

            if (poder_carga <= 0) {
                poder = false;
            }
        }
    } else {
        // Reduzir o tempo de recarga a cada frame
        cooldown--;
    }
}
