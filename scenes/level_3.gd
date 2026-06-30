extends Node2D
@onready var BaseKomplexOverrideGoal = $"baseLevelKomplex/Goal"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalState.is_boss_level = false
	BaseKomplexOverrideGoal.position.y = 500
	GlobalState.levelid = 3


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
