os: mac
app: net.ankiweb.dtop
-

add it: key(cmd-enter)

new card: key(a)

bad card: key(1)

show history: key(cmd-shift-h)

paste haskell: 
  key(alt-s)
  sleep(20ms)
  insert("select")
  key(enter)
  sleep(20ms)
  insert("has")
  sleep(20ms)
  key(enter)

paste python: 
  key(alt-s)
  insert("py")
  key(enter)


paste j s: 
  key(alt-s)
  sleep(20ms)
  key(down:2)
  sleep(20ms)
  key(right)
  insert("j")
  key(enter)

paste julia: 
  key(alt-s)
  sleep(20ms)
  insert("sel")
  key(enter)
  sleep(50ms)
  insert("Julia")
  sleep(50ms)
  key(enter)

paste custom lang: key(alt-s)

haskell evaluate: "Haskell: What does the following evaluate to?\n\n"
jay evaluate: "Javascript: What does the following evaluate to?\n\n"
jay output: "Javascript: What will the following code output?\n\n"
pref launch school: "Launch School:  "
pref j s: "Javascript:  "

one twenty tag: "JS120:  "

state true false: "True/False:  "
