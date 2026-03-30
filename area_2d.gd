extends Area2D

var barco = preload("res://barco.tscn")

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		cria_barco()

func cria_barco():
	var novo_barco = barco.instantiate()
	get_tree().current_scene.add_child(novo_barco)
	novo_barco.global_position = get_global_mouse_position()
