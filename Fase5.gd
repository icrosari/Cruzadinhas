extends TextureButton

func _on_Fase5_pressed():
	$som5.play()
	get_tree().change_scene("res://Fase5_Imagem.tscn")
	Global.mudafase(5)
