extends Control


func _input(event):
	if Input.is_action_just_pressed("screenshot"):
		var img = get_viewport().get_texture().get_data()
		yield(get_tree(), "idle_frame")
		yield(get_tree(), "idle_frame")
		img.save_png("user://CV"+str(randi()%50)+".png")
	if Input.is_action_just_pressed("switch"):
		$GDEVversion.visible = !$GDEVversion.visible
		$PROGversion.visible = !$PROGversion.visible
	
func _ready():
	randomize()
