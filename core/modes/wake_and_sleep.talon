#defines the commands that sleep/wake Talon
mode: all
-

^talk drowse [<phrase>]$: speech.disable()
^talon wake$: speech.enable()

#^drowse [<phrase>]$: user.toggle_microphone()
key(cmd-alt-shift-s): user.toggle_microphone()


drowse <phrase> resume$: skip()

