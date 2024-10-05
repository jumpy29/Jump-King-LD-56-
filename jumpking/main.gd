extends Node2D
@onready var player = $Player
@onready var anim_player = player.get_node("AnimationPlayer")

func _ready():
	anim_player.play("Intro")  

func _on_quit_pressed() -> void:
	get_tree().quit()
	
func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://mechanics_tester.tscn")
