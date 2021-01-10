mode: user.pyret
mode: command 
and code.language: pyret
-
tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic
settings():
    user.code_private_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_function_formatter = "PROTECTED_CAMEL_CASE"
    user.code_public_function_formatter = "PROTECTED_CAMEL_CASE"
    user.code_private_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_variable_formatter = "PROTECTED_CAMEL_CASE"
    user.code_public_variable_formatter = "PROTECTED_CAMEL_CASE"

action(user.code_operator_indirection): "*"
action(user.code_operator_address_of): "&"
action(user.code_operator_structure_deference): "->"
action(user.code_operator_lambda): "=>"
action(user.code_operator_subscript): 		
	insert("[]")
	key(left)
action(user.code_operator_assignment): " = "
action(user.code_operator_subtraction): " - "
action(user.code_operator_subtraction_assignment): " -= "
action(user.code_operator_addition): " + "
action(user.code_operator_addition_assignment): " += "
action(user.code_operator_multiplication): " * "
action(user.code_operator_multiplication_assignment): " *= "
#action(user.code_operator_exponent): " ** "
action(user.code_operator_division): " / "
action(user.code_operator_division_assignment): " /= "
action(user.code_operator_modulo): " % "
action(user.code_operator_modulo_assignment): " %= "
action(user.code_operator_equal): " == "
action(user.code_operator_not_equal): " != "
action(user.code_operator_greater_than): " > "
action(user.code_operator_greater_than_or_equal_to): " >= "
action(user.code_operator_less_than): " < "
action(user.code_operator_less_than_or_equal_to): " <= "
action(user.code_operator_and): " && "
action(user.code_operator_or): " || "
action(user.code_operator_bitwise_and): " & "
action(user.code_operator_bitwise_and_assignment): " &= " 
action(user.code_operator_bitwise_or): " | "
action(user.code_operator_bitwise_or_assignment): " |= "
action(user.code_operator_bitwise_exlcusive_or): " ^ "
action(user.code_operator_bitwise_exlcusive_or_assignment): " ^= "
action(user.code_operator_bitwise_left_shift): " << "
action(user.code_operator_bitwise_left_shift_assignment): " <<= "
action(user.code_operator_bitwise_right_shift): " >> "
action(user.code_operator_bitwise_right_shift_assignment): " >>= "
action(user.code_self): "this"
action(user.code_null): "null"
action(user.code_is_null): " == null "
action(user.code_is_not_null): " != null"
action(user.code_state_if): 
	insert("if()")
	key(left)
action(user.code_state_else_if): 
	insert("else if :")
	key(left)
action(user.code_state_else): 
	insert("else:\n\n")
  insert("end")
	key(up)


action(user.code_state_switch):
	insert("switch()") 
	edit.left()
action(user.code_state_case):
	insert("case \nbreak;") 
	edit.up()
action(user.code_state_for): "for "
action(user.code_state_for_each): 
	insert("foreach() ")
	key(left)
	edit.word_left()
	key(space) 
	edit.left()
action(user.code_state_go_to): "go to "
action(user.code_state_while): 

	insert("while()")
	edit.left()
#action(user.code_type_definition): "typedef "	
#action(user.code_typedef_struct):	
#	insert("typedef struct")
#	insert("{{\n\n}}")
#	edit.up()
#	key(tab)
action(user.code_type_class): "class "
action(user.code_import): "using  "
action(user.code_from_import): "using "
action(user.code_include): insert("using ")
action(user.code_include_system): insert("using ")
action(user.code_include_local): insert('using ')
action(user.code_comment): "//"


 
#todo: figure out how to handle typing beyond "void"
action(user.code_private_function): insert("private void")
action(user.code_public_static_function): insert("private static void")
action(user.code_protected_function): insert("protected void")
action(user.code_public_function): insert("public void")



#pyret-specific grammars
new function: 
  insert("fun () -> :")
  key(enter)
  insert('  doc: ""')
  key(enter:2)
  key(backspace:2)
  insert("end")
  key(up:2)


state true: "true"
state false: "false"


state doc: 
  insert('doc: ""')
  key(left:1)

state doc long: 
  insert("doc: ```  ```")
  key(left:4)


state empty: "empty"

state where:
  insert("where:")
  key(enter:2)
  key(up:1)

state if:
  insert("if :")
  key(enter:2)
  insert("end")
  key(up:2)

lambda curly: "{{( :: ) -> : }}"

lambda: 
  insert("lam():  end")
  key(left:7)


wrap some:
  key(cmd-c)
  insert("some()")
  key(left)
  key(cmd-v)


state when:
  insert("when :")
  key(enter:2)
  insert("end")
  key(up:2)



new function where: 
  insert("fun () -> :")
  key(enter)
  insert('  doc: ""')
  key(enter:3)
  key(backspace:2)
  insert("where:")
  key(enter:2)
  insert("end")
  key(up:5)
  key(right:6)
  

new cases: 
  insert("cases() :")
  key(enter)
  insert("|  => ")
  key(enter)
  insert("end")
  key(up:2)
  key(right)


cases list: "cases(List) l: \n  | empty => ... \n  | link(f, r) => \n end"

  
new data: 
  insert("data :")
  key(enter)
  insert("| ")
  key(enter)
  insert("end")
  key(up:2)
  key(right)

new check:
  insert("check:")
  key(enter:2)
  insert("end")
  key(up:2)

new examples:
  insert("examples:")
  key(enter:2)
  insert("end")
  key(up:2)

state list: 
  insert("[list: ]")
  key(left)


state variable: 
  insert("var  = ")
  key(left:3p)

type of: 
  insert("typeof()")
  key(left)

state end: "end"
state begin: "begin"

member of:
  clip.set_text('∈')
  edit.paste()

not member of:
  clip.set_text('∉')
  edit.paste()

^for all$:
  clip.set_text('∀')
  edit.paste()

^exists$:
  clip.set_text('∃')
  edit.paste()

^if only if$:
  clip.set_text('⟺')
  edit.paste()


state for: 
  insert("for \n\n")
  insert("end")
  key(up:2)
  
  

big arrow: " => "