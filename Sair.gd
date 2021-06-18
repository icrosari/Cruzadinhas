extends TextureButton

func _on_Sair_pressed():
	$SomBotao2.play()
	
func _on_SomBotao2_finished():
	get_tree().quit()
