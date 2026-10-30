extends Node2D

@onready var label = $Label2

func _ready():
	atualizar_label()

func atualizar_label():
	label.text = "$ " + str(GameManager.dinheiro)
