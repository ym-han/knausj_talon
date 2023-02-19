os: mac
app: net.ankiweb.dtop
-

add it: key(cmd-enter)

new card: key(a)

bad card: key(1)

show history: key(cmd-shift-h)

# this is set to paste python code by default
paste code: 
  key(alt-s)
  insert("py")
  key(enter)


paste jay code: 
  key(alt-s)
  key(down:2)
  key(right)
  insert("j")
  key(enter)

paste julia code: 
  key(alt-s)
  insert("Select from")
  key(enter)
  sleep(300ms)
  insert("Julia")
  key(enter)

paste custom language code: key(alt-s)

haskell evaluate: "Haskell: What does the following evaluate to?\n\n"
jay evaluate: "Javascript: What does the following evaluate to?\n\n"
jay output: "Javascript: What will the following code output?\n\n"
launch school tag: "Launch School:  "
jay tag: "Javascript:  "

one twenty tag: "JS120:  "

state true false: "True/False:  "
