tool
extends MarginContainer

export(bool) var avec_notes = false setget set_avec_notes

func set_avec_notes(val):
	avec_notes = val
	if not is_inside_tree():
		yield(self, "ready")
	var artpj = $Content/ArticleProjets
	if avec_notes:
		artpj.get_child(artpj.get_child_count()-1).hide()
		artpj.get_child(artpj.get_child_count()-2).show()
	else:
		artpj.get_child(artpj.get_child_count()-2).hide()
		artpj.get_child(artpj.get_child_count()-1).show()
