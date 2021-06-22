mode: user.julia
mode: command 
and code.language: julia
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
	insert("else if()")
	key(left)
action(user.code_state_else): 
	insert("else\n{{\n}}\n")
	key(up )
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
action(user.code_private_function): insert("function ()")
action(user.code_public_static_function): insert("private static void")
action(user.code_protected_function): insert("protected void")
action(user.code_public_function): insert("public void")


#julia-specific grammars

new function: 
  insert("function ()")
  key(enter:2)
  insert("end")
  key(up:2)
  key(right:6)
  


slice reverse: insert("[end : -1 : 1]")

vest cat: 
  insert("vcat()")
  key(left)

harp cat:
  insert("hcat()")
  key(left)

push in place: 
  insert("push!()")
  key(left)

type of: 
  insert("typeof()")
  key(left)

state end: "end"
state begin: "begin"

group by: "groupby("
group by sort true: 
  insert("groupby( , sort=true)")
  key(left:13)





combine count rows: "combine(nrow => :count)"

vega plot: 
  insert("@vlplot()")
  key(left)  

find length:
  insert("length()")
  key(left)

alpha:
  clip.set_text('α')
  edit.paste()


beta:
  clip.set_text('β')
  edit.paste()
  
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
  

sym fake divide:
  clip.set_text('𝘭')
  edit.paste()


state filter: insert("filter(")

at chain df: 
  insert("@chain df begin\n\nend")
  key(left:4)


# TO DO: Add dir walking functions too

# Data related

import data packages: "using CSV, DataFrames, Chain, StatsBase\nusing TerminalPager, PrettyTables\nusing FloatingTableView\nusing Underscores"
import standard plots packages: "using Plots, StatsPlots"
import py call: "using PyCall"


state data frame: "DataFrame"
state using data frames: "using DataFrames"

show df: "show(df, allcols=true)"
check type of columns: "eltype.(eachcol(df))"

describe types and missing: "describe(df, :eltype, :nmissing)"
drop missing: "dropmissing!(df, :response, disallowmissing=true)"

read csv into df: 'page_df = CSV.read("page.csv", DataFrame)'
write tsv from df: 'df |> CSV.write("df.tsv", delim = "\t")'

add package preserving: 
  insert("Pkg.add(, preserve=PRESERVE_DIRECT)")
  key(left:27)

dickt: "dict"

collect on: "collect("

make vector: "vec("
  
then pipe: " |> "
  
at under: "@_ "
at sign test: "@test"

assert: "@assert "

big arrow: " => "