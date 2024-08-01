/// Evento de Colisão com obj_player

// Incrementa o contador global de itens coletados
global.itens_coletados += 1;

// Destrói o item
instance_destroy(other);
