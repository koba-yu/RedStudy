Red [
    Title: "example about function"
    Author: koba-yu
    File: %06-function4.red
]

temp: "this is function test."
print temp
; this is function test.

; function (not func) automatically treat words inside it as local
; this function causes the same result as the previous example.
add-one: function [num [integer!] return: [integer!] ][
    temp: num + 1
    temp
]

add-one 3

; This prints not "4" but "this is function test." 
print temp