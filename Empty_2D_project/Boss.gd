extends Area2D

var Health = 8

func _process(delta):
	self.position.y += 1.5

func _on_Boss_area_entered( area ):
	self.Health -= 1
	if Health <= 0:
		self.queue_free()
		$"../ScoreLabel".increase_score_Boss()