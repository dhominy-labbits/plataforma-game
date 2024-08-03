/// @description Tempo para esperar até poder iniciar novo diálogo
global.dialogo = false;

switch npc_nome {
	
	case "dialogo_caramelo_intro":
		room_goto(Room1);
		show_debug_message("Mandou pra primeira fase");
		break;
		
	case "dialogo_caramelo_fase_2":
		if (!instance_exists(obj_fade)){
			var _targetRoom = Room2;
			Fade(_targetRoom,60,c_black);
		}
        room_goto(Room2);
		break;
		
	case "dialogo_caramelo_fase_3":
		if (!instance_exists(obj_fade)){
			var _targetRoom = Room3;
			Fade(_targetRoom,60,c_black);
		}
        room_goto(Room3);
		break;
		
	default:
		break;
		
}

// Destrói o Diálogo
instance_destroy();