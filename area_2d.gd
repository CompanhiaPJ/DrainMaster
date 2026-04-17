extends Area2D
@onready var som = $AudioStreamPlayer2D
@onready var erro = $AudioStreamPlayer2D2
@onready var label2 = get_node("../../Label2")
@onready var label = get_node("../../Label")
var barco = preload("res://barco.tscn")
var dinheiro = false
@onready var caixaverde = $ColorRect
@onready var caixavermelha = $ColorRect2

func _ready():
	caixavermelha.color = Color(1, 0, 0, 0.0)
	caixaverde.color = Color(0, 1, 0, 0.0)
	caixaverde.mouse_filter = Control.MOUSE_FILTER_IGNORE
	caixavermelha.mouse_filter = Control.MOUSE_FILTER_IGNORE
	caixavermelha.visible = true
	caixaverde.visible = true

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		label2.verifi()
		if dinheiro == true:
			som.play()
			cria_barco()
		else:
			erro.play()
			label2.cor()
			label.cor()

func cria_barco():
	var novo_barco = barco.instantiate()
	get_tree().current_scene.add_child(novo_barco)
	novo_barco.global_position = get_global_mouse_position()
	novo_barco.andar()
	caixavermelha.color = Color(1, 0, 0, 0.15)
	caixaverde.color = Color(0, 1, 0, 0.15)

func tiracaixa():
	caixavermelha.color = Color(1, 0, 0, 0.0)
	caixaverde.color = Color(0, 1, 0, 0.0)
