extends Node2D
@onready var click = $AudioStreamPlayer2D


func _on_buttonPlay_pressed() -> void:
	click.play()
	await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://historia.tscn")

func _on_button_config_pressed() -> void:
	click.play()
	await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://configuracoes.tscn")
