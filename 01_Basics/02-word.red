Red [
	Title: "example about word"
	Author: "Koba-yu"
	File: %02-word.red
]

; a word can hold value.
; ':' binds a value to the word, like other languages' assignment operator('=' in most cases).
test: 1
print test
; console shows 1

; function '?' shows datatype and value of the word
? test
; test is a integer! of value: 1

; the word can hold different type of value previously bound
test: "abc"
; test is a string! of value: "abc"
