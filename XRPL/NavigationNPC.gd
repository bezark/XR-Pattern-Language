extends CharacterBody3D

@onready var navigation_agent_3d: NavigationAgent3D = $NavigationAgent3D

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		var random_position := Vector3.ZERO
		random_position.z = randf_range(-5.0,5.0) 
		random_position.z = randf_range(-5.0,5.0) 
		navigation_agent_3d.set_target_positon(random_position)
		
func _physics_process(_delta: float) -> void:
	var destination = navigation_agent_3d.get_next_path_position()
	var local_destination = destination - global_position
	var direction = local_destination.normalized()
		
	velocity = direction * 5.0
	move_and_slide()
