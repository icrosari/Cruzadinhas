extends TextureButton

func _on_ProxFase_pressed():
	$som.play()
	if Global.fase == 6:
		get_tree().change_scene("res://Selecao_Fases.tscn")
		Global.fase == 0
	
	Global.fase += 1
	get_tree().change_scene("res://Fase"+ str(Global.fase) + "_Imagem.tscn")
