extends Control

@export var pattern_info : PatternInfo


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/Name.text = pattern_info.PatternName
	$VBoxContainer/Author.text = pattern_info.Author
	$VBoxContainer/Context.text = pattern_info.Context
	$VBoxContainer/Problem.text = pattern_info.Problem
	$VBoxContainer/Solution.text =pattern_info.Solution
	print($VBoxContainer/Name.text)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
