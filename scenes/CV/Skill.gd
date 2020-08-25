tool
extends MarginContainer

export(String) var label setget set_label
func set_label(val):
	label = val
	if not is_inside_tree(): yield(self,"ready")
	$Margin/Content/Label.text = val

export(float,0,100) var progress setget set_progress
func set_progress(val):
	progress = val
	if not is_inside_tree(): yield(self,"ready")
	$Margin/Content/ProgressBar.value = val
