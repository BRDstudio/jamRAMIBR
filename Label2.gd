extends Label

# Texto completo que se va a mostrar
var full_text = ""
# Velocidad de aparición de las letras (en segundos)
var letter_delay = 0.06
# Índice actual de la letra que se muestra
var current_index = 0
# Temporizador interno
var timer = 0.0

func _ready():
	# Opcional: comienza automáticamente
	set_full_text("The Main Lines")
	show_letter_by_letter()
	

func _process(delta):
	if current_index < full_text.length():
		timer += delta
		if timer >= letter_delay:
			timer = 0.0
			current_index += 1
			text = full_text.substr(0, current_index)
	else:
		# Detiene el proceso una vez que termina
		set_process(false)

func set_full_text(new_text):
	# Asigna el texto completo y reinicia variables
	full_text = new_text
	current_index = 0
	timer = 0.0
	text = ""  # Borra el texto actual

func show_letter_by_letter():
	# Habilita el proceso para mostrar el texto letra por letra
	set_process(true)

