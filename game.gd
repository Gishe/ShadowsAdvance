extends Node2D

func _ready():
	spawn_mob()
	

func spawn_mob():
	var slime = preload("res://slime.tscn").instantiate()
	%SpawnPathFollow.progress_ratio = randf()
	slime.global_position = %SpawnPathFollow.global_position
	add_child(slime)


func _on_timer_timeout():
	# spawn_mob()
	pass


func _on_player_health_depleted():
	%GameOver.visible = true
	get_tree().paused = true
