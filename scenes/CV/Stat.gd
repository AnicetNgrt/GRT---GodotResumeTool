tool
extends MarginContainer

export(String) var label setget set_label
func set_label(val):
	label = val
	if not is_inside_tree(): yield(self,"ready")
	$Margin/Content/Label.text = val

export(float) var number setget set_number
func set_number(val):
	number = val
	if not is_inside_tree(): yield(self,"ready")
	$Margin/Content/Margin/Label.text = str(val)
