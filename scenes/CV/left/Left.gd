tool
extends MarginContainer

export(String) var title setget _set_title

func _set_title(value):
	if not is_inside_tree(): yield(self, "ready")
	title = value
	$Name/H3.text = title
