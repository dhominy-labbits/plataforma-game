/// @description Tempo para esperar até poder iniciar novo diálogo
global.dialogo = false;
if npc_nome = "pontuacao_final_sucesso" {
	room_goto(final_jogo);
}
instance_destroy();