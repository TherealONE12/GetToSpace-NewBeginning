extends Node2D
@onready var BaseKomplexOverrideGoal = $"baseLevelKomplex/Goal"
@onready var BaseKomplexOverrideStartPos = $"baseLevelKomplex/player"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalState.is_boss_level = false
	BaseKomplexOverrideGoal.position.x = 100
	BaseKomplexOverrideStartPos.position.x = 1700
	GlobalState.levelid = 2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
