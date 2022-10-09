extends Area2D

func _on_Find_Tile_body_entered(body):
	if body.is_in_group("Ground"):
		var tile_pos = body.world_to_map(global_position)
		var tile_id = body.get_cellv(tile_pos)
		body.set_cellv(tile_pos, 2)
		body.update_bitmask_area(tile_pos)
		print("Grass")

func _physics_process(delta):
	position = Vector2(stepify(PlayerAutoload.player_x, 32), stepify(PlayerAutoload.player_y, 32))
