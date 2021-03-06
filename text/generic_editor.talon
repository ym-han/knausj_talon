find it:
    edit.find()

next one:
    edit.find_next()

go word left:
    edit.word_left()

go word right:
    edit.word_right()

^<number> before$:
    edit.word_left()
    repeat(number - 1)

^<number> after$:
    edit.word_right()
    repeat(number - 1)


left:
    edit.left()

right:
    edit.right()

go up:
    edit.up()

go down:
    edit.down()

head:
     edit.line_start()

push:
    edit.line_end()

go way left:
    edit.line_start()
    edit.line_start()

go way right:
    edit.line_end()

go way down:
    edit.file_end()

go way up:
    edit.file_start()

go page down:
    edit.page_down()

go page up:
    edit.page_up()

# selecting
select line:
    edit.select_line()

select all:
    edit.select_all()

select left:
    edit.extend_left()

select right:
    edit.extend_right()

select up:
    edit.extend_line_up()

select down:
    edit.extend_line_down()

# MY CHANGES
============
# select previous word (imptly different from 'extend previous' in that this wouldn't select the intervening stuff)
select previous:
    edit.word_left()
    key(right)
    edit.select_word()

select next:
    edit.word_right()
    key(left)
    edit.select_word()


# extend selection __to__ previous / next word
^<number> befores:
    edit.extend_word_left()
    repeat(number - 1)

^<number> afters:
    edit.extend_word_right()
    repeat(number - 1)

select word:
    edit.select_word()

select word left:
    edit.extend_word_left()

select word right:
    edit.extend_word_right()





#select way left:
lecksy: 
    edit.extend_line_start()

#select way right:  
ricksy: 
    edit.extend_line_end()

select way up:
    edit.extend_file_start()

select way down:
    edit.extend_file_end()

# editing
indent [more]:
    edit.indent_more()

(indent less | out dent):
    edit.indent_less()

# deleting
clear line:
    edit.delete_line()

clear left:
    key(backspace)

clear right:
    key(delete)

clear up:
    edit.extend_line_up()
    edit.delete()

clear down:
    edit.extend_line_down()
    edit.delete()

clear word:
    edit.delete_word()

junk previous:
    edit.word_left()
    key(right)
    edit.select_word()
    edit.delete()

junk next:
    edit.word_right()
    key(left)
    edit.select_word()
    edit.delete()

snip till previous:
    edit.extend_word_left()
    edit.delete()

snip till next:
    edit.extend_word_right()
    edit.delete()

ex left:
    edit.extend_line_start()
    edit.delete()

ex right:
    edit.extend_line_end()
    edit.delete()

ex up: 
    edit.extend_file_start()
    edit.delete()

ex down: 
    edit.extend_file_end()
    edit.delete()

clear all:
    edit.select_all()
    edit.delete()

#copy commands
copy all:
    edit.select_all()
    edit.copy()




#to do: do we want these variants, seem to conflict
# copy left:
#      edit.extend_left()
#      edit.copy()
# copy right:
#     edit.extend_right()
#     edit.copy()
# copy up:
#     edit.extend_up()
#     edit.copy()
# copy down:
#     edit.extend_down()
#     edit.copy()

copy word:
    edit.select_word()
    edit.copy()

copy word left:
    edit.extend_word_left()
    edit.copy()

copy word right:
    edit.extend_word_right()
    edit.copy()

copy line:
    edit.select_line()
    edit.copy()

#cut commands
cut all:
    edit.select_all()
    edit.cut()
#to do: do we want these variants
# cut left:
#      edit.select_all()
#      edit.cut()
# cut right:
#      edit.select_all()
#      edit.cut()
# cut up:
#      edit.select_all()
#     edit.cut()
# cut down:
#     edit.select_all()
#     edit.cut()

cut word:
    edit.select_word()
    edit.cut()

cut word left:
    edit.extend_word_left()
    edit.cut()

cut word right:
    edit.extend_word_right()
    edit.cut()

cut line:
    edit.select_line()
    edit.cut()

cut left: 
    edit.extend_line_start()
    edit.copy()
    key(delete)

cut right:
    edit.extend_line_end()
    edit.copy()
    key(delete)


copy left: 
    edit.extend_line_start()
    edit.copy()
    key(right)

copy right:
    edit.extend_line_end()
    edit.copy()
    key(left)

