extends TextureButton

var pontos = 0

func _ready():
	pontos = 0
	$Pontos_atual.text = String(pontos)
	$Pontos_total.text = String(get_tree().get_nodes_in_group("Quad_Enc").size())

func _physics_process(delta):
	if pontos == get_tree().get_nodes_in_group("Quad_Enc").size():
		if $TimerPontuacao.is_stopped():
			$TimerPontuacao.start()
			print($TimerPontuacao.get_time_left())

func _on_A_ponto_conquistado():
	pontos = pontos + 1
	$Pontos_atual.text = String(pontos)

func _on_Timer_timeout():
	get_tree().change_scene("res://Tela_Vitoria.tscn")
