extends CharacterBody3D




var poetic :PackedScene


func _on_area_3d_area_entered(area):
	if area.is_in_group("finger"):
		$AudioStreamPlayer3D.play()
		$AnimationPlayer.play("grow")
		
func enter_bubble():
	get_tree().change_scene_to_packed(poetic)
