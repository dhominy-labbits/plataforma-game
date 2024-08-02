/// Create Event
/// @description Verificar e destruir o obj_controle se ele existir na sala

if (instance_exists(obj_controle)) {
    with (obj_controle) {
        instance_destroy();
    }
}
