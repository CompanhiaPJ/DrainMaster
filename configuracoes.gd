extends Node2D

func _ready():
	var image = load("res://image/cursor.png").get_image()

	image.resize(32, 32)

	var texture = ImageTexture.create_from_image(image)

	Input.set_custom_mouse_cursor(texture)


func _on_buttonBack_pressed() -> void:
	get_tree().change_scene_to_file("res://Cenas/telainicial.tscn")

#
func _on_OptionButtonQuality_item_selected(index: int) -> void:
	var option = $OptionButtonQuality.get_item_text(index)
	apply_quality(option)


func apply_quality(quality: String) -> void:
	match quality:
		"Baixa":
			for sprite in get_tree().get_nodes_in_group("sprites"):
				sprite.texture = load("res://sprites/baixa.png")
			for p in get_tree().get_nodes_in_group("particles"):
				p.emitting = false
		"Média":
			for sprite in get_tree().get_nodes_in_group("sprites"):
				sprite.texture = load("res://sprites/media.png")
			for p in get_tree().get_nodes_in_group("particles"):
				p.emitting = true
		"Alta":
			for sprite in get_tree().get_nodes_in_group("sprites"):
				sprite.texture = load("res://sprites/alta.png")
			for p in get_tree().get_nodes_in_group("particles"):
				p.emitting = true
	print("Qualidade atual:", quality)
