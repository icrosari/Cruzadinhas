extends TextureButton

func _on_Fase3_pressed():
	$som3.play()
	get_tree().change_scene("res://Fase3_Imagem.tscn")
	Global.mudafase(3)
