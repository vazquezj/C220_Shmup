extends Area2D

func _process(delta):
	self.position.y -= 4

func _on_Laser_area_entered( area ):
	self.queue_free()
	area.queue_free()