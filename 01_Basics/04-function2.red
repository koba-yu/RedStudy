Red [
    Title: "example about function"
    Author: koba-yu
    File: %04-function2.red
]

temp: "this is function test."
print temp
; this is function test.

; if a word is used inside a function, the changed word (in this case, 'temp') can be accessed in outer scope
; * if you want to prevent 'temp' from going out of function, see next example.
add-one: func [num [integer!] return: [integer!]][
    temp: num + 1  
    temp
]

add-one 3

; this does not print "this is function test." anymore.
; because the word temp was changed in add-one function.
print temp
; 4