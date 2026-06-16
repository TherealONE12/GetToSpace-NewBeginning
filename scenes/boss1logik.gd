extends CharacterBody2D
@onready var player = $"../player"


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	if player.position.x < position.x:
		if velocity.x > -400:
			velocity.x -= 10
	else:
		if velocity.x < 400:
			velocity.x += 10
	
	move_and_slide()


func _on_player_boss_reset(bossId: int) -> void:
	position.x = 1850
	position.y = 800
	velocity.x = 0
	velocity.y = 0
