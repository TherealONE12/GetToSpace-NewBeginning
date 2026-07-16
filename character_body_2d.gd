extends CharacterBody2D
@onready var hurt_overlay = $"../ColorRect"
@onready var dust = $"JumpParticles"
@onready var vdustL = $"SlideParticlesL"
@onready var vdustR = $"SlideParticlesR"



const SPEED = 450.0
const JUMP_VELOCITY = -450.0
var startpointx = 150
const startpointy = 550
var startpointxboss = 1800
var needsKill = 0
var needsBossKilledPlayer = 0

var FlyTimeout = false



func show_hurt():
	hurt_overlay.visible = true
	await get_tree().create_timer(0.2).timeout
	hurt_overlay.visible = false

func _physics_process(delta: float) -> void:
	
	if is_on_floor() and velocity.y > 100:
		dust.restart()
		dust.emitting = true

	if is_on_floor() and abs(velocity.x) > 150:
		if velocity.x > 0:
			vdustR.emitting = true
		else:
			vdustL.emitting = true
	else:
		vdustL.emitting = false
		vdustR.emitting = false
		
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_right", "move_left")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	
	if needsKill == 1:
		show_hurt()
		position.x = startpointx
		position.y = startpointy
		velocity.x = 0
		velocity.y = 0
		if GlobalState.is_boss_level == true:
			GlobalState.bossreset = 1
		needsKill = 0

	if needsBossKilledPlayer == 1:
		show_hurt()
		position.x = startpointx
		position.y = startpointy
		velocity.x = 0
		velocity.y = 0
		GlobalState.bossreset = 1
		
		needsBossKilledPlayer = 0
	
	move_and_slide()
	
	for i in get_slide_collision_count():
		var col = get_slide_collision(i)
		if "FlyPad" in col.get_collider().name and GlobalState.FlyPatch and not FlyTimeout:
			velocity.y -= 800
			FlyTimeout = true
		if "FlyPad" in col.get_collider().name and not GlobalState.FlyPatch:
			velocity.y -= 800

	
	if velocity.y > -10:
		FlyTimeout = false


func _on_kill_body_entered(body: Node2D) -> void:
	if body == self:
		needsKill = 1
		if GlobalState.levelid == 2:
			startpointx = 1700
		else:
			startpointx = 150


func _on_Boss_1_body_entered(body: Node2D) -> void:
	if body == self:
		needsBossKilledPlayer = 1
		startpointx = 150
		startpointxboss = 1800


func _on_area_2d_Boss_Damager_body_entered(body: Node2D) -> void:
	if body == self:
		velocity.y -= 800
		velocity.x += 800

func _on_goal_body_entered(body: Node2D) -> void:
	if body == self:
		if GlobalState.levelid == 1:
			get_tree().call_deferred("change_scene_to_file", "res://scenes/level_2.tscn")
		elif GlobalState.levelid == 2:
			get_tree().call_deferred("change_scene_to_file", "res://scenes/level_3.tscn")
		elif GlobalState.levelid == 3:
			get_tree().call_deferred("change_scene_to_file", "res://scenes/level_4.tscn")
		elif GlobalState.levelid == 4:
			get_tree().call_deferred("change_scene_to_file", "res://scenes/boss_1.tscn")
