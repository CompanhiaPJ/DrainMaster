extends Node2D
var meta_cumprida = false
@onready var label = $Label
var valor = 0

func _ready():
	if meta_cumprida:
		label.finalbom()
		valor = 50
	else:
		label.finalruim()
		valor = -50


func _on_button_pressed() -> void:
	var cena = load("res://Cenas/cidade2.tscn").instantiate()
	cena.valor = valor

	get_tree().root.add_child(cena)
	get_tree().current_scene.queue_free()
	get_tree().current_scene = cena
