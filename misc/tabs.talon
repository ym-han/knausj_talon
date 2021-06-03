tag: user.tabs
-
new tab: app.tab_open()
tab left: app.tab_previous()
tab right: app.tab_next()
tab close: app.tab_close()
tab (reopen|restore): app.tab_reopen()

go tab <number>: user.tab_jump(number)
go last tab: user.tab_final()
