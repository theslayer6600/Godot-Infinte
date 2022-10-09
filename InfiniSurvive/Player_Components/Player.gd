extends KinematicBody2D

export var speed := 500
var _velocity := Vector2.ZERO
var zoom = 1.2
var min_zoom = 1.1
var max_zoom = 1.6

func _ready():
	Engine.set_target_fps(Engine.get_iterations_per_second())

func _process(_delta):
	Player.player_location = position
	var direction := Vector2(
		Input.get_action_strength("walk_right") - Input.get_action_strength("walk_left"),
		
		Input.get_action_strength("walk_down") - Input.get_action_strength("walk_up")
	)
	if direction.length() > 1.0:
		direction = direction.normalized()
	move_and_slide(speed * direction)
