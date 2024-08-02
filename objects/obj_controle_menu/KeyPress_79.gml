/// @description Inserir descrição aqui
if (file_exists("save.sav")){
ini_open("save.sav");
obj_player.x = ini_read_real("Jogador", "x_atual", 0);
obj_player.y = ini_read_real("Jogador", "y_atual", 0);
obj_player.vida = ini_read_real("Jogador", "vida_atual", 5);
obj_player.poder = ini_read_real("Jogador", "poder_atual", false);
obj_player.poder_carga = ini_read_real("Jogador", "poder_carga_atual", 0);
global.itens_coletados = ini_read_real("Jogador", "item1_atual", 0);
room_goto(ini_read_real("Jogador", "sala_atual", 0));

ini_close();
}