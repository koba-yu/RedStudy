Red [
    Title: "example about function"
    Author: koba-yu
    File: %03-function1.red
]

; you can define funtion by 'func' 
; word can hold function and there is no distinction between function and other datatypes
say: func [message [string!]][
    print message
]  

; calling defined function
say "hello"

; a function with return value
; return value is defined by 'return:' 
add-one: func [num [integer!] return: [integer!]][
    num + 1 ; function returns the last value in the block
]

; using the defined function
result: add-one 3
; == 4