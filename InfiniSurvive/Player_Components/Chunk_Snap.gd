extends Node2D

func _physics_process(delta):
	global_position = Vector2(stepify(PlayerAutoload.player_x, 512), stepify(PlayerAutoload.player_y, 512))
