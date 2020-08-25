tool
extends MarginContainer

export(String,MULTILINE) var label setget set_label
func set_label(val):
	label = val
	if not is_inside_tree(): yield(self,"ready")
	$Margin/Content/Label.text = val
