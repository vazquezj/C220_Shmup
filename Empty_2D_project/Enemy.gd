extends Area2D

var Speed = 0

func _process(delta):
	self.position.y += Speed

func _on_Enemy_area_entered( area ):
	self.queue_free()
	$"../ScoreLabel".Score += 10
	# $"../ScoreLabel".Text = $"../ScoreLabel".Score
	print($"../ScoreLabel".Score)