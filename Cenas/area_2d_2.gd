extends Area2D

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		var alvo1 = get_parent().get_node("Area2D")

		for barco in get_tree().get_nodes_in_group("barcos"):
			barco.definir_alvo(alvo1)
