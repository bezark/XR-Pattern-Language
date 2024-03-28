#@tool
extends Node3D

const POETIC_BUBBLE = preload("res://Components/Poetic_bubble.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalNavigation.populate_docs(self)

func _process(delta):
	pass

func populate(pattern_info):
	$Pattern.mesh.text = pattern_info.PatternName
	$Author.mesh.text = pattern_info.Author
	$CPS/Context/Text.text = pattern_info.Context
	$CPS/Problem/Text.text = pattern_info.Problem
	$CPS/Solution/Text.text= pattern_info.Solution
	if pattern_info.Poetic_Expression:
		var bubby = POETIC_BUBBLE.instantiate()
		bubby.poetic = pattern_info.Poetic_Expression
		bubby.position = $PoeticMarker.position
		add_child(bubby)
		#bubby.position.y -= 2
		#bubby.position = $PoeticMarker.position
