extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_right"):
		linear_velocity.x += 0.5
	if Input.is_action_pressed("ui_left"):
		linear_velocity.x -= 0.5
	if Input.is_action_pressed("ui_up"):
		$rope.show()
		linear_velocity.y += 1
	else:
		$rope.hide()
	
	if Input.is_action_pressed("ui_down"):
		linear_velocity.y -= 1

		
	$rope.position = Vector3(position.x, position.y + 4, position.z)
	$rope.top_level = true
