tag: user.haskell
-
tag(): user.code_function
tag(): user.code_library
tag(): user.code_operator
tag(): user.code_type

settings():
    user.code_function_catch_all = "CAMEL_CASE"
    user.code_library_catch_all = "CAPITALIZE_ALL_WORDS,DOT_SEPARATED"
    user.code_type_catch_all = "PASCAL_CASE"


pragma scoped type variables: """{-# LANGUAGE ScopedTypeVariables #-}"""
pragma type applications: """{-# LANGUAGE TypeApplications #-}"""

set type applications: ":set -XTypeApplications\n"
set print for all: ":set -fprint-explicit-foralls\n"

modulo: " mod "

(let | state let): "let "

(spread | state spread): ".."

(into | op into): " -> "


# useful commands for adding new cases
add constructor:
    edit.line_insert_down()
    "| "

# special cases for #user.code_type
type list:
    "[]"
    edit.left()



# equivalent of snippet "annotated expression"
has type$: " :: "
## TO DO for future: too tired to do this properly right now

#has type <user.code_type>$: " :: {code_type}"

#has type <user.code_type> over: " :: {code_type}"

#into {user.code_type}:
#    user.insert_cursor(" -> {code_type}[|]")


state first: "fst"
state second: "snd"
put string line: "putStrLn" 

mappend: "<>"

import text: "import Data.Char qualified as Char\nimport Data.Text qualified as T\n"

