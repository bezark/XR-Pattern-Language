extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var ui_scale = 1
func _on_area_3d_area_entered(area):
	ui_scale+= 1
	$Word.scale=Vector3(ui_scale,ui_scale,ui_scale)
	


func _on_area_3d_2_area_entered(area):
	ui_scale-= 1
	$Word.scale=Vector3(ui_scale,ui_scale,ui_scale)
