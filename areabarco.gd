extends Area2D

@onready var barco = get_parent()

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		barco.seguindo_mouse = false
