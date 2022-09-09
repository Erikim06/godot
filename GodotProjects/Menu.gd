extends Control


func _ready():
	pass


func _on_StartButton_pressed():
	get_tree().change_scene("res://scenes/world.tscn")


func _on_Quitbutton_pressed():
	get_tree().quit()
