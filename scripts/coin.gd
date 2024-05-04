extends Area2D

@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	game_manager.add_point()	
	animation_player.play("pickup") #plays the pickup animation in the animation player
	
	#queue_free() # removes the coin scene from the game (when picked up)
