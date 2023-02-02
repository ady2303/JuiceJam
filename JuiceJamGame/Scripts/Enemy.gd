extends Node2D

var speed = 200
onready var kb = $KinematicBody2D

onready var target = get_parent().get_node("Player")

func _physics_process(delta):
	var direction = kb.global_position.direction_to(target.global_position)
	$KinematicBody2D.move_and_collide(direction*speed*delta)


