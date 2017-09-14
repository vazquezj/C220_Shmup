extends Label

var Score = 0

func _ready():
	pass

func increase_score():
	self.text = str(Score)