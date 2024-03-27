extends CharacterBody3D


@export var documentation : PatternInfo
@export var wander_speed = 0.00
var target_velocity = Vector3(0.1,0.1,0.1)

@onready var pattern_name = $PatternName


@export_enum("Pattern", "Technical", "Poetic") var scene_trigger: String = "Technical"



# Called when the node enters the scene tree for the first time.
func _ready():
	new_target_velocity(0)
	new_target_velocity(1)
	new_target_velocity(2)
	populate()

func populate():
	if is_node_ready():
		pattern_name.text = documentation.PatternName

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	velocity.x = lerpf(velocity.x, target_velocity.x, 0.5)
	velocity.y = lerpf(velocity.y, target_velocity.y, 0.5)
	velocity.z = lerpf(velocity.z, target_velocity.z, 0.5)
	
	if position.y <0.1:
		target_velocity.y = 0.05
	if position.y >2:
		target_velocity.y = -0.05
	if position.x <-3:
		target_velocity.x = 0.05
	if position.x >3:
		target_velocity.x = -0.05
	if position.z <-3:
		target_velocity.z = 0.05
	if position.z >3.:
		target_velocity.z = -0.05
	
	
	move_and_slide()
	#print(velocity)


func new_target_velocity(component):
	target_velocity[component] = randf_range(velocity[component]-wander_speed,velocity[component]+wander_speed)
	#print(target_velocity)

@onready var wander_timer = $WanderTimer
func _on_timer_timeout():
	wander_timer.wait_time = randf_range(0.2,4.0)
	new_target_velocity(randi_range(0,2))
	



func _on_area_3d_area_entered(area):
	if area.is_in_group("finger"):
		$AnimationPlayer.play("grow")
		
func enter_bubble():
	var scene_to_trigger
	match scene_trigger:
		"Technical":
			scene_to_trigger = documentation.Technical_Expression
		"Poetic":
			scene_to_trigger = documentation.Poetic_Expression
		"Pattern":
			scene_to_trigger = documentation.Pattern_Scene
	GlobalNavigation.currentPattern = documentation
	get_tree().change_scene_to_packed(scene_to_trigger)
