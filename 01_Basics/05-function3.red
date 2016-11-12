Red [
    Title: "example about function"
    Author: koba-yu
    File: %05-function3.red
]

temp: "this is function test."
print temp
; this is function test.

; 
add-one: func [num [integer!] return: [integer!] /local temp][
    temp: num + 1  
    temp ; function returns the last value in the block
]

add-one 3

; this does not print "this is function test." anymore.
; because the word temp was changed in add-one function.
print temp
; this is function test.