extends Node

var dinheiro = 150

signal dinheiro_atualizado

func adicionar_dinheiro(valor):
	dinheiro += valor
	dinheiro_atualizado.emit()

func gastar_dinheiro(valor):
	if dinheiro >= valor:
		dinheiro -= valor
		dinheiro_atualizado.emit()
		return true

	return false
