extends Node2D

@onready var btn_play = $Play/TextureButton
@onready var btn_level = $Levelbtns/TextureButton
@onready var btn_credit = $Creditsbtn/TextureButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	btn_play.pressed.connect(_on_pressed_play)
	btn_level.pressed.connect(_on_pressed_level)
	btn_credit.pressed.connect(_on_pressed_credit)

func _on_pressed_play():
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")

func _on_pressed_level():
	get_tree().change_scene_to_file("res://scenes/level_selector.tscn")

func _on_pressed_credit():
	get_tree().change_scene_to_file("res://scenes/credit_screen.tscn")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
