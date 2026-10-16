extends Node2D
@onready var label = $Label2
var valor = 0
var dinheiro = 0

func _ready():
	var image = load("res://image/cursor.png").get_image()

	image.resize(32, 32)

	var texture = ImageTexture.create_from_image(image)

	Input.set_custom_mouse_cursor(texture)
	
	label.text = "$ " + str(dinheiro+valor)
	
