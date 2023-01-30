extends KinematicBody2D


var speed = 250
var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	look_at_mouse()
	move_to_mouse()
	
func look_at_mouse():
	look_at(get_global_mouse_position())
	rotation_degrees += 0

func move_to_mouse():
	var direction = get_global_mouse_position() - position
	direction = direction.normalized()
	move_and_slide(direction*speed)
