extends CharacterBody2D

# Número de saltos realizados
var jump_count = 0

# Constantes
const JUMP_FORCE = -30000
const GRAVITY = 4

# Método que se llama cuando un cuerpo entra en contacto con este nodo
func _on_body_entered(body):
	if body.name == "rampiña":
		reset_jump_count()  # Reiniciar el contador de saltos al tocar la rampa

# Método que se llama cuando un cuerpo sale de contacto con este nodo
func _on_body_exited(body):
	if body.name == "rampiña":
		reset_jump_count()  # Reiniciar el contador de saltos al salir de la rampa

# Reinicia el contador de saltos
func reset_jump_count():
	jump_count = 0

# Método que se llama en cada frame de física
func _physics_process(delta):
	# Aplicar gravedad
	if not is_on_floor():
		velocity.y = GRAVITY * delta

	# Comprobar si el personaje está en el suelo
	if is_on_floor():
		reset_jump_count()

	# Comprobar si se presiona el botón de salto y si se puede saltar
	if Input.is_action_just_pressed("ui_accept") and jump_count == 0:
		jump()

	# Aplicar movimiento
	move_and_slide()

# Realiza un salto
func jump():
	jump_count += 1
	velocity.y = JUMP_FORCE
