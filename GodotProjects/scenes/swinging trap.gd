extends Node2D

func _ready():
	$AnimationPlayer.play("swing")
 



func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		print("player dead")
