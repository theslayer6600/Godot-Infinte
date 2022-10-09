extends TileMap

func _process(delta):
	if Input.is_action_just_pressed("Delete"):
		set_cellv(Player.location_of_set, -1)
