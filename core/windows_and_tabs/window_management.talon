window (new | open): app.window_open()
window next: app.window_next()
window last: app.window_previous()
window close: app.window_close()
window hide: app.window_hide()

focus <user.running_applications> [<phrase>]$:
    user.switcher_focus(running_applications)
    sleep(200ms)
    user.parse_phrase(phrase or "")


running list: user.switcher_toggle_running()
running close: user.switcher_hide_running()
launch <user.launch_applications>: user.switcher_launch(launch_applications)

#snap <user.window_snap_position>: user.snap_window(window_snap_position)
#snap next [screen]: user.move_window_next_screen()
#snap last [screen]: user.move_window_previous_screen()
snap screen <number>: user.move_window_to_screen(number)
#snap <user.running_applications> <user.window_snap_position>:
#    user.snap_app(running_applications, window_snap_position)
#snap <user.running_applications> [screen] <number>:
#    user.move_app_to_screen(running_applications, number)

chromer [<phrase>]$:
    user.switcher_focus("Google Chrome")
    sleep(200ms)
    user.parse_phrase(phrase or "")

focus termy$:  
    user.switcher_focus("Terminal")
    sleep(20ms)

focus warp$:  
    user.switcher_focus("Warp")
    sleep(20ms)

vee coder [<phrase>]$:
    user.switcher_focus("Code")
    sleep(200ms)
    user.parse_phrase(phrase or "")


tune talon [<phrase>]$:
    user.switcher_focus("Code")
    sleep(250ms)
    user.vscode("workbench.action.openRecent")
    sleep(250ms)
    insert("knausj_talon")
    key(enter)
    sleep(250ms)
    user.parse_phrase(phrase or "")

slacker [<phrase>]$:
    user.switcher_focus("Slack")
    sleep(200ms)
    user.parse_phrase(phrase or "")