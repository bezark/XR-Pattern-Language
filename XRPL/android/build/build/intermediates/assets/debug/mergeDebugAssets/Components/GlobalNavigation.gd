extends Node3D

var currentPattern : PatternInfo : set = set_pattern

const BUBBLE = preload("res://Components/bubble.tscn")
func set_pattern(new_pattern):
	currentPattern = new_pattern
	var child_bubbles = $LocalBubbles.get_children()
	for bubble in child_bubbles:
		queue_free()
	
	var tech_bubble = BUBBLE.instantiate()
	tech_bubble.scene_trigger = "Technical"
	$LocalBubbles.add_child(tech_bubble)
	var poetic_bubble = BUBBLE.instantiate()
	poetic_bubble.scene_trigger = "Poetic"
	$LocalBubbles.add_child(poetic_bubble)
	var pattern_bubble = BUBBLE.instantiate()
	pattern_bubble.scene_trigger = "Pattern"
	$LocalBubbles.add_child(pattern_bubble)
	
	
	
