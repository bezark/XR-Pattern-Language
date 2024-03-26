extends Node3D
#@onready var hourselapsed = $"hours-elapsed"
#var timepassed = 0
#
## Called when the node enters the scene tree for the first time.
#func _ready():
	#pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#if Input.is_action_just_pressed("ui_accept"):
		#ui_left()
	#$Label3D.text=str(Time.get_ticks_msec()/60000)
	#timepassed = Time.get_ticks_msec()
	#if timepassed > 3000:
		#show()
		#
	#var currenttime = Time.get_datetime_dict_from_system()
	#print(currenttime.second) 
	#
#func ui_left():
	#$"../AnimationPlayer".play("spin")


func _on_area_3d_area_entered(area):
	hide()


func _on_breakarea_area_entered(area):
	hide()
	$message.show()


func _on_next_area_entered(area):
	$"../AnimationPlayer".play("spin")
