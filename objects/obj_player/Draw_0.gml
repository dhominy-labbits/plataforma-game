/// @description Inserir descrição aqui
draw_self();

if poder == true{
	var dir = point_direction(x,y, mouse_x, mouse_y);
	var xx = lengthdir_x(20, dir);
	var yy = lengthdir_y(20, dir);
	
	draw_sprite_ext(spr_poder, 0, x + xx, y -10		+ yy, 1, 1, dir, c_white, 1);
	
	if mouse_check_button_pressed(mb_left){
		var inst = instance_create_layer(x + xx,y + yy, "Instances", obj_poder);
		inst.melhoria = false;
		inst.direction = dir;
		inst.image_angle = dir;
		inst.speed = 7;
		poder_carga -= 1;
		
		if poder_carga <= 0{
		poder = false;
		}
		
	}
}