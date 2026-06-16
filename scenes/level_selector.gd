extends Node2D

func _on_go_home_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Menu.tscn")
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_level_1_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")


func _on_level_2_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")


func _on_level_3_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_3.tscn")


func _on_level_4_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_4.tscn")


func _on_boss_1_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/boss_1.tscn")
