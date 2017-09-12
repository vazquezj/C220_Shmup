extends Area2D

func _process(delta):
	self.position.y += 3

func _on_Enemy_area_entered( area ):
	self.queue_free()
	# print ("Enemy Dead!")