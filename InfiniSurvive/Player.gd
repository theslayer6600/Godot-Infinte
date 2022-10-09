extends Node

var snap
var location_of_set = 0
var player_location = 0
var load_x = 0
var load_y = 0
var load_x_min = 0
var load_y_min = 0
var load_x_max = 0
var load_y_max = 0

func _process(delta):
	Player.snap = snap
	Player.load_x_min = load_x - 16
	Player.load_x_max = load_x + 16
	Player.load_y_min = load_y - 16
	Player.load_y_max = load_y + 16
