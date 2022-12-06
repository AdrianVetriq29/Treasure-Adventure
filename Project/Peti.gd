extends Area2D

func _on_Peti_body_entered(body):
	if body.name == 'Hero':
		body.ambil_peti()
	var _efekpeti = preload ("res://EfekPeti.tscn")
	var efekpeti = _efekpeti.instance()
	efekpeti.transform = self.transform
	get_tree(). current_scene.add_child(efekpeti)
	queue_free()
