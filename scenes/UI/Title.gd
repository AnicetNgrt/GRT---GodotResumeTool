tool
extends MarginContainer

export(String) var text setget set_text
func set_text(val):
	text = val
	if not is_inside_tree(): yield(self,"ready")
	$Label.text = val
