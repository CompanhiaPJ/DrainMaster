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
		numero = 0
		await get_tree().create_timer(2).timeout
		label_texto.text = "FEV"
	
	if label_numero.text == "28" and label_texto.text == "FEV":
		numero = 0
		await get_tree().create_timer(2).timeout
		label_texto.text = "MAR"
	
	if label_numero.text == "31" and label_texto.text == "MAR":
		numero = 0
		await get_tree().create_timer(2).timeout
		label_texto.text = "ABR"
		
	if label_numero.text == "30" and label_texto.text == "ABR":
		numero = 0
		await get_tree().create_timer(2).timeout
		label_texto.text = "MAI"
		
	if label_numero.text == "31" and label_texto.text == "MAI":
		numero = 0
		await get_tree().create_timer(2).timeout
		label_texto.text = "JUN"

	if label_numero.text == "30" and label_texto.text == "JUN":
		numero = 0
		await get_tree().create_timer(2).timeout
		label_texto.text = "JUL"
		
	if label_numero.text == "31" and label_texto.text == "JUL":
		numero = 0
		await get_tree().create_timer(2).timeout
		label_texto.text = "AGO"
		
	if label_numero.text == "31" and label_texto.text == "AGO":
		numero = 0
		await get_tree().create_timer(2).timeout
		label_texto.text = "SET"
		
	if label_numero.text == "30" and label_texto.text == "SET":
		numero = 0
		await get_tree().create_timer(2).timeout
		label_texto.text = "OUT"
		
	if label_numero.text == "31" and label_texto.text == "OUT":
		numero = 0
		await get_tree().create_timer(2).timeout
		label_texto.text = "NOV"
		
	if label_numero.text == "30" and label_texto.text == "NOV":
		numero = 0
		await get_tree().create_timer(2).timeout
		label_texto.text = "DEZ"
		
	if label_numero.text == "31" and label_texto.text == "DEZ":
		print("acabou")
