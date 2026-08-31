extends Sprite2D

@onready var time = $"tempo"
@onready var label_numero = $ColorRect/Label2
@onready var label_texto = $ColorRect/Label

var numero := 1

func _ready() -> void:
	label_numero.text = str(numero).pad_zeros(2)
	time.timeout.connect(_on_timer_timeout)

func _on_timer_timeout() -> void:
	numero += 1
	label_numero.text = str(numero).pad_zeros(2)
	calendario()

func calendario():
	if label_numero.text == "31" and label_texto.text == "JAN":
		label_texto.text = "FEV"
		numero = 0
