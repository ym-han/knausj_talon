os: mac
app: net.ankiweb.dtop
-

add it: key(cmd-enter)

new card: key(a)

was bad: key(1)
was good: key(3)
was easy: key(4)

show history: key(cmd-shift-h)

paste haskell: 
  key(alt-s)
  sleep(30ms)
  insert("select")
  key(enter)
  sleep(40ms)
  insert("has")
  sleep(30ms)
  key(enter)

paste python: 
  key(alt-s)
  insert("py")
  key(enter)


make code: 
  key(alt-s)
  sleep(20ms)
  insert("code")
  sleep(30ms)
  key(enter)


paste code: 
  key(alt-s)
  sleep(20ms)
  insert("code")
  sleep(30ms)
  key(enter)

paste c s s: 
  key(alt-s)
  sleep(20ms)
  key(down:2)
  sleep(20ms)
  key(right)
  insert("c s s")
  key(enter)



(paste jay | jay paste): 
  key(alt-s)
  sleep(20ms)
  key(down:2)
  sleep(20ms)
  key(right)
  insert("javascr")
  key(enter)

paste j s: 
  key(alt-s)
  sleep(20ms)
  key(down:2)
  sleep(20ms)
  key(right)
  insert("javascr")
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
(pref j s | pref jay): "Javascript:  "
pref regex: "Regex: "

pref one thirty: "JS130:  "
pref c s s: "CSS: "

state true false: "True/False:  "
