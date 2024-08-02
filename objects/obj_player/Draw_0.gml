/// Event Draw
/// @description Desenhar o poder e gerenciar o disparo

draw_self();

if (poder == true) {
    var dir = point_direction(x, y, mouse_x, mouse_y);
    var xx = lengthdir_x(20, dir);
    var yy = lengthdir_y(55, dir);

    draw_sprite_ext(spr_poder, 0, x + xx, y -10 + yy, 1, 1, dir, c_white, 1);

    // Verificar se o tempo de recarga terminou
    if (cooldown <= 0) {
        if (mouse_check_button_pressed(mb_left)) {
			image_index = 0;
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
