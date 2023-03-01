double dash: "--"
triple quote: "'''"
(triple grave | triple back tick | gravy): insert("```")
(dot dot | dotdot): ".."
ellipses: "..."
(comma and | spamma): ", "
arrow: "->"
dub arrow: "=>"
new line: "\\n"
carriage return: "\\r"
line feed: "\\r\\n"

empty round: "()"
empty square: "[]"
empty curly: "{}"
empty diamond: "<>"
empty quad: '""'
empty twin: "''"
empty escaped quad: '\\"\\"'
empty escaped twin: "\\'\\'"
empty escaped round: "\\(\\)"
empty escaped curly: "\\{{\\}}"

(round | inside parens): user.insert_between("(", ")")
square: user.insert_between("[", "]")
(curly | braces): user.insert_between("{", "}")
diamond: user.insert_between("<", ">")
quad: user.insert_between('"', '"')
twin: user.insert_between("'", "'")
ber tick: user.insert_between("`", "`")

tween <user.symbol_key>: user.insert_between("{symbol_key}", "{symbol_key}")

inside percent: user.insert_between("%", "%")
inside (quotes | string): user.insert_between("'", "'")
inside (double quotes | dub quotes): user.insert_between('"', '"')
inside (graves | ber ticks): user.insert_between("`", "`")

escaped quad: user.insert_between('\\"', '\\"')
escaped twin: user.insert_between("\\'", "\\'")
escaped round: user.insert_between("\\(", "\\)")
escaped curly: user.insert_between("\\{{", "\\}}")

angle that:
    text = edit.selected_text()
    user.paste("<{text}>")
(square | square bracket) that:
    text = edit.selected_text()
    user.paste("[{text}]")
(curly | brace) that:
    text = edit.selected_text()
    user.paste("{{{text}}}")
(round | args) that:
    text = edit.selected_text()
    user.paste("({text})")
percent that:
    text = edit.selected_text()
    user.paste("%{text}%")
twin that:
    text = edit.selected_text()
    user.paste("'{text}'")
(quad | dub quote) that:
    text = edit.selected_text()
    user.paste('"{text}"')
(ber tick | back tick) that:
    text = edit.selected_text()
    user.paste("`{text}`")

big round:
    insert("()")
    key(left enter)
big square:
    insert("[]")
    key(left enter)
big curly:
    insert("{}")
    key(left enter)


slicer:
    edit.line_end()
    key(enter)
    insert("- ")

slider:
    edit.line_end()
    insert(",")
    key(enter)

breaker:
    edit.line_end()
    insert(" {")
    key(enter) 

end gap:
    edit.line_end()
    key(space)
    
