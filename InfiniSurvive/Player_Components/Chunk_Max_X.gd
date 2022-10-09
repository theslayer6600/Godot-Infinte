extends Node2D

func _process(delta):
	global_position = Vector2(stepify(Player.player_location.x + 128, 256), stepify(Player.player_location.y, 256))
	Player.load_x_max = global_position.x / 32
