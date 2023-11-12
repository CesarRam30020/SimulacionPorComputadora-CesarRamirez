# This script is an autoload, that can be accessed from any other script!

extends Node2D

var score : int = 0
var timer : float = 0
var musica : bool = true
# Adds 1 to score variable
func add_score():
	score += 1

func _process(delta: float):
	timer += delta

# Loads next level
func load_next_level(next_scene : PackedScene):
	next_scene.instance().timer = timer
	next_scene.instance().musica = musica
	get_tree().change_scene_to_packed(next_scene)
