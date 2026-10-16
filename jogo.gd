extends Node2D
@onready var valores = $Fundo/Label2

func _ready():
	var image = load("res://image/cursor.png").get_image()

	image.resize(32, 32)

	var texture = ImageTexture.create_from_image(image)

	Input.set_custom_mouse_cursor(texture)

func finalmapa():
	var valor = int(valores.text.replace(" KG", ""))
	var meta_cumprida = valor >= 50

	var cena = load("res://Cenas/finaldemapa.tscn").instantiate()
	cena.meta_cumprida = meta_cumprida

	get_tree().root.add_child(cena)
	get_tree().current_scene.queue_free()
	get_tree().current_scene = cena
