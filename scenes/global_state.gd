extends Node

var is_boss_level = false
var lives = 3
var FlyPatch = true
var levelid = -1
var bossreset = -1
var mobile = false
var cutsceneoverride = false
var needs_help = true


func _ready() -> void:
	if OS.get_name() == "Android" or OS.get_name() == "iOS":
		mobile = true
	else:
		mobile = false
