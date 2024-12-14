extends Sprite2D

# Variables para el contador y el tamaño
var contador: int = 10
var tamaño_inicial: Vector2
var decrecimiento: float = 0.05
var tiempo: float = 0.0

func _ready():
	# Guardar el tamaño inicial del sprite
	tamaño_inicial = scale

func _process(delta):
	# Actualizar el contador
	if contador > 0:
		tiempo += delta
		if tiempo >= 1.0:  # Cada segundo
			contador -= 1
			tiempo = 0.0
			# Actualizar el texto del sprite (si es necesario)
			update_text()

		# Hacer que el sprite se haga más pequeño
		scale = tamaño_inicial * (contador / 10.0)  # Ajusta el divisor según el valor máximo del contador

func update_text():
	# Aquí puedes actualizar el texto del sprite si es necesario
	# Por ejemplo, si tienes un Label o un TextNode
	# $Label.text = str(contador)
	pass
