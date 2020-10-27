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

export(bool) var show_bar = true setget set_show_bar
func set_show_bar(val):
	show_bar = val
	if not is_inside_tree(): yield(self,"ready")
	$Margin/Content/ProgressBar.visible = show_bar

export(Color) var color setget set_color
func set_color(val):
	color = val
	if not is_inside_tree(): yield(self,"ready")
	$Panel.get("custom_styles/panel").bg_color = color

func _ready():
	color = $Panel.get("custom_styles/panel").bg_color
