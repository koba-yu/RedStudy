Red [
    Title: "context sample"
    Author: "koba-yu"
	File: %object-and-context.red    
]

; 'make object!' can create something like records among popular functional languages. 
person: make object! [name: "Yu" surname: "Koba"]
; == make object! [
;     name: "Yu"
;     surname: "Koba"
; ]

; object field can be accessed as follows.
person/name
; == "Yu"
person/surname
; == "Koba"

; context is a shortcut of 'make object!'. Both function can produce the same result.
person2: context [name: "Yu" surname: "Koba"]
; == make object! [
;     name: "Yu"
;     surname: "Koba"
; ]

; Both of the results are equal.
person = person2
; true

; Certainly it is not equal if some field values are different.
person/name: "Unknonw"
; == "Unknown"
person = person2
; false