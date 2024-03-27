extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var newpoop=$Poop.duplicate()
	newpoop.position=$XROrigin3D/XRCamera3D.position
	add_child(newpoop)
