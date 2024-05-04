extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	print("You died")
	# make the game go in slow motion when you die
	Engine.time_scale = 0.5
	# get the player (only body that enters this) and remove the collider
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

# runs when timer ends
func _on_timer_timeout():
	# make the game go back to normal on respawn
	Engine.time_scale = 1.0
	# reload the scene
	get_tree().reload_current_scene()
