extends Sprite

func _ready():
	print("Player is alive!")
	pass

func _process(delta):
	self.position.x = get_global_mouse_position().x