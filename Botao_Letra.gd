extends Area2D

var mouse_prev = Vector2()
var arrastando = false
export var posi = Vector2()
var comeco = true

func _on_Botao_Letra_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("ui_touch"):
		$som.play()
		get_tree().set_input_as_handled()
		mouse_prev = event.position
		arrastando = true
		#set_collision_mask_bit(1,false)
		if comeco == true:
			posi = global_position
			comeco = false

func _input(event):
	if not arrastando:
		return
	if event.is_action_released("ui_touch"):
		$som2.play()
		$Timer.start()
		mouse_prev = Vector2()
		arrastando = false
		#get_node("CollisionShape2D").disabled = false
		
	if arrastando and event is InputEventMouseMotion:
		position += event.position - mouse_prev
		mouse_prev = event.position

func _on_Timer_timeout():
	arrastando = false
	position = position.move_toward(posi,1000)

func _on_Timer2_timeout():
	position = position.move_toward(posi,1000)
