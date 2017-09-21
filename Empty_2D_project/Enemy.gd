extends Area2D

var Speed = 0
var Health = 3

func _process(delta):
	self.position.y += Speed

func _on_Enemy_area_entered( area ):
	self.Health -= 1
	$"EnemyHealth".decrease_health()
	if Health <= 0:
		self.queue_free()
		$"../ScoreLabel".increase_score()