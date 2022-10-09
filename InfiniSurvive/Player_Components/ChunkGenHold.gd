extends Area2D

var loop_position = 0

func _physics_process(delta):
	position = Vector2(stepify(PlayerAutoload.player_x, 512), stepify(PlayerAutoload.player_y, 512))

func loop_through_positions():
	#Gen_Top
	if loop_position == 0:
		$Chunk.position = Vector2(-1536, -1024)
		$ChunkFree.position = Vector2(-1536, -1536)
	if loop_position == 1:
		$Chunk.position = Vector2(-1024, -1024)
		$ChunkFree.position = Vector2(-1024, -1536)
	if loop_position == 2:
		$Chunk.position = Vector2(-512, -1024)
		$ChunkFree.position = Vector2(-512, -1536)
	if loop_position == 3:
		$Chunk.position = Vector2(0, -1024)
		$ChunkFree.position = Vector2(0, -1536)
	if loop_position == 4:
		$Chunk.position = Vector2(512, -1024)
		$ChunkFree.position = Vector2(512, -1536)
	if loop_position == 5:
		$Chunk.position = Vector2(1024, -1024)
		$ChunkFree.position = Vector2(1024, -1536)
	#Gen_Bottom
	if loop_position == 6:
		$Chunk.position = Vector2(-1536, 512)
		$ChunkFree.position = Vector2(-1536, 1024)
	if loop_position == 7:
		$Chunk.position = Vector2(-1024, 512)
		$ChunkFree.position = Vector2(-1024, 1024)
	if loop_position == 8:
		$Chunk.position = Vector2(-512, 512)
		$ChunkFree.position = Vector2(-512, 1024)
	if loop_position == 9:
		$Chunk.position = Vector2(0, 512)
		$ChunkFree.position = Vector2(0, 1024)
	if loop_position == 10:
		$Chunk.position = Vector2(512, 512)
		$ChunkFree.position = Vector2(512, 1024)
	if loop_position == 11:
		$Chunk.position = Vector2(1024, 512)
		$ChunkFree.position = Vector2(1024, 1024)
	#Gen_Left
	if loop_position == 12:
		$Chunk.position = Vector2(-1536, -512)
		$ChunkFree.position = Vector2(-2048, -512)
	if loop_position == 13:
		$Chunk.position = Vector2(-1536, 0)
		$ChunkFree.position = Vector2(-2048, -1024)
	if loop_position == 14:
		$Chunk.position = Vector2(-1536, 0)
		$ChunkFree.position = Vector2(-2048, 512)
	if loop_position == 15:
		$Chunk.position = Vector2(-1536, 0)
		$ChunkFree.position = Vector2(-2048, 0)
	if loop_position == 16:
		$Chunk.position = Vector2(-1536, 0)
		$ChunkFree.position = Vector2(-2048, -1536)
	if loop_position == 17:
		$ChunkFree.position = Vector2(-2048, -1024)
	#Gen_Right
	if loop_position == 18:
		$Chunk.position = Vector2(1024, -512)
		$ChunkFree.position = Vector2(1536, -512)
	if loop_position == 19:
		$Chunk.position = Vector2(1024, 0)
		$ChunkFree.position = Vector2(1536, 0)
	if loop_position == 20:
		$Chunk.position = Vector2(1024, 0)
		$ChunkFree.position = Vector2(1536, 512)
	if loop_position == 21:
		$Chunk.position = Vector2(1024, 0)
		$ChunkFree.position = Vector2(1536, -1024)
	if loop_position == 22:
		$Chunk.position = Vector2(1024, 0)
		$ChunkFree.position = Vector2(1536, 1024)
	if loop_position == 23:
		$Chunk.position = Vector2(1024, 0)
		$ChunkFree.position = Vector2(1536, -1536)



func _on_Timer_timeout():
	if loop_position >= 23:
		loop_position = 0
	else:
		loop_position += 1
	loop_through_positions()
