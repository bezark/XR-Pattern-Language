extends CSGBox3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_down"):
		position.y -= 0.1
	if Input.is_action_pressed("ui_up"):
		position.y += 0.1
	if Input.is_action_pressed("ui_left"):
		position.x -= 0.1
	if Input.is_action_pressed("ui_right"):
		position.x += 0.1
	if Input.is_action_pressed("ui_select"):
		position.z += 0.1
