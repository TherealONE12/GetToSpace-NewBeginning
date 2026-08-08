extends Node2D
@onready var BaseKomplexOverrideGoal = $"baseLevelKomplex/Goal"
@onready var BaseKomplexOverrideFloor = $"baseLevelKomplex/floor/CollisionShape2D"
@onready var BaseKomplexOverrideKill = $"baseLevelKomplex/Kill/CollisionShape2D"
@onready var player = $"../baseLevelKomplex/player"
@onready var camera = $"../baseLevelKomplex/Camera2D"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalState.is_boss_level = false
	BaseKomplexOverrideGoal.position.y = 500
	GlobalState.levelid = 3
	BaseKomplexOverrideFloor.disabled = true
	BaseKomplexOverrideKill.disabled = true
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == player:
		camera
