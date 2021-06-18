extends TextureButton
export(String, FILE, "*.tscn") var onde_voltar

func _on_TextureButton_pressed():
	$som.play()

func _on_som_finished():
	get_tree().change_scene(onde_voltar)
