extends TextureButton

func _on_PlayButton_pressed():
	$SomBotao.play()
	
func _on_SomBotao_finished():
	get_tree().change_scene("res://Selecao_Fases.tscn")
