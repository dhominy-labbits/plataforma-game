/// Create Event
/// @description Inicializa variáveis e struct de inputs
global.itens_coletados = 0;

direita = 0;
esquerda = 0;
cima = 0;
gravidade = 0.3;
direc = 0;
hveloc = 0;
vveloc = 0;
veloc = 3;


// Combate
vida = 5;
vida2 = 5;
alfa_hit = 0;
alarm[0] = 0;
inv_tempo = 180;

estado = scr_player_movendo;

poder = false;
poder_carga = 0;
cooldown = 0; // Variável para controlar o tempo de recarga
cooldown_max = 60; // Tempo de recarga (em frames)