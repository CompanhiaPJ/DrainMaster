extends Label

@onready var area = $"../barcoparado/Area2D"

func verifi():
	var valor = int(text)
	
	if valor >= 200:
		valor -= 200
		text = str(valor)
		area.dinheiro = true
	else:
		area.dinheiro = false

func cor():
	modulate = Color(1, 0, 0)
	await get_tree().create_timer(0.5).timeout
	modulate = Color(1, 1, 1)
