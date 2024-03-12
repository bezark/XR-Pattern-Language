extends Control

@export var PatternName : String
@export var Author : String
@export var Context : String
@export var OutsidePatterns : Array[PackedScene]
@export var Problem : String
@export var Solution : String
@export var InsidePatterns : Array[PackedScene]


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/Name.text = PatternName
	$VBoxContainer/Author.text = Author
	$VBoxContainer/Context.text = Context
	$VBoxContainer/Problem.text = Problem
	$VBoxContainer/Solution.text = Solution
	print($VBoxContainer/Name.text)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
