extends CanvasLayer

# Screen variables
var fullscreen : bool = false

# All debug inputs
var input : Dictionary = {};

func _process(_delta) -> void:

	# Calls the function to reset the game
	_reload_scene();



func _reload_scene() -> void:
	# Input
	input["reload"] = Input.is_action_just_pressed("KEY_R")
	
	# If I press the reload button
	if input["reload"]:
		# Reload the scene
		get_tree().reload_current_scene();

