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
	if Input.is_action_just_pressed("Zoom"):
		if zoomed:
			target = null
			zoomed = false
		else:
			target = owner.get_node("player")
			zoomed = true

	if zoomed:
		zoom = Vector2(0.3,0.3)
		position = target.global_position

	else:
		zoom = Vector2(1,1)
		position = center
