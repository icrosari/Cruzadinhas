extends TextureButton

func _on_Fase1_pressed():
	$som1.play()
	get_tree().change_scene("res://Fase1_Imagem.tscn")
	Global.mudafase(1)
