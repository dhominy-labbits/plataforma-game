/// Evento de colisão com o obj_poder
/// @description Inserir descrição aqui

if (obj_poder.melhoria == true) {
    poder = true;
    poder_carga = 999999999999999999;

    with (other) {
        instance_destroy();
    }
}
