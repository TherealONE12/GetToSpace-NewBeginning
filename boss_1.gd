extends Node2D
@onready var BaseKomplexOverrideDeathSquare = $"baseLevelKomplex/ColorRect"
@onready var BaseKomplexOverridePlayer = $"baseLevelKomplex/player"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalState.is_boss_level = true
	$"baseLevelKomplex/floor/CollisionShape2D".disabled = false
	$floor_Mode2/CollisionPolygon2D.disabled = true
	$floor_Mode3/CollisionPolygon2D.disabled = true
	
	BaseKomplexOverrideDeathSquare.z_index = 1
	BaseKomplexOverridePlayer.z_index = 1
	
	GlobalState.levelid = 5
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
