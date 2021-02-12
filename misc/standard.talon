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
copy that: edit.copy()
cut that: edit.cut()
paste it: edit.paste()

undo: edit.undo()
redo that: edit.redo()
paste match: edit.paste_match_style()
save it: edit.save()

screen area: key(cmd-ctrl-shift-4)

comspace: ", "

junk: key(backspace)    
# might switch back to 'wipe' tho

(pad | padding): 
	insert("  ") 
	key(left)
slap:
	edit.line_end()
	key(enter)

alfred: key(cmd-space)
veems: key(ctrl-alt-shift-v)


# To do in the future: revert this to 'focus', and add a conditional: if already in list of running apps, just focus on it; if not, launch it.
#launch eye term: switcher_launch("Applications/iterm2.app")
launch sub: switcher_launch("Applications/Sublime Text.app")
launch anki: switcher_launch("Applications/Anki.app")

clipboard: key(ctrl-cmd-c)

word sub read it: "subreddit"