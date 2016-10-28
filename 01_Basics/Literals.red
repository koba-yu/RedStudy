Red [
    Title: "Literal examples"
    Author: koba-yu
    File: %Literals.red
]

; Red has a bunch of datatype literals

type? 1
; == integer!

type? 1.5
; == float!

type? 5%
; == percent!

type? "abc"
;  == string!

type? #"a"
; == char!

type? %/c/users
; == file!

type? true
; == logic!

type? false
; == logic!

type? http://
; == url!

type? [1 2 3]
; == block!

type? 1x1
; == pair!

type? 1.2.3
; == tuple!

type? #("key" "value")
; == map!

type? 'a
; == word!