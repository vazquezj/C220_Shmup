extends Node

func _ready():
	print("My game works!")
	pass

func _process(delta):
	if Input.is_action_just_pressed("Shoot"):
		var newLaser = $"Laser".duplicate()
		newLaser.position = $"Player".position
		self.add_child(newLaser)