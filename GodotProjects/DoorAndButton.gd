extends Node2D

func _ready():
	$AnimationPlayer.play("ButtonUp") 
	$AnimationPlayer.play("DoorClosed")
	

func _on_Area2D_body_entered(body):
	if body. is_in_group("player"):
		$AnimationPlayer.play("ButtonDown")
		$AnimationPlayer.play("DoorOpen")
