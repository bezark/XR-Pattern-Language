extends CharacterBody3D





@onready var pattern_name = $PatternName





func text_override(words):
	pattern_name.text = words

# Called every frame. 'delta' is the elapsed time since the previous frame.

	#print(velocity)


func _on_area_3d_area_entered(area):
	if area.is_in_group("finger"):
		$AnimationPlayer.play("grow")
		
func enter_bubble():
	get_tree().change_scene_to_file("res://Components/main.tscn")
