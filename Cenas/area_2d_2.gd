extends Area2D
var verifi = 1

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		if verifi == 1:
			verifi = 0
			var alvo1 = get_parent().get_node("Marker2D")

			for barco in get_tree().get_nodes_in_group("barcos"):
				barco.definir_alvo(alvo1)

		else:
			verifi = 1

			for barco in get_tree().get_nodes_in_group("barcos"):
				barco.seguindo = false
				barco.alvo = null
				barco.parado_no_alvo = false
				barco.voltando = true
