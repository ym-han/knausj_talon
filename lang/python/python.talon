mode: user.python
mode: command
and code.language: python
-
tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic
settings():
    user.code_private_function_formatter = "SNAKE_CASE"
    user.code_protected_function_formatter = "SNAKE_CASE"
    user.code_public_function_formatter = "SNAKE_CASE"
    user.code_private_variable_formatter = "SNAKE_CASE"
    user.code_protected_variable_formatter = "SNAKE_CASE"
    user.code_public_variable_formatter = "SNAKE_CASE"
action(user.code_operator_indirection): ""
action(user.code_operator_address_of): ""
action(user.code_operator_structure_dereference): ""
action(user.code_operator_lambda): ""
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
action(user.code_operator_exponent): " ** "
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
action(user.code_operator_and): " and "
action(user.code_operator_or): " or "
action(user.code_operator_bitwise_and): " & "
action(user.code_operator_bitwise_and_assignment): " &= "
action(user.code_operator_bitwise_or): " | "
action(user.code_operator_bitwise_or_assignment): " |= "
action(user.code_operator_bitwise_exclusive_or): " ^ "
action(user.code_operator_bitwise_exclusive_or_assignment): " ^= "
action(user.code_operator_bitwise_left_shift): " << "
action(user.code_operator_bitwise_left_shift_assignment): " <<= "
action(user.code_operator_bitwise_right_shift): " >> "
action(user.code_operator_bitwise_right_shift_assignment): " >>= "
action(user.code_self): "self"
action(user.code_null): "None"
action(user.code_is_null): " is None"
action(user.code_is_not_null): " is not None"
action(user.code_state_if):
    insert("if :")
    key(left)
action(user.code_state_else_if):
    insert("elif :")
    key(left)
action(user.code_state_else):
    insert("else:")
    key(enter)
action(user.code_state_switch):
    insert("switch ()")
    edit.left()
action(user.code_state_case):
    insert("case \nbreak;")
    edit.up()
action(user.code_state_for): "for "
action(user.code_state_for_each):
    insert("for in ")
    key(left)
    edit.word_left()
    key(space)
    edit.left()
action(user.code_state_while):
    insert("while :")
    edit.left()
action(user.code_type_class): "class "
action(user.code_import): "import "
action(user.code_from_import):
    insert("from import ")
    key(left)
    edit.word_left()
    key(space)
    edit.left()
action(user.code_comment): "# "
action(user.code_state_return):
	insert("return ")
action(user.code_true): "True"
action(user.code_false): "False"
action(user.code_document_string): user.insert_cursor("\"\"\"[|]\"\"\"")

# Python-specific grammars

dunder in it: "__init__"
state (def | deaf | deft): "def "
self taught: "self."
pie test: "pytest"
state past: "pass"

state description: "descrip"

for index <user.letter> enumerate: insert("for idx, {letter} in enumerate(")
for index <user.text> enumerate: insert("for idx, {text} in enumerate(")


^new func <user.text>$: user.code_default_function(text)

raise {user.python_exception}: user.insert_cursor("raise {python_exception}([|])")

# for annotating function parameters
is type {user.python_type_list}:
    insert(": {python_type_list}")
returns [type] {user.python_type_list}:
    insert(" -> {python_type_list}")
# for generic reference of types
type {user.python_type_list}:
    insert("{python_type_list}")
dock {user.python_docstring_fields}:
    insert("{python_docstring_fields}")
    edit.left()
dock type {user.python_type_list}:
    user.insert_cursor(":type [|]: {python_type_list}")
dock returns type {user.python_type_list}:
    user.insert_cursor(":rtype [|]: {python_type_list}")
toggle imports: user.code_toggle_libraries()
import <user.code_libraries>:
    user.code_insert_library(code_libraries, "")
    key(end enter)


super init: "super().__init__()"

p print: "pp.pprint("

if name main: "if __name__ == "__main__": main()"


new dataclass: 
    insert("@dataclass\nclass :")
    key(left)
new frozen dataclass: 
    insert("@dataclass(frozen=True)\nclass :")
    key(left)


# PANDAS
p d display max rows: "pd.set_option('display.max_rows', 500)"
p d read c s v: "pd.read_csv("
dot head: ".head()"
dot head <number>$: ".head({number})"
dot i lock: ".iloc["
dot lock: ".loc["

dot tail: ".tail("
dot tail <number>$: ".tail({number})"

import data stuff: 
    insert("import numpy as np")
    insert("import pandas as pd")

import torch stuff:
    insert("import numpy as np")
    insert("import pandas as pd")
    insert("import torch")
    insert("from pathlib import Path")
    insert("from fastcore.all import *")



# SYNTAX COMMON TO NP and TORCH
dee type: "dtype"
dot zeros_like: ".zeros_like"
dot zeros: ".zeros"

dot n dim: ".ndim"
dot shape: ".shape"
dot reshape: ".reshape("
dot full: ".full(shape=, fill_value=)"
dot full like: ".full_like("
dot eye: ".eye"

dot rand n like: ".randn_like("
dot a range: ".arange("

dot split: ".split("
dot stack: ".stack("
dot max: ".max("
dot min: ".min("

dot squeeze: ".squeeze("
dot unsqueeze: ".unsqueeze("

dot numel: ".numel()"

# NUMPY
n p dot: "np."

np array: "np.array(["
np zeros: "np.zeros("

np a range: "np.arange("

np concat: 
    insert("np.concatenate(, axis=)")
    key(left:10)


# TORCH

## change display precision (does not actuallly change values)
torch display precision: "torch.set_printoptions(precision=1)"

word pytorch: "pytorch"

state torch: "torch"

torch tensor: "torch.tensor"    
state tensor: "tensor"

torch from num pie: "torch.from_numpy("

dot dee type: ".dtype"

dot c p u: ".cpu()"

dot clone: ".detach().clone()"

dot device: ".device"

dot num pie: ".numpy()"

dot float: ".float()"
dot long: ".long()"

dot view: ".view("
dot trans: ".t()"
dot n dim: ".ndim"
dot shape: ".shape"

dot sum: ".sum"

dot diag: ".diag()"

dot mull: ".mul("
dot mat mull: ".matmul("

dot grad: ".grad"
dot requires grad: ".requires_grad_()"
requires grad: "requires_grad"
requires grad true: "requires_grad=True"
torch no grad: "with torch.no_grad():"


dot backward: ".backward()"

torch reshape: "torch.reshape("
torch a range: "torch.arange("
torch zeros: "torch.zeros("
torch stack: "torch.stack("
torch cat: 
    insert("torch.cat(, dim=)")
    key(left:7)
torch chunk: "torch.chunk("
torch long: "torch.long"
torch bool: "torch.bool"
torch float: "torch.float"

torch manual seed: "torch.manual_seed(7)"

torch rand: "torch.rand("
torch rand like: "torch.rand_like("

torch rand n: "torch.randn("
torch rand n like: "torch.randn_like("
torch normal: "torch.normal("
torch lin space: "torch.linspace(start, end, steps)"


# Initializing things
device cuda if available: "device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")"

usual learning rate: "learning_rate = 1e-4"
usual L two: "λ_l2 = 1e-5"

init optimizer: "optimizer = torch.optim.Adam(model.parameters(), lr=learning_rate, weight_decay=lambda_l2) # built-in L2"
  
n n sequential: "nn.Sequential"
n n linear: "nn.Linear"
model equal sequential: "model = nn.Sequential("
model to device: "model.to(device) #Convert to CUDA"

torch cross entropy: "torch.nn.CrossEntropyLoss()"

init params: "init_params("

zero grad: "optimizer.zero_grad()"

optimizer step: "optimizer.step()"


