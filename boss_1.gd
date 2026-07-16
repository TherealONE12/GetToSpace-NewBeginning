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
	$Boss/KillPlayerArea/CollisionShape2D.get_parent().body_entered.connect(_on_boss_damager_body_entered)
	$Boss/DamageToBoss/CollisionShape2D.get_parent().body_entered.connect(_on_kill_player_area_body_entered)

func _on_kill_player_area_body_entered(body: Node2D) -> void:
	if body == BaseKomplexOverridePlayer:
		BaseKomplexOverridePlayer.needsBossKilledPlayer = 1
		BaseKomplexOverridePlayer.startpointx = 150

func _on_boss_damager_body_entered(body: Node2D) -> void:
	if body == BaseKomplexOverridePlayer:
		BaseKomplexOverridePlayer.position.y -= 1
		BaseKomplexOverridePlayer.velocity.y -= 800
		BaseKomplexOverridePlayer.velocity.x += 800
