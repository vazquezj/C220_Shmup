extends Label

var EnemyHealth = 3

func _ready():
	pass

func decrease_health():
	self.EnemyHealth -= 1
	self.text = str(EnemyHealth)