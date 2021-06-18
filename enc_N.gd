extends Area2D
var check = false
var ac = false
var errou = false
var entered_area = false
export(String) var text_input

signal ponto_conquistado

func _ready():
	get_node("Label").modulate = Color(1,1,1,0)
	get_node("Label").set_text(text_input)

func _input(event):
	if event.is_action_pressed("ui_touch"):
		check = false
	if event.is_action_released("ui_touch"):
		check = true
		
	if check == true and ac == true:
		$somponto.play()
		get_node("Label").modulate = Color(1,1,1,1)
		get_node("Sprite").modulate = Color(0,0.7,0.3,1)
		set_collision_mask_bit(2,false)
		ac = false


func _on_N_area_entered(area):
	if area.get_node("Label").get_text() == get_node("Label").get_text():
		entered_area = true
	else:
		errou = true
	pass

func _on_N_area_exited(area):
	entered_area = false
	errou = false
	pass
	
func _process(delta):
	if entered_area and check:
		emit_signal("ponto_conquistado")
		ac = true
		entered_area = false
	elif check and errou:
		get_node("Sprite").modulate = Color( 0.86, 0.08, 0.24, 1 )
		$Timer.start()


func _on_Timer_timeout():
	get_node("Sprite").modulate = Color( 1, 1, 1, 1 )
