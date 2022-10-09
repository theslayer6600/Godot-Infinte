extends Node2D

var chunk_gen = 0

func loop():
	pass

func _physics_process(delta):
	#Generate_Bottom_Side
	if chunk_gen == 0:
		position = Vector2(-1536, 1536)
	if chunk_gen == 1:
		position = Vector2(-1024, 1536)
	if chunk_gen == 2:
		position = Vector2(-512, 1536)
	if chunk_gen == 3:
		position = Vector2(0, 1536)
	if chunk_gen == 4:
		position = Vector2(512, 1536)
	if chunk_gen == 5:
		position = Vector2(1024, 1536)
	if chunk_gen == 6:
		position = Vector2(1536, 1536)
	#Generate_Top_Side
	if chunk_gen == 7:
		position = Vector2(-1536, -1536)
	if chunk_gen == 8:
		position = Vector2(-1024, -1536)
	if chunk_gen == 9:
		position = Vector2(-512, -1536)
	if chunk_gen == 10:
		position = Vector2(0, -1536)
	if chunk_gen == 11:
		position = Vector2(512, -1536)
	if chunk_gen == 12:
		position = Vector2(1024, -1536)
	if chunk_gen == 13:
		position = Vector2(1536, -1536)
	#Generate_Right_Side
	if chunk_gen == 14:
		position = Vector2(2048, 1024)
	if chunk_gen == 15:
		position = Vector2(2048, 512)
	if chunk_gen == 16:
		position = Vector2(2048, 0)
	if chunk_gen == 17:
		position = Vector2(2048, -512)
	if chunk_gen == 18:
		position = Vector2(2048, -1024)
	#Generate_Left_Side
	if chunk_gen == 19:
		position = Vector2(-2048, 1024)
	if chunk_gen == 20:
		position = Vector2(-2048, 512)
	if chunk_gen == 21:
		position = Vector2(-2048, 0)
	if chunk_gen == 22:
		position = Vector2(-2048, -512)
	if chunk_gen == 23:
		position = Vector2(-2048, -1024)
	#Corners
	if chunk_gen == 24:
		position = Vector2(-2048, 1536)
	if chunk_gen == 25:
		position = Vector2(2048, 1536)
	if chunk_gen == 26:
		position = Vector2(2048, -1536)
	if chunk_gen == 27:
		position = Vector2(-2048, -1536)
	PlayerAutoload.f_c_1_x = global_position.x / 32
	PlayerAutoload.f_c_1_y = global_position.y / 32

func _on_ChunkUpdate_timeout():
	if chunk_gen < 28:
		chunk_gen += 1
	if chunk_gen == 28:
		chunk_gen = 0
