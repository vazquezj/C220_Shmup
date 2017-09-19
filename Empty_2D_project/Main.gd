extends Node

func _ready():
	print("My game works!")
	pass

func _process(delta):
	if Input.is_action_just_pressed("Shoot"):
		var newLaser = $"Laser".duplicate()
		newLaser.position.x = $"Player".position.x
		newLaser.position.y = $"Player".position.y - 60
		self.add_child(newLaser)
	if Input.is_action_just_pressed("reset_game"):
		get_tree().reload_current_scene()

func _on_Timer_timeout():
	var newEnemy = $"Enemy".duplicate()
	self.add_child(newEnemy)
	newEnemy.position.x = rand_range(0, 480)
	newEnemy.position.y = -100
	newEnemy.Speed += rand_range(1,5)