os: mac
app: com.Google_Colab

-

run it: key(shift-enter)
palette: key(cmd-shift-p)

new cell: 
    key(ctrl-m)
    key(b)

new above: 
    key(ctrl-m)
    key(a)

new text: 
    key(ctrl-m)
    key(t)

^<number> and below:
  key("shift-down:{number}")

^<number> and above:
  key("up:{number - 1}")
  key("shift-down:{number}")


move cell up: 
    key(ctrl-m)
    key(k)

move cell down: 
    key(ctrl-m)
    key(j)

undo cell:
    key(cmd-m)
    key(z)

redo cell: key(cmd-shift-y)

junk cell: 
        key(cmd-m)
        key(d)

colab shortcuts: 
    key(ctrl-m)
    key(h)

collapse section: 
	key(cmd-])

toggle current section: key(cmd-')

make code cell:
	key(cmd-m-y)

make text cell:
	key(cmd-m-m)


stop execution: key(cmd-m-i)


search replace: key(cmd-h)

palette: key(cmd-shift-p)

run all cells: key(cmd-f9)

restart runtime: key(cmd-m)

toggle output: key(cmd-m-o)