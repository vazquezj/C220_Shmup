extends Area2D

var Speed = 0
var Health = 3

func _process(delta):
	self.position.y += Speed

func _on_Enemy_area_entered( area ):
	if has_node("../Laser"):
		self.Health -= 1
	if has_node("../Missile"):
		self.Health -= 3
	if Health <= 0:
		self.queue_free()
		area.queue_free()
		$"../ScoreLabel".increase_score()