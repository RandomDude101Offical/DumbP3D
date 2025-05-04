extends Control

@onready var gamescene = load("res://game.tscn")

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("1"):
		$load.show()
		get_tree().change_scene_to_packed(gamescene)
