/*
if (file_exists("save.sav")) file_delete("save.sav");

ini_open("save.sav");
ini_write_real("Jogador", "x_atual",obj_player.x)
ini_write_real("Jogador", "y_atual",obj_player.y)
ini_write_real("Jogador", "vida_atual",obj_player.vida)
ini_write_real("Jogador", "poder_atual",obj_player.poder)
ini_write_real("Jogador", "poder_carga_atual",obj_player.poder_carga)
ini_write_real("Jogador", "item1_atual",global.itens_coletados)
ini_write_real("Jogador", "sala_atual", room);


ini_close();
show_message("Jogo Salvo");