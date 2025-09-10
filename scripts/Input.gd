extends Node
class_name InputGatherer

# This particular function is where you define all possible inputs
func gather_input() -> InputPackage:
	var new_input = InputPackage.new()
	
	if Input.is_action_just_pressed("ui_accept"):
		new_input.actions.append("jab")
	new_input.input_direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	
	if Input.is_action_just_pressed("ui_accept"):
		new_input.actions.append("cross")
	new_input.input_direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	
	if Input.is_action_just_pressed("ui_accept"):
		new_input.actions.append("block")
	new_input.input_direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	
	if new_input.input_direction != Vector2.ZERO:
		new_input.actions.append("walk")
	
	if new_input.actions.is_empty():
		new_input.actions.append("idle")
	
	return new_input
