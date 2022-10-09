extends Node2D

func _physics_process(delta):
	global_position = Vector2(stepify(PlayerAutoload.player_x, 1024), stepify(PlayerAutoload.player_y, 1024))
	PlayerAutoload.chunk_gen_x = global_position.x / 32
	PlayerAutoload.chunk_gen_y = global_position.y / 32
