extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalState.is_boss_level = true
	$floor_Mode1/CollisionShape2D.disabled = false
	$floor_Mode2/CollisionPolygon2D.disabled = true
	$floor_Mode3/CollisionPolygon2D.disabled = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_goal_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://scenes/boss_1.tscn")
