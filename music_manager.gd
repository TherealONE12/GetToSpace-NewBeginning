# music_manager.gd
extends Node

var player_a: AudioStreamPlayer
var player_b: AudioStreamPlayer
var current = "A"
var fade_time = 1.5

# Tracks
var track_space    = preload("res://musik/background/space.mp3")
var track_mountain = preload("res://musik/background/the_mountain-intense-intense-music-508028.mp3")
var track_orbital  = preload("res://musik/background/Orbital_Colossus.mp3")
var track_magic    = preload("res://musik/background/magic_space.mp3")
var track_fly      = preload("res://musik/background/Fly.mp3")

func _ready():
	player_a = AudioStreamPlayer.new()
	player_b = AudioStreamPlayer.new()
	add_child(player_a)
	add_child(player_b)

func play_track(stream: AudioStream):
	var from_player = player_a if current == "A" else player_b
	var to_player   = player_b if current == "A" else player_a

	to_player.stream = stream
	to_player.volume_db = -80
	to_player.play()

	var tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property(from_player, "volume_db", -80, fade_time)
	tween.tween_property(to_player,   "volume_db",   0, fade_time)

	await tween.finished
	from_player.stop()
	current = "B" if current == "A" else "A"
