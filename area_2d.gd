extends Area2D
@onready var som = $AudioStreamPlayer2D
@onready var label2 = get_node("../../Label2")
@onready var label = get_node("../../Label")
var barco = preload("res://barco.tscn")
var dinheiro = false

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		label2.verifi()
		if dinheiro == true:
			som.play()
			cria_barco()
		else:
			label2.cor()
			label.cor()

func cria_barco():
	var novo_barco = barco.instantiate()
	get_tree().current_scene.add_child(novo_barco)
	novo_barco.global_position = get_global_mouse_position()
