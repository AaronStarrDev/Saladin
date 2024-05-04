extends Node

var score = 0
@onready var coins_collected = $Coins_Collected
@onready var great_job = $Great_Job

func add_point():
	score += 1
	if score == 10:
		great_job.text = "Great Job!"
		coins_collected.text = "You collected all " + str(score) + " coins!"
	elif score > 6:
		great_job.text = "Way to Go!"
		coins_collected.text = "You collected " + str(score) + " coins out of 10!"
	elif score > 3:
		great_job.text = "Nice!"
		coins_collected.text = "You collected " + str(score) + " coins out of 10!"
	else:
		great_job.text = "Keep trying!"
		coins_collected.text = "You collected " + str(score) + " coins out of 10!"
