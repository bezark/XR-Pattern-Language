extends Node3D

var xr_interface: XRInterface
# Called when the node enters the scene tree for the first time.
func _ready():
	xr_interface = XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.is_initialized():
		print("OpenXR initialized")
		
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)

		get_viewport().use_xr = true
		enable_passthrough()
	else:
		print("OpenXR failed to initialize")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func enable_passthrough():
	if xr_interface and xr_interface.is_passthrough_supported():
		xr_interface.start_passthrough()
	get_viewport().transparent_bg = true
