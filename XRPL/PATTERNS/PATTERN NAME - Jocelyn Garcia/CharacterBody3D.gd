extends CharacterBody3D
 
 
const SPEED = 5.0
const JUMP_VELOCITY = 4.5
 
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
 
var isHoldingObject = false
var heldObject = null
 
func _ready():
	$MeshInstance3D.hide()
 
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta
 
	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
 
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("left", "right", "forward", "backward")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)
 
	move_and_slide()
 
	if Input.is_action_just_pressed("interact"):
		interactWithDoor()
 
	maintainInteraction()
 
func interactWithDoor():
 
	if !isHoldingObject:
		$OrbitCam/Camera3D/PhysicsRaycast.force_raycast_update()
 
		if $OrbitCam/Camera3D/PhysicsRaycast.is_colliding():
			var collider = $OrbitCam/Camera3D/PhysicsRaycast.get_collider()
			if collider.is_in_group("Door"):
				isHoldingObject = true
				heldObject = collider
 
	elif isHoldingObject:
		isHoldingObject = false
		heldObject = null
 
func maintainInteraction():
	if isHoldingObject and heldObject != null:
		var forceDirection = $OrbitCam/Camera3D/InteractPos.global_transform.origin - heldObject.global_transform.origin
		forceDirection = forceDirection.normalized()
 
		heldObject.apply_central_force(forceDirection * 2)
