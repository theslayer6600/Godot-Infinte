extends Node2D

func _process(delta):
	global_position = Vector2(stepify(Player.player_location.x, Player.snap), stepify(Player.player_location.y, Player.snap))
	Player.load_x = global_position.x / 32
	Player.load_y = global_position.y / 32
