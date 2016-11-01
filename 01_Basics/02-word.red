Red [
    Title: "example about word"
    Author: koba-yu
    File: %02-word.red
]

; a word can hold value
test: 1
print test
; console shows 1

; function '?' shows datatype and value of the word
? test
; test is a integer! of value: 1

; the word can hold different type of value previously bound
test: "abc" 
; test is a string! of value: "abc"
