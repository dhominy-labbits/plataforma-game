/// @description W
// Criar uma instância de obj_ini_w


instance_create_layer(256, 0, "Instances", obj_ini_w);


// Redefinir o alarme com um tempo randomizado
alarm[0] = irandom_range(tempo_min, tempo_max);
