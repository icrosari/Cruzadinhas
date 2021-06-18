extends TextureButton

func _on_Fase2_pressed():
	$som2.play()
	get_tree().change_scene("res://Fase2_Imagem.tscn")
	Global.mudafase(2)
