extends Node

var direction_leftright = 0
var direction_updown = 0
var f_c_1_x = 0
var f_c_1_y = 0
var player_pos = 16
var player_x = 0
var player_y = 0
var tile_pos
var tile
var world_seed
var chunk_gen_x = 0
var chunk_gen_y = 0

func _process(delta):
	if Input.is_action_just_pressed("NEW_MAP"):
		randomize()
		world_seed = randi()

func _ready():
	randomize()
	world_seed = randi()
