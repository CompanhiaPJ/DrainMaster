extends Node2D

func _ready():
	await get_tree().create_timer(5.0).timeout
	get_tree().change_scene_to_file("res://Cenas/Cidade.tscn")
	
	var image = load("res://image/cursor.png").get_image()

	image.resize(32, 32)

	var texture = ImageTexture.create_from_image(image)

	Input.set_custom_mouse_cursor(texture)
