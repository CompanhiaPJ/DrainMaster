extends Node2D

# Chama quando clica no botão "Voltar"
func _on_buttonBack_pressed() -> void:
	get_tree().change_scene_to_file("res://telainicial.tscn")

# Chama quando o jogador muda a opção de qualidade
func _on_OptionButtonQuality_item_selected(index: int) -> void:
	var option = $OptionButtonQuality.get_item_text(index)
	apply_quality(option)

# Função que aplica a qualidade gráfica
func apply_quality(quality: String) -> void:
	match quality:
		"Baixa":
			# Exemplo para 2D
			for sprite in get_tree().get_nodes_in_group("sprites"):
				sprite.texture = load("res://sprites/baixa.png")
			for p in get_tree().get_nodes_in_group("particles"):
				p.emitting = false
		"Média":
			for sprite in get_tree().get_nodes_in_group("sprites"):
				sprite.texture = load("res://sprites/media.png")
			for p in get_tree().get_nodes_in_group("particles"):
				p.emitting = true
		"Alta":
			for sprite in get_tree().get_nodes_in_group("sprites"):
				sprite.texture = load("res://sprites/alta.png")
			for p in get_tree().get_nodes_in_group("particles"):
				p.emitting = true
	print("Qualidade atual:", quality)
