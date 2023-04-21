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


dot hs: ".hs"


common pragmas: "{-# LANGUAGE LambdaCase, GeneralizedNewtypeDeriving, OverloadedStrings, TypeApplications, ExistentialQuantification, UnicodeSyntax, NegativeLiterals, ImportQualifiedPost #-}"
pragma scoped type variables: """{-# LANGUAGE ScopedTypeVariables #-}"""
pragma lambda case: """{-# LANGUAGE LambdaCase #-}"""
pragma overloaded strings: """{-# LANGUAGE OverloadedStrings #-}"""
pragma type applications: """{-# LANGUAGE TypeApplications #-}"""
pragma type applications: """{-# LANGUAGE TypeFamilies #-}"""
pragma unicode syntax: """{-# LANGUAGE UnicodeSyntax #-}"""
pragma existential quantification: """{-# LANGUAGE ExistentialQuantification #-}"""
pragma stand alone deriving: """{-# LANGUAGE StandaloneDeriving #-}"""

set type applications: ":set -XTypeApplications\n"
set print for all: ":set -fprint-explicit-foralls\n"

module where: 
    insert("module  where")
    key(left:6)


import text: "import Data.Char qualified as Char\nimport Data.Text qualified as T\n"
import data map: "import qualified Data.Map as M"


modulo: " mod "

(let | state let): "let "

(spread | state spread): ".."

(into | op into): " -> "

state ghci: "ghci"


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

#has type <user.code_type>: " :: {code_type}"

#has type <user.code_type> over: " :: {code_type}"

#into {user.code_type}:
#    user.insert_cursor(" -> {code_type}[|]")


state first: "fst"
state second: "snd"
put string line: "putStrLn" 

mappend: "<>"


