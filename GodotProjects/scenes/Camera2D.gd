extends Camera2D

var target = null
var zoomed = false
var center = Vector2.ZERO


func _ready():
	center = get_viewport_rect().size/2
	target = owner.get_node("player")
	
	position = target.global_position
	zoom = Vector2(.3,.3)

func _process(delta):
	if Input.is_action_just_pressed("Zoom"):
		if zoomed:
			target = null
			zoomed = false
		else:
			target = owner.get_node("player")
			zoomed = true

	if zoomed:
		position = target.global_position
		zoom = Vector2(.3,.3)


	
	else:
		position = center
		zoom = Vector2(1,1)
		
