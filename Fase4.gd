extends TextureButton

func _on_Fase4_pressed():
	$som4.play()
	get_tree().change_scene("res://Fase4_Imagem.tscn")
	Global.mudafase(4)
