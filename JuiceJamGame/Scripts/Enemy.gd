extends KinematicBody2D

var speed = 200


onready var target = get_parent().get_node("Player")

func _physics_process(delta):
	var direction = global_position.direction_to(target.global_position)
	move_and_collide(direction*speed*delta)




func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		print("player hit")
	if body.is_in_group("Enemy"):
		if self != body:
			queue_free()
			body.queue_free()
