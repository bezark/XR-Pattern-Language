extends Node3D

const BUBBLE = preload("res://Components/bubble.tscn")
@export var PD : PatternDatabase
# Called when the node enters the scene tree for the first time.
func _ready():
	print(PD.patterns)
	for pattern in PD.patterns:
		var new_bubble = BUBBLE.instantiate()
		new_bubble.position = Vector3(randf_range(-2.,2.), randf_range(0.,2.), randf_range(-2.,2.))
		new_bubble.documentation = pattern
		
		print(new_bubble.documentation.PatternName)
		new_bubble.populate()
		add_child(new_bubble)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
