extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalState.is_boss_level = false
	GlobalState.levelid = 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
