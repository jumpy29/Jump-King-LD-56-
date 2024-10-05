extends Node2D

@onready var player = $Player
@onready var anim_player = player.get_node("AnimationPlayer")
@onready var intro_collision_body = $Player_temp_floor/CollisionShape2D
@onready var camera = $Player/Camera2D

func _ready():
	anim_player.play("Intro")  

func _on_quit_pressed() -> void:
	get_tree().quit()
	
func _on_play_pressed() -> void:
	destroy_collision_body()
	
func _process(delta):
	if player.position.y>2600:
		get_tree().change_scene_to_file("res://mechanics_tester.tscn")

#destroy introcollision body 
func destroy_collision_body():
	if intro_collision_body:
		intro_collision_body.queue_free() 
	
