/// @description Tempo para esperar até poder iniciar novo diálogo
global.dialogo = false;

switch npc_nome {

	case "pontuacao_final_sucesso":
		if (!instance_exists(obj_fade)){
			var _targetRoom = final_jogo;
			Fade(_targetRoom,60,c_black);
		}
	    room_goto(final_jogo);
		break;
		
	case "pontuacao_final_falha":
		if (!instance_exists(obj_fade)){
			var _targetRoom = Room3;
			Fade(_targetRoom,60,c_black);
		}
	    room_goto(Room3);
		break;
}

//if npc_nome = "pontuacao_final_sucesso" {
//	room_goto(final_jogo);
//}
instance_destroy();