extends Node2D

# Variables configurables
@export var velocidad: float = 1000.0
@export var altura_maxima: float = -1000.0

# Variable para detectar si un RigidBody2D está en el área
var rigidbody_detectado: bool = false

# Función que se activa cuando un cuerpo entra en el Area2D
func _on_area2d_body_entered(body):
	if body is boliña:  # Si el cuerpo es del tipo 'boliña'
		rigidbody_detectado = true

# Función que se activa cuando un cuerpo sale del Area2D
func _on_area2d_body_exited(body):
	if body is RigidBody2D:
		rigidbody_detectado = false

# Función _process para el movimiento
func _process(delta):
	if rigidbody_detectado and position.y > altura_maxima:
		position.y -= velocidad * delta
	elif rigidbody_detectado and position.y <= altura_maxima:
		print("La plataforma alcanzó la altura máxima.")

# Configuración de las señales al iniciar
func _ready():
	# Conexión de las señales de Area2D
	$StaticBody2D/Area2D.connect("body_entered", Callable(self, "_on_area2d_body_entered"))
	$StaticBody2D/Area2D.connect("body_exited", Callable(self, "_on_area2d_body_exited"))
