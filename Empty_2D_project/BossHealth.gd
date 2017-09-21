extends Label

var BossHealth = 10

func _ready():
	pass

func decrease_health():
	self.BossHealth -= 1
	self.text = str(BossHealth)