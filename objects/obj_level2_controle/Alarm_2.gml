/// @description D

// Criar uma instância de obj_ini_w
instance_create_layer(320, 0, "Instances", obj_ini_d);

// Redefinir o alarme com um tempo randomizado
alarm[2] = irandom_range(tempo_min, tempo_max);
