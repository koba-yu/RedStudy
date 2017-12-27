Red [
	Title: "sample about word and its evaluation"
	Author: "Koba-yu"
	File: %02-word-evaluation.red
]

number: 5

; evaluating a word shows the value behind it.
number
; == 5

; prefixing ' to a word suppresses to evaluate it.
; it points not a value but a word itself.
'number
; == number

; 'get' function retrieves a value behind a word.
get 'number
; == 5

; also 'set' function can set a value to a word
; below is same as the expression of 'number: 6' 
set 'number 6
; == 6