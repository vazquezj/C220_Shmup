extends Area2D

var Speed = 0

func _process(delta):
	self.position.y += Speed

func _on_Enemy_area_entered( area ):
	self.queue_free()
	area.queue_free()
	$"../ScoreLabel".increase_score()