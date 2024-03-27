extends MeshInstance3D

@onready var lefthand = $"../../Lefty"
@onready var righthand = $"../../Righty"
@onready var spectX = $"."

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	spectX.show()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	#if Input.is_action_just_pressed(lefthand):
		#spectX.hide()

