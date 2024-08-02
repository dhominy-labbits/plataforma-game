/// Create Event
/// @description Verificar e destruir o obj_controle se ele existir na sala

if (instance_exists(obj_controle)) {
    with (obj_controle) {
        instance_destroy();
    }
}

if (instance_exists(camera)) {
    with (camera) {
        instance_destroy();
    }
}

if (instance_exists(obj_player)) {
    with (obj_player) {
        instance_destroy();
    }
}
