mousey: user.mouse_toggle_control_mouse()
zoom mouse: user.mouse_toggle_zoom_mouse()

camera overlay: user.mouse_toggle_camera_overlay()
run calibration: user.mouse_calibrate()	

touch: 
	mouse_click(0)
	# close the mouse grid if open
	user.grid_close()

righty: 
	mouse_click(1)
	# close the mouse grid if open
	user.grid_close()

midclick: 
	mouse_click(2)
	# close the mouse grid
	user.grid_close()

#see keys.py for modifiers.
#defaults
#command
#control
#option = alt
#shift
#super = windows key
<user.modifiers> touch: 
	key("{modifiers}:down")
	mouse_click(0)
	key("{modifiers}:up")
	# close the mouse grid
	user.grid_close()
<user.modifiers> righty: 
	key("{modifiers}:down")
	mouse_click(1)
	key("{modifiers}:up")
	# close the mouse grid
	user.grid_close()
dubclick: 
	mouse_click()
	mouse_click()
	# close the mouse grid
	user.grid_close()
(tripclick | triplick): 
	mouse_click()
	mouse_click()
	mouse_click()
	# close the mouse grid
	user.grid_close()
drag: 
	user.mouse_drag()
	# close the mouse grid
	user.grid_close()

# scroll <up / down> induces a smaller change than page <up/down>
scroll down: user.mouse_scroll_down()
scroll down here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_down()
tiny down: mouse_scroll(20)
tiny down here:
    user.mouse_move_center_active_window()
    mouse_scroll(20)

downs: user.mouse_scroll_down_continuous()
downs here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_down_continuous()

scroll up: user.mouse_scroll_up()
scroll up here:
 user.mouse_scroll_up()
tiny up: mouse_scroll(-20)
tiny up here:
    user.mouse_move_center_active_window()
    mouse_scroll(-20)

gups: user.mouse_scroll_up_continuous()
gups here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_up_continuous()


# TO DO: check if there's any real difference between gaze and gaze here
eye gaze: user.mouse_gaze_scroll()
gaze here:
    user.mouse_move_center_active_window()
    user.mouse_gaze_scroll()

stop: user.mouse_scroll_stop()
stop here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_stop()

scroll left: mouse_scroll(0, -40)
scroll left here:
    user.mouse_move_center_active_window()
    mouse_scroll(0, -40)
tiny left: mouse_scroll(0, -20)
tiny left here:
    user.mouse_move_center_active_window()
    mouse_scroll(0, -20)
scroll right: mouse_scroll(0, 40)
scroll right here:
    user.mouse_move_center_active_window()
    mouse_scroll(0, 40)
tiny right: mouse_scroll(0, 20)
tiny right here:
    user.mouse_move_center_active_window()
    mouse_scroll(0, 20)

curse yes: user.mouse_show_cursor()
curse no: user.mouse_hide_cursor()

copy mouse position: user.copy_mouse_position()