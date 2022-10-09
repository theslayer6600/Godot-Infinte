extends Area2D

func _physics_process(delta):
	var mouse_pos = get_global_mouse_position() - Vector2(16, 16)
	global_position = Vector2(stepify(mouse_pos.x, 32), stepify(mouse_pos.y, 32))
	Player.location_of_set = global_position/32
