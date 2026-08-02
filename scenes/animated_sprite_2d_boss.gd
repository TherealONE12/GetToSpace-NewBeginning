extends AnimatedSprite2D
var done1 = false
var done2 = false
var done3 = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if GlobalState.lives == 3 and not done1:
		play("default")
		done1 = true
	elif GlobalState.lives == 2 and not done2:
		play("flying_phase1")
		done2 = true
	elif GlobalState.lives == 1 and not done3:
		play("flying_phase2")
		done3 = true
	else:
		play("default")
	
	if GlobalState.bossreset == 1:
		done1 = false
		done2 = false
		done3 = false
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
