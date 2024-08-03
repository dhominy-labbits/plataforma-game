/// Step Event

if (!travado) {
    veloc += gravidade; // Aplicar a gravidade
    y += veloc; // Atualizar a posição Y com a velocidade

    // Verificar a colisão com o chão
    if (place_meeting(x, y + veloc, obj_chao)) {
        y = y + veloc; // Trava a posição Y
        veloc = 0; // Zera a velocidade vertical
audio_play_sound(SFX_COCO, 1, false);
        travado = true; // Define como travado
    }
}
