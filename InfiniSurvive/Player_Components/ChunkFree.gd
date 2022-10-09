extends Area2D

func _physics_process(delta):
	PlayerAutoload.f_c_1_x = global_position.x / 32
	PlayerAutoload.f_c_1_y = global_position.y / 32
