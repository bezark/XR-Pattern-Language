extends Node3D


@onready var spot_light_3d = $SpotLight3D

func _ready():
	pass
	


# Light Off
func _on_area_3d_area_entered(area):
	spot_light_3d.hide()
	print("light Turned Off")


func _on_sphere_area_3d_area_entered(area):
	spot_light_3d.show()
	print("light Turned On")
