extends Area2D

func _process(delta):
	self.position.y -= 5

func _on_Laser_area_entered( area ):
	self.queue_free() # removes object
	area.queue_free() # removes other object