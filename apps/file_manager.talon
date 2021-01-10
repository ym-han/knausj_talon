tag: user.file_manager
-
title force: user.file_manager_refresh_title()
manager show: user.file_manager_toggle_pickers()
manager refresh: user.file_manager_update_lists()

go desk: user.file_manager_open_user_directory("Desktop")
go documents: user.file_manager_open_user_directory("Documents")
go downloads: user.file_manager_open_user_directory("Downloads")
go pictures: user.file_manager_open_user_directory("Pictures")
go profile: user.file_manager_open_user_directory("")

go talon home: user.file_manager_open_directory(path.talon_home())
go talon user: user.file_manager_open_directory(path.talon_user())
go user: user.file_manager_open_directory(path.user_home())

go back: user.file_manager_go_back()
go forward: user.file_manager_go_forward()

parent: user.file_manager_open_parent()

^follow <number>$: 
    directory = user.file_manager_get_directory_by_index(number - 1)
    user.file_manager_open_directory(directory)
^follow {user.file_manager_directories}$: user.file_manager_open_directory(file_manager_directories)
^open <number>$: 
    file = user.file_manager_get_file_by_index(number - 1)
    user.file_manager_open_file(file)
^folder <number>$: 
    directory = user.file_manager_get_directory_by_index(number - 1)
    user.file_manager_select_directory(directory)
^file <number>$: 
    file = user.file_manager_get_file_by_index(number - 1)
    user.file_manager_select_file(file)
^file {user.file_manager_files}$: user.file_manager_select_file(file_manager_files)

#new folder
#folder new
new folder <user.text>: 
    user.file_manager_new_folder(text)

show properties: user.file_manager_show_properties()

# open (new) terminal at location
new term here: user.file_manager_terminal_here()

next folder: user.file_manager_next_folder_page()
previous folder: user.file_manager_previous_folder_page()

next file: user.file_manager_next_file_page()
previous file: user.file_manager_previous_file_page()

