extends Node3D

@onready var xr_camera_3d = $"../XROrigin3D/XRCamera3D"

# Called when the node enters the scene tree for the first time.
func _ready():
	position.y = xr_camera_3d.position.y


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
