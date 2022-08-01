extends Camera2D

var target = null
var zoomed = false
var center = Vector2.ZERO

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	center = get_viewport_rect(). size/2

func _process(delta):
	if Input. is_action_just_pressed("zoom"):
		if zoomed:
			target = null
			zoomed = false
		else:
			target = owner.get_node("Player")
			zoomed = true

	if zoomed:
		zoom = zoom.move_toward(Vector2(0.3,0.3), 0.03)
		position = position.move_toward(target.global_position,70)

	else:
		zoom = zoom.move_toward(Vector2(1,1),0.03)
		position = position.move_toward(center,80)
