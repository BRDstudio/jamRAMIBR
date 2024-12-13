extends RigidBody2D

var saltnum = 0


const JUMP_FORCE = Vector2(0, -300)  # Vector de fuerza de salto

func _on_body_entered(body):
	if body is rampiña:
		saltnum = 0  # Reiniciar la posibilidad de saltar

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept") and saltnum == 0:
		saltnum = 1  # Evitar múltiples saltos
		apply_impulse(Vector2.ZERO, JUMP_FORCE)  # Aplicar fuerza hacia arriba
