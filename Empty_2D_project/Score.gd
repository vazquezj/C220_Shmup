extends Label

var Score = 0

func _ready():
	pass

func increase_score():
	self.Score += 10
	self.text = "Score: " + str(Score)