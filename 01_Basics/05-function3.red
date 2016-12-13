Red [
    Title: "example about function"
    Author: koba-yu
    File: %05-function3.red
]

temp: "this is function test."
print temp
; this is function test.

; The Word after "/local" refinement gets its scope only inside of the func.
; It does not change the values outside of the func.
add-one: func [num [integer!] return: [integer!] /local temp][
    temp: num + 1  
    temp
]

add-one 3

; This prints not "4" but "this is function test." 
print temp