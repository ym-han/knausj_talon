question [mark]: "?"
(downscore | underscore): "_"
double dash: "--"
(bracket | brack | left bracket): "{"
(are bracket | right bracket): "}"
triple quote: "'''"
(dot dot | dotdot): ".."
#ellipses: "…"
ellipses: "..."
(comma and | spamma): ", "
plus: "+"
sym arrow: "->"
dub arrow: "=>"
new line: "\\n"
carriage return: "\\r"
line feed: "\\r\\n"
empty dubstring:
    '""'
    key(left)
empty escaped (dubstring|dub quotes):
    '\\"\\"'
    key(left)
    key(left)
empty string:
    "''"
    key(left)
empty escaped string:
    "\\'\\'"
    key(left)
    key(left)
(inside parens | args):
	insert("()")
	key(left)
inside (squares | list): 
	insert("[]") 
	key(left)
inside (bracket | braces): 
	insert("{}") 
	key(left)
inside percent: 
	insert("%%") 
	key(left)
inside quotes:
	insert('""')
	key(left)
angle that: 
    text = edit.selected_text()
    user.paste("<{text}>")
brace that: 
    text = edit.selected_text()
    user.paste("{{{text}}}")
(parens | args) that: 
    text = edit.selected_text()
    user.paste("({text})")
percent that: 
    text = edit.selected_text()
    user.paste("%{text}%")
quote that:
    text = edit.selected_text()
    user.paste('"{text}"')


sym a prox:
  clip.set_text('≈')
  edit.paste()
sym not a prox: 
  clip.set_text('≉')
  edit.paste()

sym square root:
  clip.set_text('√')
  edit.paste()

sym empty set:
  clip.set_text('∅')
  edit.paste()

sym union:
  clip.set_text('∪')
  edit.paste()


sym greater equal:
  clip.set_text('≥')
  edit.paste()


     
sym delta:
  clip.set_text('∆')
  edit.paste()

sym nabla:
  clip.set_text('∇')
  edit.paste()



sym mu:
  clip.set_text('μ')
  edit.paste()

sym partial:
  clip.set_text('∂')
  edit.paste()
  
sym theta:
  clip.set_text('θ')
  edit.paste()

sym big theta:
  clip.set_text('Θ')
  edit.paste()

sym theta hat:
  clip.set_text('θ̂')
  edit.paste()

sym beta:
  clip.set_text('β')
  edit.paste()
  
sym sigma:
  clip.set_text('σ')
  edit.paste()

sym big sigma:
  clip.set_text('∑')
  edit.paste()


sym small gamma:
  clip.set_text('γ')
  edit.paste()

sym gamma:
  clip.set_text('Γ')
  edit.paste()

sym expectation:
  clip.set_text('𝔼')
  edit.paste()

sym probability:
  clip.set_text('𝕡')
  edit.paste()

sym variance:
  clip.set_text('𝕍')
  edit.paste()





