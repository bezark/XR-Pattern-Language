extends Node3D

@export var currentPattern : PatternInfo : set = set_pattern

const BUBBLE = preload("res://Components/bubble.tscn")

func set_pattern(new_pattern):
	currentPattern = new_pattern
	#if currentPattern.Poetic_Expression:
		#pass	
	#var child_bubbles = $LocalBubbles.get_children()
	#for bubble in child_bubbles:
		#queue_free()
	#
	#var poetic_bubble = BUBBLE.instantiate()
	#poetic_bubble.scene_trigger = "Poetic"
	#$LocalBubbles.add_child(poetic_bubble)
	#poetic_bubble.text_override("Poetic Expression")

@onready var local_bubbles = $LocalBubbles

func populate_docs(docs):
	docs.populate(currentPattern)



func recenter(pos):
	print(pos)
	
	local_bubbles.position = pos
	local_bubbles.position.z -= 0.2
	
	
