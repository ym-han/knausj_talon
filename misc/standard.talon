#(jay son | jason ): "json"
#(http | htp): "http"
#tls: "tls"
#M D five: "md5"
#word (regex | rejex): "regex"
#word queue: "queue"
#word eye: "eye"
#word iter: "iter"
#word no: "NULL"
#word cmd: "cmd"
#word dup: "dup"
#word shell: "shell".
zoom in: edit.zoom_in()
zoom out: edit.zoom_out()
page up: key(pgup)
page down: key(pgdown)
copy: edit.copy()
cut it: edit.cut()
paste it: edit.paste()

undo: edit.undo()
redo that: edit.redo()
paste match: edit.paste_match_style()
save it: edit.save()

junk: key(backspace)    
# might switch back to 'wipe' tho

(pad | padding): 
	insert("  ") 
	key(left)
slap:
	edit.line_end()
	key(enter)