extends Control



func _on_start_pressed():
	get_tree().change_scene_to_file("res://PATTERNS/PATTERN NAME - DOMINIC/guide.tscn")
	

## func _on_guide_pressed():
	## get_tree().change_scene_to_file("res://guide.tscn")
	
func _on_quit_pressed(): 
	get_tree().quit() 


