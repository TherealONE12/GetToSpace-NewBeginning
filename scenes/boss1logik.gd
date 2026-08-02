extends CharacterBody2D
@onready var player = $"../baseLevelKomplex/player"
@onready var camera = $"../baseLevelKomplex/Camera2D"
@onready var floor_Mode1 = $"../baseLevelKomplex/floor/CollisionShape2D"
@onready var floor_Mode2 = $"../floor_Mode2/CollisionPolygon2D"
@onready var floor_Mode3 = $"../floor_Mode3/CollisionPolygon2D"
@onready var mode1floorimagep1 = $"../HoleShadow3"
@onready var mode1floorimagep2 = $"../HoleEdge3"
@onready var mode2floorimagep1 = $"../HoleShadow"
@onready var mode2floorimagep2 = $"../HoleEdge"
@onready var mode2floorimagep3 = $"../HoleShadow2"
@onready var mode2floorimagep4 = $"../HoleEdge2"


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var max_velo = 400
var max_inv_velo = -400
var boss_alive = true
var is_flying = false
var first = true

func _ready() -> void:
	mode1floorimagep1.visible = false
	mode1floorimagep2.visible = false
	mode2floorimagep1.visible = false
	mode2floorimagep2.visible = false
	mode2floorimagep3.visible = false
	mode2floorimagep4.visible = false
	
	$"../Intro1".visible = true
	$"../Intro2".visible = false
	$"../Intro3".visible = false
	$"../Intro4".visible = false
	$"../Intro5".visible = false
	$"../Intro6".visible = false
	$"../Intro7".visible = false
	$"../Intro8".visible = false
	
	$"../Boss_animations".play("start-scene")
	while $"../Boss_animations".is_playing():
		await get_tree().process_frame
	
	$"../Intro1".visible = false
	$"../Intro2".visible = false
	$"../Intro3".visible = false
	$"../Intro4".visible = false
	$"../Intro5".visible = false
	$"../Intro6".visible = false
	$"../Intro7".visible = false
	$"../Intro8".visible = false
	
	first = false


func _physics_process(delta: float) -> void:
	if first == true:
		return
	
	if boss_alive == true:
		# Add the gravity.
		if not is_on_floor():
			velocity += get_gravity() * delta
		
		if is_flying:
			velocity.y = 0

		
		if player.position.x < position.x:
			if velocity.x > max_inv_velo:
				velocity.x -= 10
		else:
			if velocity.x < max_velo:
				velocity.x += 10
		
		if GlobalState.bossreset == 1:
			_on_player_boss_reset(1)
			floor_Mode1.disabled = false
			GlobalState.bossreset = -1
			$"../Intro1".visible = false
			$"../Intro2".visible = false
			$"../Intro3".visible = false
			$"../Intro4".visible = false
			$"../Intro5".visible = false
			$"../Intro6".visible = false
			$"../Intro7".visible = false
			$"../Intro8".visible = false
		move_and_slide()

func screen_shake(duration: float, strength: float):
	var tween = create_tween()
	for i in range(20):
		tween.tween_property(camera, "offset", 
		Vector2(randf_range(-strength, strength), randf_range(-strength, strength)),
		duration / 20)
		tween.tween_property(camera, "offset", Vector2.ZERO, 0.05)

func _on_player_boss_reset(bossId: int) -> void:
	position.x = 1850
	position.y = 777
	velocity.x = 0
	velocity.y = 0
	GlobalState.lives = 3
	floor_Mode1.set_deferred("disabled", false)
	floor_Mode2.set_deferred("disabled", true)
	floor_Mode3.set_deferred("disabled", true)
	$KillPlayer/CollisionShape2D.set_deferred("enabled", true)
	is_flying = false
	mode1floorimagep1.visible = false
	mode1floorimagep2.visible = false
	mode2floorimagep1.visible = false
	mode2floorimagep2.visible = false
	mode2floorimagep3.visible = false
	mode2floorimagep4.visible = false
	$"../Explosion_lvl1".frame = 7
	$"../Explosion_lvl2".frame = 7
	$"../Explosion_lvl3".frame = 7
	$"../Explosion_lvl4".frame = 7
	$"../Explosion_lvl4-2".frame = 7
	$"../Explosion_lvl4-3".frame = 7
	$"../Boss_animations".play("RESET")
	$"../Intro1".visible = false
	$"../Intro2".visible = false
	$"../Intro3".visible = false
	$"../Intro4".visible = false
	$"../Intro5".visible = false
	$"../Intro6".visible = false
	$"../Intro7".visible = false
	$"../Intro8".visible = false

func _on_area_2d_Bosss_lost_Live_body_entered(body: Node2D) -> void:
	if body == player:
		GlobalState.lives -= 1
		$DamageBoss/CollisionShape2D.set_deferred("disabled", true)
		if GlobalState.lives < 1:
			screen_shake(0.6, 12)
			boss_alive = false
			$KillPlayer/CollisionShape2D.set_deferred("disabled", true)
			$DamageBoss/CollisionShape2D.set_deferred("disabled", true)
			floor_Mode1.set_deferred("disabled", false)
			floor_Mode3.set_deferred("disabled", true)
			epic_kill_animation()
			mode2floorimagep1.visible = false
			mode2floorimagep2.visible = false
			mode2floorimagep3.visible = false
			mode2floorimagep4.visible = false
			mode1floorimagep1.visible = false
			mode1floorimagep2.visible = false
			
			
		elif GlobalState.lives < 2:
			screen_shake(0.4, 8)
			await epic_lost2live_animation()
			max_velo = 600
			max_inv_velo = -600
			position.y = 620
			floor_Mode1.set_deferred("disabled", true)
			floor_Mode2.set_deferred("disabled", true)
			floor_Mode3.set_deferred("disabled", false)
			is_flying = true
			$DamageBoss/CollisionShape2D.set_deferred("disabled", false)
			
			
		elif GlobalState.lives < 3:
			screen_shake(0.2, 4)
			await epic_lost1live_animation()
			max_velo = 500
			max_inv_velo = -500
			position.y = 760
			floor_Mode1.set_deferred("disabled", true)
			floor_Mode2.set_deferred("disabled", false)
			floor_Mode3.set_deferred("disabled", true)
			is_flying = true
			$DamageBoss/CollisionShape2D.set_deferred("disabled", false)
		

func epic_kill_animation():
	$"../Boss_animations".play("boss_Kill")

func epic_lost1live_animation():
	$"../Boss_animations".play("boss_Lost1HP")
	await $"../Boss_animations".animation_finished

func epic_lost2live_animation():
	$"../Boss_animations".play("boss_Lost2HP")
	await $"../Boss_animations".animation_finished
