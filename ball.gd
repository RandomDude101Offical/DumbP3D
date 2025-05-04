extends MeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotation.x = $"..".rotation.x
	rotation.y = $"..".rotation.y + 180
	rotation.z = $"..".rotation.z
