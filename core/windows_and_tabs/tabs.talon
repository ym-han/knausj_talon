tag: user.tabs
-
(new tab | taber new): app.tab_open()
taber left: app.tab_previous()
taber right: app.tab_next()
taber close: user.tab_close_wrapper()
taber (reopen | restore): app.tab_reopen()
  
go tab <number>: user.tab_jump(number)
go last tab: user.tab_final()
duplicate tab: user.tab_duplicate()
