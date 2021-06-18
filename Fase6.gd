extends TextureButton

func _on_Fase6_pressed():
	$som6.play()
	get_tree().change_scene("res://Fase6_Imagem.tscn")
	Global.mudafase(6)
