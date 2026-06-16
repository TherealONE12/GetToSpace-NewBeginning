extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalState.is_boss_level = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_2_body_entered(body: Node2D) -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/level_2.tscn")
