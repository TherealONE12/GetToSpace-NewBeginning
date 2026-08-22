extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_level_1_button_pressed() -> void:
	MusicManager.play_track(MusicManager.track_fly)
	get_tree().change_scene_to_file("res://scenes/stage 2/stage_2_lvl_1.tscn")


func _on_go_back_side_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_selector.tscn")
