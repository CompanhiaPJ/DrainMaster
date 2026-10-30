
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
	if valor >= 0:
		GameManager.adicionar_dinheiro(valor)
	else:
		GameManager.gastar_dinheiro(abs(valor))

	get_tree().change_scene_to_file("res://Cenas/cidade2.tscn")
