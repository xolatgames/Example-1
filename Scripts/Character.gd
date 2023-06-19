extends KinematicBody2D

var speed = 1
var fall_speed = 20
var velocity = Vector2.ZERO


func _process(delta):
	if Input.is_action_just_pressed("ui_speed1"):
		speed = 1
	if Input.is_action_just_pressed("ui_speed2"):
		speed = 2
	if Input.is_action_just_pressed("ui_speed3"):
		speed = 3
	if Input.is_action_just_pressed("ui_speed4"):
		speed = 4


func _physics_process(delta):
	velocity.x = 0
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed * 100
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed * 100
	
	if !is_on_floor():
		velocity.y += fall_speed
	else:
		velocity.y = 0.1
	
	move_and_slide(velocity, Vector2.UP)
