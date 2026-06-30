extends Node2D
@onready var BaseKomplexOverrideFloor = $"baseLevelKomplex/floor/CollisionShape2D"
@onready var BaseKomplexOverrideDeathSquare = $"baseLevelKomplex/ColorRect"
@onready var BaseKomplexOverridePlayer = $"baseLevelKomplex/player"




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalState.is_boss_level = false
	BaseKomplexOverrideFloor.disabled = true
	GlobalState.levelid = 4
	BaseKomplexOverrideDeathSquare.z_index = 1
	BaseKomplexOverridePlayer.z_index = 1
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
