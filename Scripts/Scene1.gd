extends Node2D

func _process(delta):
	$Speed.text = "Speed: " +str($Character.speed)
