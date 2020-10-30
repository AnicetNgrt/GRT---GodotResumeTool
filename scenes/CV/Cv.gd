extends Control

func _input(event):
	if Input.is_action_just_pressed("screenshot"):
		var img = get_viewport().get_texture().get_data()
		img.flip_y()
		yield(get_tree(), "idle_frame")
		yield(get_tree(), "idle_frame")
		var name = ""
		for child in get_children():
			if child is MarginContainer:
				if child.visible: name = child.name
		img.save_png("user://CV"+name+str(randi()%50)+".png")
		print(OS.get_user_data_dir())
	if Input.is_action_just_pressed("switch"):
		pass
	
func _ready():
	randomize()
