extends CharacterBody2D

@export var speed: float = 180.0 # Pixels/second

func _physics_process(_delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	var input_direction = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	).normalized()
	
	velocity = input_direction * speed
	
	move_and_slide()

# Code to make the sprite face the mouse position
#func _process(_delta):
	#look_at(get_global_mouse_position())
