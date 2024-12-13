extends CharacterBody2D


var alt = 0

const SPEED = 300.0
const JUMP_VELOCITY = -250


func _physics_process(delta: float) -> void:
	# Add the gravity.

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and alt == 0:
		velocity.y = JUMP_VELOCITY
		alt += 1
	if is_on_floor():
		alt = 0

	velocity.x = SPEED

	move_and_slide()



