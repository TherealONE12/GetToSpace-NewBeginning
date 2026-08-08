extends Node2D
@onready var BaseKomplexOverrideDeathSquare = $"baseLevelKomplex/ColorRect"
@onready var BaseKomplexOverridePlayer = $"baseLevelKomplex/player"
@onready var Boss1KomplexOverrideBoss = $"Boss"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalState.is_boss_level = true
	$"baseLevelKomplex/floor/CollisionShape2D".disabled = false
	$floor_Mode2/CollisionPolygon2D.disabled = true
	$floor_Mode3/CollisionPolygon2D.disabled = true
	$"Explosion_lvl1".frame = 7
	$"Explosion_lvl2".frame = 7
	$"Explosion_lvl3".frame = 7
	$"Explosion_lvl4".frame = 7
	$"Explosion_lvl4-2".frame = 7
	$"Explosion_lvl4-3".frame = 7
	BaseKomplexOverrideDeathSquare.z_index = 1
	BaseKomplexOverridePlayer.z_index = 1
	
	GlobalState.levelid = 5

func _on_kill_player_area_body_entered(body: Node2D) -> void:
	if body == BaseKomplexOverridePlayer:
		BaseKomplexOverridePlayer.needsBossKilledPlayer = 1
		BaseKomplexOverridePlayer.startpointx = 150
		GlobalState.lives = 3
		GlobalState.bossreset = 1
		$"Boss_animations".stop()
		$"Boss_animations".play("RESET")

func _on_boss_damager_body_entered(body: Node2D) -> void:
	if body == BaseKomplexOverridePlayer:
		BaseKomplexOverridePlayer.velocity.y -= 1000
		BaseKomplexOverridePlayer.velocity.x += 800
	
