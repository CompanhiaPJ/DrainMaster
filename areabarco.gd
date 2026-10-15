extends Area2D
@onready var barco = get_parent()
@onready var node2d = $"../.."

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		var mouseposition = get_global_mouse_position()

		if mouseposition.y <= 230:
			barco.seguindo_mouse = false
			node2d.solto()


	
