extends Area2D

func _process(delta):
	self.position.y -= 2

func _on_Missile_area_entered( area ):
	self.queue_free()
	#$"../Enemy".decrease_health_Missile()