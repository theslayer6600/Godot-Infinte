extends Node2D

func _process(delta):
	global_position = Vector2(stepify(Player.player_location.x, 32), stepify(Player.player_location.y + 256, 32))
	Player.load_y_min = global_position.y / 32


