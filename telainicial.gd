extends Node2D


func _on_buttonPlay_pressed() -> void:
	get_tree().change_scene_to_file("res://historia.tscn")

func _on_button_config_pressed() -> void:
	get_tree().change_scene_to_file("res://configuracoes.tscn")
