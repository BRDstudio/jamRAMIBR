extends CollisionShape2D

# Variables para el contador y el tamaño
var contador: int = 10
var tamaño_inicial: Vector2
var decrecimiento: float = 0.1
var tiempo: float = 0.0

func _ready():
	# Guardar el tamaño inicial del CollisionShape2D
	tamaño_inicial = scale

func _process(delta):
	# Actualizar el contador
	if contador > 0:
		tiempo += delta
		if tiempo >= 1.0:  # Cada segundo
			contador -= 1
			tiempo = 0.0
			# Actualizar el tamaño del CollisionShape2D
			update_size()

func update_size():
	# Hacer que el CollisionShape2D se haga más pequeño
	scale = tamaño_inicial * (contador / 10.0)  # Ajusta el divisor según el valor máximo del contador
