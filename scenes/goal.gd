extends Area2D
var original_position: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	original_position = global_position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if GlobalState.is_boss_level == true:
		visible = false
		global_position = Vector2(-9999, -9999)
		if GlobalState.lives < 1:
			global_position = original_position
