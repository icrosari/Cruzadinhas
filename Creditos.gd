extends TextureButton

func _on_Crditos_pressed():
	$SomBotao1.play()
	

func _on_SomBotao1_finished():
	get_tree().change_scene("res://Creditos.tscn")
