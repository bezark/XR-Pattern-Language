extends CSGBox3D

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	var xx = rng.randf_range(0, 10)
	var yy = rng.randf_range(0, 10)
	var color = rng.randf_range(-1, 1)
	
	
	scale.x = xx
	scale.y = yy
	
	material.emission = Color(color, 0, 0)
	
	
