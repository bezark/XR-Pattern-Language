extends XRController3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		_on_button_pressed("space")


@onready var path_3d = $Path3D
func _on_button_pressed(name):
	print(name)
	print(position)
	path_3d.curve.add_point(position)
