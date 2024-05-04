extends Node2D

const SPEED = 60

# 1 means the direction its going, and if we need to go in the other direction, swap to -1
var direction = 1

# ray cast elements
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft

# animated sprite, used to flip direction the sprite is facing
@onready var animated_sprite = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	
	# get x position (of slime in this case) and add value delta pixel
	# this means, lower frame rates or higher frame rates are independant of movespeed.
	# 60 * delta, is about SPEED times per second
	# direction * SPEED lets us change direction (pos or neg)
	position.x += ((direction * SPEED) * delta)
