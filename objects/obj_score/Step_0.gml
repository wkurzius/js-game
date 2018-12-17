if  (thescore >= 100 && !instance_exists(obj_dragon)) {
	instance_deactivate_object(obj_spawner)
	instance_destroy(obj_enemy)
	instance_create_layer(random(room_width),random(room_height),"EnemyLayer",obj_dragon)
}

while(true) {
	dragon_spawn_x = random(room_width)
	dragon_spawn_y = random(room_height)
	
	if (abs(obj_player.x - dragon_spawn_x)>100 ||
		abs(obj_player.y - dragon_spawn_y)>100)
		break;
}