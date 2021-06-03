#^force see sharp$: user.code_set_language_mode("csharp")
#^force see plus plus$: user.code_set_language_mode("cplusplus")
#^force go language$: user.code_set_language_mode("go")
#^force type script$: user.code_set_language_mode("typescript")

^force java script$: user.code_set_language_mode("javascript")
^force markdown$: user.code_set_language_mode("markdown")

^force python$: user.code_set_language_mode("python")

^force julia$: user.code_set_language_mode("julia")
^force are language$: user.code_set_language_mode("r")
^force talon [language]$: user.code_set_language_mode("talon")
^clear language modes$: user.code_clear_language_mode()

[enable] debug mode:
    mode.enable("user.gdb")
disable debug mode:
    mode.disable("user.gdb")

