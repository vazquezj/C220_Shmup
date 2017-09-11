extends Area2D

func _ready():
	print("Player is alive!")
	pass

func _process(delta):
	self.position.x = get_global_mouse_position().x

func _on_Player_area_entered( area ):
	self.queue_free()