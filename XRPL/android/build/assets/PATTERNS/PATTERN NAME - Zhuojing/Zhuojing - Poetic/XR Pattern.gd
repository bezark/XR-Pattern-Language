extends Node3D


@onready var spot_light_3d = $SpotLight3D
@onready var audio_stream_player_3d = $AudioStreamPlayer3D

func _ready():
	pass


# Light On & Off
func _on_area_3d_area_entered(area):
	spot_light_3d.hide()
	print("light Turned Off")

func _on_sphere_area_3d_area_entered(area):
	spot_light_3d.show()
	print("light Turned On")


# Music on & off
func _on_prism_area_3d_area_entered(area):
	audio_stream_player_3d.play()
	print("Music Play")

func _on_box_area_3d_area_entered(area):
	audio_stream_player_3d.stop()
	print("Music stop")


# Music And Light play together
func _on_capsule_area_3d_area_entered(area):
	spot_light_3d.blink()
	audio_stream_player_3d.play()
	print("light blink,Music Play")
	

func _on_tube_area_3d_area_entered(area):
	spot_light_3d.hide()
	audio_stream_player_3d.Stop()
	print("light off,Music stop")
