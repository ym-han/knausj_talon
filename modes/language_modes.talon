^force see$: user.code_set_language_mode("c")
#^force see sharp$: user.code_set_language_mode("csharp")
#^force see plus plus$: user.code_set_language_mode("cplusplus")
#^force go (lang|language)$: user.code_set_language_mode("go")
#^force java$: user.code_set_language_mode("java")

^force java script$: user.code_set_language_mode("javascript")
#^force type script$: user.code_set_language_mode("typescript")
^force markdown$: user.code_set_language_mode("markdown")

^force julia$: user.code_set_language_mode("julia")
^force r lang$: user.code_set_language_mode("r")
^force python$: user.code_set_language_mode("python")

^force talon [language]$: user.code_set_language_mode("talon")
^clear language modes$: user.code_clear_language_mode()

enable gdb: mode.enable("user.gdb")
disable gdb: mode.disable("user.gdb")
