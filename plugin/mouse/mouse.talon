control mouse legacy: tracking.control1_toggle()
control mouse: tracking.control_toggle()
mouse off: user.mouse_sleep()
mouse on: user.mouse_wake()
zoom mouse: tracking.control_zoom_toggle()
camera overlay: tracking.control_debug_toggle()
calibrate mouse: tracking.calibrate()
touch:
    # close zoom if open
    user.zoom_close()
    mouse_click(0)
    # close the mouse grid if open
    user.grid_close()
    # End any open drags
    # Touch automatically ends left drags so this is for right drags specifically
    user.mouse_drag_end()

right touch:
    mouse_click(1)
    # close the mouse grid if open
    user.grid_close()

mid click:
    # close zoom if open
    user.zoom_close()
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
    # close zoom if open
    user.zoom_close()
    key("{modifiers}:down")
    mouse_click(0)
    key("{modifiers}:up")
    # close the mouse grid
    user.grid_close()
<user.modifiers> righty:
    # close zoom if open
    user.zoom_close()
    key("{modifiers}:down")
    mouse_click(1)
    key("{modifiers}:up")
    # close the mouse grid
    user.grid_close()
dub click:
    mouse_click()
    mouse_click()
    # close the mouse grid
    user.grid_close()
(trip click | trip lick):
    # close zoom if open
    user.zoom_close()
    mouse_click()
    mouse_click()
    mouse_click()
    # close the mouse grid
    user.grid_close()
drag it:
    # close zoom if open
    user.zoom_close()

    user.mouse_drag(0)
    
    # close the mouse grid
    user.grid_close()

right drag:
    # close zoom if open
    user.zoom_close()
    user.mouse_drag(1)
    # close the mouse grid
    user.grid_close()
end drag | drag end: user.mouse_drag_end()
#scroll down: user.mouse_scroll_down()
scroll down here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_down()
scroll tiny [down]: user.mouse_scroll_down(0.2)
scroll tiny [down] here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_down(0.2)

downy: user.mouse_scroll_down_continuous()
downslow: user.mouse_scroll_down_continuous(0.45)



#scroll downer here:
#    user.mouse_move_center_active_window()
#    user.mouse_scroll_down_continuous()

#scroll up: user.mouse_scroll_up()
scroll up here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_up()
scroll tiny up: user.mouse_scroll_up(0.2)
scroll tiny up here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_up(0.2)


guppy: user.mouse_scroll_up_continuous()
gupslow: user.mouse_scroll_up_continuous(0.45)
#gups here:
#    user.mouse_move_center_active_window()
#    user.mouse_scroll_up_continuous()

scroll gaze: user.mouse_gaze_scroll()
scroll gaze here:
    user.mouse_move_center_active_window()
    user.mouse_gaze_scroll()
scroll stop: user.mouse_scroll_stop()
scroll stop here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_stop()
scroll left: user.mouse_scroll_left()
scroll left here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_left()
scroll tiny left: user.mouse_scroll_left(0.5)
scroll tiny left here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_left(0.5)
scroll right: user.mouse_scroll_right()
scroll right here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_right()
scroll tiny right: user.mouse_scroll_right(0.5)
scroll tiny right here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_right(0.5)

copy mouse position: user.copy_mouse_position()
#curse no:
    # Command added 2021-12-13, can remove after 2022-06-01
    app.notify("Please activate the user.mouse_cursor_commands_enable tag to enable this command")

# To scroll with a hiss sound, set mouse_enable_hiss_scroll to true in settings.talon
#mouse hiss up: user.hiss_scroll_up()
#mouse hiss down: user.hiss_scroll_down()
