extends Area2D


func action():
	if Globais.segurando:
		Globais.pause = true
		Dialogic.timeline_ended.connect(ended)
		Dialogic.start("reclamando2")
	else:
		Globais.pause = true
		Dialogic.timeline_ended.connect(ended)
		Dialogic.start("reclamando3")
		Globais.ovos += 1
		Globais.segurando = true
		Globais.pause = false
		queue_free()
func ended():
	Dialogic.timeline_ended.disconnect(ended)
	Globais.pause = false
