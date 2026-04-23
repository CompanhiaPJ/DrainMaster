extends Label

var velocidade = 0.05

func _ready():
	mostrar_texto()

func mostrar_texto():
	var texto_completo = text  
	text = ""                 
	
	for i in texto_completo.length():
		text += texto_completo[i]
		await get_tree().create_timer(velocidade).timeout
