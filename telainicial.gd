extends Node2D
@onready var click = $AudioStreamPlayer2D

func _ready():
	var image = load("res://image/cursor.png").get_image()

	image.resize(32, 32)

	var texture = ImageTexture.create_from_image(image)

	Input.set_custom_mouse_cursor(texture)


func _on_buttonPlay_pressed() -> void:
	click.play()
	await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://Cenas/historia.tscn")

func _on_button_config_pressed() -> void:
	click.play()
	await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://Cenas/configuracoes.tscn")
