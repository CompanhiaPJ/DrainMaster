extends Label
@onready var som = $AudioStreamPlayer2D
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
	add_theme_color_override("font_color", Color(1,0,0))
	await get_tree().create_timer(0.5).timeout
	add_theme_color_override("font_color", Color(0,0,0))

func corganha():
	add_theme_color_override("font_color", Color(0,1,0))
	await get_tree().create_timer(0.5).timeout
	add_theme_color_override("font_color", Color(0,0,0))
	
func ganhar(ganha):
	som.play()
	await get_tree().create_timer(0.5).timeout
	var valor = int(text)
	valor = valor + ganha
	corganha()
	text = str(valor)
	
